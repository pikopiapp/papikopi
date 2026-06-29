import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { parseISO, startOfDay, endOfDay, isValid, format } from 'date-fns';

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
    const until = url.searchParams.get('until');

    const buildQuery = () => {
      let q = svc.from('sales').select('id,outlet_id,total_amount,hpp_total,profit,created_at,barista_id,payment_method,bonus_amount');
      if (outlet_id) q = q.eq('outlet_id', outlet_id);

      if (since) {
        const parsed = parseISO(since as string);
        if (isValid(parsed)) {
          q = q.gte('created_at', startOfDay(parsed).toISOString());
        } else {
          q = q.gte('created_at', since as string);
        }
      }
      if (until) {
        const parsed = parseISO(until as string);
        if (isValid(parsed)) {
          q = q.lte('created_at', endOfDay(parsed).toISOString());
        } else {
          q = q.lte('created_at', until as string);
        }
      }

      // server-side: exclude zero/negative sales or refunds so all clients see the same filtered results
      // allow zero profit transactions but exclude negative profits (refunds)
      q = q.gt('total_amount', 0).gte('profit', 0);
      // ensure we don't include rows dated in the future or far beyond 'now'
      q = q.lte('created_at', new Date().toISOString()).order('created_at', { ascending: true });
      return q;
    };

    const allRows: any[] = [];
    const pageSize = 1000;
    let pageStart = 0;

    while (true) {
      const pageQuery = buildQuery().range(pageStart, pageStart + pageSize - 1);
      const { data: pageData, error } = await pageQuery;
      if (error) return NextResponse.json({ error: error.message }, { status: 500 });
      if (!pageData || pageData.length === 0) break;
      allRows.push(...(pageData as any[]));
      if (pageData.length < pageSize) break;
      pageStart += pageSize;
    }

    // Normalize result: fetch barista names for barista_id values
    const baristaIds = Array.from(new Set(allRows.map(r => r.barista_id).filter(Boolean)));
    let baristaMap: Record<string, string> = {};
    if (baristaIds.length > 0) {
      const { data: usersData, error: usersError } = await svc.from('users').select('id,name').in('id', baristaIds);
      if (!usersError && Array.isArray(usersData)) {
        usersData.forEach((u: any) => { baristaMap[u.id] = u.name; });
      }
    }

    const saleIds = Array.from(new Set(allRows.map((r) => String(r.id || '')).filter(Boolean)));
    const saleItemsBySaleId: Record<string, any[]> = {};
    if (saleIds.length > 0) {
      const batchSize = 500;
      const allItems: any[] = [];
      for (let i = 0; i < saleIds.length; i += batchSize) {
        const batch = saleIds.slice(i, i + batchSize);
        const { data: items, error: itemsError } = await svc.from('sale_items').select('*').in('sale_id', batch);
        if (itemsError) return NextResponse.json({ error: itemsError.message }, { status: 500 });
        if (Array.isArray(items)) allItems.push(...items);
      }
      allItems.forEach((item) => {
        const saleId = String(item.sale_id || '');
        if (!saleId) return;
        if (!saleItemsBySaleId[saleId]) saleItemsBySaleId[saleId] = [];
        saleItemsBySaleId[saleId].push(item);
      });
    }

    const normalized = allRows.map((r) => ({
      ...r,
      sale_items: saleItemsBySaleId[String(r.id || '')] || [],
      items: saleItemsBySaleId[String(r.id || '')] || [],
      barista_name: baristaMap[r.barista_id] || null,
    }));

    const group = url.searchParams.get('group');
    // support server-side monthly aggregation to reduce client work
    if (group === 'monthly') {
      const monthlyRows = (normalized || []) as any[];
      const agg: Record<string, { period: string; outlet_profit: number; transactions: number }> = {};
      monthlyRows.forEach((r) => {
        if (!r?.created_at) return;
        const period = r.created_at.slice(0, 7); // YYYY-MM
        if (!agg[period]) agg[period] = { period, outlet_profit: 0, transactions: 0 };
        agg[period].outlet_profit += Number(r.profit) || 0;
        agg[period].transactions += 1;
      });
      const out = Object.values(agg).sort((a, b) => a.period.localeCompare(b.period));
      return NextResponse.json({ sales: out });
    }

    return NextResponse.json(normalized || []);
  } catch (err: any) {
    console.error('by-outlet API error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
