'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { format, differenceInDays } from 'date-fns';

interface Batch {
  id: string;
  batch_code: string;
  product_id: string;
  quantity: number;
  production_date: string;
  expired_date: string | null;
  status: string;
  product_name: string;
}

export default function BatchAgingReport() {
  const [batchData, setBatchData] = useState<Batch[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    fetchBatchData();
  }, []);

  const fetchBatchData = async () => {
    try {
      // Fetch batches
      const { data: batches, error: batchError } = await supabase
        .from('product_batches')
        .select('id, batch_code, product_id, quantity, production_date, expired_date, status')
        .in('status', ['ready', 'assigned'])
        .order('production_date', { ascending: true });

      if (batchError) throw batchError;

      // Fetch all products to map product_id to name
      const { data: products, error: productError } = await supabase
        .from('products')
        .select('id, name');

      if (productError) throw productError;

      // Create a map of product_id to name
      const productMap = new Map((products || []).map(p => [p.id, p.name]));

      // Combine batches with product names
      const enrichedBatches: Batch[] = (batches || []).map(batch => ({
        ...batch,
        product_name: productMap.get(batch.product_id) || 'Unknown',
      }));

      setBatchData(enrichedBatches);
    } catch (error) {
      console.error('Error fetching batch data:', error);
    } finally {
      setLoading(false);
    }
  };

  const getAgingStatus = (productionDate: string, expiredDate: string | null): string => {
    const today = new Date();
    const prodDate = new Date(productionDate);
    const daysOld = differenceInDays(today, prodDate);

    if (expiredDate) {
      const expDate = new Date(expiredDate);
      if (today > expDate) return 'Expired';
      if (differenceInDays(expDate, today) <= 2) return 'Critical';
    }

    if (daysOld <= 2) return 'Fresh';
    if (daysOld <= 7) return 'Good';
    if (daysOld <= 14) return 'Aging';
    return 'Critical';
  };

  const getStatusColor = (status: string) => {
    switch(status) {
      case 'Fresh': return 'bg-green-100 text-green-800';
      case 'Good': return 'bg-blue-100 text-blue-800';
      case 'Aging': return 'bg-yellow-100 text-yellow-800';
      case 'Critical': return 'bg-red-100 text-red-800';
      case 'Expired': return 'bg-red-200 text-red-900';
      default: return 'bg-gray-100 text-gray-800';
    }
  };

  // Calculate status counts
  const freshCount = batchData.filter(b => getAgingStatus(b.production_date, b.expired_date) === 'Fresh').length;
  const goodCount = batchData.filter(b => getAgingStatus(b.production_date, b.expired_date) === 'Good').length;
  const agingCount = batchData.filter(b => getAgingStatus(b.production_date, b.expired_date) === 'Aging').length;
  const criticalCount = batchData.filter(b => getAgingStatus(b.production_date, b.expired_date) === 'Critical' || getAgingStatus(b.production_date, b.expired_date) === 'Expired').length;

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Batch Aging</h1>
        <p className="text-gray-600">Monitoring umur batch produk</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Fresh Batches</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{freshCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Good Batches</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{goodCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Aging Batches</h3>
          <p className="text-4xl font-bold text-yellow-600 mt-2">{agingCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Critical</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">{criticalCount}</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-6 text-center text-gray-500">Loading batch data...</div>
        ) : batchData.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No batch data available</div>
        ) : (
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
              {batchData.map((batch) => {
                const agingStatus = getAgingStatus(batch.production_date, batch.expired_date);
                const today = new Date();
                const prodDate = new Date(batch.production_date);
                const daysOld = differenceInDays(today, prodDate);

                return (
                  <tr key={batch.id} className="hover:bg-gray-50">
                    <td className="px-6 py-4 font-mono text-sm text-gray-900">{batch.batch_code}</td>
                    <td className="px-6 py-4 text-gray-700">{batch.product_name}</td>
                    <td className="px-6 py-4 text-gray-700">{batch.quantity} units</td>
                    <td className="px-6 py-4 text-gray-700">{daysOld} days</td>
                    <td className="px-6 py-4 text-gray-700">
                      {batch.expired_date ? format(new Date(batch.expired_date), 'yyyy-MM-dd') : 'N/A'}
                    </td>
                    <td className="px-6 py-4">
                      <span className={`px-3 py-1 rounded-full text-sm font-semibold ${getStatusColor(agingStatus)}`}>
                        {agingStatus}
                      </span>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
