import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import { aggregateDailyOutletSummary, calculateBonusFromJson, calculateMealAllowance, DEFAULT_BONUS_TIERS } from '@/lib/bonus-calculator';
import { getBusinessDayDate, getBusinessDayRange, parseDateOnlyAsJakarta, formatDateOnlyInJakarta, isValidDateOnly } from '@/lib/helpers/business-day';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
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

    const currentBusinessDay = getBusinessDayDate(new Date(), 4);
    const endDate = end ? parseDateOnlyAsJakarta(end) : currentBusinessDay;
    const startDate = start ? parseDateOnlyAsJakarta(start) : new Date(endDate.getTime() - 6 * 24 * 60 * 60 * 1000);
    const startRange = getBusinessDayRange(startDate, 4);
    const endRange = getBusinessDayRange(endDate, 4);

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

    const queryStartIso = startRange.start.toISOString();
    const queryEndIso = endRange.end.toISOString();

    const buildQuery = (selectFields: string) => {
      let q = supabase
        .from('sales')
        .select(selectFields)
        .gte('created_at', queryStartIso)
        .lte('created_at', queryEndIso)
        .order('created_at', { ascending: false });
      if (outlet) q = q.eq('outlet_id', outlet);
      return q;
    };

    const fetchAllRows = async (selectFields: string) => {
      const pageSize = 1000;
      let pageStart = 0;
      const allRows: any[] = [];

      while (true) {
        const pageQuery = buildQuery(selectFields).range(pageStart, pageStart + pageSize - 1);
        const pageRes = await pageQuery;
        if (pageRes.error) {
          throw pageRes.error;
        }
        const pageData = pageRes.data as any[] | null;
        if (!pageData || pageData.length === 0) break;
        allRows.push(...pageData);
        if (pageData.length < pageSize) break;
        pageStart += pageSize;
      }

      return allRows;
    };

    let rows: any[] | null = null;
    let queryError: any = null;
    try {
      rows = await fetchAllRows('id, total_amount, profit, created_at, hpp_total, bonus_amount, meal_amount, outlet_id');
    } catch (e) {
      queryError = e;
    }

    let usedFallback = false;
    if (queryError) {
      usedFallback = true;
      try {
        rows = await fetchAllRows('id, total_amount, profit, created_at, hpp_total, outlet_id');
        queryError = null;
      } catch (e) {
        queryError = e;
      }
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
    // with the outlet reset hour instead of the calendar day
    for (let ms = startDate.getTime(); ms <= endDate.getTime(); ms += 24 * 60 * 60 * 1000) {
      const d = new Date(ms);
      const key = d.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
      map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
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
          // aggregate stored profit/hpp if present, but we'll recompute profit later
          map[key].profit += Number(r.profit || 0);
          map[key].orders += 1;
          map[key].hpp += Number(r.hpp_total || 0);
          // prefer stored bonus (sum of sale-level values)
          map[key].bonus += Number(r.bonus_amount || 0);
          // accumulate meal per outlet to avoid double-counting — sum each outlet's meal_amount then total per day
          if (!mealByDateOutlet[key]) mealByDateOutlet[key] = {};
          mealByDateOutlet[key][outletId] = (mealByDateOutlet[key][outletId] || 0) + Number(r.meal_amount || 0);
          // accumulate revenue per outlet for per-outlet meal allowance fallback
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

    // Try RPC aggregation first (more efficient). If the DB function isn't installed,
    // fall back to JS aggregation above.
    try {
      const rpcParams: any = { p_start: startRange.start.toISOString(), p_end: endRange.end.toISOString() };
      if (outlet) rpcParams.p_outlet = outlet;
      const rpc = await supabase.rpc('daily_summary', rpcParams);
      if (!rpc.error && rpc.data) {
        const rpcAgg = (rpc.data as any[]).map((r) => ({
          date: r.date,
          revenue: Number(r.revenue || 0),
          profit: Number(r.profit || 0),
          orders: Number(r.orders || 0),
          hpp: Number(r.hpp || 0),
          bonus: Number(r.bonus || 0),
          meal: Number(r.meal || 0),
        }));
        const meta = { rowsFetched: rows ? rows.length : 0, startIso: startDate.toISOString(), endIso: endDate.toISOString(), source: 'rpc' };
        return NextResponse.json({ data: rpcAgg, meta });
      }
    } catch (e) {
      // ignore and fall back to JS aggregation
    }

    const perOutletAgg = aggregateDailyOutletSummary(
      (rows || []).map((r) => ({
        date: r.created_at ? String(r.created_at).slice(0, 10) : undefined,
        created_at: r.created_at,
        outlet_id: r.outlet_id,
        total_amount: r.total_amount,
        profit: r.profit,
        hpp_total: r.hpp_total,
        bonus_amount: r.bonus_amount,
        meal_amount: r.meal_amount,
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
    const aggregated = Object.values(map)
      .map((v) => {
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
      })
      .sort((a, b) => a.date.localeCompare(b.date));
    const meta: any = {
      rowsFetched: rows ? rows.length : 0,
      queryStartIso,
      queryEndIso,
      businessDayStart: formatDateOnlyInJakarta(startDate),
      businessDayEnd: formatDateOnlyInJakarta(endDate),
    };
    if (debug) {
      meta.requested = { start, end, outlet };
      meta.resolved = {
        start: startDate.toISOString(),
        end: endDate.toISOString(),
        startRange: queryStartIso,
        endRange: queryEndIso,
        startDateOnly: formatDateOnlyInJakarta(startDate),
        endDateOnly: formatDateOnlyInJakarta(endDate),
      };
      meta.rawSampleHead = Array.isArray(rows) ? rows.slice(0, 10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.rawSampleTail = Array.isArray(rows) ? rows.slice(-10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.mapKeys = Object.keys(map).slice(0, 50);
    }
    return NextResponse.json({ data: aggregated, meta });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || String(err), stack: err.stack }, { status: 500 });
  }
}
