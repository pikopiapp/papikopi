import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import { format, parseISO, startOfDay, endOfDay } from 'date-fns';
import { calculateBonusFromJson, calculateMealAllowance, DEFAULT_BONUS_TIERS } from '@/lib/bonus-calculator';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const debug = url.searchParams.get('debug');
    const outlet = url.searchParams.get('outlet');

    // Validate dates; default to last 7 days if missing
    // Interpret date-only params as whole days: start at 00:00, end at 23:59:59
    const endDate = end ? endOfDay(parseISO(end)) : endOfDay(new Date());
    const startDate = start ? startOfDay(parseISO(start)) : startOfDay(new Date(Date.now() - 6 * 24 * 60 * 60 * 1000));

    // Build query
    let query = supabase
      .from('sales')
      .select('id, total_amount, profit, created_at, hpp_total, bonus_amount, meal_amount, outlet_id')
      .gte('created_at', startDate.toISOString())
      .lte('created_at', endDate.toISOString())
      .order('created_at', { ascending: false })
      .range(0, 100000);

    if (outlet) query = query.eq('outlet_id', outlet);

    // Try full query including optional columns (hpp_total, bonus_amount, meal_amount).
    // If the DB schema doesn't have these columns, fall back to a minimal select.
    let rows: any[] | null = null;
    let queryError: any = null;
    try {
      const res = await query;
      rows = res.data as any[] | null;
      queryError = res.error;
    } catch (e) {
      queryError = e;
    }

    let usedFallback = false;
    if (queryError) {
      // retry with a minimal select to avoid missing-column errors
      usedFallback = true;
      const fallbackQuery = supabase
        .from('sales')
        .select('id, total_amount, profit, created_at, hpp_total, outlet_id')
        .gte('created_at', startDate.toISOString())
        .lte('created_at', endDate.toISOString())
        .order('created_at', { ascending: false })
        .range(0, 100000);

      if (outlet) fallbackQuery.eq('outlet_id', outlet);

      try {
        const fres = await fallbackQuery;
        rows = fres.data as any[] | null;
        queryError = fres.error;
      } catch (e) {
        queryError = e;
      }
    }

    if (queryError) {
      return NextResponse.json({ error: queryError.message || String(queryError) }, { status: 500 });
    }

    const map: Record<string, { date: string; revenue: number; profit: number; orders: number; hpp: number; bonus: number; meal: number }> = {};

    // helper to accumulate meal per-date-per-outlet, so we sum each outlet once per day
    const mealByDateOutlet: Record<string, Record<string, number>> = {};
    // track revenue per outlet per date so allowances are computed per-outlet (not from total revenue)
    const revenueByDateOutlet: Record<string, Record<string, number>> = {};

    // initialize all dates in range using UTC day boundaries and format keys
    // with Jakarta timezone so initialization matches grouping logic below
    const startMs = Date.UTC(startDate.getUTCFullYear(), startDate.getUTCMonth(), startDate.getUTCDate());
    const endMs = Date.UTC(endDate.getUTCFullYear(), endDate.getUTCMonth(), endDate.getUTCDate());
    for (let ms = startMs; ms <= endMs; ms += 24 * 60 * 60 * 1000) {
      const d = new Date(ms);
      const key = d.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
      map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
    }

    if (rows && Array.isArray(rows)) {
      for (const r of rows) {
        // Normalize DB `created_at` to an explicit UTC ISO before creating a Date,
        // because some DB drivers return "YYYY-MM-DD HH:mm:ss[.ffffff]" (no TZ),
        // and `new Date(...)` may be interpreted inconsistently. Treat values
        // without an explicit timezone as UTC by appending 'Z'.
        let created = String(r.created_at || '');
        const hasTZ = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created);
        if (!hasTZ) {
          created = created.replace(' ', 'T');
          if (!created.endsWith('Z')) created = created + 'Z';
        }
        const createdDate = new Date(created);
        const key = createdDate.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
        if (!map[key]) map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
        map[key].revenue += Number(r.total_amount || 0);
        // aggregate stored profit/hpp if present, but we'll recompute profit later
        map[key].profit += Number(r.profit || 0);
        map[key].orders += 1;
        map[key].hpp += Number(r.hpp_total || 0);
        // prefer stored bonus (sum of sale-level values)
        map[key].bonus += Number(r.bonus_amount || 0);
        // accumulate meal per outlet to avoid double-counting — sum each outlet's meal_amount then total per day
        const outletId = r.outlet_id ? String(r.outlet_id) : 'unknown';
        if (!mealByDateOutlet[key]) mealByDateOutlet[key] = {};
        mealByDateOutlet[key][outletId] = (mealByDateOutlet[key][outletId] || 0) + Number(r.meal_amount || 0);
        // accumulate revenue per outlet for per-outlet meal allowance fallback
        if (!revenueByDateOutlet[key]) revenueByDateOutlet[key] = {};
        revenueByDateOutlet[key][outletId] = (revenueByDateOutlet[key][outletId] || 0) + Number(r.total_amount || 0);
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
      const rpcParams: any = { p_start: startDate.toISOString(), p_end: endDate.toISOString() };
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
      meta.rawSampleHead = Array.isArray(rows) ? rows.slice(0, 10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.rawSampleTail = Array.isArray(rows) ? rows.slice(-10).map(r => ({ created_at: r.created_at, id: r.id })) : [];
      meta.mapKeys = Object.keys(map).slice(0, 50);
    }
    return NextResponse.json({ data: aggregated, meta });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || String(err) }, { status: 500 });
  }
}
