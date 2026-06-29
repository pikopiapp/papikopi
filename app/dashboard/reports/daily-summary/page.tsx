'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { Line } from 'react-chartjs-2';
import {
  Chart as ChartJS,
  CategoryScale,
  LinearScale,
  PointElement,
  LineElement,
  Title as ChartTitle,
  Tooltip as ChartTooltip,
  Legend as ChartLegend,
} from 'chart.js';
import { format } from 'date-fns';
import { getBusinessDayDate, getBusinessDayRange, parseDateOnlyAsJakarta, formatDateOnlyInJakarta } from '@/lib/helpers/business-day';

ChartJS.register(CategoryScale, LinearScale, PointElement, LineElement, ChartTitle, ChartTooltip, ChartLegend);

interface DailySalesData {
  date: string;
  dateLabel: string;
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
  const [rangeStats, setRangeStats] = useState({ totalSales: 0, totalOrders: 0, avgOrderValue: 0, profit: 0 });
  const [prevRangeStats, setPrevRangeStats] = useState({ totalSales: 0, totalOrders: 0 });
  const localYMD = (d: Date) => formatDateOnlyInJakarta(d);

  const [startDate, setStartDate] = useState(() => {
    const currentBusinessDay = getBusinessDayDate(new Date(), 4);
    const startDate = new Date(currentBusinessDay);
    startDate.setDate(startDate.getDate() - 6);
    return localYMD(startDate);
  });
  const [endDate, setEndDate] = useState(() => {
    const currentBusinessDay = getBusinessDayDate(new Date(), 4);
    return localYMD(currentBusinessDay);
  });
  const [outletId, setOutletId] = useState<string | null>(null);
  const [outlets, setOutlets] = useState<Array<{ id: string; name: string }>>([]);

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
      setLoading(true);
      const sRaw = opts?.start ?? startDate;
      const eRaw = opts?.end ?? endDate;
      const s = formatDateOnlyInJakarta(parseDateOnlyAsJakarta(sRaw));
      const e = formatDateOnlyInJakarta(parseDateOnlyAsJakarta(eRaw));
      const outlet = opts?.outlet ?? outletId;

      const q = new URLSearchParams();
      if (s) q.set('start', s);
      if (e) q.set('end', e);
      if (outlet) q.set('outlet', outlet);

      const res = await fetch(`/api/reports/daily-summary?${q.toString()}`);
      const json = await res.json();
      if (json?.data) {
        const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        const chartData = (json.data as RawDaily[])
          .slice()
          .sort((a, b) => a.date.localeCompare(b.date))
          .map((r) => {
            const jakartaLabel = (() => {
              if (!r.date) return '';
              const parts = r.date.split('-');
              if (parts.length !== 3) return r.date;
              const [year, month, day] = parts;
              const monthIndex = Number(month) - 1;
              if (Number.isNaN(monthIndex) || monthIndex < 0 || monthIndex > 11) return r.date;
              return `${day} ${monthNames[monthIndex]}`;
            })();

            return {
              date: r.date,
              dateLabel: jakartaLabel,
              sales: r.revenue,
              revenue: r.revenue,
              orders: r.orders,
              profit: r.profit,
              hpp: r.hpp ?? 0,
              bonus: r.bonus ?? 0,
              meal: r.meal ?? 0,
            };
          });
        setData(chartData);
      }

      // Calculate totals for selected range (sum over returned rows)
      const curRows: RawDaily[] = Array.isArray(json?.data) ? json.data : [];
      const curTotals = curRows.reduce((acc, r) => {
        acc.revenue += Number(r.revenue || 0);
        acc.orders += Number(r.orders || 0);
        acc.profit += Number(r.profit || 0);
        return acc;
      }, { revenue: 0, orders: 0, profit: 0 });
      const avgVal = curTotals.orders > 0 ? Math.round(curTotals.revenue / curTotals.orders) : 0;
      setRangeStats({ totalSales: curTotals.revenue, totalOrders: curTotals.orders, avgOrderValue: avgVal, profit: curTotals.profit });

