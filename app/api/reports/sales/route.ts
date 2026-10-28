import { NextResponse } from 'next/server';
import { fetchSalesAgg, fetchSalesAggFallback, resolveReportRange } from '@/lib/reports/sales-agg';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const group = url.searchParams.get('group') === 'day' ? 'day' : 'month';
    const outlet = url.searchParams.get('outlet') || null;
    const debug = url.searchParams.get('debug') === '1';

    const range = resolveReportRange(url.searchParams.get('start'), url.searchParams.get('end'));
    if (!range) {
      return NextResponse.json({ error: 'start and end query params required (yyyy-mm-dd)' }, { status: 400 });
    }

    const agg = await fetchSalesAgg(range.startIso, range.endIso, group, outlet);
    const rows = agg ?? (await fetchSalesAggFallback(range.startIso, range.endIso, group, outlet));

    const data = rows
      .map((r) => ({
        period: r.period,
        sales: Math.round(r.sales),
        profit: Math.round(r.profit),
        orders: r.orders,
        count: r.orders,
        hpp: Math.round(r.hpp),
        bonus: Math.round(r.bonus),
        meal: Math.round(r.meal),
      }))
      .sort((a, b) => a.period.localeCompare(b.period));

    if (debug) {
      return NextResponse.json({
        data,
        meta: { source: agg ? 'rpc' : 'fallback', startIso: range.startIso, endIso: range.endIso, group, outlet },
      });
    }
    return NextResponse.json({ data });
  } catch (err) {
    console.error('Sales aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
