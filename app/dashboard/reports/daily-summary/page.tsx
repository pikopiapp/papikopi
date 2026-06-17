'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { format, subDays, startOfDay } from 'date-fns';

interface DailySalesData {
  date: string;
  sales: number;
  revenue: number;
  orders: number;
  profit: number;
  hpp?: number;
  bonus?: number;
  meal?: number;
}

type RawDaily = {
  date: string;
  revenue: number;
  orders: number;
  profit: number;
  hpp?: number;
  bonus?: number;
  meal?: number;
};

export default function DailySummaryReport() {
  const [loading, setLoading] = useState(true);
  const [data, setData] = useState<DailySalesData[]>([]);
  const [todayStats, setTodayStats] = useState({ totalSales: 0, totalOrders: 0, avgOrderValue: 0, profit: 0 });
  const [yesterdayStats, setYesterdayStats] = useState({ totalSales: 0, totalOrders: 0 });
  const [startDate, setStartDate] = useState(() => {
    const d = new Date();
    d.setDate(d.getDate() - 6);
    return d.toISOString().slice(0, 10);
  });
  const [endDate, setEndDate] = useState(() => new Date().toISOString().slice(0, 10));
  const [outletId, setOutletId] = useState<string | null>(null);
  const [outlets, setOutlets] = useState<Array<{ id: string; name: string }>>([]);
  const [visibleSeries, setVisibleSeries] = useState<Record<string, boolean>>({
    revenue: true,
    hpp: true,
    bonus: true,
    meal: true,
    profit: true,
  });

  // fetches happen after functions are declared

  const fetchOutlets = async () => {
    try {
      const { data: odata } = await supabase.from('outlets').select('id, name').order('name');
      if (odata) setOutlets(odata as { id: string; name: string }[]);
    } catch (err) {
      console.error('Error fetching outlets', err);
    }
  };

  const fetchSalesData = async (opts?: { start?: string; end?: string; outlet?: string | null }) => {
    try {
      console.time('fetchSalesData');
      setLoading(true);
      const s = opts?.start ?? startDate;
      const e = opts?.end ?? endDate;
      const outlet = opts?.outlet ?? outletId;

      const q = new URLSearchParams();
      if (s) q.set('start', s);
      if (e) q.set('end', e);
      if (outlet) q.set('outlet', outlet);

      const res = await fetch(`/api/reports/daily-summary?${q.toString()}`);
      const json = await res.json();
      if (json?.data) {
        // convert date key to label (Mon/Tue)
        const chartData = (json.data as RawDaily[]).map((r) => ({
          date: format(new Date(r.date), 'EEE').substring(0, 3),
          sales: r.revenue,
          revenue: r.revenue,
          orders: r.orders,
          profit: r.profit,
          hpp: r.hpp ?? 0,
          bonus: r.bonus ?? 0,
          meal: r.meal ?? 0,
        }));
        setData(chartData);
      }

      // Calculate today's stats
      const today = format(new Date(), 'yyyy-MM-dd');
      const todayData = json?.data?.find((d: any) => d.date === today) || { revenue: 0, orders: 0, profit: 0, hpp: 0, bonus: 0, meal: 0 };
      const avgValue = todayData.orders > 0 ? (todayData.revenue || 0) / todayData.orders : 0;
      setTodayStats({
        totalSales: todayData.revenue || 0,
        totalOrders: todayData.orders || 0,
        avgOrderValue: avgValue,
        profit: todayData.profit || 0
      });

      // Calculate yesterday's stats for comparison
      const yesterday = format(subDays(new Date(), 1), 'yyyy-MM-dd');
      const yesterdayData = json?.data?.find((d: any) => d.date === yesterday) || { revenue: 0, orders: 0, hpp: 0 };
      setYesterdayStats({
        totalSales: yesterdayData.revenue || 0,
        totalOrders: yesterdayData.orders || 0
      });

    } catch (err) {
      console.error('Error fetching sales data:', err);
    } finally {
      setLoading(false);
      console.timeEnd('fetchSalesData');
    }
  };

  useEffect(() => {
    const t = setTimeout(() => {
      void fetchOutlets();
      void fetchSalesData();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  const exportCsv = () => {
    if (!data || data.length === 0) return;
    const header = ['date','revenue','hpp','bonus','meal','profit','orders'];
    const rows = data.map(d => [
      d.date,
      d.revenue,
      d.hpp ?? 0,
      d.bonus ?? 0,
      d.meal ?? 0,
      d.profit,
      d.orders
    ]);
    const csv = [header, ...rows].map(r => r.join(',')).join('\n');
    const blob = new Blob([csv], { type: 'text/csv' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `daily-summary-${startDate}-to-${endDate}.csv`;
    a.click();
    URL.revokeObjectURL(url);
  };

  const toggleSeries = (key: string) => {
    setVisibleSeries(prev => ({ ...prev, [key]: !prev[key] }));
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
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
            {Array.from({ length: 4 }).map((_, i) => (
              <div key={i} className="animate-pulse bg-white rounded-lg shadow p-4 h-24" />
            ))}
        </div>
        <div className="bg-white rounded-lg shadow-md p-6 h-96 animate-pulse" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <div className="flex gap-3 items-end">
          <div>
            <label className="text-sm text-gray-600">Start</label>
            <input type="date" value={startDate} onChange={(e) => setStartDate(e.target.value)} className="mt-1 p-2 border rounded" />
          </div>
          <div>
            <label className="text-sm text-gray-600">End</label>
            <input type="date" value={endDate} onChange={(e) => setEndDate(e.target.value)} className="mt-1 p-2 border rounded" />
          </div>
          <div>
            <label className="text-sm text-gray-600">Outlet</label>
            <select value={outletId ?? ''} onChange={(e) => setOutletId(e.target.value || null)} className="mt-1 p-2 border rounded">
              <option value="">All outlets</option>
              {outlets.map((o) => (
                <option key={o.id} value={o.id}>{o.name}</option>
              ))}
            </select>
          </div>
          <div>
            <button
              onClick={() => fetchSalesData({ start: startDate, end: endDate, outlet: outletId })}
              className="bg-blue-600 text-white px-4 py-2 rounded"
            >
              Refresh
            </button>
          </div>
        </div>
      </div>
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Daily Summary</h1>
        <p className="text-gray-600">Ringkasan penjualan harian</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-3">
        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Total Sales</h3>
            <span className="text-xs text-gray-400">7d</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-green-600">{formatCurrency(todayStats.totalSales)}</p>
            <p className="text-xs text-gray-500">{calculateChange(todayStats.totalSales, yesterdayStats.totalSales)}%</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Total Orders</h3>
            <span className="text-xs text-gray-400">today</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-blue-600">{todayStats.totalOrders}</p>
            <p className="text-xs text-gray-500">{calculateChange(todayStats.totalOrders, yesterdayStats.totalOrders)}%</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Avg Order Value</h3>
            <span className="text-xs text-gray-400">today</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-orange-600">{formatCurrency(todayStats.avgOrderValue)}</p>
            <p className="text-xs text-gray-500">Avg</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Total Profit</h3>
            <span className="text-xs text-gray-400">today</span>
          </div>
          <div className="flex items-center justify-between">
            <p className={`text-2xl font-bold ${todayStats.profit < 0 ? 'text-red-600' : 'text-green-600'}`}>{formatCurrency(todayStats.profit)}</p>
            <p className="text-xs text-gray-500">{todayStats.profit < 0 ? "Today's profit" : "Today's profit"}</p>
          </div>
        </div>
      </div>

      <div className="mt-3 grid grid-cols-1 md:grid-cols-3 gap-3">
        <div className="bg-white rounded-lg shadow p-4">
          <h4 className="text-sm font-medium text-gray-600">Total HPP</h4>
          <p className="text-lg font-bold text-red-600 mt-2">{formatCurrency((data.reduce((s, d) => s + (d.hpp || 0), 0) as number))}</p>
          <p className="text-xs text-gray-500 mt-1">Total cost of goods sold (range)</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <h4 className="text-sm font-medium text-gray-600">Total Bonus</h4>
          <p className="text-lg font-bold text-indigo-600 mt-2">{formatCurrency((data.reduce((s, d) => s + (d.bonus || 0), 0) as number))}</p>
          <p className="text-xs text-gray-500 mt-1">Total bonus paid (range)</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <h4 className="text-sm font-medium text-gray-600">Total Meal</h4>
          <p className="text-lg font-bold text-yellow-600 mt-2">{formatCurrency((data.reduce((s, d) => s + (d.meal || 0), 0) as number))}</p>
          <p className="text-xs text-gray-500 mt-1">Total meal allowances (range)</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">7-Day Sales Trend</h2>
        <div style={{ width: '100%', overflowX: 'auto' }}>
          <svg viewBox={`0 0 800 400`} width="100%" height={400} preserveAspectRatio="xMinYMid meet">
            <line x1={60} y1={20} x2={60} y2={360} stroke="#eee" />
            {data.map((d, i) => {
              const barW = (680 / Math.max(1, data.length));
              const x = 60 + i * barW + barW * 0.1;
              const max = Math.max(1, ...data.map((dd) => dd.revenue || 0));
              const hVal = ((d.revenue || 0) / max) * 300;
              return (
                <g key={d.date}>
                  <rect x={x} y={360 - hVal} width={barW * 0.7} height={hVal} fill="#8884d8" />
                  <text x={x + barW * 0.35} y={378} fontSize={10} textAnchor="middle" transform={`rotate(-25 ${x + barW * 0.35},378)`}>{d.date}</text>
                </g>
              );
            })}
          </svg>
        </div>
      </div>
    </div>
  );
}
