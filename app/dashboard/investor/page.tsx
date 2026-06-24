"use client";

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { TrendingUp, DollarSign, Store, Calendar } from 'lucide-react';
function MiniLine({ data }: { data: any[] }) {
  const w = 700;
  const h = 300;
  const pad = 40;
  const stepX = w / Math.max(1, data.length - 1 || 1);
  const profits = data.map((d) => Number(d.profit ?? 0));
  const dataMin = Math.min(0, ...profits);
  const dataMax = Math.max(0, ...profits);
  const range = dataMax - dataMin || 1;
  const scaleY = (v: number) => pad + ((dataMax - v) / range) * (h - pad * 2);
  const points = data.map((d, i) => ({ x: i * stepX, y: scaleY(Number(d.profit ?? 0)), profit: Number(d.profit ?? 0), date: d.date || d.name || '' }));
  const path = points.map((p, i) => `${i === 0 ? 'M' : 'L'} ${p.x} ${p.y}`).join(' ');

  return (
    <svg viewBox={`0 0 ${w} ${h}`} width="100%" height={300} preserveAspectRatio="xMinYMid meet">
      {/* zero axis */}
      <line x1={0} y1={scaleY(0)} x2={w} y2={scaleY(0)} stroke="#eee" />
      <path d={path} fill="none" stroke="#F59E0B" strokeWidth={2} />
      {/* points */}
      {(() => {
        const labelInterval = Math.max(1, Math.ceil(points.length / 8));
        return points.map((p, i) => {
          const showLabel = p.profit !== 0 && (i % labelInterval === 0 || i === points.length - 1);
          const showX = i % labelInterval === 0 || i === points.length - 1;
          return (
            <g key={i}>
              <circle cx={p.x} cy={p.y} r={3.5} fill="#F59E0B" />
              {showLabel ? (
                <text x={p.x} y={p.y - 8} fontSize={10} textAnchor="middle" fill="#1F4E5F">{new Intl.NumberFormat('id-ID').format(p.profit)}</text>
              ) : null}
              {showX ? (
                <text x={p.x} y={h - pad + 14} fontSize={10} textAnchor="middle" fill="#6B7280">{p.date}</text>
              ) : null}
            </g>
          );
        });
      })()}
    </svg>
  );
}

function MiniBar({ data }: { data: any[] }) {
  const w = 700;
  const h = 300;
  const pad = 60;
  const barW = (w - pad * 2) / Math.max(1, data.length);
  const profits = data.map((d) => Number(d.profit ?? 0));
  const dataMin = Math.min(0, ...profits);
  const dataMax = Math.max(0, ...profits);
  const range = dataMax - dataMin || 1;
  const scaleY = (v: number) => pad + ((dataMax - v) / range) * (h - pad * 2);
  const yZero = scaleY(0);

  return (
    <svg viewBox={`0 0 ${w} ${h}`} width="100%" height={300} preserveAspectRatio="xMinYMid meet">
      <line x1={pad} y1={yZero} x2={w - pad} y2={yZero} stroke="#eee" />
      {(() => {
        const interval = Math.max(1, Math.ceil(data.length / 8));
        return data.map((d, i) => {
          const x = pad + i * barW + barW * 0.1;
          const v = Number(d.profit ?? 0);
          const barWidth = barW * 0.7;
          const topY = scaleY(Math.max(v, 0));
          const bottomY = scaleY(Math.min(v, 0));
          const barY = Math.min(topY, bottomY);
          const heightVal = Math.abs(bottomY - topY);
          const labelX = x + barWidth / 2;
          const showX = i % interval === 0 || i === data.length - 1;
          const showLabel = v !== 0 && (i % interval === 0 || i === data.length - 1);
          return (
            <g key={d.outlet_id || d.name}>
              <rect x={x} y={barY} width={barWidth} height={heightVal} fill={v < 0 ? '#EF4444' : '#F59E0B'} />
              {showLabel ? (
                <text x={labelX} y={barY - 6} fontSize={10} textAnchor="middle" fill="#1F4E5F">{new Intl.NumberFormat('id-ID').format(Math.round(v))}</text>
              ) : null}
              {showX ? (
                <text x={labelX} y={h - pad + 18} fontSize={10} textAnchor="middle" transform={`translate(${labelX}, ${h - pad + 18}) rotate(-45)`} fill="#6B7280">{d.name || d.date || d.label}</text>
              ) : null}
            </g>
          );
        });
      })()}
    </svg>
  );
}
 

