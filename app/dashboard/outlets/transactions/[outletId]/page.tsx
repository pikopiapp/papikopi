"use client";

import { useEffect, useState } from 'react';
import { AlertCircle, Loader2, ArrowLeft } from 'lucide-react';
import { parseTimestampAsJakarta, formatTimestampInJakarta, formatTimestampFromUTC, getBusinessDayRangeLocalIso } from '@/lib/helpers/business-day';
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
  sale_items?: SalesItem[];
}

const getSaleItems = (sale: Sale) => sale.items || sale.sale_items || [];

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

  const BUSINESS_DAY_START_HOUR = 4;
  const selectedBusinessDay = new Date(selectedDate.getFullYear(), selectedDate.getMonth(), selectedDate.getDate());
  const { start: businessDayStart, end: businessDayEnd } = getBusinessDayRange(selectedBusinessDay, BUSINESS_DAY_START_HOUR);

  // Use centralized parser that handles microseconds and Jakarta offset
  const parseAsJakarta = (s: string) => parseTimestampAsJakarta(s);

  const selectedDateStr = new Date(selectedDate).toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });

  const formatRupiah = (v: number) => {
    if (!Number.isFinite(v)) return 'Rp0';
    // Format as Indonesian Rupiah with no fractional digits, e.g. "Rp12.500"
    // Append ",-" suffix to match local display style (e.g. "Rp12.500,-")
    return `${new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(Math.round(v))},-`;
  };

  useEffect(() => {
    const fetchSales = async () => {
      try {
        setLoading(true);
        setError(null);

        // Request only the business-day slice from the server to reduce payload
        const { since: businessDaySince, until: businessDayUntil } = getBusinessDayRangeLocalIso(selectedBusinessDay, BUSINESS_DAY_START_HOUR);
        const url = `/api/sales/by-outlet?outlet_id=${encodeURIComponent(outletId)}&since=${encodeURIComponent(businessDaySince)}&until=${encodeURIComponent(businessDayUntil)}`;

        const res = await fetch(url);
        if (!res.ok) throw new Error('Failed to fetch sales');

        const data = await res.json();
        const salesData = Array.isArray(data)
          ? data
          : Array.isArray((data as any)?.sales)
            ? (data as any).sales
            : [];

        const sorted = salesData.sort(
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

    // Depend only on stable primitives to avoid effect re-triggering each render
    if (outletId) fetchSales();
  }, [outletId, dateParam]);

  // Calculate totals
  const totalSales = sales.reduce((sum, s) => sum + s.total_amount, 0);
  const totalUnits = sales.reduce((sum, s) => sum + getSaleItems(s).reduce((u, it) => u + (it.quantity || 0), 0), 0);

  // Running transaction index for table numbering (one number per transaction)
  let transactionIndex = 0;

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
          <p className="text-2xl font-bold text-blue-600">{formatRupiah(totalSales)}</p>
        </div>
      </div>

      {/* Transactions Table */}
      <div className="bg-white rounded-lg border border-gray-200 overflow-hidden">
        <table className="w-full">
          <thead className="bg-gray-50 border-b border-gray-200">
              <tr>
                <th className="px-4 py-3 text-left text-sm font-semibold text-gray-800">No.</th>
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

                return getSaleItems(sale).length > 0 ? (
                  (() => {
                    const items = getSaleItems(sale);
                    const txnNo = ++transactionIndex;
                    return items.map((item, itemIdx) => {
                      const isLastItem = itemIdx === items.length - 1;
                      const rowClass = `${(itemIdx + sales.findIndex(s => s.id === sale.id)) % 2 === 0 ? 'bg-white' : 'bg-gray-50'} ${isLastItem ? 'border-b border-gray-300' : ''}`.trim();

                      return (
                        <tr key={`${sale.id}-${itemIdx}`} className={rowClass}>
                          <td className="px-4 py-3 text-sm text-gray-800 font-medium">{itemIdx === 0 ? txnNo : ''}</td>
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
                            {formatRupiah(item.price)}
                          </td>
                          <td className="px-4 py-3 text-sm text-right font-semibold text-blue-600">
                            {formatRupiah(item.price * item.quantity)}
                          </td>
                        </tr>
                      );
                    });
                  })()
                ) : (
                  (() => {
                    const txnNo = ++transactionIndex;
                    return (
                      <tr key={sale.id} className="bg-gray-50">
                        <td className="px-4 py-3 text-sm text-gray-800 font-medium">{txnNo}</td>
                        <td className="px-4 py-3 text-sm text-gray-800">{time}</td>
                        <td colSpan={4} className="px-4 py-3 text-sm text-gray-500">No items</td>
                      </tr>
                    );
                  })()
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
