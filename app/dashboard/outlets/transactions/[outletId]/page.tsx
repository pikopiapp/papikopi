"use client";

import { useEffect, useState } from 'react';
import { AlertCircle, Loader2, ArrowLeft } from 'lucide-react';
import { parseTimestampAsJakarta, formatTimestampInJakarta, formatTimestampFromUTC } from '@/lib/helpers/business-day';
import { useRouter, useSearchParams, useParams } from 'next/navigation';
import { Button } from '@/components/ui/button';
import { getBusinessDayRange, getBusinessDayDate, formatBusinessDay } from '@/lib/helpers/business-day';

interface SalesItem {
  id: string;
  product_id: string;
  product_name: string;
  quantity: number;
  price: number;
  hpp: number;
}

interface Sale {
  id: string;
  outlet_id: string;
  outlet_name: string;
  barista_name: string;
  barista_id: string;
  total_amount: number;
  payment_method: string;
  hpp_total: number;
  bonus_amount: number;
  profit: number;
  created_at: string;
  items?: SalesItem[];
}

export default function TransactionDetailPage() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const routeParams = useParams();
  const outletId = routeParams?.outletId || searchParams.get('outletId') || '';
  
  const [sales, setSales] = useState<Sale[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const dateParam = searchParams.get('date');
  const selectedDate = dateParam ? new Date(parseInt(dateParam)) : new Date();

  // Use calendar local date (yyyy-MM-dd) to match `/api/reports/daily-summary` grouping
  const pad = (n: number) => String(n).padStart(2, '0');
  const formatLocalKey = (d: Date | string) => {
    const dt = typeof d === 'string' ? new Date(d) : d;
    return `${dt.getFullYear()}-${pad(dt.getMonth() + 1)}-${pad(dt.getDate())}`;
  };

  const selectedDateKey = formatLocalKey(selectedDate);

  // Use centralized parser that handles microseconds and Jakarta offset
  const parseAsJakarta = (s: string) => parseTimestampAsJakarta(s);

  const selectedDateStr = new Date(selectedDate).toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });

  useEffect(() => {
    const fetchSales = async () => {
      try {
        setLoading(true);
        setError(null);

        const res = await fetch('/api/sales/by-outlet');
        if (!res.ok) throw new Error('Failed to fetch sales');

        const data = await res.json();
        const salesData = Array.isArray(data) ? data : [];

        // Filter by outlet and calendar date (local) to match daily-summary
        const filtered = salesData.filter((sale: Sale) => {
          const saleKey = formatLocalKey(sale.created_at);
          return sale.outlet_id === outletId && saleKey === selectedDateKey;
        });

        const sorted = filtered.sort(
          (a: Sale, b: Sale) => parseAsJakarta(a.created_at).getTime() - parseAsJakarta(b.created_at).getTime()
        );

        setSales(sorted);
      } catch (err) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching sales';
        setError(errorMessage);
      } finally {
        setLoading(false);
      }
    };

    fetchSales();
  }, [outletId, selectedDateKey]);

  // Calculate totals
  const totalSales = sales.reduce((sum, s) => sum + s.total_amount, 0);
  const totalUnits = sales.reduce((sum, s) => sum + (s.items ? s.items.reduce((u, it) => u + (it.quantity || 0), 0) : 0), 0);

  if (loading) {
    return (
      <div className="flex justify-center py-12">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  const outletName = sales[0]?.outlet_name || 'Outlet';

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center gap-4">
        <Button
          variant="outline"
          size="icon"
          onClick={() => router.back()}
        >
          <ArrowLeft className="h-4 w-4" />
        </Button>
        <div>
          <h1 className="text-3xl font-bold">{outletName}</h1>
          <p className="text-gray-600">{selectedDateStr}</p>
        </div>
      </div>

      {/* Error Alert */}
      {error && (
        <div className="p-4 bg-red-100 border border-red-400 text-red-800 rounded flex items-center gap-2">
          <AlertCircle size={20} />
          {error}
        </div>
      )}

      {/* Summary Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white p-4 rounded-lg border border-gray-200">
          <p className="text-gray-600 text-sm">Transaksi</p>
          <p className="text-2xl font-bold text-blue-600">{sales.length}</p>
        </div>
        <div className="bg-white p-4 rounded-lg border border-gray-200">
          <p className="text-gray-600 text-sm">Total Unit (cup)</p>
          <p className="text-2xl font-bold text-blue-600">{totalUnits} unit (cup)</p>
        </div>
        <div className="bg-white p-4 rounded-lg border border-gray-200">
          <p className="text-gray-600 text-sm">Total Omset</p>
          <p className="text-2xl font-bold text-blue-600">Rp{(totalSales / 1000).toLocaleString('id-ID')}.000,-</p>
        </div>
      </div>

      {/* Transactions Table */}
      <div className="bg-white rounded-lg border border-gray-200 overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50 border-b border-gray-200">
              <tr>
                <th className="px-4 py-3 text-left text-sm font-semibold text-gray-800">Jam</th>
                <th className="px-4 py-3 text-right text-sm font-semibold text-gray-800">Unit (cup)</th>
                <th className="px-4 py-3 text-left text-sm font-semibold text-gray-800">Produk</th>
                <th className="px-4 py-3 text-right text-sm font-semibold text-gray-800">Harga Satuan</th>
                <th className="px-4 py-3 text-right text-sm font-semibold text-gray-800">Total</th>
              </tr>
          </thead>
          <tbody>
            {sales.length === 0 ? (
              <tr>
                <td colSpan={5} className="px-4 py-6 text-center text-gray-500">
                  Belum ada transaksi untuk hari ini
                </td>
              </tr>
            ) : (
              sales.map((sale) => {
                const items = sale.items || [];
                // Use centralized parser/formatter to handle microseconds and timezone
                const jakartaDate = parseAsJakarta(sale.created_at);
                // Parse stored timestamp as UTC and show in Jakarta local time
                const time = formatTimestampFromUTC(sale.created_at, { hour: '2-digit', minute: '2-digit' });

                return items.length > 0 ? (
                  items.map((item, itemIdx) => (
                    <tr key={`${sale.id}-${itemIdx}`} className={(itemIdx + sales.findIndex(s => s.id === sale.id)) % 2 === 0 ? 'bg-white' : 'bg-gray-50'}>
                      {itemIdx === 0 && (
                        <td rowSpan={items.length} className="px-4 py-3 text-sm text-gray-800 border-r border-gray-200 font-medium">
                          {time}
                        </td>
                      )}
                      <td className="px-4 py-3 text-sm text-right text-gray-800 font-medium">
                        {item.quantity}
                      </td>
                      <td className="px-4 py-3 text-sm text-gray-800">
                        {item.product_name}
                      </td>
                      <td className="px-4 py-3 text-sm text-right text-gray-800">
                        Rp{(item.price / 1000).toLocaleString('id-ID')}.000,-
                      </td>
                      <td className="px-4 py-3 text-sm text-right font-semibold text-blue-600">
                        Rp{((item.price * item.quantity) / 1000).toLocaleString('id-ID')}.000,-
                      </td>
                    </tr>
                  ))
                ) : (
                  <tr key={sale.id} className="bg-gray-50">
                    <td className="px-4 py-3 text-sm text-gray-800">{time}</td>
                    <td colSpan={4} className="px-4 py-3 text-sm text-gray-500">No items</td>
                  </tr>
                );
              })
            )}
          </tbody>
          {sales.length > 0 && (
            <tfoot className="bg-gray-100 border-t border-gray-300 font-semibold">
              <tr>
                <td colSpan={3} className="px-4 py-3 text-right text-sm">
                  TOTAL OMSET
                </td>
                <td className="px-4 py-3 text-right text-sm text-gray-600">
                  -
                </td>
                <td className="px-4 py-3 text-right text-sm text-blue-600">
                  Rp{(totalSales / 1000).toLocaleString('id-ID')}.000,-
                </td>
              </tr>
            </tfoot>
          )}
        </table>
      </div>
    </div>
  );
}
