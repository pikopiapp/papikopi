import { supabaseServer } from '@/lib/supabaseServer';
import { fetchAllPaginatedRows } from '@/lib/supabase-pagination';

export interface ProductPerformanceRow {
  product: string;
  sold: number;
  revenue: number;
}

/**
 * Top products by revenue in the window. `sales!inner` makes the date filter actually
 * restrict the parent sale; a plain `sales(created_at)` embed is only filtered after the
 * fact, so every out-of-range row still came back with `sales: null`.
 */
export async function loadProductPerformance(
  startIso: string,
  endIso: string,
  limit = 10
): Promise<ProductPerformanceRow[]> {
  const rows = await fetchAllPaginatedRows<any>(
    supabaseServer
      .from('sale_items')
      .select('quantity, price, products(name), sales!inner(created_at)')
      .gte('sales.created_at', startIso)
      .lte('sales.created_at', endIso)
      .order('created_at', { ascending: true })
  );

  const map = new Map<string, ProductPerformanceRow>();
  for (const it of rows) {
    const prod = Array.isArray(it.products) ? it.products[0] : it.products;
    const name = prod?.name || 'Unknown';
    const qty = Number(it.quantity ?? 0);
    const entry = map.get(name) ?? { product: name, sold: 0, revenue: 0 };
    entry.sold += qty;
    entry.revenue += Number(it.price ?? 0) * qty;
    map.set(name, entry);
  }

  return Array.from(map.values())
    .sort((a, b) => b.revenue - a.revenue)
    .slice(0, limit);
}