      // Calculate previous range (same length immediately before startDate)
      const sDate = parseDateOnlyAsJakarta(s);
      const eDate = parseDateOnlyAsJakarta(e);
      const dayCount = Math.round((eDate.getTime() - sDate.getTime()) / (24 * 60 * 60 * 1000)) + 1;
      const prevEnd = new Date(eDate.getTime() - 24 * 60 * 60 * 1000);
      const prevStart = new Date(prevEnd.getTime() - (dayCount - 1) * 24 * 60 * 60 * 1000);
      const prevQ = new URLSearchParams({ start: formatDateOnlyInJakarta(prevStart), end: formatDateOnlyInJakarta(prevEnd) });
      try {
        const pres = await fetch(`/api/reports/daily-summary?${prevQ.toString()}`);
        const pjson = await pres.json();
        const prevRows: RawDaily[] = Array.isArray(pjson?.data) ? pjson.data : [];
        const prevTotals = prevRows.reduce((acc, r) => { acc.revenue += Number(r.revenue||0); acc.orders += Number(r.orders||0); return acc; }, { revenue: 0, orders: 0 });
        setPrevRangeStats({ totalSales: prevTotals.revenue, totalOrders: prevTotals.orders });
      } catch (err) {
        console.error('prev range fetch error', err);
        setPrevRangeStats({ totalSales: 0, totalOrders: 0 });
      }

