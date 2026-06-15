'use client';

import { useEffect, useState } from 'react';

interface StockData {
  outlet_id: string;
  outlet_name: string;
  product_name: string;
  quantity: number;
  last_updated: string;
}

interface OutletSummary {
  name: string;
  total_quantity: number;
  product_count: number;
  last_updated: string;
}

export default function OutletStockReport() {
  const [data, setData] = useState<OutletSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await fetch('/api/outlets/stock');
        if (!res.ok) throw new Error('Failed to fetch outlet stock');
        
        const stockData: StockData[] = await res.json();
        
        // Group by outlet and aggregate
        const grouped = stockData.reduce((acc, item) => {
          const existing = acc[item.outlet_id] || {
            name: item.outlet_name,
            total_quantity: 0,
            product_count: 0,
            last_updated: item.last_updated,
          };
          
          return {
            ...acc,
            [item.outlet_id]: {
              ...existing,
              total_quantity: existing.total_quantity + item.quantity,
              product_count: existing.product_count + 1,
              last_updated: new Date(item.last_updated) > new Date(existing.last_updated) 
                ? item.last_updated 
                : existing.last_updated,
            },
          };
        }, {} as Record<string, OutletSummary>);
        
        // Sort by outlet number (001, 002, ... 012)
        const sorted = Object.values(grouped).sort((a, b) => {
          const numA = parseInt(a.name.match(/\d+/)?.[0] || '999');
          const numB = parseInt(b.name.match(/\d+/)?.[0] || '999');
          return numA - numB;
        });
        
        setData(sorted);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    };
    
    fetchData();
  }, []);

  if (loading) {
    return <div className="p-6">Loading...</div>;
  }

  if (error) {
    return <div className="p-6 text-red-600">Error: {error}</div>;
  }

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Stok Outlet</h1>
        <p className="text-gray-600">Inventory per outlet (Real Data)</p>
      </div>

      <div className="surface-card rounded-lg shadow-md overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-100 border-b">
            <tr>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Total Quantity</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Products</th>
              <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Last Update</th>
            </tr>
          </thead>
          <tbody className="divide-y">
            {data.length === 0 ? (
              <tr>
                <td colSpan={4} className="px-6 py-4 text-center text-gray-500">No data available</td>
              </tr>
            ) : (
              data.map((outlet) => (
                <tr key={outlet.name} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{outlet.name}</td>
                  <td className="px-6 py-4 text-gray-700">{outlet.total_quantity} units</td>
                  <td className="px-6 py-4 text-gray-700">{outlet.product_count} products</td>
                  <td className="px-6 py-4 text-sm text-gray-600">{outlet.last_updated}</td>
                </tr>
              ))
            )}
          </tbody>
        </table>
      </div>
    </div>
  );
}
