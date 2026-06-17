"use client";

import { DollarSign, TrendingUp, Calendar, Users } from 'lucide-react';

const COLORS = ['#f59e0b', '#3b82f6'];
const SAMPLE_DAILY_DATA = [
  { date: '2024-04-20', revenue: 500000, profit: 150000 },
  { date: '2024-04-21', revenue: 650000, profit: 195000 },
  { date: '2024-04-22', revenue: 750000, profit: 225000 },
  { date: '2024-04-23', revenue: 600000, profit: 180000 },
  { date: '2024-04-24', revenue: 800000, profit: 240000 },
];

const SAMPLE_PAYMENT_DATA = [
  { method: 'Cash', value: 2500000, percentage: '62.5%' },
  { method: 'QRIS', value: 1500000, percentage: '37.5%' },
];

const SAMPLE_BARISTA_DATA = [
  { name: 'Budi', transactions: 15, revenue: 1500000, profit: 450000 },
  { name: 'Siti', transactions: 12, revenue: 1200000, profit: 360000 },
  { name: 'Ahmad', transactions: 18, revenue: 1800000, profit: 540000 },
];

function MiniLine({ data, keys = ['revenue', 'profit'], colors = ['#f59e0b', '#10b981'] }: any) {
  const w = 700;
  const h = 300;
  const pad = 40;
  const max = Math.max(1, ...data.flatMap((d: any) => keys.map((k: string) => Number(d[k] ?? 0))));
  const stepX = w / Math.max(1, data.length - 1 || 1);
  const scaleY = (v: number) => h - pad - (v / max) * (h - pad * 2);
  const pathFor = (k: string) => data.map((d: any, i: number) => `${i === 0 ? 'M' : 'L'} ${i * stepX} ${scaleY(d[k] ?? 0)}`).join(' ');
  return (
    <svg viewBox={`0 0 ${w} ${h}`} width="100%" height={300} preserveAspectRatio="xMinYMid meet">
      <line x1={0} y1={h - pad} x2={w} y2={h - pad} stroke="#eee" />
      {keys.map((k: string, idx: number) => <path key={k} d={pathFor(k)} fill="none" stroke={colors[idx]} strokeWidth={2} />)}
    </svg>
  );
}

function MiniPie({ data, colors = ['#f59e0b', '#3b82f6'] }: any) {
  const w = 300;
  const h = 300;
  const cx = w / 2;
  const cy = h / 2;
  const r = 80;
  const total = data.reduce((s: number, d: any) => s + (d.value || 0), 0) || 1;
  let angle = -Math.PI / 2;
  return (
    <svg viewBox={`0 0 ${w} ${h}`} width="100%" height={300} preserveAspectRatio="xMinYMid meet">
      {data.map((d: any, i: number) => {
        const slice = (d.value / total) * Math.PI * 2;
        const x1 = cx + Math.cos(angle) * r;
        const y1 = cy + Math.sin(angle) * r;
        angle += slice;
        const x2 = cx + Math.cos(angle) * r;
        const y2 = cy + Math.sin(angle) * r;
        const large = slice > Math.PI ? 1 : 0;
        const path = `M ${cx} ${cy} L ${x1} ${y1} A ${r} ${r} 0 ${large} 1 ${x2} ${y2} Z`;
        return <path key={i} d={path} fill={colors[i % colors.length]} />;
      })}
    </svg>
  );
}

export default function AnalyticsPage() {
  return (
    <div className="p-6 space-y-6">
      <h1 className="text-3xl font-bold">Analytics & Reports</h1>

      {/* Key Metrics */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white p-6 rounded-lg shadow-md border-l-4 border-amber-500">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-gray-600 text-sm">Total Revenue (30d)</p>
              <p className="text-2xl font-bold">Rp 4M</p>
            </div>
            <DollarSign className="text-amber-500" size={32} />
          </div>
        </div>

        <div className="bg-white p-6 rounded-lg shadow-md border-l-4 border-green-500">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-gray-600 text-sm">Total Profit</p>
              <p className="text-2xl font-bold">Rp 1.2M</p>
            </div>
            <TrendingUp className="text-green-500" size={32} />
          </div>
        </div>

        <div className="bg-white p-6 rounded-lg shadow-md border-l-4 border-blue-500">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-gray-600 text-sm">Avg Transaction</p>
              <p className="text-2xl font-bold">Rp 100K</p>
            </div>
            <Calendar className="text-blue-500" size={32} />
          </div>
        </div>

        <div className="bg-white p-6 rounded-lg shadow-md border-l-4 border-purple-500">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-gray-600 text-sm">Transactions</p>
              <p className="text-2xl font-bold">45</p>
            </div>
            <Users className="text-purple-500" size={32} />
          </div>
        </div>
      </div>

      {/* Charts */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Daily Revenue */}
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h3 className="text-lg font-semibold mb-4">Daily Revenue Trend</h3>
          <div>
            <MiniLine data={SAMPLE_DAILY_DATA} />
          </div>
        </div>

        {/* Payment Breakdown */}
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h3 className="text-lg font-semibold mb-4">Payment Method</h3>
          <div style={{ width: 300 }}>
            <MiniPie data={SAMPLE_PAYMENT_DATA} />
          </div>
        </div>
      </div>

      {/* Barista Performance */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="p-6 border-b">
          <h3 className="text-lg font-semibold">Barista Performance</h3>
        </div>
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold">Barista</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Transactions</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Revenue</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Profit</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Avg/Tx</th>
              </tr>
            </thead>
            <tbody>
              {SAMPLE_BARISTA_DATA.map((barista) => (
                <tr key={barista.name} className="border-b hover:bg-gray-50">
                  <td className="px-6 py-3 font-medium">{barista.name}</td>
                  <td className="px-6 py-3">{barista.transactions}</td>
                  <td className="px-6 py-3">Rp {(barista.revenue / 1000).toFixed(0)}K</td>
                  <td className="px-6 py-3">Rp {(barista.profit / 1000).toFixed(0)}K</td>
                  <td className="px-6 py-3">Rp {(barista.revenue / barista.transactions / 1000).toFixed(0)}K</td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
