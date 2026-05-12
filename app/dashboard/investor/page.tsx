'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { TrendingUp, DollarSign, Store, Calendar } from 'lucide-react';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer, BarChart, Bar } from 'recharts';

interface KPIData {
  totalInvestment: number;
  totalProfitShare: number;
  activeOutlets: number;
  totalAssignments: number;
}

interface OutletSummary {
  outlet_id: string;
  outlet_name: string;
  investment_amount: number;
  margin_percentage: number;
  outlet_profit: number;
  investor_share: number;
  status: string;
}

interface ProfitTrendData {
  date: string;
  profit: number;
}

export default function InvestorDashboard() {
  const { user } = useAuthStore();
  const [kpiData, setKpiData] = useState<KPIData>({
    totalInvestment: 0,
    totalProfitShare: 0,
    activeOutlets: 0,
    totalAssignments: 0,
  });
  const [outlets, setOutlets] = useState<OutletSummary[]>([]);
  const [profitTrend, setProfitTrend] = useState<ProfitTrendData[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchInvestorData();
  }, []);

  const fetchInvestorData = async () => {
    setLoading(true);

    try {
      // Fetch all investor assignments
      const { data: assignments } = await supabase
        .from('investor_assignments')
        .select('*');

      if (!assignments || assignments.length === 0) {
        setLoading(false);
        return;
      }

      // Fetch outlets
      const outletIds = assignments.map((a) => a.outlet_id);
      const { data: outletData } = await supabase
        .from('outlets')
        .select('id, name')
        .in('id', outletIds);

      // Fetch sales data for profit calculation
      const { data: salesData } = await supabase
        .from('sales')
        .select('outlet_id, profit, created_at')
        .in('outlet_id', outletIds)
        .gte('created_at', new Date(new Date().setDate(new Date().getDate() - 30)).toISOString());

      // Calculate outlet profits
      const profitMap: { [key: string]: number } = {};
      salesData?.forEach((sale) => {
        profitMap[sale.outlet_id] = (profitMap[sale.outlet_id] || 0) + (sale.profit || 0);
      });

      // Build enhanced outlet summaries
      const enhancedOutlets: OutletSummary[] = assignments.map((assignment) => {
        const outlet = outletData?.find((o) => o.id === assignment.outlet_id);
        const outletProfit = profitMap[assignment.outlet_id] || 0;
        const investorShare = (outletProfit * assignment.margin_percentage) / 100;

        return {
          outlet_id: assignment.outlet_id,
          outlet_name: outlet?.name || 'Unknown',
          investment_amount: assignment.investment_amount,
          margin_percentage: assignment.margin_percentage,
          outlet_profit: outletProfit,
          investor_share: investorShare,
          status: assignment.status,
        };
      });

      setOutlets(enhancedOutlets);

      // Calculate KPI data
      const totalInvestment = assignments.reduce((sum, a) => sum + a.investment_amount, 0);
      const totalProfitShare = enhancedOutlets.reduce((sum, o) => sum + o.investor_share, 0);
      const activeCount = assignments.filter((a) => a.status === 'active').length;

      setKpiData({
        totalInvestment,
        totalProfitShare,
        activeOutlets: activeCount,
        totalAssignments: assignments.length,
      });

      // Build profit trend data (last 30 days)
      const trendData: { [key: string]: number } = {};
      salesData?.forEach((sale) => {
        if (outletIds.includes(sale.outlet_id)) {
          const date = new Date(sale.created_at).toLocaleDateString('id-ID', {
            month: 'short',
            day: 'numeric',
          });
          trendData[date] = (trendData[date] || 0) + (sale.profit || 0);
        }
      });

      const trend = Object.entries(trendData).map(([date, profit]) => ({
        date,
        profit: Math.round(profit),
      }));

      setProfitTrend(trend);
    } catch (error) {
      console.error('Error fetching investor data:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading investor data...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">Investor Dashboard</h1>
        <p className="text-gray-600 mt-2">Monitor your investment portfolio and profit sharing</p>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        {/* Total Investment */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Total Investment</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">
                Rp {kpiData.totalInvestment.toLocaleString('id-ID')}
              </p>
            </div>
            <div className="bg-blue-100 rounded-lg p-3">
              <DollarSign className="text-blue-600" size={24} />
            </div>
          </div>
        </div>

        {/* Total Profit Share */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Total Profit Share</p>
              <p className="text-2xl font-bold text-green-600 mt-2">
                Rp {kpiData.totalProfitShare.toLocaleString('id-ID')}
              </p>
            </div>
            <div className="bg-green-100 rounded-lg p-3">
              <TrendingUp className="text-green-600" size={24} />
            </div>
          </div>
        </div>

        {/* Active Outlets */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Active Outlets</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">{kpiData.activeOutlets}</p>
            </div>
            <div className="bg-amber-100 rounded-lg p-3">
              <Store className="text-amber-600" size={24} />
            </div>
          </div>
        </div>

        {/* Total Assignments */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Total Assignments</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">{kpiData.totalAssignments}</p>
            </div>
            <div className="bg-purple-100 rounded-lg p-3">
              <Calendar className="text-purple-600" size={24} />
            </div>
          </div>
        </div>
      </div>

      {/* Charts */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Profit Trend */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Profit Trend (Last 30 Days)</h3>
          {profitTrend.length > 0 ? (
            <ResponsiveContainer width="100%" height={300}>
              <LineChart data={profitTrend}>
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="date" />
                <YAxis />
                <Tooltip
                  formatter={(value) => `Rp ${(value as number).toLocaleString('id-ID')}`}
                  contentStyle={{ backgroundColor: '#f9fafb', border: '1px solid #e5e7eb' }}
                />
                <Legend />
                <Line
                  type="monotone"
                  dataKey="profit"
                  stroke="#F59E0B"
                  name="Daily Profit"
                  dot={false}
                  strokeWidth={2}
                />
              </LineChart>
            </ResponsiveContainer>
          ) : (
            <div className="flex items-center justify-center h-300 text-gray-500">
              No profit data available
            </div>
          )}
        </div>

        {/* Outlet Distribution */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Profit Share by Outlet</h3>
          {outlets.length > 0 ? (
            <ResponsiveContainer width="100%" height={300}>
              <BarChart
                data={outlets.map((o) => ({
                  name: o.outlet_name,
                  profit: Math.round(o.investor_share),
                }))}
              >
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="name" angle={-45} textAnchor="end" height={80} />
                <YAxis />
                <Tooltip formatter={(value) => `Rp ${(value as number).toLocaleString('id-ID')}`} />
                <Bar dataKey="profit" fill="#F59E0B" name="Investor Share" />
              </BarChart>
            </ResponsiveContainer>
          ) : (
            <div className="flex items-center justify-center h-300 text-gray-500">
              No outlet data available
            </div>
          )}
        </div>
      </div>

      {/* Outlets Summary Table */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">My Investment Outlets</h3>
        {outlets.length > 0 ? (
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 border-b border-gray-200">
                <tr>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Outlet</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Investment</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Margin %</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Outlet Profit</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Your Share</th>
                  <th className="px-4 py-3 text-center font-semibold text-gray-700">Status</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-200">
                {outlets.map((outlet) => (
                  <tr key={outlet.outlet_id} className="hover:bg-gray-50">
                    <td className="px-4 py-3 font-medium text-gray-900">{outlet.outlet_name}</td>
                    <td className="px-4 py-3 text-right text-gray-600">
                      Rp {outlet.investment_amount.toLocaleString('id-ID')}
                    </td>
                    <td className="px-4 py-3 text-right text-gray-600">{outlet.margin_percentage}%</td>
                    <td className="px-4 py-3 text-right text-gray-600">
                      Rp {Math.round(outlet.outlet_profit).toLocaleString('id-ID')}
                    </td>
                    <td className="px-4 py-3 text-right font-semibold text-green-600">
                      Rp {Math.round(outlet.investor_share).toLocaleString('id-ID')}
                    </td>
                    <td className="px-4 py-3 text-center">
                      <span
                        className={`px-3 py-1 rounded-full text-xs font-medium ${
                          outlet.status === 'active'
                            ? 'bg-green-100 text-green-800'
                            : outlet.status === 'suspended'
                              ? 'bg-yellow-100 text-yellow-800'
                              : 'bg-gray-100 text-gray-800'
                        }`}
                      >
                        {outlet.status.charAt(0).toUpperCase() + outlet.status.slice(1)}
                      </span>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : (
          <div className="flex items-center justify-center py-12 text-gray-500">
            <p>No investment outlets found. Contact admin to set up investments.</p>
          </div>
        )}
      </div>
    </div>
  );
}
