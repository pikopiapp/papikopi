'use client';

import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

export default function SalesReport() {
  const data = [
    { month: 'Jan', sales: 45000000, target: 50000000 },
    { month: 'Feb', sales: 52000000, target: 50000000 },
    { month: 'Mar', sales: 48000000, target: 50000000 },
    { month: 'Apr', sales: 61000000, target: 55000000 },
    { month: 'May', sales: 55000000, target: 55000000 },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Report Penjualan</h1>
        <p className="text-gray-600">Laporan penjualan bulanan</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sales YTD</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">Rp 261,000,000</p>
          <p className="text-sm text-gray-500 mt-1">Year to date</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Target Achievement</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">94.5%</p>
          <p className="text-sm text-gray-500 mt-1">Of annual target</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Growth Rate</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">+8.2%</p>
          <p className="text-sm text-gray-500 mt-1">vs last year</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Monthly Sales Trend</h2>
        <ResponsiveContainer width="100%" height={400}>
          <LineChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="month" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Line type="monotone" dataKey="sales" stroke="#8884d8" strokeWidth={2} />
            <Line type="monotone" dataKey="target" stroke="#82ca9d" strokeWidth={2} />
          </LineChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
