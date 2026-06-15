import { NextResponse, NextRequest } from 'next/server';
import { supabase } from '@/lib/supabase';

// Simple in-memory cache for dev; key -> { ts, payload }
const CACHE_TTL = 10 * 1000; // 10s
const cache = new Map<string, { ts: number; payload: any }>();

function makeCacheKey(params: Record<string, any>) {
  return Object.keys(params)
    .sort()
    .map((k) => `${k}=${params[k] ?? ''}`)
    .join('&');
}

export async function GET(request: NextRequest) {
  try {
    // support pagination via ?limit=100&page=1 and optional filters: outlet, from_date, to_date
    const url = new URL(request.url);
    const limitParam = Number(url.searchParams.get('limit') || '100');
    const pageParam = Number(url.searchParams.get('page') || '1');
    const outletFilter = url.searchParams.get('outlet') || null;
    const fromDate = url.searchParams.get('from_date') || null;
    const toDate = url.searchParams.get('to_date') || null;

    const limit = Math.min(Math.max(1, limitParam || 100), 500); // clamp 1..500
    const page = Math.max(1, pageParam || 1);
    const from = (page - 1) * limit;
    const to = page * limit - 1;

    const cacheKey = makeCacheKey({ limit, page, outlet: outletFilter, fromDate, toDate });
    const cached = cache.get(cacheKey);
    if (cached && Date.now() - cached.ts < CACHE_TTL) {
      return NextResponse.json(cached.payload);
    }

    // build base query with filters
    let baseQuery: any = supabase.from('cash_deposit_handovers').select('*');
    if (outletFilter) baseQuery = baseQuery.eq('outlet_id', outletFilter);
    if (fromDate) baseQuery = baseQuery.gte('submitted_at', fromDate);
    if (toDate) baseQuery = baseQuery.lte('submitted_at', toDate);

    const { data: handovers, error: handoverErr } = await baseQuery
      .order('submitted_at', { ascending: false })
      .range(from, to);

    if (handoverErr) {
      console.error('Supabase cash handovers error:', handoverErr);
      return NextResponse.json({ data: [], total: 0, page, limit });
    }

    // count total matching rows (without range)
    let countQuery: any = supabase.from('cash_deposit_handovers').select('id', { count: 'exact', head: true });
    if (outletFilter) countQuery = countQuery.eq('outlet_id', outletFilter);
    if (fromDate) countQuery = countQuery.gte('submitted_at', fromDate);
    if (toDate) countQuery = countQuery.lte('submitted_at', toDate);
    const { count } = await countQuery;
    const total = typeof count === 'number' ? count : (handovers ? handovers.length : 0);

    if (!handovers || (Array.isArray(handovers) && handovers.length === 0)) {
      const payloadEmpty = { data: [], total, page, limit };
      cache.set(cacheKey, { ts: Date.now(), payload: payloadEmpty });
      return NextResponse.json(payloadEmpty);
    }

    const outletIds = [...new Set((handovers as any[]).map((h: any) => h.outlet_id))];
    const userIds = [...new Set((handovers as any[]).flatMap((h: any) => [h.barista_id, h.approved_by]).filter(Boolean))];

    const [outletsRes, usersRes] = await Promise.all([
      outletIds.length > 0
        ? supabase.from('outlets').select('id, name').in('id', outletIds)
        : Promise.resolve({ data: [] }),
      userIds.length > 0
        ? supabase.from('users').select('id, name').in('id', userIds)
        : Promise.resolve({ data: [] }),
    ]);

    const outletMap = new Map((outletsRes.data || []).map((o: any) => [o.id, o.name]));
    const userMap = new Map((usersRes.data || []).map((u: any) => [u.id, u.name]));

    const formatted = (handovers as any[]).map((s) => ({
      id: s.id,
      outlet_id: s.outlet_id,
      outlet_name: outletMap.get(s.outlet_id) || 'Unknown',
      handled_by: userMap.get(s.barista_id) || 'Unknown',
      approved_by: s.approved_by ? userMap.get(s.approved_by) || null : null,
      start_amount: s.total_omset || 0,
      qris_amount: s.qris_amount || 0,
      bonus: s.bonus || 0,
      meal_allowance: s.meal_allowance || 0,
      cash_received: s.cash_amount || 0,
      cash_handed_over: s.deposit_amount || 0,
      difference: (s.cash_amount || 0) - (s.deposit_amount || 0),
      status: s.status,
      created_at: s.submitted_at,
      approved_at: s.approved_at || null,
    }));

    const payload = { data: formatted, total, page, limit };
    cache.set(cacheKey, { ts: Date.now(), payload });
    return NextResponse.json(payload);
  } catch (error) {
    console.error('API /cash-handovers error:', error);
    return NextResponse.json({ data: [], total: 0, page: 1, limit: 100 });
  }
}
