'use client';

export default function BatchAgingReport() {
  const batchData = [
    { batchId: 'BATCH-001', product: 'Espresso', quantity: 50, daysOld: 2, status: 'Fresh', expiryDate: '2025-05-12' },
    { batchId: 'BATCH-002', product: 'Cappuccino', quantity: 35, daysOld: 5, status: 'Good', expiryDate: '2025-05-09' },
    { batchId: 'BATCH-003', product: 'Croissant', quantity: 15, daysOld: 8, status: 'Aging', expiryDate: '2025-05-06' },
    { batchId: 'BATCH-004', product: 'Pastry', quantity: 22, daysOld: 3, status: 'Fresh', expiryDate: '2025-05-11' },
    { batchId: 'BATCH-005', product: 'Bread', quantity: 8, daysOld: 10, status: 'Critical', expiryDate: '2025-05-04' },
  ];

  const getStatusColor = (status: string) => {
    switch(status) {
      case 'Fresh': return 'bg-green-100 text-green-800';
      case 'Good': return 'bg-blue-100 text-blue-800';
      case 'Aging': return 'bg-yellow-100 text-yellow-800';
      case 'Critical': return 'bg-red-100 text-red-800';
      default: return 'bg-gray-100 text-gray-800';
    }
  };

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Batch Aging</h1>
        <p className="text-gray-600">Monitoring umur batch produk</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Fresh Batches</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">2</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Good Batches</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">1</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Aging Batches</h3>
          <p className="text-4xl font-bold text-yellow-600 mt-2">1</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Critical</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">1</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Batch ID</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Product</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Quantity</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Days Old</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Expiry Date</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Status</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {batchData.map((batch, idx) => (
              <tr key={idx} className="hover:bg-gray-50">
                <td className="px-6 py-4 font-mono text-sm text-gray-900">{batch.batchId}</td>
                <td className="px-6 py-4 text-gray-700">{batch.product}</td>
                <td className="px-6 py-4 text-gray-700">{batch.quantity} units</td>
                <td className="px-6 py-4 text-gray-700">{batch.daysOld} days</td>
                <td className="px-6 py-4 text-gray-700">{batch.expiryDate}</td>
                <td className="px-6 py-4">
                  <span className={`px-3 py-1 rounded-full text-sm font-semibold ${getStatusColor(batch.status)}`}>
                    {batch.status}
                  </span>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
