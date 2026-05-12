'use client';

import { useEffect, useState } from 'react';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { supabase } from '@/lib/supabase';
import { format, subDays, startOfDay } from 'date-fns';

interface DailySalesData {
  date: string;
  sales: number;
  revenue: number;
  orders: number;
  profit: number;
}

export default function DailySummaryReport() {
  const [loading, setLoading] = useState(true);
  const [data, setData] = useState<DailySalesData[]>([]);
  const [todayStats, setTodayStats] = useState({ totalSales: 0, totalOrders: 0, avgOrderValue: 0, profit: 0 });
  const [yesterdayStats, setYesterdayStats] = useState({ totalSales: 0, totalOrders: 0 });

  useEffect(() => {
    fetchSalesData();
  }, []);

  const fetchSalesData = async () => {
    try {
      setLoading(true);
      
      // Get last 7 days of sales data
      const sevenDaysAgo = subDays(new Date(), 6);
      const startDate = startOfDay(sevenDaysAgo).toISOString();
      
      // Fetch all sales for the past 7 days
      const { data: salesData, error } = await supabase
        .from('sales')
        .select('id, total_amount, profit, created_at')
        .gte('created_at', startDate)
        .order('created_at', { ascending: false });

      if (error) throw error;

      // Group sales by date
      const salesByDate: { [key: string]: DailySalesData } = {};
      
      for (let i = 0; i < 7; i++) {
        const date = subDays(new Date(), 6 - i);
        const dateKey = format(date, 'yyyy-MM-dd');
        const dayName = format(date, 'EEE');
        
        salesByDate[dateKey] = {
          date: dayName.substring(0, 3),
          sales: 0,
          revenue: 0,
          orders: 0,
          profit: 0
        };
      }

      // Process sales data
      if (salesData) {
        for (const sale of salesData) {
          const dateKey = format(new Date(sale.created_at), 'yyyy-MM-dd');
          if (salesByDate[dateKey]) {
            salesByDate[dateKey].sales += Number(sale.total_amount);
            salesByDate[dateKey].revenue += Number(sale.total_amount);
            salesByDate[dateKey].orders += 1;
            salesByDate[dateKey].profit += Number(sale.profit);
          }
        }
      }

      const chartData = Object.values(salesByDate);
      setData(chartData);

      // Calculate today's stats
      const today = format(new Date(), 'yyyy-MM-dd');
      const todayData = salesByDate[today];
      const avgValue = todayData.orders > 0 ? todayData.sales / todayData.orders : 0;
      setTodayStats({
        totalSales: todayData.sales,
        totalOrders: todayData.orders,
        avgOrderValue: avgValue,
        profit: todayData.profit
      });

      // Calculate yesterday's stats for comparison
      const yesterday = format(subDays(new Date(), 1), 'yyyy-MM-dd');
      const yesterdayData = salesByDate[yesterday];
      setYesterdayStats({
        totalSales: yesterdayData.sales,
        totalOrders: yesterdayData.orders
      });

    } catch (err) {
      console.error('Error fetching sales data:', err);
    } finally {
      setLoading(false);
    }
  };

  const calculateChange = (today: number, yesterday: number): string => {
    if (yesterday === 0) return '0%';
    const change = ((today - yesterday) / yesterday) * 100;
    return change.toFixed(1);
  };

  const formatCurrency = (amount: number): string => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(amount);
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
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Daily Summary</h1>
        <p className="text-gray-600">Ringkasan penjualan harian</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sales</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{formatCurrency(todayStats.totalSales)}</p>
          <p className="text-sm text-gray-500 mt-1">
            {calculateChange(todayStats.totalSales, yesterdayStats.totalSales)}% from yesterday
          </p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Orders</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{todayStats.totalOrders}</p>
          <p className="text-sm text-gray-500 mt-1">
            {calculateChange(todayStats.totalOrders, yesterdayStats.totalOrders)}% from yesterday
          </p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Order Value</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{formatCurrency(todayStats.avgOrderValue)}</p>
          <p className="text-sm text-gray-500 mt-1">Today's average</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Profit</h3>
          <p className="text-4xl font-bold text-purple-600 mt-2">{formatCurrency(todayStats.profit)}</p>
          <p className="text-sm text-gray-500 mt-1">Today's profit</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">7-Day Sales Trend</h2>
        <ResponsiveContainer width="100%" height={400}>
          <BarChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="date" />
            <YAxis />
            <Tooltip 
              formatter={(value) => formatCurrency(Number(value))}
              labelFormatter={(label) => `Day: ${label}`}
            />
            <Legend />
            <Bar dataKey="revenue" fill="#8884d8" name="Revenue" />
            <Bar dataKey="profit" fill="#82ca9d" name="Profit" />
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
