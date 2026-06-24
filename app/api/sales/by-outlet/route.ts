import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const SUPA_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
const SUPA_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPA_URL || !SUPA_SERVICE_KEY) {
  throw new Error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY env');
}

const svc = createClient(SUPA_URL, SUPA_SERVICE_KEY, { auth: { persistSession: false } });

export async function GET(request: Request) {
  try {
    const url = new URL(request.url);
    const outlet_id = url.searchParams.get('outlet_id') || url.searchParams.get('outlet');
    const since = url.searchParams.get('since');

    // allow optional `outlet` or `outlet_id` param; when omitted, return across all outlets
    let q = svc.from('sales').select('id,outlet_id,total_amount,hpp_total,profit,created_at');
    if (outlet_id) q = q.eq('outlet_id', outlet_id);

    if (since) q = q.gte('created_at', since as string);
    // server-side: exclude zero/negative sales or refunds so all clients see the same filtered results
    // allow zero profit transactions but exclude negative profits (refunds)
    q = q.gt('total_amount', 0).gte('profit', 0);
    // ensure we don't include rows dated in the future or far beyond 'now'
    q = q.lte('created_at', new Date().toISOString()).order('created_at', { ascending: true });

    const { data, error } = await q;
    if (error) return NextResponse.json({ error: error.message }, { status: 500 });

    const group = url.searchParams.get('group');
    // support server-side monthly aggregation to reduce client work
    if (group === 'monthly') {
      const rows = (data || []) as any[];
      const agg: Record<string, { period: string; outlet_profit: number; transactions: number }> = {};
      rows.forEach((r) => {
        if (!r?.created_at) return;
        const period = r.created_at.slice(0, 7); // YYYY-MM
        if (!agg[period]) agg[period] = { period, outlet_profit: 0, transactions: 0 };
        agg[period].outlet_profit += Number(r.profit) || 0;
        agg[period].transactions += 1;
      });
      const out = Object.values(agg).sort((a, b) => a.period.localeCompare(b.period));
      return NextResponse.json({ sales: out });
    }

    return NextResponse.json({ sales: data || [] });
  } catch (err: any) {
    console.error('by-outlet API error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
