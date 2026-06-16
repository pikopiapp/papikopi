'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';

interface AllocationItem {
  product: string;
  showcase: number;
  allocated: number;
  available: number;
  utilization: number;
}

export default function AllocationReport() {
  const [allocationData, setAllocationData] = useState<AllocationItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState({
    totalShowcase: 0,
    totalAllocated: 0,
    avgUtilization: 0,
  });

  const fetchAllocationData = async () => {
    try {
      setLoading(true);

      // Fetch showcase products (total and allocated)
      const { data: showcaseProducts, error: showcaseError } = await supabase
        .from('showcase_products')
        .select('product_name, total_quantity, allocated_quantity');

      if (showcaseError) throw showcaseError;

      // Calculate final data
      const chartArray: AllocationItem[] = (showcaseProducts || [])
        .map(product => {
          const showcase = product.total_quantity;
          const allocated = product.allocated_quantity;
          const available = showcase - allocated;
          const utilization = showcase > 0 
            ? Math.round((allocated / showcase) * 100) 
            : 0;

          return {
            product: product.product_name,
            showcase: showcase,
            allocated: allocated,
            available: available > 0 ? available : 0,
            utilization: utilization,
          };
        })
        .sort((a, b) => b.showcase - a.showcase);

      setAllocationData(chartArray);

      // Calculate stats
      const totalShowcase = chartArray.reduce((sum, item) => sum + item.showcase, 0);
      const totalAllocated = chartArray.reduce((sum, item) => sum + item.allocated, 0);
      const avgUtilization = chartArray.length > 0
        ? (chartArray.reduce((sum, item) => sum + item.utilization, 0) / chartArray.length)
        : 0;

      setStats({
        totalShowcase,
        totalAllocated,
        avgUtilization: Math.round(avgUtilization * 10) / 10,
      });
    } catch (error) {
      console.error('Error fetching allocation data:', error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const t = setTimeout(() => {
      fetchAllocationData();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Alokasi Produk</h1>
        <p className="text-gray-600">Tracking alokasi produk ke outlet</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total In Showcase</h3>
          <p className="text-4xl font-bold text-blue-600 mt-2">{stats.totalShowcase}</p>
          <p className="text-sm text-gray-500 mt-1">units</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Allocated</h3>
          <p className="text-4xl font-bold text-green-600 mt-2">{stats.totalAllocated}</p>
          <p className="text-sm text-gray-500 mt-1">units</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Utilization</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{stats.avgUtilization.toFixed(1)}%</p>
          <p className="text-sm text-gray-500 mt-1">of showcase</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-6 text-center text-gray-500">Loading allocation data...</div>
        ) : allocationData.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No allocation data available</div>
        ) : (
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
              {allocationData.map((item, idx) => (
                <tr key={idx} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.product}</td>
                  <td className="px-6 py-4 text-gray-700">{item.showcase} units</td>
                  <td className="px-6 py-4 text-gray-700">{item.allocated} units</td>
                  <td className="px-6 py-4 text-gray-700">{item.available} units</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center gap-2">
                      <div className="w-16 bg-gray-200 rounded-full h-2">
                        <div
                          className="bg-green-600 h-2 rounded-full"
                          style={{ width: `${item.utilization}%` }}
                        ></div>
                      </div>
                      <span className="text-sm font-semibold text-gray-700">{item.utilization}%</span>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