interface KPIData {
  sales: number;
  orders: number;
  profit: number;
  aov: number;
  units: number;
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
  const [kpiData, setKpiData] = useState<KPIData>({ sales: 0, orders: 0, profit: 0, aov: 0, units: 0 });
  const [outlets, setOutlets] = useState<OutletSummary[]>([]);
  const [outletList, setOutletList] = useState<{ id: string; name: string }[]>([]);
  const [selectedOutletId, setSelectedOutletId] = useState<string | null>(null);
  const [profitTrend, setProfitTrend] = useState<ProfitTrendData[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // load available outlets and default to first
    const load = async () => {
      try {
        setLoading(true);
        const { data: allOutlets } = await supabase.from('outlets').select('id, name').order('name');
        if (allOutlets && allOutlets.length > 0) {
          console.debug('Loaded outlets:', allOutlets);
          setOutletList(allOutlets as { id: string; name: string }[]);
            const firstId = (allOutlets[0] as any).id;
          setSelectedOutletId(firstId);
          await fetchOutletData(firstId);
        } else {
          setOutletList([]);
        }
      } catch (e) {
        console.error('Failed to load outlets', e);
      } finally {
        setLoading(false);
      }
    };
    void load();
  }, []);

  useEffect(() => {
    if (selectedOutletId) {
      void fetchOutletData(selectedOutletId);
    }
  }, [selectedOutletId]);

  const fetchOutletData = async (outletId: string) => {
    setLoading(true);
    try {
      // fetch recent sales for outlet (30 days)
      const since = new Date();
      since.setDate(since.getDate() - 30);
      const sinceIso = since.toISOString().split('.')[0] + 'Z'; // remove milliseconds for PostgREST compatibility
      console.debug('using created_at filter', sinceIso);
      // fetch via server API to avoid exposing service keys and to work around client REST limits
      const resp = await fetch(`/api/sales/by-outlet?outlet_id=${encodeURIComponent(outletId)}&since=${encodeURIComponent(sinceIso)}`);
      const json = await resp.json();
      const salesData = Array.isArray(json?.sales) ? json.sales : [];
      console.debug('salesData for', outletId, salesData.length, 'status', resp.status, json.error || null);

      const revenue = (salesData || []).reduce((s: number, r: any) => s + (Number(r.total_amount) || 0), 0);
      const profit = (salesData || []).reduce((s: number, r: any) => s + (Number(r.profit) || 0), 0);
      const orders = (salesData || []).length;
      const units = (salesData || []).reduce((s: number, r: any) => {
        const items = Array.isArray(r.items) ? r.items : [];
        return s + items.reduce((si: number, it: any) => si + Number(it.quantity || it.units || 0), 0);
      }, 0);
      const aov = orders > 0 ? Math.round(revenue / orders) : 0;

      setKpiData({ sales: revenue, orders, profit, aov, units });

      // profit trend per day for current month (day 1 .. today) - deterministic, ordered, zero-filled
      const today = new Date();
      const year = today.getFullYear();
      const month = today.getMonth();
      const daysInMonth = new Date(year, month + 1, 0).getDate();
      const lastDay = today.getDate(); // up to today
      const days: { key: string; label: string }[] = [];
      for (let d = 1; d <= lastDay; d++) {
        const dt = new Date(year, month, d);
        const key = dt.toISOString().slice(0, 10); // YYYY-MM-DD
        const label = dt.toLocaleDateString('id-ID', { day: 'numeric', month: 'short' });
        days.push({ key, label });
      }
      const profitByDay: Record<string, number> = {};
      days.forEach((m) => (profitByDay[m.key] = 0));
      (salesData || []).forEach((s: any) => {
        if (!s?.created_at) return;
        const sd = new Date(s.created_at);
        const key = sd.toISOString().slice(0, 10);
        if (profitByDay[key] !== undefined) profitByDay[key] = (profitByDay[key] || 0) + (Number(s.profit) || 0);
      });
      const trend = days.map((m) => ({ date: m.label, label: m.key, profit: Math.round(profitByDay[m.key] || 0) }));
      setProfitTrend(trend);

      // set outlets summary for table (single outlet)
      const { data: outletData, error: outletError } = await supabase.from('outlets').select('id, name').eq('id', outletId).single();
      if (outletError) console.debug('outlet fetch error', outletError);
      console.debug('outletData', outletData);
      setOutlets([{ outlet_id: outletId, outlet_name: outletData?.name || 'Unknown', investment_amount: 0, margin_percentage: 0, outlet_profit: profit, investor_share: 0, status: 'active' }]);
    } catch (error) {
      console.error('Error fetching outlet data:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading data...</p>
        </div>
      </div>
    );
  }

  return (
      <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">Dashboard per Outlet</h1>
        <p className="text-gray-600 mt-2">Pilih outlet untuk melihat data performa per-outlet</p>

        <div className="mt-4">
          <label className="text-sm text-gray-600 mr-2">Pilih Outlet</label>
          <select value={selectedOutletId ?? ''} onChange={(e) => setSelectedOutletId(e.target.value)} className="border rounded-md p-2">
            {outletList.map((o) => (
              <option key={o.id} value={o.id}>{o.name}</option>
            ))}
          </select>
        </div>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Total Sales</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {kpiData.sales.toLocaleString('id-ID')}</p>
            </div>
            <div className="bg-blue-100 rounded-lg p-3">
              <DollarSign className="text-blue-600" size={24} />
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Orders</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">{kpiData.orders}</p>
            </div>
            <div className="bg-green-100 rounded-lg p-3">
              <TrendingUp className="text-green-600" size={24} />
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">Profit</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {Math.round(kpiData.profit).toLocaleString('id-ID')}</p>
            </div>
            <div className="bg-amber-100 rounded-lg p-3">
              <Store className="text-amber-600" size={24} />
            </div>
          </div>
        </div>

        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <div className="flex items-start justify-between">
            <div>
              <p className="text-sm font-medium text-gray-600">AOV</p>
              <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {kpiData.aov.toLocaleString('id-ID')}</p>
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
          <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Profit Trend (Current Month)</h3>
          {profitTrend.length > 0 ? (
            <div>
              <MiniLine data={profitTrend} />
            </div>
          ) : (
            <div className="flex items-center justify-center h-300 text-gray-500">
              No profit data available
            </div>
          )}
        </div>

        {/* Daily Sales */}
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Daily Profit (Current Month)</h3>
          {profitTrend.length > 0 ? (
            <div>
              <MiniBar data={profitTrend.map((d) => ({ name: d.date, profit: d.profit }))} />
            </div>
          ) : (
            <div className="flex items-center justify-center h-300 text-gray-500">
              No profit data available
            </div>
          )}
        </div>
      </div>

      {/* Selected Outlet Summary */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Outlet Summary</h3>
        {selectedOutletId ? (
          <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
            <div className="p-4 bg-gray-50 rounded">
              <div className="text-sm text-gray-600">Sales (30d)</div>
              <div className="font-semibold mt-2">Rp {kpiData.sales.toLocaleString('id-ID')}</div>
            </div>
            <div className="p-4 bg-gray-50 rounded">
              <div className="text-sm text-gray-600">Orders (30d)</div>
              <div className="font-semibold mt-2">{kpiData.orders}</div>
            </div>
            <div className="p-4 bg-gray-50 rounded">
              <div className="text-sm text-gray-600">Profit (30d)</div>
              <div className="font-semibold mt-2">Rp {Math.round(kpiData.profit).toLocaleString('id-ID')}</div>
            </div>
            <div className="p-4 bg-gray-50 rounded">
              <div className="text-sm text-gray-600">Units</div>
              <div className="font-semibold mt-2">{kpiData.units}</div>
            </div>
          </div>
        ) : (
          <div className="text-gray-500">Pilih outlet untuk melihat ringkasan.</div>
        )}
      </div>
    </div>
  );
}
