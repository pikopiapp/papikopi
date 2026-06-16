'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';

interface ReturnReason {
  reason: string;
  count: number;
  percentage: number;
  impact: string;
  totalValue: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

interface SalesData {
  total_amount: number;
  id: string;
}

export default function ReturnsAnalysisReport() {
  const [returnsData, setReturnsData] = useState<ReturnReason[]>([]);
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState({
    totalReturns: 0,
    returnRate: 0,
    avgLoss: 0,
  });
  const [period, setPeriod] = useState<PeriodType>('mtd');
  const [customStartDate, setCustomStartDate] = useState<string>(format(startOfMonth(new Date()), 'yyyy-MM-dd'));
  const [customEndDate, setCustomEndDate] = useState<string>(format(new Date(), 'yyyy-MM-dd'));

  // initial fetch moved below function declaration

  const getDateRange = () => {
    const now = new Date();
    let startDate: Date;
    let endDate: Date;

    switch (period) {
      case 'ytd':
        startDate = startOfYear(now);
        endDate = now;
        break;
      case 'mtd':
        startDate = startOfMonth(now);
        endDate = now;
        break;
      case 'wtd':
        startDate = startOfWeek(now);
        endDate = now;
        break;
      case 'custom':
        startDate = new Date(customStartDate);
        endDate = new Date(customEndDate);
        break;
      default:
        startDate = startOfMonth(now);
        endDate = now;
    }

    return { startDate, endDate };
  };

  async function fetchReturnsData() {
    try {
      setLoading(true);
      const { startDate, endDate } = getDateRange();

      // Fetch returns data
      const { data: returns, error: returnsError } = await supabase
        .from('product_returns')
        .select('id, return_reason, return_date')
        .gte('return_date', startDate.toISOString())
        .lte('return_date', endDate.toISOString());

      if (returnsError) throw returnsError;

      // Fetch all sales to calculate return rate
      const { data: sales, error: salesError } = await supabase
        .from('sales')
        .select('id, total_amount')
        .gte('created_at', startDate.toISOString())
        .lte('created_at', endDate.toISOString());

      if (salesError) throw salesError;

      // Group returns by reason
      const reasonMap: { [key: string]: number } = {};
      const totalReturnValue = 0;

      if (returns) {
        for (const ret of returns) {
          const reason = ret.return_reason || 'Unknown';
          reasonMap[reason] = (reasonMap[reason] || 0) + 1;
        }
      }

      // Determine impact based on count
      const getImpact = (count: number): string => {
        if (count >= 10) return 'High';
        if (count >= 5) return 'Medium';
        return 'Low';
      };

      // Convert to array and calculate percentages
      const total = Object.values(reasonMap).reduce((a, b) => a + b, 0);
      const chartArray: ReturnReason[] = Object.entries(reasonMap)
        .map(([reason, count]) => ({
          reason,
          count,
          percentage: total > 0 ? Math.round((count / total) * 100) : 0,
          impact: getImpact(count),
          totalValue: 0,
        }))
        .sort((a, b) => b.count - a.count);

      setReturnsData(chartArray);

      // Calculate stats
      const totalSales = (sales || []).reduce((sum, s) => sum + (s.total_amount || 0), 0);
      const returnRate = totalSales > 0 ? ((total / (sales?.length || 1)) * 100).toFixed(1) : '0';

      setStats({
        totalReturns: total,
        returnRate: parseFloat(returnRate),
        avgLoss: total > 0 ? Math.round(totalReturnValue / total) : 0,
      });
    } catch (error) {
      console.error('Error fetching returns data:', error);
    } finally {
      setLoading(false);
    }
  }

  const getImpactColor = (impact: string) => {
    switch(impact) {
      case 'High': return 'text-red-600';
      case 'Medium': return 'text-yellow-600';
      case 'Low': return 'text-green-600';
      default: return 'text-gray-600';
    }

    useEffect(() => {
      fetchReturnsData();
    }, [period, customStartDate, customEndDate]);
  };

  const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
    }).format(value);
  };

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Returns Analysis</h1>
        <p className="text-gray-600">Analisis return dan damage produk</p>
      </div>

      {/* Period Selector */}
      <div className="surface-card rounded-lg shadow-md p-6">
        <div className="flex flex-wrap gap-2 mb-4">
          <button
            onClick={() => setPeriod('ytd')}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              period === 'ytd'
                ? 'bg-[#1F4E5F] text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            YTD
          </button>
          <button
            onClick={() => setPeriod('mtd')}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              period === 'mtd'
                ? 'bg-[#1F4E5F] text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            MTD
          </button>
          <button
            onClick={() => setPeriod('wtd')}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              period === 'wtd'
                ? 'bg-[#1F4E5F] text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            WTD
          </button>
          <button
            onClick={() => setPeriod('custom')}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              period === 'custom'
                ? 'bg-[#1F4E5F] text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Custom
          </button>
        </div>

        {/* Custom Date Range */}
        {period === 'custom' && (
          <div className="flex gap-4 mb-4">
            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-1">Dari</label>
              <input
                type="date"
                value={customStartDate}
                onChange={(e) => setCustomStartDate(e.target.value)}
                className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#1F4E5F]"
              />
            </div>
            <div>
              <label className="block text-sm font-semibold text-gray-700 mb-1">Sampai</label>
              <input
                type="date"
                value={customEndDate}
                onChange={(e) => setCustomEndDate(e.target.value)}
                className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-[#1F4E5F]"
              />
            </div>
          </div>
        )}
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Returns</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">{stats.totalReturns}</p>
          <p className="text-sm text-gray-500 mt-1">{period.toUpperCase()}</p>
        </div>
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Return Rate</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{stats.returnRate.toFixed(1)}%</p>
          <p className="text-sm text-gray-500 mt-1">Of total transactions</p>
        </div>
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Loss</h3>
          <p className="text-3xl font-bold text-red-500 mt-2">{formatCurrency(stats.avgLoss)}</p>
          <p className="text-sm text-gray-500 mt-1">Value lost per return</p>
        </div>
      </div>

      <div className="surface-card rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-6 text-center text-gray-500">Loading returns data...</div>
        ) : returnsData.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No returns data available</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Return Reason</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Count</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Percentage</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Impact</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {returnsData.map((item, idx) => (
                <tr key={idx} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.reason}</td>
                  <td className="px-6 py-4 text-gray-700">{item.count} units</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center gap-2">
                      <div className="w-16 bg-gray-200 rounded-full h-2">
                        <div
                          className="bg-blue-600 h-2 rounded-full"
                          style={{ width: `${item.percentage}%` }}
                        ></div>
                      </div>
                      <span className="text-sm text-gray-600">{item.percentage}%</span>
                    </div>
                  </td>
                  <td className={`px-6 py-4 font-semibold ${getImpactColor(item.impact)}`}>
                    {item.impact}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
