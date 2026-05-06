'use client';

import { AreaChart, Area, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

export default function ProfitLossReport() {
  const data = [
    { month: 'Jan', revenue: 65000000, cost: 40000000, profit: 25000000 },
    { month: 'Feb', revenue: 72000000, cost: 42000000, profit: 30000000 },
    { month: 'Mar', revenue: 68000000, cost: 41000000, profit: 27000000 },
    { month: 'Apr', revenue: 81000000, cost: 48000000, profit: 33000000 },
    { month: 'May', revenue: 75000000, cost: 45000000, profit: 30000000 },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Rugi Laba</h1>
        <p className="text-gray-600">Analisis profit dan loss</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Revenue</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">Rp 361M</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Cost</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">Rp 216M</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Net Profit</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">Rp 145M</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Profit Margin</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">40.2%</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Monthly P&L</h2>
        <ResponsiveContainer width="100%" height={400}>
          <AreaChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="month" />
            <YAxis />
            <Tooltip />
            <Legend />
            <Area type="monotone" dataKey="revenue" stackId="1" fill="#8884d8" />
            <Area type="monotone" dataKey="cost" stackId="1" fill="#ffc658" />
            <Area type="monotone" dataKey="profit" stackId="1" fill="#82ca9d" />
          </AreaChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
