import { NextResponse } from 'next/server';
import { supabaseServer } from '@/lib/supabaseServer';

export async function GET(req: Request) {
  try {
    const url = new URL(req.url);
    const start = url.searchParams.get('start');
    const end = url.searchParams.get('end');
    const group = url.searchParams.get('group') || 'month'; // 'day' or 'month'
    const outlet = url.searchParams.get('outlet');
    const debug = url.searchParams.get('debug') === '1';

    if (!start || !end) {
      return NextResponse.json({ error: 'start and end query params required' }, { status: 400 });
    }

    // Interpret date-only params (yyyy-mm-dd) as whole local days in Asia/Jakarta.
    // Convert them to UTC ISO ranges so DB comparisons include the full local day.
    let startIso = start;
    let endIso = end;
    const isYmd = (s: string | null) => !!s && /^\d{4}-\d{2}-\d{2}$/.test(s);
    if (isYmd(start) && isYmd(end)) {
      // start at 00:00:00 Asia/Jakarta, end at 23:59:59.999 Asia/Jakarta
      try {
        startIso = new Date(`${start}T00:00:00+07:00`).toISOString();
        endIso = new Date(`${end}T23:59:59.999+07:00`).toISOString();
      } catch {
        // fallback to raw values if parsing fails
        startIso = start;
        endIso = end;
      }
    }

    // Try calling a DB RPC (reports_sales_agg) for optimized aggregation
    // Pass `p_outlet` (nullable) so server-side agg can filter when supported.
    try {
      const rpcRes = await supabaseServer.rpc('reports_sales_agg', { p_start: startIso, p_end: endIso, p_grp: group, p_outlet: outlet || null });
      if (!rpcRes.error && Array.isArray(rpcRes.data)) {
        if (debug) return NextResponse.json({ data: rpcRes.data, meta: { source: 'rpc', startIso, endIso, outlet: outlet || null } });
        return NextResponse.json({ data: rpcRes.data });
      }
      if (rpcRes.error) {
        console.warn('RPC reports_sales_agg returned error, falling back to JS aggregation', rpcRes.error);
        // do not return here; continue to fallback so consumers get data
      }
    } catch (rpcErr) {
      console.warn('RPC reports_sales_agg failed, falling back to JS aggregation', rpcErr);
      // continue to fallback
    }

    // Fallback: Fetch only needed columns and aggregate in application layer
    let query = supabaseServer
      .from('sales')
      .select('created_at, total_amount, profit, outlet_id')
      .gte('created_at', startIso)
      .lte('created_at', endIso)
      .order('created_at', { ascending: true });

    if (outlet) query = query.eq('outlet_id', outlet);

    const res = await query;

    if (res.error) {
      console.error('Supabase error', res.error);
      if (debug) return NextResponse.json({ error: 'supabase_error', details: res.error }, { status: 500 });
      return NextResponse.json({ error: 'supabase_error' }, { status: 500 });
    }

    const rows = res.data || [];
    const map: Record<string, { sales: number; profit: number; count: number }> = {};
    for (const r of rows) {
      // Normalize created_at values similar to daily-summary: treat timestamps
      // without timezone as UTC by appending 'Z', then compute local Jakarta day.
      let created = String(r.created_at || '');
      const hasTZ = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created);
      if (!hasTZ) {
        created = created.replace(' ', 'T');
        if (!created.endsWith('Z')) created = created + 'Z';
      }
      const dt = new Date(created);
      const key = group === 'day'
        ? dt.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' })
        : `${dt.getUTCFullYear()}-${String(dt.getUTCMonth() + 1).padStart(2, '0')}`;

      if (!map[key]) map[key] = { sales: 0, profit: 0, count: 0 };
      map[key].sales += Number(r.total_amount || 0);
      map[key].profit += Number(r.profit || 0);
      map[key].count += 1;
    }

    const out = Object.entries(map).map(([period, v]) => ({ period, sales: v.sales, profit: v.profit, count: v.count }));
    // Ensure ordered by period
    out.sort((a, b) => (a.period > b.period ? 1 : -1));

    if (debug) return NextResponse.json({ data: out, meta: { source: outlet ? 'fallback-filtered' : 'fallback', startIso, endIso, outlet } });
    return NextResponse.json({ data: out });
  } catch (err) {
    console.error('Sales aggregation error', err);
    if ((new URL(req.url)).searchParams.get('debug') === '1') {
      return NextResponse.json({ error: 'internal', details: String(err) }, { status: 500 });
    }
    return NextResponse.json({ error: 'internal' }, { status: 500 });
  }
}
