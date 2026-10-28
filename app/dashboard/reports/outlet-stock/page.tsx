import { AlertCircle } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';
import { formatTimestampInJakarta } from '@/lib/helpers/business-day';

interface OutletStockRow {
  outlet_id: string;
  outlet_name: string;
  allocated_units: number | string;
  sold_units: number | string;
  remaining_units: number | string;
  product_count: number | string;
  last_allocated_at: string | null;
}

function outletNumber(name: string): number {
  return parseInt(name.match(/\d+/)?.[0] || '999', 10);
}

function formatDate(value: string | null): string {
  if (!value) return '-';
  return formatTimestampInJakarta(value, {
    day: '2-digit',
    month: 'short',
    year: 'numeric',
  });
}

export default async function OutletStockReport() {
  // Server-side on purpose: reading showcase_allocations straight from the browser capped
  // the result at PostgREST's 1,000 rows (11,470 exist) and never subtracted sales.
  const { data, error } = await supabaseServer.rpc('showcase_stock_by_outlet');

  const rows: OutletStockRow[] = Array.isArray(data) ? (data as OutletStockRow[]) : [];
  const sorted = [...rows].sort((a, b) => outletNumber(a.outlet_name) - outletNumber(b.outlet_name));

  const totals = sorted.reduce(
    (acc, row) => ({
      allocated: acc.allocated + Number(row.allocated_units ?? 0),
      sold: acc.sold + Number(row.sold_units ?? 0),
      remaining: acc.remaining + Number(row.remaining_units ?? 0),
    }),
    { allocated: 0, sold: 0, remaining: 0 }
  );

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Stok Outlet</h1>
        <p className="text-gray-600">
          Sisa stok per outlet = unit terkirim − unit terjual (kumulatif sejak Mei 2026)
        </p>
      </div>

      {error && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-red-500 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Data stok belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>showcase_stock_by_outlet</code> belum ada di database. Jalankan
              migrasi <code>supabase/migrations/0010_showcase_stock_by_outlet.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{error.message}</p>
          </div>
        </div>
      )}

      {!error && (
        <div className="surface-card rounded-lg shadow-md overflow-hidden">
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Sisa Stok</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Produk</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Terkirim</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Terjual</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Alokasi Terakhir</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {sorted.length === 0 ? (
                <tr>
                  <td colSpan={6} className="px-6 py-4 text-center text-gray-500">
                    No data available
                  </td>
                </tr>
              ) : (
                sorted.map((outlet) => {
                  const remaining = Number(outlet.remaining_units ?? 0);
                  return (
                    <tr key={outlet.outlet_id} className="hover:bg-gray-50">
                      <td className="px-6 py-4 font-semibold text-gray-900">{outlet.outlet_name}</td>
                      <td
                        className={`px-6 py-4 text-right font-semibold ${
                          remaining < 0 ? 'text-red-600' : 'text-gray-900'
                        }`}
                      >
                        {remaining.toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.product_count ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.allocated_units ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.sold_units ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-sm text-gray-600">{formatDate(outlet.last_allocated_at)}</td>
                    </tr>
                  );
                })
              )}
            </tbody>
            {sorted.length > 0 && (
              <tfoot className="bg-gray-50 border-t-2">
                <tr>
                  <td className="px-6 py-4 font-bold text-gray-900">
                    Total ({sorted.length} outlet)
                  </td>
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.remaining.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4" />
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.allocated.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.sold.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4" />
                </tr>
              </tfoot>
            )}
          </table>
        </div>
      )}
    </div>
  );
}
