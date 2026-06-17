"use client";

import { useEffect, useState } from 'react';
import dynamic from 'next/dynamic';
import { supabase } from '@/lib/supabase';
import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';

interface OutletMetric {
  category: string;
  [key: string]: string | number;
}

interface OutletStats {
  outlet: string;
  sales: number;
  growth: string;
  transactions: number;
  avgTransactionValue: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

const colors = ['#8884d8', '#82ca9d', '#ffc658', '#ff7c7c', '#8dd1e1', '#d084d0'];

const OutletRadarChart = dynamic(() => import('../components/Charts/OutletRadarChart'), {
  ssr: false,
  loading: () => <div className="text-center py-8 text-gray-500">Memuat chart...</div>,
});

export default function OutletComparisonReport() {
  const [loading, setLoading] = useState(true);
  const [period, setPeriod] = useState<PeriodType>('mtd');
  const [radarData, setRadarData] = useState<OutletMetric[]>([]);
  const [outletStats, setOutletStats] = useState<OutletStats[]>([]);
  const [customStartDate, setCustomStartDate] = useState<string>(format(startOfMonth(new Date()), 'yyyy-MM-dd'));
  const [customEndDate, setCustomEndDate] = useState<string>(format(new Date(), 'yyyy-MM-dd'));

  // initial fetch moved below function declarations

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

  async function fetchOutletData() {
    try {
      setLoading(true);
      const { startDate, endDate } = getDateRange();
      const q = new URLSearchParams({ start: startDate.toISOString(), end: endDate.toISOString() });
      const resp = await fetch(`/api/reports/outlet-comparison?${q.toString()}`);
      const json = await resp.json();
      const stats: OutletStats[] = json?.data || [];

      setOutletStats(stats);

      const maxSales = Math.max(...stats.map(s => s.sales), 1);
      const maxTransactions = Math.max(...stats.map(s => s.transactions), 1);
      const maxAvgValue = Math.max(...stats.map(s => s.avgTransactionValue), 1);

      const radarMetrics: OutletMetric[] = [
        { category: 'Total Sales' },
        { category: 'Transactions' },
        { category: 'Avg Transaction Value' },
      ];

      stats.forEach(stat => {
        radarMetrics[0][stat.outlet] = Math.round((stat.sales / maxSales) * 100);
        radarMetrics[1][stat.outlet] = Math.round((stat.transactions / maxTransactions) * 100);
        radarMetrics[2][stat.outlet] = Math.round((stat.avgTransactionValue / maxAvgValue) * 100);
      });

      setRadarData(radarMetrics);

    } catch (err) {
      console.error('Error fetching outlet data:', err);
    } finally {
      setLoading(false);
    }
  }

  const formatCurrency = (amount: number): string => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(amount);
  };

  useEffect(() => {
    fetchOutletData();
  }, [period, customStartDate, customEndDate]);

  if (loading) {
    return (
      <div className="space-y-6">
        <div className="surface-card rounded-lg shadow-md p-6">
          <p className="text-gray-600">Loading outlet data...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Outlet Comparison</h1>
        <p className="text-gray-600">Perbandingan performa antar outlet</p>
      </div>

      {/* Period Selector */}
      <div className="surface-card rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Pilih Periode</h2>
        <div className="flex gap-2 mb-4 flex-wrap">
          <button
            onClick={() => setPeriod('ytd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'ytd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Year to Date
          </button>
          <button
            onClick={() => setPeriod('mtd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'mtd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Month to Date
          </button>
          <button
            onClick={() => setPeriod('wtd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'wtd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Week to Date
          </button>
          <button
            onClick={() => setPeriod('custom')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'custom'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Custom Range
          </button>
        </div>

        {/* Custom Date Picker */}
        {period === 'custom' && (
          <div className="flex gap-4 items-end">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Dari</label>
              <input
                type="date"
                value={customStartDate}
                onChange={(e) => setCustomStartDate(e.target.value)}
                className="border border-gray-300 rounded-lg px-3 py-2"
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Sampai</label>
              <input
                type="date"
                value={customEndDate}
                onChange={(e) => setCustomEndDate(e.target.value)}
                className="border border-gray-300 rounded-lg px-3 py-2"
              />
            </div>
          </div>
        )}
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Performance Metrics (Normalized 0-100)</h2>
        {radarData.length > 0 ? (
          <OutletRadarChart data={radarData} outlets={outletStats.map(s => s.outlet)} colors={colors} />
        ) : (
          <div className="text-center py-8 text-gray-500">
            <p>Belum ada data outlet untuk periode terpilih</p>
          </div>
        )}
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="p-6 border-b">
          <h2 className="text-xl font-bold text-gray-800">Outlet Performance Details</h2>
        </div>
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
              <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Total Sales</th>
              <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Transactions</th>
              <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Avg Transaction</th>
              <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Growth</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {outletStats.map((item, idx) => (
              <tr key={idx} className="hover:bg-gray-50">
                <td className="px-6 py-4 font-semibold text-gray-900">{item.outlet}</td>
                <td className="px-6 py-4 text-right text-gray-700">{formatCurrency(item.sales)}</td>
                <td className="px-6 py-4 text-right text-gray-700">{item.transactions}</td>
                <td className="px-6 py-4 text-right text-gray-700">{formatCurrency(item.avgTransactionValue)}</td>
                <td className={`px-6 py-4 text-right font-semibold ${Number(item.growth) >= 0 ? 'text-green-600' : 'text-red-600'}`}>
                  {item.growth}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
