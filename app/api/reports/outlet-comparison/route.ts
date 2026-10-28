import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';
import { fetchAllPaginatedRows } from '@/lib/supabase-pagination';
import { resolveReportRange } from '@/lib/reports/sales-agg';

interface OutletTotals {
  outlet: string;
  sales: number;
  orders: number;
}

// Per-outlet totals for the selected window, plus growth vs the immediately preceding
// window of the same length (comparing a whole period against a single day is misleading).
async function loadOutletTotals(startIso: string, endIso: string): Promise<OutletTotals[]> {
  const { data, error } = await supabaseServer.rpc('get_sales_daily_summary', {
    p_start: startIso,
    p_end: endIso,
    p_outlet: null,
  });

  if (!error && Array.isArray(data)) {
    const totals = new Map<string, OutletTotals>();
    for (const r of data as any[]) {
      const id = String(r.outlet_id ?? 'unknown');
      const entry = totals.get(id) ?? { outlet: id, sales: 0, orders: 0 };
      entry.sales += Number(r.revenue ?? 0);
      entry.orders += Number(r.orders ?? 0);
      totals.set(id, entry);
    }
    return Array.from(totals.values());
  }

  // Fallback: page through sales so months above the 1,000-row cap stay correct.
  const rows = await fetchAllPaginatedRows<any>(
    supabaseServer
      .from('sales')
      .select('outlet_id, total_amount')
      .gte('created_at', startIso)
      .lte('created_at', endIso)
      .order('created_at', { ascending: true })
  );
  const totals = new Map<string, OutletTotals>();
  for (const r of rows) {
    const id = r.outlet_id ? String(r.outlet_id) : 'unknown';
    const entry = totals.get(id) ?? { outlet: id, sales: 0, orders: 0 };
    entry.sales += Number(r.total_amount ?? 0);
    entry.orders += 1;
    totals.set(id, entry);
  }
  return Array.from(totals.values());
}

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const range = resolveReportRange(url.searchParams.get('start'), url.searchParams.get('end'));
    if (!range) {
      return NextResponse.json({ error: 'start and end required (yyyy-mm-dd)' }, { status: 400 });
    }

    const startMs = new Date(range.startIso).getTime();
    const endMs = new Date(range.endIso).getTime();
    const spanMs = Math.max(endMs - startMs + 1, 1);
    const prevEndIso = new Date(startMs - 1).toISOString();
    const prevStartIso = new Date(startMs - spanMs).toISOString();

    const [current, previous] = await Promise.all([
      loadOutletTotals(range.startIso, range.endIso),
      loadOutletTotals(prevStartIso, prevEndIso),
    ]);

    const prevById = new Map(previous.map((p) => [p.outlet, p.sales]));
    const ids = current.map((c) => c.outlet).filter((id) => id !== 'unknown');
    const names: Record<string, string> = {};
    if (ids.length > 0) {
      const { data: outlets } = await supabaseServer.from('outlets').select('id, name').in('id', ids);
      for (const o of outlets ?? []) names[String((o as any).id)] = (o as any).name || String((o as any).id);
    }

    const data = current
      .filter((c) => c.orders > 0)
      .map((c) => {
        const prev = prevById.get(c.outlet) ?? 0;
        return {
          outlet: names[c.outlet] || (c.outlet === 'unknown' ? 'Unknown' : c.outlet),
          sales: Math.round(c.sales),
          growth: prev > 0 ? (((c.sales - prev) / prev) * 100).toFixed(1) : '0',
          transactions: c.orders,
          avgTransactionValue: c.orders > 0 ? c.sales / c.orders : 0,
        };
      })
      .sort((a, b) => b.sales - a.sales);

    return NextResponse.json({
      data,
      meta: { startIso: range.startIso, endIso: range.endIso, previousStartIso: prevStartIso },
    });
  } catch (err) {
    console.error('Outlet aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
