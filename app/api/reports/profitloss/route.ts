import { NextResponse } from 'next/server';
import { fetchSalesAgg, fetchSalesAggFallback, resolveReportRange } from '@/lib/reports/sales-agg';

// P&L per period. Revenue and cost come from the same sales rows the sales report uses:
// cost is HPP, so `revenue - cost` equals the stored `profit` column.
export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const group = url.searchParams.get('group') === 'day' ? 'day' : 'month';
    const outlet = url.searchParams.get('outlet') || null;

    const range = resolveReportRange(url.searchParams.get('start'), url.searchParams.get('end'));
    if (!range) {
      return NextResponse.json({ error: 'start and end required (yyyy-mm-dd)' }, { status: 400 });
    }

    const agg = await fetchSalesAgg(range.startIso, range.endIso, group, outlet);
    const rows = agg ?? (await fetchSalesAggFallback(range.startIso, range.endIso, group, outlet));

    const data = rows
      .map((r) => ({
        period: r.period,
        revenue: Math.round(r.sales),
        cost: Math.round(r.hpp),
        profit: Math.round(r.profit),
        count: r.orders,
      }))
      .sort((a, b) => a.period.localeCompare(b.period));

    return NextResponse.json({
      data,
      meta: { engine: agg ? 'rpc' : 'fallback', startIso: range.startIso, endIso: range.endIso, group, outlet },
    });
  } catch (err) {
    console.error('P&L aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
