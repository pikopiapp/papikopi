import { supabaseServer } from '@/lib/supabaseServer';
import { fetchAllPaginatedRows } from '@/lib/supabase-pagination';
import { getDateBoundaryInJakarta } from '@/lib/helpers/business-day';

export type Granularity = 'day' | 'month';

export interface SalesAggRow {
  period: string;
  sales: number;
  profit: number;
  orders: number;
  hpp: number;
  bonus: number;
  meal: number;
}

const YMD = /^\d{4}-\d{2}-\d{2}$/;

export function isYmd(value: string | null | undefined): value is string {
  return typeof value === 'string' && YMD.test(value.trim());
}

/**
 * Resolve report range params to an explicit UTC window.
 * Date-only values are whole Asia/Jakarta days; anything else is parsed as a timestamp.
 */
export function resolveReportRange(start: string | null | undefined, end: string | null | undefined) {
  if (!start || !end) return null;
  if (isYmd(start) && isYmd(end)) {
    return {
      startIso: getDateBoundaryInJakarta(start, false).toISOString(),
      endIso: getDateBoundaryInJakarta(end, true).toISOString(),
    };
  }
  const s = new Date(start);
  const e = new Date(end);
  if (Number.isNaN(s.getTime()) || Number.isNaN(e.getTime())) return null;
  return { startIso: s.toISOString(), endIso: e.toISOString() };
}

function normalizeRows(data: unknown): SalesAggRow[] {
  if (!Array.isArray(data)) return [];
  return data.map((r: any) => ({
    period: String(r.period ?? ''),
    sales: Number(r.sales ?? 0),
    profit: Number(r.profit ?? 0),
    orders: Number(r.orders ?? 0),
    hpp: Number(r.hpp ?? 0),
    bonus: Number(r.bonus ?? 0),
    meal: Number(r.meal ?? 0),
  }));
}

/**
 * Aggregated revenue/profit per day or month via reports_sales_agg.
 * Returns null when the RPC is unavailable so callers can fall back.
 */
export async function fetchSalesAgg(
  startIso: string,
  endIso: string,
  grp: Granularity,
  outlet: string | null = null
): Promise<SalesAggRow[] | null> {
  const { data, error } = await supabaseServer.rpc('reports_sales_agg', {
    p_start: startIso,
    p_end: endIso,
    p_grp: grp,
    p_outlet: outlet,
  });
  if (error || !Array.isArray(data)) return null;
  return normalizeRows(data);
}

/**
 * Same shape as fetchSalesAgg, but walks every row with range paging.
 * PostgREST caps a single response at 1,000 rows, so an unpaginated select silently
 * under-reports months with more orders than that.
 */
export async function fetchSalesAggFallback(
  startIso: string,
  endIso: string,
  grp: Granularity,
  outlet: string | null = null
): Promise<SalesAggRow[]> {
  let query = supabaseServer
    .from('sales')
    .select('created_at, total_amount, hpp_total, bonus_amount, profit, outlet_id')
    .gte('created_at', startIso)
    .lte('created_at', endIso)
    .order('created_at', { ascending: true });
  if (outlet) query = query.eq('outlet_id', outlet);

  const rows = await fetchAllPaginatedRows<any>(query);
  const map = new Map<string, SalesAggRow>();

  for (const r of rows) {
    const created = String(r.created_at ?? '');
    const iso = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created) ? created : `${created.replace(' ', 'T')}Z`;
    const dt = new Date(iso);
    if (Number.isNaN(dt.getTime())) continue;
    const dayKey = dt.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
    const key = grp === 'day' ? dayKey : dayKey.slice(0, 7);

    let bucket = map.get(key);
    if (!bucket) {
      bucket = { period: key, sales: 0, profit: 0, orders: 0, hpp: 0, bonus: 0, meal: 0 };
      map.set(key, bucket);
    }
    bucket.sales += Number(r.total_amount ?? 0);
    bucket.profit += Number(r.profit ?? 0);
    bucket.hpp += Number(r.hpp_total ?? 0);
    bucket.bonus += Number(r.bonus_amount ?? 0);
    bucket.orders += 1;
  }

  return Array.from(map.values()).sort((a, b) => a.period.localeCompare(b.period));
}
