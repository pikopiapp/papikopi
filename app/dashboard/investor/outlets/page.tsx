'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { TrendingUp, DollarSign, Users2 } from 'lucide-react';

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
      <line x1={0} y1={scaleY(0)} x2={w} y2={scaleY(0)} stroke="#eee" />
      <path d={path} fill="none" stroke="#F59E0B" strokeWidth={2} />
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

interface OutletDetail {
  outlet_id: string;
  outlet_name: string;
  investment_amount: number;
  margin_percentage: number;
  start_date: string;
  status: 'active' | 'completed' | 'suspended';
  outlet_revenue: number;
  outlet_profit: number;
  investor_share: number;
  transaction_count: number;
}

export default function InvestorOutlets() {
  const { user } = useAuthStore();
  const [outlets, setOutlets] = useState<OutletDetail[]>([]);
  const [loading, setLoading] = useState(true);
  const [filter, setFilter] = useState<'all' | 'active' | 'completed' | 'suspended'>('all');
  const [selectedOutletId, setSelectedOutletId] = useState<string | null>(null);
  const [kpi, setKpi] = useState({ sales: 0, orders: 0, profit: 0, aov: 0, units: 0 });
  const [profitTrend, setProfitTrend] = useState<any[]>([]);

  useEffect(() => {
    // wait until auth user is available before fetching investor assignments
    if (user?.id) {
      void fetchOutlets();
    }
  }, [user?.id]);

  const fetchOutlets = async () => {
    setLoading(true);

    try {
      // Fetch investor assignments for current user
      // Admin mode: list all outlets (do not filter by user)
      console.debug('fetchOutlets: admin mode - listing all outlets');
      const { data: outletData, error: outletErr } = await supabase.from('outlets').select('id, name');
      if (outletErr) {
        console.error('fetchOutlets: error fetching outlets', outletErr);
        setOutlets([]);
        setLoading(false);
        return;
      }
      const outletIds = (outletData || []).map((o: any) => o.id);

      // Fetch sales data for these outlets
      const { data: salesData } = await supabase
        .from('sales')
        .select('outlet_id, total_amount, hpp_total, profit')
        .in('outlet_id', outletIds);

      // Calculate metrics per outlet
      const outletMetrics: { [key: string]: any } = {};
      salesData?.forEach((sale) => {
        if (!outletMetrics[sale.outlet_id]) {
          outletMetrics[sale.outlet_id] = {
            revenue: 0,
            profit: 0,
            count: 0,
          };
        }
        outletMetrics[sale.outlet_id].revenue += sale.total_amount || 0;
        outletMetrics[sale.outlet_id].profit += sale.profit || 0;
        outletMetrics[sale.outlet_id].count += 1;
      });

      // Build outlet details from outletData (admin mode)
      const enhancedOutlets: OutletDetail[] = (outletData || []).map((o: any) => {
        const metrics = outletMetrics[o.id] || { revenue: 0, profit: 0, count: 0 };
        return {
          outlet_id: o.id,
          outlet_name: o.name || 'Unknown',
          investment_amount: 0,
          margin_percentage: 0,
          start_date: new Date().toISOString(),
          status: 'active',
          outlet_revenue: metrics.revenue,
          outlet_profit: metrics.profit,
          investor_share: 0,
          transaction_count: metrics.count,
        } as OutletDetail;
      });

      // Sort by status (active first)
      enhancedOutlets.sort((a, b) => {
        const statusOrder = { active: 0, completed: 1, suspended: 2 };
        return statusOrder[a.status] - statusOrder[b.status];
      });

      setOutlets(enhancedOutlets);
      if (enhancedOutlets.length > 0) {
        setSelectedOutletId(enhancedOutlets[0].outlet_id);
      }
    } catch (error) {
      console.error('Error fetching outlets:', error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (selectedOutletId) {
      void fetchOutletDetail(selectedOutletId);
    }
  }, [selectedOutletId]);

  const fetchOutletDetail = async (outletId: string) => {
    setLoading(true);
    try {
      // fetch sales for current month for this outlet via server API
      const since = new Date();
      since.setDate(1);
      const sinceIso = since.toISOString().split('.')[0] + 'Z';
      const resp = await fetch(`/api/sales/by-outlet?outlet_id=${encodeURIComponent(outletId)}&since=${encodeURIComponent(sinceIso)}`);
      const json = await resp.json();
      const salesData = Array.isArray(json?.sales) ? json.sales : [];

      const revenue = (salesData || []).reduce((s: number, r: any) => s + (Number(r.total_amount) || 0), 0);
      const profit = (salesData || []).reduce((s: number, r: any) => s + (Number(r.profit) || 0), 0);
      const orders = (salesData || []).length;
      const units = (salesData || []).reduce((s: number, r: any) => s + (Number(r.units) || 0), 0);
      const aov = orders > 0 ? Math.round(revenue / orders) : 0;
      setKpi({ sales: revenue, orders, profit, aov, units });

      // per-day for current month
      const today = new Date();
      const year = today.getFullYear();
      const month = today.getMonth();
      const lastDay = today.getDate();
      const days: { key: string; label: string }[] = [];
      for (let d = 1; d <= lastDay; d++) {
        const dt = new Date(year, month, d);
        const key = dt.toISOString().slice(0, 10);
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
    } catch (error) {
      console.error('Error fetching outlet detail:', error);
    } finally {
      setLoading(false);
    }
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'active':
        return 'bg-green-100 text-green-800';
      case 'completed':
        return 'bg-blue-100 text-blue-800';
      case 'suspended':
        return 'bg-red-100 text-red-800';
      default:
        return 'bg-gray-100 text-gray-800';
    }
  };

  const filteredOutlets = outlets.filter((outlet) => (filter === 'all' ? true : outlet.status === filter));

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading outlets...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">My Investment Outlets</h1>
        <p className="text-gray-600 mt-2">View performance of outlets you invested in</p>
      </div>

      {/* Filter Tabs */}
      <div className="flex gap-3 flex-wrap">
        {['all', 'active', 'completed', 'suspended'].map((status) => (
          <button
            key={status}
            onClick={() => setFilter(status as any)}
            className={`px-4 py-2 rounded-lg font-medium transition-all ${
              filter === status
                ? 'bg-[#F59E0B] text-white'
                : 'bg-white text-gray-700 border border-gray-200 hover:border-gray-300'
            }`}
          >
            {status.charAt(0).toUpperCase() + status.slice(1)} ({outlets.filter((o) => o.status === status).length})
          </button>
        ))}
      </div>

      {/* Outlet selector + KPIs */}
      <div className="mt-4">
        <label className="text-sm text-gray-600 mr-2">Pilih Outlet</label>
        <select value={selectedOutletId ?? ''} onChange={(e) => setSelectedOutletId(e.target.value)} className="border rounded-md p-2">
          <option value="">— Pilih Outlet —</option>
          {outlets.map((o) => (
            <option key={o.outlet_id} value={o.outlet_id}>{o.outlet_name}</option>
          ))}
        </select>
      </div>

      {/* KPI Cards for selected outlet */}
      {selectedOutletId ? (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mt-4">
          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-600">Total Sales (MTD)</p>
                <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {kpi.sales.toLocaleString('id-ID')}</p>
              </div>
              <div className="bg-blue-100 rounded-lg p-3">
                <DollarSign className="text-blue-600" size={24} />
              </div>
            </div>
          </div>

          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-600">Orders (MTD)</p>
                <p className="text-2xl font-bold text-[#1F4E5F] mt-2">{kpi.orders}</p>
              </div>
              <div className="bg-green-100 rounded-lg p-3">
                <TrendingUp className="text-green-600" size={24} />
              </div>
            </div>
          </div>

          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-600">Profit (MTD)</p>
                <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {Math.round(kpi.profit).toLocaleString('id-ID')}</p>
              </div>
              <div className="bg-amber-100 rounded-lg p-3">
                <Users2 className="text-amber-600" size={24} />
              </div>
            </div>
          </div>

          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <div className="flex items-start justify-between">
              <div>
                <p className="text-sm font-medium text-gray-600">AOV (MTD)</p>
                <p className="text-2xl font-bold text-[#1F4E5F] mt-2">Rp {kpi.aov.toLocaleString('id-ID')}</p>
              </div>
              <div className="bg-purple-100 rounded-lg p-3">
                <TrendingUp className="text-purple-600" size={24} />
              </div>
            </div>
          </div>
        </div>
      ) : null}

      {/* Charts */}
      {selectedOutletId ? (
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mt-4">
          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Profit Trend (Current Month)</h3>
            {profitTrend.length > 0 ? <MiniLine data={profitTrend} /> : <div className="text-gray-500">No data</div>}
          </div>

          <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
            <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Daily Profit (Current Month)</h3>
            {profitTrend.length > 0 ? <MiniBar data={profitTrend.map((d) => ({ name: d.date, profit: d.profit }))} /> : <div className="text-gray-500">No data</div>}
          </div>
        </div>
      ) : null}

      {/* Outlets grid removed — use the dropdown above to select an outlet for KPIs and charts. */}
      <div className="py-6 text-sm text-gray-600">Outlets list removed from this view. Use the "Pilih Outlet" dropdown above to select an outlet for month-to-date KPIs and charts.</div>
    </div>
  );
}
