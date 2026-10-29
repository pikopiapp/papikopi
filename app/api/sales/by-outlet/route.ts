import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import {
  getDateBoundaryInJakarta,
  parseDateOnlyAsJakarta,
  parseTimestampAsJakarta,
  getBusinessDayRange,
  formatAsUtcNaiveIso,
} from '@/lib/helpers/business-day';
import { fetchAllPaginatedRows } from '../../../../lib/supabase-pagination';

// Date-only values mean "that Jakarta day"; full timestamps are taken literally so a
// business-day window (04:00 → 03:59 next day) is not flattened back to calendar days.
function parseRangeBoundary(value: string, endOfDay: boolean): Date {
  if (/^\d{4}-\d{2}-\d{2}$/.test(value.trim())) {
    return getDateBoundaryInJakarta(value, endOfDay);
  }
  return parseTimestampAsJakarta(value);
}

function normalizeNumber(value: unknown): number {
  const parsed = Number(value ?? 0);
  return Number.isFinite(parsed) ? parsed : 0;
}

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
    const businessDay = url.searchParams.get('business_day');
    const businessDayStartHour = Number(url.searchParams.get('business_day_start_hour') ?? 4);
    const useBusinessDay = businessDay === '1' || businessDay === 'true' || businessDay === 'yes';
    const debug = url.searchParams.get('debug') === '1' || url.searchParams.get('debug') === 'true';
    const group = url.searchParams.get('group');

    // Items are opt-in: list/KPI requests omit sale_items entirely; detail views ask for
    // include_items=1 (all fields), while unit counters ask for include_items=units.
    const includeItemsRaw = (url.searchParams.get('include_items') || '').toLowerCase();
    const itemsMode: 'none' | 'units' | 'full' =
      includeItemsRaw === '1' || includeItemsRaw === 'true' || includeItemsRaw === 'yes'
        ? 'full'
        : includeItemsRaw === 'units'
          ? 'units'
          : 'none';
    const itemsSelect =
      group === 'monthly' || itemsMode === 'none'
        ? null
        : itemsMode === 'full'
          ? 'sale_items(*)'
          : 'sale_items(quantity,hpp)';

    const buildQuery = () => {
      const columns = 'id,outlet_id,total_amount,hpp_total,profit,created_at,barista_id,payment_method,bonus_amount';
      let q = svc.from('sales').select(itemsSelect ? `${columns},${itemsSelect}` : columns);
      if (outlet_id) q = q.eq('outlet_id', outlet_id);

      if (since) {
        const parsed = useBusinessDay
          ? getBusinessDayRange(parseDateOnlyAsJakarta(since as string), businessDayStartHour).start
          : parseRangeBoundary(since as string, false);
        q = q.gte('created_at', formatAsUtcNaiveIso(parsed));
      }
      if (until) {
        const parsed = useBusinessDay
          ? getBusinessDayRange(parseDateOnlyAsJakarta(until as string), businessDayStartHour).end
          : parseRangeBoundary(until as string, true);
        q = q.lte('created_at', formatAsUtcNaiveIso(parsed));
      }

      q = q.gte('total_amount', 0);
      q = q.lte('created_at', formatAsUtcNaiveIso(new Date())).order('created_at', { ascending: true });
      return q;
    };

    let allRows: any[] = [];
    try {
      allRows = await fetchAllPaginatedRows<any>(buildQuery());
      allRows = (allRows || []).filter((row) => normalizeNumber(row?.total_amount) >= 0);
    } catch (error: any) {
      return NextResponse.json({ error: error?.message || String(error) }, { status: 500 });
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

    // sale_items only stores product_id; without this the "Produk" column renders blank.
    let productNameMap: Record<string, string> = {};
    if (itemsMode === 'full') {
      const productIds = Array.from(new Set(
        allRows.flatMap((r) =>
          (Array.isArray(r.sale_items) ? r.sale_items : []).map((it: any) => it.product_id).filter(Boolean)
        )
      ));
      if (productIds.length > 0) {
        const { data: productRows, error: productError } = await svc.from('products').select('id,name').in('id', productIds);
        if (!productError && Array.isArray(productRows)) {
          productRows.forEach((p: any) => { productNameMap[p.id] = p.name; });
        }
      }
    }

    const normalized = allRows.map((r) => {
      const { sale_items: saleItems, ...rest } = r;
      const items = Array.isArray(saleItems)
        ? saleItems.map((it: any) => ({
            ...it,
            product_name: productNameMap[it.product_id] || 'Produk tidak dikenali',
          }))
        : [];
      return {
        ...rest,
        ...(itemsSelect ? { sale_items: items } : {}),
        barista_name: baristaMap[r.barista_id] || null,
      };
    });

    const meta = {
      requested: { outlet_id, since, until, group, business_day: useBusinessDay, business_day_start_hour: businessDayStartHour },
      rowsFetched: allRows.length,
      normalizedCount: normalized.length,
      sampleIds: allRows.slice(0, 5).map((r) => r.id),
      sumTotalAmount: allRows.reduce((sum, row) => sum + normalizeNumber(row?.total_amount), 0),
    };

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
      return debug ? NextResponse.json({ sales: out, meta }) : NextResponse.json({ sales: out });
    }

    return debug ? NextResponse.json({ data: normalized || [], meta }) : NextResponse.json(normalized || []);
  } catch (err: any) {
    console.error('by-outlet API error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
