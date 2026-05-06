'use client';

export default function WarehouseSummaryReport() {
  const warehouseData = {
    totalStock: 1250,
    totalBatches: 42,
    activeProducts: 18,
    lastUpdate: '2025-05-06 10:45',
  };

  const productCategories = [
    { category: 'Coffee', units: 350, batches: 12, lastRestocked: '2025-05-05' },
    { category: 'Bread', units: 280, batches: 8, lastRestocked: '2025-05-06' },
    { category: 'Pastry', units: 320, batches: 10, lastRestocked: '2025-05-04' },
    { category: 'Snacks', units: 300, batches: 12, lastRestocked: '2025-05-03' },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Warehouse Summary</h1>
        <p className="text-gray-600">Ringkasan warehouse dan inventory</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Stock</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{warehouseData.totalStock}</p>
          <p className="text-sm text-gray-500 mt-1">units</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Batches</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{warehouseData.totalBatches}</p>
          <p className="text-sm text-gray-500 mt-1">active batches</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Products</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{warehouseData.activeProducts}</p>
          <p className="text-sm text-gray-500 mt-1">types</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Last Update</h3>
          <p className="text-lg font-bold text-gray-700 mt-2">{warehouseData.lastUpdate}</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Category</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Units</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Active Batches</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Last Restocked</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Stock %</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {productCategories.map((item, idx) => {
              const percentage = (item.units / warehouseData.totalStock) * 100;
              return (
                <tr key={idx} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.category}</td>
                  <td className="px-6 py-4 text-gray-700">{item.units} units</td>
                  <td className="px-6 py-4 text-gray-700">{item.batches}</td>
                  <td className="px-6 py-4 text-sm text-gray-600">{item.lastRestocked}</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center gap-2">
                      <div className="w-16 bg-gray-200 rounded-full h-2">
                        <div 
                          className="bg-blue-600 h-2 rounded-full" 
                          style={{ width: `${percentage}%` }}
                        ></div>
                      </div>
                      <span className="text-sm font-semibold text-gray-700">{percentage.toFixed(1)}%</span>
                    </div>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    </div>
  );
}
