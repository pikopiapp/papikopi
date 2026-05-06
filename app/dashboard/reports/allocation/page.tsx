'use client';

export default function AllocationReport() {
  const allocationData = [
    { product: 'Espresso', showcase: 45, allocated: 40, utilization: '89%' },
    { product: 'Cappuccino', showcase: 32, allocated: 28, utilization: '87%' },
    { product: 'Croissant', showcase: 58, allocated: 52, utilization: '90%' },
    { product: 'Pastry', showcase: 42, allocated: 35, utilization: '83%' },
    { product: 'Sandwich', showcase: 28, allocated: 22, utilization: '79%' },
  ];

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Alokasi Produk</h1>
        <p className="text-gray-600">Tracking alokasi produk ke outlet</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total In Showcase</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">205</p>
          <p className="text-sm text-gray-500 mt-1">units</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Allocated</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">177</p>
          <p className="text-sm text-gray-500 mt-1">units</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Utilization</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">86.3%</p>
          <p className="text-sm text-gray-500 mt-1">of showcase</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Product</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">In Showcase</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Allocated</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Available</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Utilization</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {allocationData.map((item, idx) => {
              const available = item.showcase - (typeof item.allocated === 'string' ? parseInt(item.allocated) : item.allocated);
              return (
                <tr key={idx} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.product}</td>
                  <td className="px-6 py-4 text-gray-700">{item.showcase} units</td>
                  <td className="px-6 py-4 text-gray-700">{item.allocated} units</td>
                  <td className="px-6 py-4 text-gray-700">{available} units</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center gap-2">
                      <div className="w-16 bg-gray-200 rounded-full h-2">
                        <div 
                          className="bg-green-600 h-2 rounded-full" 
                          style={{ width: item.utilization }}
                        ></div>
                      </div>
                      <span className="text-sm font-semibold text-gray-700">{item.utilization}</span>
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
