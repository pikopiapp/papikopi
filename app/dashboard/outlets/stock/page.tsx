'use client';

import { useEffect, useState } from 'react';
import { Package, Plus, Edit2, Trash2, AlertCircle } from 'lucide-react';

interface OutletStock {
  outlet_id: string;
  outlet_name: string;
  outlet_display: string;
  barista_name: string | null;
  product_id: string;
  product_name: string;
  quantity: number;
  last_updated: string;
}

export default function OutletStockPage() {
  const [stocks, setStocks] = useState<OutletStock[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchStocks = async () => {
      try {
        setLoading(true);
        const response = await fetch('/api/outlets/stock');
        if (!response.ok) {
          throw new Error('Failed to fetch outlet stock');
        }
        const data = await response.json();
        setStocks(data);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'Unknown error');
        setStocks([]);
      } finally {
        setLoading(false);
      }
    };

    fetchStocks();
  }, []);

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center h-96">
        <div className="text-center">
          <Package size={48} className="mx-auto text-gray-300 mb-4 opacity-30" />
          <p className="text-gray-500">Loading outlet stock...</p>
        </div>
      </div>
    );
  }

  // Color palette for outlets (colorful gradients)
  const colorPalette = [
    { bg: 'bg-gradient-to-r from-blue-50 to-blue-100', border: 'border-blue-200', text: 'text-blue-900', subtext: 'text-blue-700' },
    { bg: 'bg-gradient-to-r from-purple-50 to-purple-100', border: 'border-purple-200', text: 'text-purple-900', subtext: 'text-purple-700' },
    { bg: 'bg-gradient-to-r from-pink-50 to-pink-100', border: 'border-pink-200', text: 'text-pink-900', subtext: 'text-pink-700' },
    { bg: 'bg-gradient-to-r from-green-50 to-green-100', border: 'border-green-200', text: 'text-green-900', subtext: 'text-green-700' },
    { bg: 'bg-gradient-to-r from-orange-50 to-orange-100', border: 'border-orange-200', text: 'text-orange-900', subtext: 'text-orange-700' },
    { bg: 'bg-gradient-to-r from-red-50 to-red-100', border: 'border-red-200', text: 'text-red-900', subtext: 'text-red-700' },
    { bg: 'bg-gradient-to-r from-indigo-50 to-indigo-100', border: 'border-indigo-200', text: 'text-indigo-900', subtext: 'text-indigo-700' },
    { bg: 'bg-gradient-to-r from-cyan-50 to-cyan-100', border: 'border-cyan-200', text: 'text-cyan-900', subtext: 'text-cyan-700' },
    { bg: 'bg-gradient-to-r from-teal-50 to-teal-100', border: 'border-teal-200', text: 'text-teal-900', subtext: 'text-teal-700' },
    { bg: 'bg-gradient-to-r from-rose-50 to-rose-100', border: 'border-rose-200', text: 'text-rose-900', subtext: 'text-rose-700' },
    { bg: 'bg-gradient-to-r from-amber-50 to-amber-100', border: 'border-amber-200', text: 'text-amber-900', subtext: 'text-amber-700' },
    { bg: 'bg-gradient-to-r from-lime-50 to-lime-100', border: 'border-lime-200', text: 'text-lime-900', subtext: 'text-lime-700' },
  ];

  // Group by outlet using outlet_display (with barista name)
  const groupedByOutlet = stocks.reduce((acc: any, stock) => {
    const displayName = stock.outlet_display || stock.outlet_name;
    if (!acc[displayName]) {
      acc[displayName] = [];
    }
    acc[displayName].push(stock);
    return acc;
  }, {});

  // Sort outlets by number (001, 002, ... 010, 011, 012)
  const sortedOutlets = Object.entries(groupedByOutlet).sort((a, b) => {
    const numA = parseInt(a[0].match(/\d+/)?.[0] || '0');
    const numB = parseInt(b[0].match(/\d+/)?.[0] || '0');
    return numA - numB;
  });

  return (
    <div className="p-6 space-y-6">
      {/* Header */}
      <div className="flex items-center gap-3">
        <Package size={32} className="text-blue-600" />
        <div>
          <h1 className="text-3xl font-bold">Stok Outlet</h1>
          <p className="text-gray-500 text-sm">Kelola stok produk di setiap outlet</p>
        </div>
      </div>

      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Error</p>
            <p className="text-red-700 text-sm">{error}</p>
          </div>
        </div>
      )}

      {/* Stock by Outlet */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {sortedOutlets.map(([outletName, outletStocks]: any, idx: number) => {
          const color = colorPalette[idx % colorPalette.length];
          return (
          <div key={outletName} className="bg-white rounded-lg shadow-md overflow-hidden">
            <div className={`p-4 ${color.bg} border-b ${color.border}`}>
              <h2 className={`font-semibold text-lg ${color.text}`}>{outletName}</h2>
              <p className={`text-sm ${color.subtext}`}>Total {outletStocks.length} produk</p>
            </div>
            
            <div className="overflow-x-auto">
              <table className="w-full">
                <thead className="bg-gray-100 border-b">
                  <tr>
                    <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Produk</th>
                    <th className="px-6 py-3 text-center text-sm font-semibold text-gray-700">Stok</th>
                    <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Status</th>
                    <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Update Terakhir</th>
                    <th className="px-6 py-3 text-center text-sm font-semibold text-gray-700">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  {outletStocks.map((stock: OutletStock, idx: number) => {
                    const isLow = stock.quantity < 50;
                    const isCritical = stock.quantity < 20;
                    
                    return (
                      <tr key={`${stock.outlet_id}-${idx}`} className="border-b hover:bg-blue-50 transition">
                        <td className="px-6 py-4 font-medium text-gray-900">{stock.product_name}</td>
                        <td className="px-6 py-4 text-center">
                          <span className="text-lg font-semibold text-gray-900">{stock.quantity}</span>
                          <span className="text-xs text-gray-500 block">unit</span>
                        </td>
                        <td className="px-6 py-4">
                          {isCritical ? (
                            <span className="px-3 py-1 rounded-full text-xs font-semibold bg-red-100 text-red-800">
                              ⚠️ Kritis
                            </span>
                          ) : isLow ? (
                            <span className="px-3 py-1 rounded-full text-xs font-semibold bg-yellow-100 text-yellow-800">
                              ⚠️ Rendah
                            </span>
                          ) : (
                            <span className="px-3 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-800">
                              ✓ Normal
                            </span>
                          )}
                        </td>
                        <td className="px-6 py-4 text-sm text-gray-600">{stock.last_updated}</td>
                        <td className="px-6 py-4 flex justify-center gap-2">
                          <button className="p-2 hover:bg-blue-100 rounded-lg transition text-blue-600">
                            <Edit2 size={16} />
                          </button>
                          <button className="p-2 hover:bg-red-100 rounded-lg transition text-red-600">
                            <Trash2 size={16} />
                          </button>
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>
          </div>
        );
        })}
      </div>

      {stocks.length === 0 && (
        <div className="bg-white rounded-lg shadow-md p-8 text-center">
          <Package size={48} className="mx-auto text-gray-300 mb-4" />
          <p className="text-gray-500 font-medium">Tidak ada data stok</p>
          <p className="text-gray-400 text-sm">Mulai tambahkan stok ke outlet</p>
        </div>
      )}
    </div>
  );
}
