'use client';

import { useEffect, useState } from 'react';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { supabase } from '@/lib/supabase';
import { format, startOfYear, startOfMonth, endOfMonth, startOfDay, startOfWeek, endOfWeek } from 'date-fns';

interface MonthlySalesData {
  month: string;
  sales: number;
  target: number;
  profit: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

export default function SalesReport() {
  const [loading, setLoading] = useState(true);
  const [period, setPeriod] = useState<PeriodType>('ytd');
  const [chartData, setChartData] = useState<MonthlySalesData[]>([]);
  const [stats, setStats] = useState({
    totalYTD: 0,
    totalProfit: 0,
    achievement: 0,
    growthRate: '0',
  });
  const [customStartDate, setCustomStartDate] = useState<string>(format(startOfYear(new Date()), 'yyyy-MM-dd'));
  const [customEndDate, setCustomEndDate] = useState<string>(format(new Date(), 'yyyy-MM-dd'));

  useEffect(() => {
    fetchSalesData();
  }, [period, customStartDate, customEndDate]);

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
        startDate = startOfYear(now);
        endDate = now;
    }

    return { startDate, endDate };
  };

  const fetchSalesData = async () => {
    try {
      setLoading(true);
      const { startDate, endDate } = getDateRange();

      // Fetch all sales for the period
      const { data: salesData, error } = await supabase
        .from('sales')
        .select('id, total_amount, profit, created_at')
        .gte('created_at', startDate.toISOString())
        .lte('created_at', endDate.toISOString())
        .order('created_at', { ascending: true });

      if (error) throw error;

      // Group sales by month or day depending on period
      const isShortPeriod = period === 'wtd' || (period === 'custom' && 
        (new Date(customEndDate).getTime() - new Date(customStartDate).getTime()) / (1000 * 60 * 60 * 24) <= 7);

      const groupedData: { [key: string]: { sales: number; profit: number; count: number } } = {};
      
      if (isShortPeriod) {
        // Group by day for short periods
        const currentDate = new Date(startDate);
        while (currentDate <= endDate) {
          const dayKey = format(currentDate, 'yyyy-MM-dd');
          groupedData[dayKey] = { sales: 0, profit: 0, count: 0 };
          currentDate.setDate(currentDate.getDate() + 1);
        }
      } else {
        // Group by month for longer periods
        for (let i = 0; i < 12; i++) {
          const date = new Date(startDate);
          date.setMonth(date.getMonth() + i);
          if (date <= endDate) {
            const monthKey = format(date, 'yyyy-MM');
            groupedData[monthKey] = { sales: 0, profit: 0, count: 0 };
          }
        }
      }

      // Process sales data
      if (salesData) {
        for (const sale of salesData) {
          const key = isShortPeriod 
            ? format(new Date(sale.created_at), 'yyyy-MM-dd')
            : format(new Date(sale.created_at), 'yyyy-MM');
          
          if (groupedData[key]) {
            groupedData[key].sales += Number(sale.total_amount);
            groupedData[key].profit += Number(sale.profit);
            groupedData[key].count += 1;
          }
        }
      }

      // Convert to chart format
      const chartArray: MonthlySalesData[] = [];
      let totalYTD = 0;
      let totalProfit = 0;

      Object.entries(groupedData).forEach(([dateKey, data]) => {
        if (data.count > 0 || chartArray.length > 0) {
          let label: string;
          
          if (isShortPeriod) {
            // Show day label
            label = format(new Date(dateKey), 'MMM dd');
          } else {
            // Show month label
            const monthNum = parseInt(dateKey.split('-')[1]);
            const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
            label = monthNames[monthNum - 1];
          }

          const avgTarget = 50000000;

          chartArray.push({
            month: label,
            sales: data.sales,
            target: avgTarget,
            profit: data.profit,
          });

          totalYTD += data.sales;
          totalProfit += data.profit;
        }
      });

      setChartData(chartArray);

      // Calculate achievement
      const totalTarget = chartArray.reduce((sum, m) => sum + m.target, 0);
      const achievement = totalTarget > 0 ? (totalYTD / totalTarget) * 100 : 0;

      // Growth rate calculation
      let growthRate = 0;
      if (chartArray.length >= 2) {
        const lastPeriod = chartArray[chartArray.length - 1].sales;
        const prevPeriod = chartArray[chartArray.length - 2].sales;
        if (prevPeriod > 0) {
          growthRate = ((lastPeriod - prevPeriod) / prevPeriod) * 100;
        }
      }

      setStats({
        totalYTD,
        totalProfit,
        achievement: Math.round(achievement),
        growthRate: growthRate.toFixed(1),
      });

    } catch (err) {
      console.error('Error fetching sales data:', err);
    } finally {
      setLoading(false);
    }
  };

  const formatCurrency = (amount: number | string): string => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(Number(amount));
  };

  if (loading) {
    return (
      <div className="space-y-6">
        <div className="bg-white rounded-lg shadow-md p-6">
          <p className="text-gray-600">Loading sales data...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Report Penjualan</h1>
        <p className="text-gray-600">Laporan penjualan dengan periode fleksibel</p>
      </div>

      {/* Period Selector */}
      <div className="bg-white rounded-lg shadow-md p-6">
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

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Penjualan</h3>
          <p className="text-3xl font-bold text-green-600 mt-2">{formatCurrency(stats.totalYTD)}</p>
          <p className="text-sm text-gray-500 mt-1">Periode terpilih</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Profit</h3>
          <p className="text-3xl font-bold text-purple-600 mt-2">{formatCurrency(stats.totalProfit)}</p>
          <p className="text-sm text-gray-500 mt-1">Keuntungan total</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Target Achievement</h3>
          <p className="text-3xl font-bold text-blue-600 mt-2">{stats.achievement}%</p>
          <p className="text-sm text-gray-500 mt-1">Pencapaian target</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Growth Rate</h3>
          <p className={`text-3xl font-bold mt-2 ${Number(stats.growthRate) >= 0 ? 'text-green-600' : 'text-red-600'}`}>
            {Number(stats.growthRate) >= 0 ? '+' : ''}{stats.growthRate}%
          </p>
          <p className="text-sm text-gray-500 mt-1">Pertumbuhan</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Sales Trend</h2>
        {chartData.length > 0 ? (
          <ResponsiveContainer width="100%" height={400}>
            <LineChart data={chartData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="month" />
              <YAxis />
              <Tooltip 
                formatter={(value) => formatCurrency(Number(value))}
                labelFormatter={(label) => `${label}`}
              />
              <Legend />
              <Line 
                type="monotone" 
                dataKey="sales" 
                stroke="#8884d8" 
                strokeWidth={2} 
                name="Sales"
                dot={{ r: 4 }}
              />
              <Line 
                type="monotone" 
                dataKey="profit" 
                stroke="#82ca9d" 
                strokeWidth={2} 
                name="Profit"
                dot={{ r: 4 }}
              />
            </LineChart>
          </ResponsiveContainer>
        ) : (
          <div className="text-center py-8 text-gray-500">
            <p>Belum ada data penjualan untuk periode terpilih</p>
          </div>
        )}
      </div>
    </div>
  );
}
