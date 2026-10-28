import { AlertCircle, Package } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';
import { formatTimestampFromUTC } from '@/lib/helpers/business-day';

export const dynamic = 'force-dynamic';

interface StockRow {
  outlet_id: string;
  outlet_name: string;
  product_id: string;
  product_name: string;
  allocated_units: number | string;
  sold_units: number | string;
  remaining_units: number | string;
  last_allocated_at: string | null;
}

const colorPalette = [
  { bg: 'bg-gradient-to-r from-blue-50 to-blue-100', border: 'border-blue-200', text: 'text-blue-900', subtext: 'text-blue-700' },
  { bg: 'bg-gradient-to-r from-purple-50 to-purple-100', border: 'border-purple-200', text: 'text-purple-900', subtext: 'text-purple-700' },
  { bg: 'bg-gradient-to-r from-pink-50 to-pink-100', border: 'border-pink-200', text: 'text-pink-900', subtext: 'text-pink-700' },
  { bg: 'bg-gradient-to-r from-green-50 to-green-100', border: 'border-green-200', text: 'text-green-900', subtext: 'text-green-700' },
  { bg: 'bg-gradient-to-r from-orange-50 to-orange-100', border: 'border-orange-200', text: 'text-orange-900', subtext: 'text-orange-700' },
  { bg: 'bg-gradient-to-r from-red-50 to-red-100', border: 'border-red-200', text: 'text-red-900', subtext: 'text-red-700' },
  { bg: 'bg-gradient-to-r from-indigo-50 to-indigo-100', border: 'border-indigo-200', text: 'text-indigo-900', subtext: 'text-indigo-700' },
  { bg: 'bg-gradient-to-r from-cyan-50 to-cyan-100', border: 'border-cyan-200', text: 'text-cyan-900', subtext: 'text-cyan-700' },
  { bg: 'bg-gradient-to-r from-teal-50 to-teal-100', border: 'border-teal-200', text: 'text-teal-900', subtext: 'text-teal-700' },
  { bg: 'bg-gradient-to-r from-rose-50 to-rose-100', border: 'border-rose-200', text: 'text-rose-900', subtext: 'text-rose-700' },
  { bg: 'bg-gradient-to-r from-amber-50 to-amber-100', border: 'border-amber-200', text: 'text-amber-900', subtext: 'text-amber-700' },
  { bg: 'bg-gradient-to-r from-lime-50 to-lime-100', border: 'border-lime-200', text: 'text-lime-900', subtext: 'text-lime-700' },
];

function outletNumber(name: string): number {
  return parseInt(name.match(/\d+/)?.[0] || '999', 10);
}

function formatDate(value: string | null): string {
  if (!value) return '-';
  return formatTimestampFromUTC(value, { day: '2-digit', month: 'short', year: 'numeric' });
}

function statusOf(remaining: number) {
  if (remaining < 0) return { label: 'Minus', className: 'bg-red-100 text-red-800' };
  if (remaining < 20) return { label: 'Kritis', className: 'bg-red-100 text-red-800' };
  if (remaining < 50) return { label: 'Rendah', className: 'bg-yellow-100 text-yellow-800' };
  return { label: 'Normal', className: 'bg-green-100 text-green-800' };
}

