'use client';

export default function ReturnsAnalysisReport() {
  const returnsData = [
    { reason: 'Expired Product', count: 12, percentage: 35, impact: 'High' },
    { reason: 'Quality Issues', count: 8, percentage: 24, impact: 'Medium' },
    { reason: 'Customer Complaint', count: 6, percentage: 18, impact: 'Medium' },
    { reason: 'Packaging Damage', count: 5, percentage: 15, impact: 'Low' },
    { reason: 'Wrong Item', count: 3, percentage: 8, impact: 'Low' },
  ];

  const getImpactColor = (impact: string) => {
    switch(impact) {
      case 'High': return 'text-red-600';
      case 'Medium': return 'text-yellow-600';
      case 'Low': return 'text-green-600';
      default: return 'text-gray-600';
    }
  };

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Returns Analysis</h1>
        <p className="text-gray-600">Analisis return dan damage produk</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Returns</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">34</p>
          <p className="text-sm text-gray-500 mt-1">This month</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Return Rate</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">2.4%</p>
          <p className="text-sm text-gray-500 mt-1">Of total sales</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Loss</h3>
          <p className="text-4xl font-bold text-red-500 mt-2">Rp 1.2M</p>
          <p className="text-sm text-gray-500 mt-1">Value lost</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Return Reason</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Count</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Percentage</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Impact</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {returnsData.map((item, idx) => (
              <tr key={idx} className="hover:bg-gray-50">
                <td className="px-6 py-4 font-semibold text-gray-900">{item.reason}</td>
                <td className="px-6 py-4 text-gray-700">{item.count} units</td>
                <td className="px-6 py-4">
                  <div className="flex items-center gap-2">
                    <div className="w-16 bg-gray-200 rounded-full h-2">
                      <div 
                        className="bg-blue-600 h-2 rounded-full" 
                        style={{ width: `${item.percentage}%` }}
                      ></div>
                    </div>
                    <span className="text-sm text-gray-600">{item.percentage}%</span>
                  </div>
                </td>
                <td className={`px-6 py-4 font-semibold ${getImpactColor(item.impact)}`}>
                  {item.impact}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
