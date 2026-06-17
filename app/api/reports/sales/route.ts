import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const group = url.searchParams.get('group') || 'month'; // 'day' or 'month'

    if (!start || !end) {
      return NextResponse.json({ error: 'start and end query params required' }, { status: 400 });
    }

    // Try calling a DB RPC (reports_sales_agg) for optimized aggregation
    try {
      const rpcRes = await supabaseServer.rpc('reports_sales_agg', { start_ts: start, end_ts: end, grp: group });
      if (!rpcRes.error && Array.isArray(rpcRes.data)) {
        return NextResponse.json({ data: rpcRes.data });
      }
    } catch (rpcErr) {
      // fall through to JS aggregation fallback
      console.warn('RPC reports_sales_agg failed, falling back to JS aggregation', rpcErr);
    }

    // Fallback: Fetch only needed columns and aggregate in application layer
    const res = await supabaseServer
      .from('sales')
      .select('created_at, total_amount, profit')
      .gte('created_at', start)
      .lte('created_at', end)
      .order('created_at', { ascending: true });

    if (res.error) {
      console.error('Supabase error', res.error);
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    const rows = res.data || [];
    const map: Record<string, { sales: number; profit: number; count: number }> = {};
    for (const r of rows) {
      const dt = new Date(r.created_at);
      const key = group === 'day'
        ? `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}-${String(dt.getDate()).padStart(2, '0')}`
        : `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}`;

      if (!map[key]) map[key] = { sales: 0, profit: 0, count: 0 };
      map[key].sales += Number(r.total_amount || 0);
      map[key].profit += Number(r.profit || 0);
      map[key].count += 1;
    }

    const out = Object.entries(map).map(([period, v]) => ({ period, sales: v.sales, profit: v.profit, count: v.count }));
    // Ensure ordered by period
    out.sort((a, b) => (a.period > b.period ? 1 : -1));

    return NextResponse.json({ data: out });
  } catch (err) {
    console.error('Sales aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
