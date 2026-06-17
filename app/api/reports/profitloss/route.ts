import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';

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
      .select('created_at, total_amount, hpp_total, profit')
      .gte('created_at', start)
      .lte('created_at', end)
      .order('created_at', { ascending: true });

    if (res.error) {
      console.error('Supabase error', res.error);
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    const rows = res.data || [];
    const map: Record<string, { revenue: number; cost: number; profit: number; count: number }> = {};

    for (const r of rows) {
      const dt = new Date(r.created_at);
      const key = group === 'day'
        ? `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}-${String(dt.getDate()).padStart(2, '0')}`
        : `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}`;

      if (!map[key]) map[key] = { revenue: 0, cost: 0, profit: 0, count: 0 };
      map[key].revenue += Number(r.total_amount || 0);
      map[key].cost += Number(r.hpp_total || 0);
      map[key].profit += Number(r.profit || 0);
      map[key].count += 1;
    }

    const out = Object.entries(map).map(([period, v]) => ({ period, revenue: v.revenue, cost: v.cost, profit: v.profit, count: v.count }));
    out.sort((a, b) => (a.period > b.period ? 1 : -1));

    return NextResponse.json({ data: out });
  } catch (err) {
    console.error('P&L aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
