'use client';

import { RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis, Radar, Legend, ResponsiveContainer } from 'recharts';

export default function OutletComparisonReport() {
  const data = [
    { category: 'Sales', Pusat: 85, Bandung: 65, Jakarta: 92, Surabaya: 70 },
    { category: 'Traffic', Pusat: 75, Bandung: 58, Jakarta: 88, Surabaya: 62 },
    { category: 'Conversion', Pusat: 82, Bandung: 70, Jakarta: 90, Surabaya: 75 },
    { category: 'Satisfaction', Pusat: 88, Bandung: 72, Jakarta: 95, Surabaya: 80 },
    { category: 'Stock Status', Pusat: 90, Bandung: 68, Jakarta: 85, Surabaya: 72 },
  ];

  const outletsComparison = [
    { outlet: 'Pusat', sales: 'Rp 85M', growth: '+12%', rating: 4.8 },
    { outlet: 'Bandung', sales: 'Rp 62M', growth: '+8%', rating: 4.5 },
    { outlet: 'Jakarta', sales: 'Rp 98M', growth: '+15%', rating: 4.9 },
    { outlet: 'Surabaya', sales: 'Rp 70M', growth: '+10%', rating: 4.6 },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Outlet Comparison</h1>
        <p className="text-gray-600">Perbandingan performa antar outlet</p>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Performance Metrics</h2>
        <ResponsiveContainer width="100%" height={400}>
          <RadarChart data={data}>
            <PolarGrid />
            <PolarAngleAxis dataKey="category" />
            <PolarRadiusAxis angle={90} domain={[0, 100]} />
            <Radar name="Pusat" dataKey="Pusat" stroke="#8884d8" fill="#8884d8" fillOpacity={0.25} />
            <Radar name="Bandung" dataKey="Bandung" stroke="#82ca9d" fill="#82ca9d" fillOpacity={0.25} />
            <Radar name="Jakarta" dataKey="Jakarta" stroke="#ffc658" fill="#ffc658" fillOpacity={0.25} />
            <Radar name="Surabaya" dataKey="Surabaya" stroke="#ff7c7c" fill="#ff7c7c" fillOpacity={0.25} />
            <Legend />
          </RadarChart>
        </ResponsiveContainer>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Total Sales</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Growth</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Rating</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {outletsComparison.map((item, idx) => (
              <tr key={idx} className="hover:bg-gray-50">
                <td className="px-6 py-4 font-semibold text-gray-900">{item.outlet}</td>
                <td className="px-6 py-4 text-gray-700">{item.sales}</td>
                <td className="px-6 py-4 text-green-600 font-semibold">{item.growth}</td>
                <td className="px-6 py-4 text-yellow-500">★ {item.rating}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
