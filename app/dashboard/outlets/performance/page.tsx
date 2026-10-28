import Link from 'next/link';
import { Target, ArrowLeft, TrendingUp, Store } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';

export const dynamic = 'force-dynamic';

interface PerformanceRow {
  outlet_id: string;
  outlet_name: string;
  revenue: number | string;
  profit: number | string;
  orders: number | string;
  barista_count: number | string;
}

export default async function PerformancePage() {
  // Server-side on purpose: summing sales per outlet in the browser read at most 1,000 of
  // the 35,704 sales rows, so every outlet's revenue and profit were understated.
  const { data, error } = await supabaseServer.rpc('get_outlet_performance');

  const rows: PerformanceRow[] = Array.isArray(data) ? (data as PerformanceRow[]) : [];
  const performances = rows.map((row) => {
    const revenue = Number(row.revenue ?? 0);
    const orders = Number(row.orders ?? 0);
    return {
      outlet_id: row.outlet_id,
      outlet_name: row.outlet_name,
      total_revenue: revenue,
      total_profit: Number(row.profit ?? 0),
      transaction_count: orders,
      avg_transaction_value: orders > 0 ? revenue / orders : 0,
      barista_count: Number(row.barista_count ?? 0),
    };
  });

  const totalAllRevenue = performances.reduce((sum, p) => sum + p.total_revenue, 0);
  const totalAllProfit = performances.reduce((sum, p) => sum + p.total_profit, 0);
  const topOutlet = performances[0];

  return (
    <div className="p-6 surface min-h-screen">
      <div className="mb-6">
        <Link
          href="/dashboard/outlets"
          className="flex items-center text-indigo-600 hover:text-indigo-700 transition-colors"
        >
          <ArrowLeft size={20} className="mr-2" />
          Back
        </Link>
      </div>

      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <Target size={32} className="text-indigo-600" />
          <h1 className="text-4xl font-bold text-gray-800">Outlet Performance</h1>
        </div>
        <p className="text-gray-600">Track sales performance and metrics across all outlets</p>
      </div>

      {error && (
        <div className="bg-red-50 border-2 border-red-200 rounded-2xl shadow-lg p-6">
          <p className="text-red-800 font-medium">Performance data could not be read</p>
          <p className="text-red-700 text-sm mt-1">
            Function <code>get_outlet_performance</code> is missing from the database. Run migration{' '}
            <code>supabase/migrations/0013_reports_returns_and_outlet_performance.sql</code>.
          </p>
          <p className="text-red-700 text-xs mt-1">{error.message}</p>
        </div>
      )}

      {!error && performances.length === 0 && (
        <div className="surface-card rounded-2xl shadow-lg p-12 text-center">
          <Target size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Performance Data</h3>
          <p className="text-gray-500">Performance metrics will appear here once outlets have sales.</p>
        </div>
      )}

      {!error && performances.length > 0 && (
        <>
          {/* Summary Cards */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
            <div className="surface-card rounded-2xl shadow-lg p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-gray-500 mb-2">Total Revenue</p>
                  <p className="text-3xl font-bold text-indigo-600">
                    Rp {totalAllRevenue.toLocaleString('id-ID')}
                  </p>
                </div>
                <TrendingUp size={48} className="text-indigo-100" />
              </div>
            </div>
            <div className="surface-card rounded-2xl shadow-lg p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-gray-500 mb-2">Total Profit</p>
                  <p className="text-3xl font-bold text-green-600">
                    Rp {totalAllProfit.toLocaleString('id-ID')}
                  </p>
                </div>
                <TrendingUp size={48} className="text-green-100" />
              </div>
            </div>
            <div className="surface-card rounded-2xl shadow-lg p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-gray-500 mb-2">Total Outlets</p>
                  <p className="text-3xl font-bold text-blue-600">{performances.length}</p>
                </div>
                <Store size={48} className="text-blue-100" />
              </div>
            </div>
          </div>

          {/* Top Outlet */}
          {topOutlet && (
            <div className="surface-card rounded-2xl shadow-lg p-8 mb-8">
              <p className="text-sm text-gray-500 mb-2">Top Performing Outlet</p>
              <h2 className="text-3xl font-bold mb-4">{topOutlet.outlet_name}</h2>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <p className="text-sm mb-1">Revenue</p>
                  <p className="text-xl font-bold">Rp {topOutlet.total_revenue.toLocaleString('id-ID')}</p>
                </div>
                <div>
                  <p className="text-sm mb-1">Profit</p>
                  <p className="text-xl font-bold">Rp {topOutlet.total_profit.toLocaleString('id-ID')}</p>
                </div>
                <div>
                  <p className="text-sm mb-1">Transactions</p>
                  <p className="text-xl font-bold">{topOutlet.transaction_count}</p>
                </div>
                <div>
                  <p className="text-sm mb-1">Baristas</p>
                  <p className="text-xl font-bold">{topOutlet.barista_count}</p>
                </div>
              </div>
            </div>
          )}

          {/* Performance Table */}
          <div className="surface-card rounded-2xl shadow-lg overflow-hidden">
            <div className="px-6 py-4 border-b border-gray-200 surface-muted">
              <h3 className="text-lg font-semibold text-gray-800">All Outlets Performance</h3>
            </div>
            <div className="overflow-x-auto">
              <table className="w-full">
                <thead>
                  <tr className="border-b border-gray-200 surface-muted">
                    <th className="text-left px-6 py-4 font-semibold text-gray-700">Outlet</th>
                    <th className="text-right px-6 py-4 font-semibold text-gray-700">Revenue</th>
                    <th className="text-right px-6 py-4 font-semibold text-gray-700">Profit</th>
                    <th className="text-right px-6 py-4 font-semibold text-gray-700">Transactions</th>
                    <th className="text-right px-6 py-4 font-semibold text-gray-700">Avg Value</th>
                    <th className="text-center px-6 py-4 font-semibold text-gray-700">Baristas</th>
                  </tr>
                </thead>
                <tbody>
                  {performances.map((p, idx) => (
                    <tr key={p.outlet_id} className={idx % 2 === 0 ? 'surface-card' : 'surface-muted'}>
                      <td className="px-6 py-4 font-semibold text-gray-800">{p.outlet_name}</td>
                      <td className="text-right px-6 py-4 text-indigo-600 font-semibold">
                        Rp {p.total_revenue.toLocaleString('id-ID')}
                      </td>
                      <td className="text-right px-6 py-4 text-green-600 font-semibold">
                        Rp {p.total_profit.toLocaleString('id-ID')}
                      </td>
                      <td className="text-right px-6 py-4 text-gray-700">{p.transaction_count}</td>
                      <td className="text-right px-6 py-4 text-gray-700">
                        Rp {p.avg_transaction_value.toLocaleString('id-ID', { maximumFractionDigits: 0 })}
                      </td>
                      <td className="text-center px-6 py-4">
                        <span className="inline-block bg-blue-100 text-blue-700 px-3 py-1 rounded-full font-semibold">
                          {p.barista_count}
                        </span>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        </>
      )}
    </div>
  );
}
