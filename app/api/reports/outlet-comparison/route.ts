import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');

    if (!start || !end) {
      return NextResponse.json({ error: 'start and end required' }, { status: 400 });
    }

    // Fetch sales with outlets
    const res = await supabaseServer
      .from('sales')
      .select('outlet_id, total_amount, profit, created_at, outlets(id, name)')
      .gte('created_at', start)
      .lte('created_at', end);

    if (res.error) {
      console.error('Supabase error', res.error);
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    // Try RPC first
    try {
      const rpcRes = await supabaseServer.rpc('reports_outlet_comparison', { start_ts: start, end_ts: end });
      if (!rpcRes.error && Array.isArray(rpcRes.data)) {
        // rpc returns outlet, sales, transactions, avg_transaction_value
        const stats = rpcRes.data.map((r: any) => ({
          outlet: r.outlet,
          sales: Number(r.sales || 0),
          growth: '0', // growth calculation requires historical data; keep 0 here or compute separately
          transactions: Number(r.transactions || 0),
          avgTransactionValue: Number(r.avg_transaction_value || 0),
        }));
        return NextResponse.json({ data: stats });
      }
    } catch (e) {
      console.warn('RPC reports_outlet_comparison failed, falling back', e);
    }

    const rows = res.data || [];
    const outletMap: Record<string, { name: string; sales: number; profit: number; count: number; yesterday: number }> = {};

    for (const r of rows) {
      const outlet = Array.isArray(r.outlets) ? r.outlets[0] : r.outlets;
      const id = outlet?.id || r.outlet_id || 'unknown';
      const name = outlet?.name || 'Unknown';
      if (!outletMap[id]) outletMap[id] = { name, sales: 0, profit: 0, count: 0, yesterday: 0 };
      outletMap[id].sales += Number(r.total_amount || 0);
      outletMap[id].profit += Number(r.profit || 0);
      outletMap[id].count += 1;
    }

    // For growth calculation, fetch yesterday range (simple example: previous day)
    const yesterday = new Date();
    yesterday.setDate(yesterday.getDate() - 1);
    const yStart = new Date(yesterday);
    yStart.setHours(0,0,0,0);
    const yEnd = new Date(yesterday);
    yEnd.setHours(23,59,59,999);

    const yRes = await supabaseServer
      .from('sales')
      .select('outlet_id, total_amount')
      .gte('created_at', yStart.toISOString())
      .lte('created_at', yEnd.toISOString());

    if (!yRes.error && yRes.data) {
      for (const r of yRes.data) {
        const id = r.outlet_id || 'unknown';
        if (!outletMap[id]) outletMap[id] = { name: id, sales: 0, profit: 0, count: 0, yesterday: 0 };
        outletMap[id].yesterday += Number(r.total_amount || 0);
      }
    }

    const stats = Object.values(outletMap)
      .filter(o => o.count > 0)
      .map(o => ({
        outlet: o.name,
        sales: o.sales,
        growth: o.yesterday > 0 ? (((o.sales - o.yesterday) / o.yesterday) * 100).toFixed(1) : '0',
        transactions: o.count,
        avgTransactionValue: o.count > 0 ? o.sales / o.count : 0,
      }))
      .sort((a, b) => b.sales - a.sales);

    return NextResponse.json({ data: stats });
  } catch (err) {
    console.error('Outlet aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
