import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import { aggregateDailyOutletSummary, calculateBonusFromJson, calculateMealAllowance, DEFAULT_BONUS_TIERS } from '@/lib/bonus-calculator';
import { getBusinessDayDate, getBusinessDayRange, getDateBoundaryInJakarta, formatDateOnlyInJakarta, isValidDateOnly, parseDateOnlyAsJakarta, formatAsJakartaLocalIso } from '@/lib/helpers/business-day';
import { fetchAllPaginatedRows } from '../../../../lib/supabase-pagination';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const businessDay = url.searchParams.get('business_day');
    const businessDayStartHour = Number(url.searchParams.get('business_day_start_hour') ?? 4);
    const useBusinessDay = businessDay === '1' || businessDay === 'true' || businessDay === 'yes';
    const debug = url.searchParams.get('debug');
    const outlet = url.searchParams.get('outlet');

    // Validate dates; default to last 7 days if missing.
    // Interpret date-only params as whole days in Asia/Jakarta so the server and browser
    // produce identical ranges regardless of runtime timezone.
    if (start && !isValidDateOnly(start)) {
      return NextResponse.json({ error: 'Invalid start date', debug: { received: start } }, { status: 400 });
    }
    if (end && !isValidDateOnly(end)) {
      return NextResponse.json({ error: 'Invalid end date', debug: { received: end } }, { status: 400 });
    }

    const endDate = end
      ? (useBusinessDay
          ? getBusinessDayRange(parseDateOnlyAsJakarta(end), businessDayStartHour).end
          : getDateBoundaryInJakarta(end, true))
      : (useBusinessDay
          ? getBusinessDayRange(parseDateOnlyAsJakarta(formatDateOnlyInJakarta(new Date())), businessDayStartHour).end
          : getDateBoundaryInJakarta(formatDateOnlyInJakarta(new Date()), true));

    const startDate = start
      ? (useBusinessDay
          ? getBusinessDayRange(parseDateOnlyAsJakarta(start), businessDayStartHour).start
          : getDateBoundaryInJakarta(start, false))
      : (useBusinessDay
          ? getBusinessDayRange(
              new Date(getBusinessDayDate(new Date(), businessDayStartHour).getTime() - 6 * 24 * 60 * 60 * 1000),
              businessDayStartHour
            ).start
          : getDateBoundaryInJakarta(formatDateOnlyInJakarta(new Date(Date.now() - 6 * 24 * 60 * 60 * 1000)), false));

    // Validate computed boundaries to avoid 'Invalid time value' when calling
    // Date methods like getUTCFullYear() or toISOString(). Return debug info.
    if (Number.isNaN(startDate.getTime()) || Number.isNaN(endDate.getTime())) {
      return NextResponse.json(
        {
          error: 'Invalid computed date boundary',
          debug: { startParam: start, endParam: end, startDate: String(startDate), endDate: String(endDate) },
        },
        { status: 400 }
      );
    }

    // Build query using only columns that are guaranteed to exist in the current schema.
    // The dashboard only needs total revenue/profit, created_at, and outlet_id.
    let query = supabase
      .from('sales')
      .select('id, total_amount, profit, created_at, outlet_id, hpp_total, bonus_amount')
      .gte('created_at', formatAsJakartaLocalIso(startDate))
      .lte('created_at', formatAsJakartaLocalIso(endDate))
      .order('created_at', { ascending: false })
      .range(0, 100000);

    if (outlet) query = query.eq('outlet_id', outlet);

    let rows: any[] | null = null;
    let queryError: any = null;
    try {
      rows = await fetchAllPaginatedRows<any>(query);
    } catch (e) {
      queryError = e;
    }

    if (queryError) {
      return NextResponse.json({ error: queryError.message || String(queryError) }, { status: 500 });
    }

    const map: Record<string, { date: string; revenue: number; profit: number; orders: number; hpp: number; bonus: number; meal: number }> = {};

    const outletBusinessDayHours: Record<string, number> = {};
    const outletIds = Array.from(new Set((rows || []).map((r) => r?.outlet_id).filter(Boolean) as string[]));
    if (outletIds.length > 0) {
      try {
        const { data: outletsData } = await supabase
          .from('outlets')
          .select('id, business_day_start_hour')
          .in('id', outletIds);
        (outletsData || []).forEach((outlet: any) => {
          outletBusinessDayHours[String(outlet.id)] = Number(outlet.business_day_start_hour ?? 4);
        });
      } catch (e) {
        // ignore and fall back to default business day hour
      }
    }

    // helper to accumulate meal per-date-per-outlet, so we sum each outlet once per day
    const mealByDateOutlet: Record<string, Record<string, number>> = {};
    // track revenue per outlet per date so allowances are computed per-outlet (not from total revenue)
    const revenueByDateOutlet: Record<string, Record<string, number>> = {};

    // initialize all dates in range using business-day buckets so the response stays aligned
    // with the requested reset hour instead of the calendar day
    if (useBusinessDay) {
      const startBusinessDay = getBusinessDayDate(startDate, businessDayStartHour);
      const endBusinessDay = getBusinessDayDate(endDate, businessDayStartHour);
      const current = new Date(startBusinessDay.getTime());
      while (current.getTime() <= endBusinessDay.getTime()) {
        const key = current.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
        map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
        current.setUTCDate(current.getUTCDate() + 1);
      }
    } else {
      const startMs = Date.UTC(startDate.getUTCFullYear(), startDate.getUTCMonth(), startDate.getUTCDate());
      const endMs = Date.UTC(endDate.getUTCFullYear(), endDate.getUTCMonth(), endDate.getUTCDate());
      for (let ms = startMs; ms <= endMs; ms += 24 * 60 * 60 * 1000) {
        const d = new Date(ms);
        const key = d.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
        map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
      }
    }

    const rowErrors: any[] = [];
    if (rows && Array.isArray(rows)) {
      for (const r of rows) {
        try {
          // Normalize DB `created_at` to an explicit UTC ISO before creating a Date,
          // because some DB drivers return "YYYY-MM-DD HH:mm:ss[.ffffff]" (no TZ),
          // and `new Date(...)` may be interpreted inconsistently. Treat values
          // without an explicit timezone as UTC by appending 'Z'.
          let created = String(r.created_at || '');
          if (!created.trim()) throw new Error('missing created_at');
          const hasTZ = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created);
          if (!hasTZ) {
            created = created.replace(' ', 'T');
            if (!created.endsWith('Z')) created = created + 'Z';
          }
          const outletId = r.outlet_id ? String(r.outlet_id) : 'unknown';
          const businessDayStartHour = outletBusinessDayHours[outletId] ?? 4;
          const businessDay = getBusinessDayDate(created, businessDayStartHour);
          if (Number.isNaN(businessDay.getTime())) throw new Error('invalid created_at parsed');
          const key = businessDay.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
          if (!map[key]) map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
          map[key].revenue += Number(r.total_amount || 0);
          map[key].profit += Number(r.profit || 0);
          map[key].orders += 1;
          map[key].hpp += 0;
          map[key].bonus += 0;
          if (!mealByDateOutlet[key]) mealByDateOutlet[key] = {};
          mealByDateOutlet[key][outletId] = (mealByDateOutlet[key][outletId] || 0) + 0;
          if (!revenueByDateOutlet[key]) revenueByDateOutlet[key] = {};
          revenueByDateOutlet[key][outletId] = (revenueByDateOutlet[key][outletId] || 0) + Number(r.total_amount || 0);
        } catch (e) {
          rowErrors.push({ row: r, error: e instanceof Error ? e.message : String(e) });
          // skip invalid row
          continue;
        }
      }
      // done processing rows
    }

    // Fetch bonus tiers from DB (once) to compute per-day bonus from revenue; fallback to default tiers
    let bonusTiers = DEFAULT_BONUS_TIERS;
    try {
      const btRes = await supabase.from('bonus_tiers').select('min, max, percentage').order('min', { ascending: true });
      if (btRes && btRes.data && Array.isArray(btRes.data) && btRes.data.length > 0) {
        bonusTiers = btRes.data as any;
      }
    } catch (e) {
      // ignore and use default tiers
    }

    // Prefer the verified row-level aggregation from the sales table over the RPC helper.
    // The RPC path can drift from the source-of-truth rows and is not used for the
    // dashboard totals we just reconciled against the CSV.
    const perOutletAgg = aggregateDailyOutletSummary(
      (rows || []).map((r) => ({
        date: r.created_at ? String(r.created_at).slice(0, 10) : undefined,
        created_at: r.created_at,
        outlet_id: r.outlet_id,
        total_amount: r.total_amount,
        profit: r.profit,
        hpp_total: r.hpp_total,
        bonus_amount: r.bonus_amount,
      })),
      outletBusinessDayHours
    );

    const perOutletResponse = perOutletAgg.map((row) => {
      const revenue = Math.round(row.revenue);
      const hpp = Math.round(row.hpp);
      const bonus = Math.round(row.bonus || 0);
      const meal = Math.round(row.meal || 0);
      const profit = Math.round(revenue - hpp - bonus - meal);
      return {
        date: row.date,
        outlet_id: row.outlet_id,
        revenue,
        profit,
        orders: row.orders,
        hpp,
        bonus,
        meal,
      };
    });

    // Compute bonus and meal per day from revenue and recompute profit = revenue - hpp - bonus - meal
    const aggregated = Object.values(map).map((v) => {
      const revenue = Math.round(v.revenue);
      const hpp = Math.round(v.hpp);
      // If stored bonus/meal exist (sum of sale-level columns), prefer them; otherwise compute from revenue
      const storedBonus = Math.round(v.bonus || 0);
      // compute meal as sum of per-outlet stored meal (if present) plus per-outlet computed allowance for outlets without stored values
      const outletMeals = mealByDateOutlet[v.date] || {};
      const outletRevenues = revenueByDateOutlet[v.date] || {};
      let storedMealSum = 0;
      let computedMealSum = 0;
      const outletIds = new Set<string>([...Object.keys(outletMeals), ...Object.keys(outletRevenues)]);
      for (const oid of outletIds) {
        const stored = Math.round(outletMeals[oid] || 0);
        if (stored > 0) {
          storedMealSum += stored;
        } else {
          const outRev = Math.round(outletRevenues[oid] || 0);
          computedMealSum += Math.round(calculateMealAllowance(outRev));
        }
      }
      const bonus = storedBonus > 0 ? storedBonus : Math.round((calculateBonusFromJson(revenue, bonusTiers as any[])?.totalBonus) || 0);
      const meal = storedMealSum + computedMealSum;
      const profit = Math.round(revenue - hpp - bonus - meal);

      return {
        date: v.date,
        revenue,
        profit,
        orders: v.orders,
        hpp,
        bonus,
        meal,
      };
    });
    const meta: any = { rowsFetched: rows ? rows.length : 0, startIso: startDate.toISOString(), endIso: endDate.toISOString() };
    if (debug) {
      meta.requested = { start, end, outlet };
      meta.resolved = {
        start: startDate.toISOString(),
        end: endDate.toISOString(),
        startDateOnly: formatDateOnlyInJakarta(startDate),
        endDateOnly: formatDateOnlyInJakarta(endDate),
      };
      meta.rawSampleHead = Array.isArray(rows) ? rows.slice(0, 10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.rawSampleTail = Array.isArray(rows) ? rows.slice(-10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.mapKeys = Object.keys(map).slice(0, 50);
    }
    return NextResponse.json({ data: perOutletResponse.length > 0 ? perOutletResponse : aggregated, meta });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || String(err), stack: err.stack }, { status: 500 });
  }
}
