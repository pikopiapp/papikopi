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

    // Fetch sale_items joined with products and sales.created_at
    const res = await supabaseServer
      .from('sale_items')
      .select(`
        quantity,
        price,
        products(id, name),
        sales(created_at)
      `)
      .gte('sales.created_at', start)
      .lte('sales.created_at', end);

    if (res.error) {
      console.error('Supabase error', res.error);
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    // Try RPC to speed up
    try {
      const rpcRes = await supabaseServer.rpc('reports_product_performance', { start_ts: start, end_ts: end, limit_count: 10 });
      if (!rpcRes.error && Array.isArray(rpcRes.data)) {
        return NextResponse.json({ data: rpcRes.data });
      }
    } catch (e) {
      console.warn('RPC reports_product_performance failed, falling back', e);
    }

    const items = res.data || [];
    const map: Record<string, { sold: number; revenue: number }> = {};

    for (const it of items) {
      const prod = Array.isArray(it.products) ? it.products[0] : it.products;
      const name = prod?.name || 'Unknown';
      const qty = Number(it.quantity || 0);
      const rev = Number(it.price || 0) * qty;
      if (!map[name]) map[name] = { sold: 0, revenue: 0 };
      map[name].sold += qty;
      map[name].revenue += rev;
    }

    const out = Object.entries(map)
      .map(([product, v]) => ({ product, sold: v.sold, revenue: v.revenue }))
      .sort((a, b) => b.revenue - a.revenue)
      .slice(0, 10);

    return NextResponse.json({ data: out });
  } catch (err) {
    console.error('Product aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
