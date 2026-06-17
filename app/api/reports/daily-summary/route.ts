import { NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';
import { format, parseISO, startOfDay, endOfDay } from 'date-fns';
import { calculateBonusFromJson, calculateMealAllowance, DEFAULT_BONUS_TIERS } from '@/lib/bonus-calculator';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const outlet = url.searchParams.get('outlet');

    // Validate dates; default to last 7 days if missing
    // Interpret date-only params as whole days: start at 00:00, end at 23:59:59
    const endDate = end ? endOfDay(parseISO(end)) : endOfDay(new Date());
    const startDate = start ? startOfDay(parseISO(start)) : startOfDay(new Date(Date.now() - 6 * 24 * 60 * 60 * 1000));

    // Build query
    let query = supabase
      .from('sales')
      .select('id, total_amount, profit, created_at, hpp_total, bonus_amount, meal_amount')
      .gte('created_at', startDate.toISOString())
      .lte('created_at', endDate.toISOString())
      .order('created_at', { ascending: true })
      .limit(10000);

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
        .select('id, total_amount, profit, created_at, hpp_total')
        .gte('created_at', startDate.toISOString())
        .lte('created_at', endDate.toISOString())
        .order('created_at', { ascending: true })
        .limit(10000);

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

    // initialize all dates in range
    const startDay = startDate;
    const endDay = endDate;
    for (let d = new Date(startDay); d <= endDay; d.setDate(d.getDate() + 1)) {
      const key = format(d, 'yyyy-MM-dd');
      map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
    }

    if (rows && Array.isArray(rows)) {
      for (const r of rows) {
        const key = format(new Date(r.created_at), 'yyyy-MM-dd');
        if (!map[key]) map[key] = { date: key, revenue: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
        map[key].revenue += Number(r.total_amount || 0);
        // aggregate stored profit/hpp if present, but we'll recompute profit later
        map[key].profit += Number(r.profit || 0);
        map[key].orders += 1;
        map[key].hpp += Number(r.hpp_total || 0);
        // prefer stored bonus/meal values when available (sum per sale)
        map[key].bonus += Number(r.bonus_amount || 0);
        map[key].meal += Number(r.meal_amount || 0);
      }
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

    // Compute bonus and meal per day from revenue and recompute profit = revenue - hpp - bonus - meal
    const aggregated = Object.values(map).map((v) => {
      const revenue = Math.round(v.revenue);
      const hpp = Math.round(v.hpp);
      // If stored bonus/meal exist (sum of sale-level columns), prefer them; otherwise compute from revenue
      const storedBonus = Math.round(v.bonus || 0);
      const storedMeal = Math.round(v.meal || 0);
      const bonus = storedBonus > 0 ? storedBonus : Math.round((calculateBonusFromJson(revenue, bonusTiers as any[])?.totalBonus) || 0);
      const meal = storedMeal > 0 ? storedMeal : Math.round(calculateMealAllowance(revenue));
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

    return NextResponse.json({ data: aggregated, meta: { rowsFetched: rows ? rows.length : 0 } });
  } catch (err: any) {
    return NextResponse.json({ error: err.message || String(err) }, { status: 500 });
  }
}
