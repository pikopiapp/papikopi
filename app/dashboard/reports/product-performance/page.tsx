'use client';

import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';

export default function ProductPerformanceReport() {
  const data = [
    { product: 'Espresso', sold: 245, revenue: 12250000 },
    { product: 'Cappuccino', sold: 198, revenue: 9900000 },
    { product: 'Croissant', sold: 156, revenue: 3120000 },
    { product: 'Pastry', sold: 142, revenue: 2840000 },
    { product: 'Sandwich', sold: 189, revenue: 5670000 },
    { product: 'Juice', sold: 134, revenue: 2680000 },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Product Performance</h1>
        <p className="text-gray-600">Analisis performa produk</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Top Product</h3>
          <p className="text-2xl font-bold text-blue-600 mt-2">Espresso</p>
          <p className="text-sm text-gray-500 mt-1">245 units sold</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Revenue/Item</h3>
          <p className="text-2xl font-bold text-green-600 mt-2">Rp 36,476</p>
          <p className="text-sm text-gray-500 mt-1">Per product</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sold</h3>
          <p className="text-2xl font-bold text-orange-600 mt-2">1,064</p>
          <p className="text-sm text-gray-500 mt-1">Total units</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Sales by Product</h2>
        <ResponsiveContainer width="100%" height={400}>
          <BarChart data={data}>
            <CartesianGrid strokeDasharray="3 3" />
            <XAxis dataKey="product" />
            <YAxis yAxisId="left" />
            <YAxis yAxisId="right" orientation="right" />
            <Tooltip />
            <Legend />
            <Bar yAxisId="left" dataKey="sold" fill="#8884d8" name="Units Sold" />
            <Bar yAxisId="right" dataKey="revenue" fill="#82ca9d" name="Revenue" />
          </BarChart>
        </ResponsiveContainer>
      </div>
    </div>
  );
}
