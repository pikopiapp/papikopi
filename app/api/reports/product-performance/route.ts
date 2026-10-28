import { NextResponse } from 'next/server';
import { resolveReportRange } from '@/lib/reports/sales-agg';
import { loadProductPerformance } from '@/lib/reports/product-performance';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const range = resolveReportRange(url.searchParams.get('start'), url.searchParams.get('end'));
    if (!range) {
      return NextResponse.json({ error: 'start and end required (yyyy-mm-dd)' }, { status: 400 });
    }

    const data = await loadProductPerformance(range.startIso, range.endIso);

    return NextResponse.json({
      data,
      meta: { startIso: range.startIso, endIso: range.endIso },
    });
  } catch (err) {
    console.error('Product aggregation error', err);
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
