'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { Target, ArrowLeft, TrendingUp, Store, Package } from 'lucide-react';
import { supabase } from '@/lib/supabase';

interface OutletPerformance {
  outlet_id: string;
  outlet_name: string;
  total_sales: number;
  total_revenue: number;
  total_profit: number;
  transaction_count: number;
  avg_transaction_value: number;
  barista_count: number;
}

export default function PerformancePage() {
  const router = useRouter();
  const [performances, setPerformances] = useState<OutletPerformance[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    fetchPerformanceData();
  }, []);

  const fetchPerformanceData = async () => {
    try {
      setLoading(true);
      setError(null);

      // Get all outlets
      const { data: outlets, error: outletsError } = await supabase
        .from('outlets')
        .select('id, name');

      if (outletsError) throw outletsError;

      // Fetch performance data for each outlet
      const performancePromises = (outlets || []).map(async (outlet: any) => {
        // Get sales data
        const { data: sales } = await supabase
          .from('sales')
          .select('id, total_amount, profit')
          .eq('outlet_id', outlet.id);

        // Get barista count
        const { data: baristas } = await supabase
          .from('users')
          .select('id')
          .eq('outlet_id', outlet.id)
          .eq('role', 'barista');

        const totalRevenue = (sales || []).reduce((sum, s: any) => sum + Number(s.total_amount), 0);
        const totalProfit = (sales || []).reduce((sum, s: any) => sum + Number(s.profit), 0);
        const transactionCount = sales?.length || 0;

        return {
          outlet_id: outlet.id,
          outlet_name: outlet.name,
          total_sales: transactionCount,
          total_revenue: totalRevenue,
          total_profit: totalProfit,
          transaction_count: transactionCount,
          avg_transaction_value: transactionCount > 0 ? totalRevenue / transactionCount : 0,
          barista_count: baristas?.length || 0
        };
      });

      const results = await Promise.all(performancePromises);
      setPerformances(results.sort((a, b) => b.total_revenue - a.total_revenue));
    } catch (err) {
      console.error('Failed to fetch performance data:', err);
      setError('Failed to load performance data');
    } finally {
      setLoading(false);
    }
  };

  const totalAllRevenue = performances.reduce((sum, p) => sum + p.total_revenue, 0);
  const totalAllProfit = performances.reduce((sum, p) => sum + p.total_profit, 0);
  const topOutlet = performances[0];

  return (
    <div className="p-6 bg-gradient-to-br from-blue-50 to-indigo-50 min-h-screen">
      <div className="mb-6">
        <button
          onClick={() => router.back()}
          className="flex items-center text-indigo-600 hover:text-indigo-700 transition-colors"
        >
          <ArrowLeft size={20} className="mr-2" />
          Back
        </button>
      </div>

      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <Target size={32} className="text-indigo-600" />
          <h1 className="text-4xl font-bold text-gray-800">Outlet Performance</h1>
        </div>
        <p className="text-gray-600">Track sales performance and metrics across all outlets</p>
      </div>

      {loading && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <div className="relative">
            <Target size={64} className="text-indigo-600 opacity-20 animate-pulse mx-auto" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-8 h-8 border-4 border-indigo-600 border-t-transparent rounded-full animate-spin" />
            </div>
          </div>
          <p className="text-gray-500 mt-6">Loading performance data...</p>
        </div>
      )}

      {error && (
        <div className="bg-red-50 border-2 border-red-200 rounded-2xl shadow-lg p-6">
          <p className="text-red-800">{error}</p>
        </div>
      )}

      {!loading && !error && performances.length === 0 && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <Target size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Performance Data</h3>
          <p className="text-gray-500">Performance metrics will appear here once outlets have sales.</p>
        </div>
      )}

      {!loading && !error && performances.length > 0 && (
        <>
          {/* Summary Cards */}
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
            <div className="bg-white rounded-2xl shadow-lg p-6">
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

            <div className="bg-white rounded-2xl shadow-lg p-6">
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

            <div className="bg-white rounded-2xl shadow-lg p-6">
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
            <div className="bg-gradient-to-r from-indigo-500 to-indigo-600 rounded-2xl shadow-lg p-8 mb-8 text-white">
              <p className="text-indigo-100 mb-2">Top Performing Outlet</p>
              <h2 className="text-3xl font-bold mb-4">{topOutlet.outlet_name}</h2>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <p className="text-indigo-100 text-sm mb-1">Revenue</p>
                  <p className="text-xl font-bold">Rp {topOutlet.total_revenue.toLocaleString('id-ID')}</p>
                </div>
                <div>
                  <p className="text-indigo-100 text-sm mb-1">Profit</p>
                  <p className="text-xl font-bold">Rp {topOutlet.total_profit.toLocaleString('id-ID')}</p>
                </div>
                <div>
                  <p className="text-indigo-100 text-sm mb-1">Transactions</p>
                  <p className="text-xl font-bold">{topOutlet.transaction_count}</p>
                </div>
                <div>
                  <p className="text-indigo-100 text-sm mb-1">Baristas</p>
                  <p className="text-xl font-bold">{topOutlet.barista_count}</p>
                </div>
              </div>
            </div>
          )}

          {/* Performance Table */}
          <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
            <div className="px-6 py-4 border-b border-gray-200 bg-gray-50">
              <h3 className="text-lg font-semibold text-gray-800">All Outlets Performance</h3>
            </div>
            <div className="overflow-x-auto">
              <table className="w-full">
                <thead>
                  <tr className="border-b border-gray-200 bg-gray-50">
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
                    <tr key={p.outlet_id} className={idx % 2 === 0 ? 'bg-white' : 'bg-gray-50'}>
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
