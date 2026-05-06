'use client';

import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer, PieChart, Pie, Cell } from 'recharts';
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
          <ResponsiveContainer width="100%" height={300}>
            <LineChart data={SAMPLE_DAILY_DATA}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="date" />
              <YAxis />
              <Tooltip />
              <Legend />
              <Line type="monotone" dataKey="revenue" stroke="#f59e0b" strokeWidth={2} />
              <Line type="monotone" dataKey="profit" stroke="#10b981" strokeWidth={2} />
            </LineChart>
          </ResponsiveContainer>
        </div>

        {/* Payment Breakdown */}
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h3 className="text-lg font-semibold mb-4">Payment Method</h3>
          <ResponsiveContainer width="100%" height={300}>
            <PieChart>
              <Pie
                data={SAMPLE_PAYMENT_DATA}
                cx="50%"
                cy="50%"
                labelLine={false}
                label={({ value }: { value: number }) => `${(value / 1000).toFixed(0)}K`}
                outerRadius={80}
                fill="#8884d8"
                dataKey="value"
              >
                {SAMPLE_PAYMENT_DATA.map((entry, index) => (
                  <Cell key={`cell-${index}`} fill={COLORS[index]} />
                ))}
              </Pie>
              <Tooltip />
            </PieChart>
          </ResponsiveContainer>
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
