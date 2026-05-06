'use client';

import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

export default function DailySummaryReport() {
  const data = [
    { date: 'Mon', sales: 4000, revenue: 2400, orders: 24 },
    { date: 'Tue', sales: 3000, revenue: 1398, orders: 22 },
    { date: 'Wed', sales: 2000, revenue: 9800, orders: 29 },
    { date: 'Thu', sales: 2780, revenue: 3908, orders: 20 },
    { date: 'Fri', sales: 1890, revenue: 4800, orders: 21 },
    { date: 'Sat', sales: 2390, revenue: 3800, orders: 25 },
    { date: 'Sun', sales: 3490, revenue: 4300, orders: 30 },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Daily Summary</h1>
        <p className="text-gray-600">Ringkasan penjualan harian</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sales</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">Rp 18,550,000</p>
          <p className="text-sm text-gray-500 mt-1">+12% from yesterday</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Orders</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">171</p>
          <p className="text-sm text-gray-500 mt-1">+5% from yesterday</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Order Value</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">Rp 108,479</p>
          <p className="text-sm text-gray-500 mt-1">+2% from yesterday</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Weekly Trend</h2>
        <ResponsiveContainer width="100%" height={400}>
          <BarChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="date" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Bar dataKey="sales" fill="#8884d8" />
            <Bar dataKey="revenue" fill="#82ca9d" />
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