export default async function OutletStockPage() {
  // Server-side: the old browser read of /api/outlets/stock returned at most 1,000 of
  // 11,470 allocation rows and never subtracted sales.
  const { data, error } = await supabaseServer.rpc('showcase_stock_by_outlet_product');
  const rows: StockRow[] = Array.isArray(data) ? (data as StockRow[]) : [];

  const baristasByOutlet = new Map<string, string[]>();
  if (!error) {
    const { data: baristas } = await supabaseServer
      .from('users')
      .select('name, outlet_id')
      .eq('role', 'barista');
    for (const barista of baristas || []) {
      if (!barista.outlet_id || !barista.name) continue;
      const list = baristasByOutlet.get(barista.outlet_id) || [];
      list.push(barista.name);
      baristasByOutlet.set(barista.outlet_id, list);
    }
  }

  const byOutlet = new Map<string, StockRow[]>();
  for (const row of rows) {
    const list = byOutlet.get(row.outlet_id) || [];
    list.push(row);
    byOutlet.set(row.outlet_id, list);
  }

  const outlets = [...byOutlet.entries()]
    .map(([outlet_id, products]) => ({
      outlet_id,
      name: products[0].outlet_name,
      products: [...products].sort((a, b) => a.product_name.localeCompare(b.product_name, 'id')),
      totalRemaining: products.reduce((sum, product) => sum + Number(product.remaining_units ?? 0), 0),
    }))
    .sort((a, b) => outletNumber(a.name) - outletNumber(b.name));

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-start gap-3">
        <Package size={32} className="text-blue-600 shrink-0" />
        <div>
          <h1 className="text-3xl font-bold">Stok Outlet</h1>
          <p className="text-gray-500 text-sm">
            Sisa stok per produk = unit terkirim − unit terjual (per outlet, kumulatif)
          </p>
        </div>
      </div>

      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Data stok belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>showcase_stock_by_outlet_product</code> belum ada di database. Jalankan
              migrasi <code>supabase/migrations/0012_showcase_stock_by_outlet_product.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{error.message}</p>
          </div>
        </div>
      )}

      {!error && outlets.length === 0 && (
        <div className="bg-white rounded-lg shadow-md p-8 text-center">
          <Package size={48} className="mx-auto text-gray-300 mb-4" />
          <p className="text-gray-500 font-medium">Belum ada alokasi stok</p>
        </div>
      )}

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {outlets.map((outlet, idx) => {
          const color = colorPalette[idx % colorPalette.length];
          const baristaNames = baristasByOutlet.get(outlet.outlet_id) || [];
          return (
            <div key={outlet.outlet_id} className="bg-white rounded-lg shadow-md overflow-hidden">
              <div className={`p-4 ${color.bg} border-b ${color.border}`}>
                <h2 className={`font-semibold text-lg ${color.text}`}>{outlet.name}</h2>
                <p className={`text-sm ${color.subtext}`}>
                  {baristaNames.length > 0 ? `Barista: ${baristaNames.join(', ')} · ` : ''}
                  Total sisa {outlet.totalRemaining.toLocaleString('id-ID')} unit
                </p>
              </div>

              <div className="overflow-x-auto">
                <table className="w-full">
                  <thead className="bg-gray-100 border-b">
                    <tr>
                      <th className="px-4 py-3 text-left text-sm font-semibold text-gray-700">Produk</th>
                      <th className="px-4 py-3 text-right text-sm font-semibold text-gray-700">Terkirim</th>
                      <th className="px-4 py-3 text-right text-sm font-semibold text-gray-700">Terjual</th>
                      <th className="px-4 py-3 text-right text-sm font-semibold text-gray-700">Sisa</th>
                      <th className="px-4 py-3 text-left text-sm font-semibold text-gray-700">Status</th>
                      <th className="px-4 py-3 text-left text-sm font-semibold text-gray-700">Alokasi Terakhir</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y">
                    {outlet.products.map((product) => {
                      const remaining = Number(product.remaining_units ?? 0);
                      const status = statusOf(remaining);
                      return (
                        <tr key={product.product_id} className="hover:bg-blue-50 transition">
                          <td className="px-4 py-3 font-medium text-gray-900">{product.product_name}</td>
                          <td className="px-4 py-3 text-right text-gray-700 tabular-nums">
                            {Number(product.allocated_units ?? 0).toLocaleString('id-ID')}
                          </td>
                          <td className="px-4 py-3 text-right text-gray-700 tabular-nums">
                            {Number(product.sold_units ?? 0).toLocaleString('id-ID')}
                          </td>
                          <td
                            className={`px-4 py-3 text-right font-semibold tabular-nums ${
                              remaining < 0 ? 'text-red-600' : 'text-gray-900'
                            }`}
                          >
                            {remaining.toLocaleString('id-ID')}
                          </td>
                          <td className="px-4 py-3">
                            <span className={`px-2 py-1 rounded-full text-xs font-semibold ${status.className}`}>
                              {status.label}
                            </span>
                          </td>
                          <td className="px-4 py-3 text-sm text-gray-600">
                            {formatDate(product.last_allocated_at)}
                          </td>
                        </tr>
                      );
                    })}
                  </tbody>
                </table>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
