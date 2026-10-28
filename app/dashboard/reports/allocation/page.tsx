import { AlertCircle } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';
import { fetchAllPaginatedRows } from '@/lib/supabase-pagination';

// Stock numbers move every time an allocation or sale lands; prerendering would freeze them.
export const dynamic = 'force-dynamic';

interface StockRow {
  product_id: string | null;
  product_name: string | null;
  allocated_units: number | string | null;
  sold_units: number | string | null;
  remaining_units: number | string | null;
}

interface ShowcaseProductRow {
  product_id: string | null;
  product_name: string | null;
  total_quantity: number | string | null;
}

interface AllocationRow {
  product: string;
  produced: number | null;
  allocated: number;
  sold: number;
  remaining: number;
  sellThrough: number;
}

export default async function AllocationReport() {
  // Server-side on purpose: showcase_products.allocated_quantity is stale (single digits
  // while the real dispatch is thousands), and the browser read of showcase_allocations
  // would be capped at 1,000 of 11,470 rows. 0012 computes dispatch and sales from the
  // source tables; 0009 defines remaining = allocated - sold.
  const [stockRes, showcaseRes] = await Promise.all([
    supabaseServer.rpc('showcase_stock_by_outlet_product'),
    fetchAllPaginatedRows<ShowcaseProductRow>(
      supabaseServer.from('showcase_products').select('product_id, product_name, total_quantity')
    ).catch((error) => {
      console.error('Failed to read showcase products:', error);
      return [] as ShowcaseProductRow[];
    }),
  ]);

  const stockError = stockRes.error?.message || null;
  const stockRows: StockRow[] = Array.isArray(stockRes.data) ? (stockRes.data as StockRow[]) : [];

  const producedById = new Map<string, number>();
  const producedByName = new Map<string, number>();
  for (const product of showcaseRes) {
    const quantity = Number(product.total_quantity ?? 0);
    if (product.product_id) {
      producedById.set(product.product_id, (producedById.get(product.product_id) ?? 0) + quantity);
    }
    if (product.product_name) {
      producedByName.set(product.product_name, (producedByName.get(product.product_name) ?? 0) + quantity);
    }
  }

  const byProduct = new Map<string, AllocationRow>();
  for (const row of stockRows) {
    const key = row.product_id || row.product_name || 'unknown';
    const name = row.product_name || 'Tanpa nama';
    const entry =
      byProduct.get(key) ??
      {
        product: name,
        produced: row.product_id ? producedById.get(row.product_id) ?? null : producedByName.get(name) ?? null,
        allocated: 0,
        sold: 0,
        remaining: 0,
        sellThrough: 0,
      };

    entry.allocated += Number(row.allocated_units ?? 0);
    entry.sold += Number(row.sold_units ?? 0);
    entry.remaining += Number(row.remaining_units ?? 0);
    byProduct.set(key, entry);
  }

  const rows = Array.from(byProduct.values())
    .map((row) => ({
      ...row,
      sellThrough: row.allocated > 0 ? (row.sold / row.allocated) * 100 : 0,
    }))
    .sort((a, b) => b.allocated - a.allocated);

  const totalProduced = rows.reduce((sum, row) => sum + (row.produced ?? 0), 0);
  const totalAllocated = rows.reduce((sum, row) => sum + row.allocated, 0);
  const totalSold = rows.reduce((sum, row) => sum + row.sold, 0);
  const totalRemaining = rows.reduce((sum, row) => sum + row.remaining, 0);
  const sellThrough = totalAllocated > 0 ? (totalSold / totalAllocated) * 100 : 0;

  const formatNumber = (value: number) => new Intl.NumberFormat('id-ID').format(value);

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Alokasi Produk</h1>
        <p className="text-gray-600">Distribusi produk dari showcase ke outlet (seluruh waktu)</p>
      </div>

      {stockError && (
        <div className="flex items-start gap-3 rounded-lg border border-red-200 bg-red-50 p-4 text-sm text-red-800">
          <AlertCircle className="mt-0.5 h-5 w-5 shrink-0" />
          <div>
            <p className="font-semibold">Gagal memuat data alokasi</p>
            <p>Fungsi <code>showcase_stock_by_outlet_product()</code> tidak tersedia. Jalankan migrasi 0012.</p>
            <p className="mt-1 text-xs text-red-700">{stockError}</p>
          </div>
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Produced</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{formatNumber(totalProduced)}</p>
          <p className="text-sm text-gray-500 mt-1">units recorded in showcase</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Allocated</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{formatNumber(totalAllocated)}</p>
          <p className="text-sm text-gray-500 mt-1">units sent to outlets</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Sold</h3>
          <p className="text-4xl font-bold text-purple-600 mt-2">{formatNumber(totalSold)}</p>
          <p className="text-sm text-gray-500 mt-1">units sold at outlets</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Remaining</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{formatNumber(totalRemaining)}</p>
          <p className="text-sm text-gray-500 mt-1">allocated − sold ({sellThrough.toFixed(1)}% sold)</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {rows.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No allocation data available</div>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead className="bg-gray-100 border-b">
                <tr>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Product</th>
                  <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Produced</th>
                  <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Allocated</th>
                  <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Sold</th>
                  <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Remaining</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Sold / Allocated</th>
                </tr>
              </thead>
              <tbody className="divide-y">
                {rows.map((row) => (
                  <tr key={row.product} className="hover:bg-gray-50">
                    <td className="px-6 py-4 font-semibold text-gray-900">{row.product}</td>
                    <td className="px-6 py-4 text-right text-gray-700">
                      {row.produced === null ? '—' : formatNumber(row.produced)}
                    </td>
                    <td className="px-6 py-4 text-right text-gray-700">{formatNumber(row.allocated)}</td>
                    <td className="px-6 py-4 text-right text-gray-700">{formatNumber(row.sold)}</td>
                    <td className={`px-6 py-4 text-right font-semibold ${row.remaining < 0 ? 'text-red-600' : 'text-gray-900'}`}>
                      {formatNumber(row.remaining)}
                    </td>
                    <td className="px-6 py-4">
                      <div className="flex items-center gap-2">
                        <div className="w-16 bg-gray-200 rounded-full h-2">
                          <div
                            className="bg-green-600 h-2 rounded-full"
                            style={{ width: `${Math.min(100, Math.max(0, row.sellThrough))}%` }}
                          />
                        </div>
                        <span className="text-sm font-semibold text-gray-700">{row.sellThrough.toFixed(1)}%</span>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>

      <p className="text-xs text-gray-500">
        Allocated = total pengiriman ke outlet (showcase_allocations). Remaining = allocated − sold, sesuai
        definisi stok migrasi 0009. Produced = intake yang tercatat di showcase_products.
      </p>
    </div>
  );
}
