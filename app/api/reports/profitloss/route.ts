import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';
import { calculateBonusFromJson, calculateMealAllowance, DEFAULT_BONUS_TIERS } from '@/lib/bonus-calculator';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const group = url.searchParams.get('group') || 'month';

    if (!start || !end) {
      return NextResponse.json({ error: 'start and end required' }, { status: 400 });
    }

    // Try DB RPC first
    try {
      const rpcRes = await supabaseServer.rpc('reports_profitloss_agg', { start_ts: start, end_ts: end, grp: group });
      if (!rpcRes.error && Array.isArray(rpcRes.data)) {
        return NextResponse.json({ data: rpcRes.data });
      }
    } catch (e) {
      console.warn('RPC reports_profitloss_agg failed, falling back', e);
    }

    const res = await supabaseServer
      .from('sales')
      .select('created_at, outlet_id, total_amount, hpp_total, bonus_amount, meal_amount, profit')
      .gte('created_at', start)
      .lte('created_at', end)
      .order('created_at', { ascending: true });

    if (res.error) {
      console.error('Supabase error', res.error);
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    const rows = res.data || [];

    // Build per-period totals but compute meal/bonus per-outlet-per-day
    // perDayOutletKey = `${period}::${dateYmd}::${outletId}`
    const perPeriodTotals: Record<string, { revenue: number; hpp: number; bonus: number; meal: number; count: number }> = {};
    const perDayOutlet: Record<string, { revenue: number; hpp: number; storedBonus: number; storedMeal: number }> = {};

    for (const r of rows) {
      const dt = new Date(r.created_at);
      const dateYmd = `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}-${String(dt.getDate()).padStart(2, '0')}`;
      const period = group === 'day' ? dateYmd : `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}`;
      const outletId = r.outlet_id ? String(r.outlet_id) : 'unknown';

      if (!perPeriodTotals[period]) perPeriodTotals[period] = { revenue: 0, hpp: 0, bonus: 0, meal: 0, count: 0 };

      const total = Number(r.total_amount || 0);
      const hpp = Number(r.hpp_total || 0);
      const storedBonus = Number(r.bonus_amount || 0);
      const storedMeal = Number(r.meal_amount || 0);

      perPeriodTotals[period].revenue += total;
      perPeriodTotals[period].hpp += hpp;
      perPeriodTotals[period].count += 1;

      const dayOutletKey = `${period}::${dateYmd}::${outletId}`;
      if (!perDayOutlet[dayOutletKey]) perDayOutlet[dayOutletKey] = { revenue: 0, hpp: 0, storedBonus: 0, storedMeal: 0 };
      perDayOutlet[dayOutletKey].revenue += total;
      perDayOutlet[dayOutletKey].hpp += hpp;
      perDayOutlet[dayOutletKey].storedBonus += storedBonus;
      perDayOutlet[dayOutletKey].storedMeal += storedMeal;
    }

    // For each perDayOutlet, compute bonus/meal (prefer stored, otherwise compute from revenue)
    for (const key of Object.keys(perDayOutlet)) {
      const parts = key.split('::');
      const period = parts[0];
      const entry = perDayOutlet[key];
      const revenue = Math.round(entry.revenue || 0);
      const hpp = Math.round(entry.hpp || 0);
      const bonus = entry.storedBonus > 0 ? Math.round(entry.storedBonus) : Math.round((calculateBonusFromJson(revenue, DEFAULT_BONUS_TIERS as any[])?.totalBonus) || 0);
      const meal = entry.storedMeal > 0 ? Math.round(entry.storedMeal) : Math.round(calculateMealAllowance(revenue));

      perPeriodTotals[period].bonus += bonus;
      perPeriodTotals[period].meal += meal;
      // ensure hpp already included from rows; keep sum as-is
    }

    const out = Object.entries(perPeriodTotals).map(([period, v]) => {
      const revenue = Math.round(v.revenue || 0);
      const hpp = Math.round(v.hpp || 0);
      const bonus = Math.round(v.bonus || 0);
      const meal = Math.round(v.meal || 0);
      const profit = revenue - (hpp + bonus + meal);
      return { period, revenue, cost: hpp + bonus + meal, profit, count: v.count };
    });
    out.sort((a, b) => (a.period > b.period ? 1 : -1));

    return NextResponse.json({ data: out });
  } catch (err) {
    console.error('P&L aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