      // Count units (cups) in this range by scanning /api/sales/by-outlet (items.quantity)
      try {
        const resItems = await fetch('/api/sales/by-outlet');
        const itemsJson = await resItems.json();
        const rawSales = Array.isArray(itemsJson) ? itemsJson : (Array.isArray(itemsJson?.sales) ? itemsJson.sales : []);
        const businessStart = getBusinessDayRange(parseDateOnlyAsJakarta(s), 4).start;
        const businessEnd = getBusinessDayRange(parseDateOnlyAsJakarta(e), 4).end;
        const units = rawSales.reduce((sum: number, srow: any) => {
          const t = parseDateOnlyAsJakarta(String(srow.created_at || ''));
          if (Number.isNaN(t.getTime()) || t.getTime() < businessStart.getTime() || t.getTime() > businessEnd.getTime()) return sum;
          const items = Array.isArray(srow.sale_items)
            ? srow.sale_items
            : Array.isArray(srow.items)
              ? srow.items
              : [];
          const saleUnits = items.reduce((ss: number, it: any) => ss + (Number(it.quantity || it.units || it.cups || 0) || 0), 0);
          return sum + saleUnits;
        }, 0);
        setRangeStats((r) => ({ ...r, units } as any));
      } catch (err) {
        console.error('units fetch error', err);
      }

    } catch (err) {
      console.error('Error fetching sales data:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const t = setTimeout(() => {
      void fetchOutlets();
      void fetchSalesData();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  // Auto refresh when date range or outlet changes (small debounce)
  useEffect(() => {
    const t = setTimeout(() => {
      void fetchSalesData({ start: startDate, end: endDate, outlet: outletId });
    }, 200);
    return () => clearTimeout(t);
  }, [startDate, endDate, outletId]);

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
      <div className="space-y-6 animate-pulse">
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
            <div className="space-y-3">
              <div className="h-4 w-24 bg-slate-200 rounded" />
              <div className="h-10 bg-slate-100 rounded" />
            </div>
            <div className="space-y-3">
              <div className="h-4 w-24 bg-slate-200 rounded" />
              <div className="h-10 bg-slate-100 rounded" />
            </div>
            <div className="space-y-3">
              <div className="h-4 w-24 bg-slate-200 rounded" />
              <div className="h-10 bg-slate-100 rounded" />
            </div>
            <div className="space-y-3">
              <div className="h-4 w-24 bg-slate-200 rounded" />
              <div className="h-10 bg-slate-100 rounded w-full md:w-3/4" />
            </div>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-4 gap-3">
          {Array.from({ length: 4 }).map((_, i) => (
            <div key={i} className="bg-white rounded-lg shadow p-4 h-28" />
          ))}
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
          {Array.from({ length: 3 }).map((_, i) => (
            <div key={i} className="bg-white rounded-lg shadow p-4 h-28" />
          ))}
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="h-6 w-48 bg-slate-200 rounded mb-4" />
          <div className="h-80 bg-slate-100 rounded" />
        </div>
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
            <span className="text-xs text-gray-400">{format(new Date(startDate), 'd MMM')}–{format(new Date(endDate), 'd MMM yyyy')}</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-green-600">{formatCurrency(rangeStats.totalSales)}</p>
            <p className="text-xs text-gray-500">{calculateChange(rangeStats.totalSales, prevRangeStats.totalSales)}%</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Total Orders</h3>
            <span className="text-xs text-gray-400">{format(new Date(startDate), 'd MMM')}–{format(new Date(endDate), 'd MMM yyyy')}</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-blue-600">{rangeStats.totalOrders}</p>
            <p className="text-xs text-gray-500">{calculateChange(rangeStats.totalOrders, prevRangeStats.totalOrders)}%</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Avg Order Value</h3>
            <span className="text-xs text-gray-400">range</span>
          </div>
          <div className="flex items-center justify-between">
            <p className="text-2xl font-bold text-orange-600">{formatCurrency(rangeStats.avgOrderValue)}</p>
            <p className="text-xs text-gray-500">Avg</p>
          </div>
        </div>

        <div className="bg-white rounded-lg shadow p-4 flex flex-col justify-between">
          <div className="flex justify-between items-start">
            <h3 className="text-sm font-semibold text-gray-700">Total Profit</h3>
            <span className="text-xs text-gray-400">range</span>
          </div>
          <div className="flex items-center justify-between">
            <p className={`text-2xl font-bold ${rangeStats.profit < 0 ? 'text-red-600' : 'text-green-600'}`}>{formatCurrency(rangeStats.profit)}</p>
            <p className="text-xs text-gray-500">{rangeStats.profit < 0 ? "Loss" : "Profit"}</p>
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
        <h2 className="text-xl font-bold text-gray-800 mb-4">Sales Trend</h2>
        <p className="text-sm text-gray-500 mb-4">{format(parseDateOnlyAsJakarta(startDate), 'd MMM yyyy')} – {format(parseDateOnlyAsJakarta(endDate), 'd MMM yyyy')}</p>
        <div style={{ width: '100%', minHeight: 360 }}>
          <Line
            data={{
              labels: data.map((d) => d.dateLabel || format(parseDateOnlyAsJakarta(d.date), 'd MMM')),
              datasets: [
                {
                  label: 'Revenue',
                  data: data.map((d) => d.revenue),
                  borderColor: '#8884d8',
                  backgroundColor: 'rgba(136, 132, 216, 0.2)',
                  tension: 0.35,
                  fill: false,
                },
                {
                  label: 'HPP',
                  data: data.map((d) => d.hpp ?? 0),
                  borderColor: '#e55353',
                  backgroundColor: 'rgba(229, 83, 83, 0.2)',
                  tension: 0.35,
                  fill: false,
                },
                {
                  label: 'Bonus',
                  data: data.map((d) => d.bonus ?? 0),
                  borderColor: '#7c3aed',
                  backgroundColor: 'rgba(124, 58, 237, 0.2)',
                  tension: 0.35,
                  fill: false,
                },
                {
                  label: 'Meal',
                  data: data.map((d) => d.meal ?? 0),
                  borderColor: '#f59e0b',
                  backgroundColor: 'rgba(245, 158, 11, 0.2)',
                  tension: 0.35,
                  fill: false,
                },
                {
                  label: 'Profit',
                  data: data.map((d) => d.profit),
                  borderColor: '#22c55e',
                  backgroundColor: 'rgba(34, 197, 94, 0.2)',
                  tension: 0.35,
                  fill: false,
                },
              ],
            }}
            options={{
              responsive: true,
              maintainAspectRatio: false,
              interaction: {
                mode: 'index',
                intersect: false,
              },
              plugins: {
                legend: {
                  position: 'bottom',
                },
                tooltip: {
                  mode: 'index',
                  intersect: false,
                },
                title: {
                  display: false,
                },
              },
              scales: {
                x: {
                  title: {
                    display: true,
                    text: 'Date',
                  },
                },
                y: {
                  title: {
                    display: true,
                    text: 'Amount (IDR)',
                  },
                  ticks: {
                    callback: (value) => {
                      if (typeof value === 'number') {
                        return new Intl.NumberFormat('id-ID', { notation: 'compact' }).format(value);
                      }
                      return value;
                    },
                  },
                },
              },
            }}
          />
        </div>
      </div>
    </div>
  );
}
