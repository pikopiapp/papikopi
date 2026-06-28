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
  // routeParams.outletId can be string | string[]; normalize to a single string
  const rawOutletId = routeParams?.outletId ?? searchParams.get('outletId') ?? '';
  const outletId = Array.isArray(rawOutletId) ? rawOutletId[0] : rawOutletId;
  
  const [sales, setSales] = useState<Sale[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [products, setProducts] = useState<any[]>([]);

  // Edit modal state
  const [modalOpen, setModalOpen] = useState(false);
  const [editingSale, setEditingSale] = useState<Sale | null>(null);
  const [editingItems, setEditingItems] = useState<Array<{ id?: string; product_id: string; quantity: number }>>([]);
  const [editingDeleteIds, setEditingDeleteIds] = useState<string[]>([]);
  const [editingPayment, setEditingPayment] = useState<string>('CASH');

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

  // Fetch sales function (callable after edits)
  const fetchSales = async () => {
    try {
      setLoading(true);
      setError(null);

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

  useEffect(() => {
    if (outletId) fetchSales();
  }, [outletId, dateParam]);

  // Fetch products for modal selects
  useEffect(() => {
    const fetchProducts = async () => {
      try {
        const res = await fetch('/api/products');
        if (!res.ok) return;
        const data = await res.json();
        setProducts(Array.isArray(data) ? data : []);
      } catch (e) {
        console.error('Failed to fetch products', e);
      }
    };
    fetchProducts();
  }, []);

  // Calculate totals
  const totalSales = sales.reduce((sum, s) => sum + s.total_amount, 0);
  const totalUnits = sales.reduce((sum, s) => sum + getSaleItems(s).reduce((u, it) => u + (it.quantity || 0), 0), 0);

  // Running transaction index for table numbering (one number per transaction)
  let transactionIndex = 0;

  // Modal handlers
  const handleItemQuantityChange = (idx: number, qty: number) => {
    setEditingItems(prev => {
      const copy = [...prev];
      copy[idx] = { ...copy[idx], quantity: qty };
      return copy;
    });
  };

  const handleItemProductChange = (idx: number, product_id: string) => {
    setEditingItems(prev => {
      const copy = [...prev];
      copy[idx] = { ...copy[idx], product_id };
      return copy;
    });
  };

  const handleSaveEdit = async () => {
    if (!editingSale) return;
    try {
      setLoading(true);
      const add_items = editingItems.filter(it => !it.id).map(it => ({ product_id: it.product_id, quantity: it.quantity }));
      const update_items = editingItems.filter(it => it.id).map(it => ({ id: it.id, product_id: it.product_id, quantity: it.quantity }));
      const payload = { sale_id: editingSale.id, payment_method: editingPayment, add_items, update_items, delete_item_ids: editingDeleteIds };
      const res = await fetch('/api/sales/edit', { method: 'POST', headers: { 'content-type': 'application/json' }, body: JSON.stringify(payload) });
      if (!res.ok) throw new Error('Failed to save');
      // refresh sales
      await fetchSales();
      setModalOpen(false);
      setEditingSale(null);
      setEditingDeleteIds([]);
    } catch (e: any) {
      console.error('Save edit error', e);
      setError(e?.message || 'Failed to save');
    } finally {
      setLoading(false);
    }
  };

  const handleAddItem = () => {
    const defaultProd = products[0];
    setEditingItems(prev => [...prev, { product_id: defaultProd?.id || '', quantity: 1 }]);
  };

  const handleRemoveItem = (idx: number) => {
    setEditingItems(prev => {
      const copy = [...prev];
      const removed = copy.splice(idx, 1)[0];
      if (removed?.id) {
        setEditingDeleteIds(prevDel => [...prevDel, removed.id as string]);
      }
      return copy;
    });
  };

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

      {/* Edit Modal (simple) */}
      {modalOpen && editingSale && (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40">
          <div className="bg-white rounded-lg max-w-2xl w-full p-6">
            <h2 className="text-xl font-bold mb-4">Edit Transaksi</h2>
            <div className="space-y-3">
              <div>
                <label className="block text-sm text-gray-700">Payment Method</label>
                <select value={editingPayment} onChange={(e) => setEditingPayment(e.target.value)} className="mt-1 block w-full border rounded p-2">
                  <option value="CASH">CASH</option>
                  <option value="QRIS">QRIS</option>
                  <option value="TRANSFER">TRANSFER</option>
                </select>
              </div>

              <div>
                <p className="font-semibold">Items</p>
                <div className="space-y-2 mt-2">
                  {editingItems.map((it, idx) => (
                    <div key={idx} className="flex gap-2 items-center">
                      <select className="flex-1 border p-2 rounded" value={it.product_id} onChange={(e) => handleItemProductChange(idx, e.target.value)}>
                        {products.map(p => (
                          <option key={p.id} value={p.id}>{p.name} — {new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(Math.round(p.price || 0))}</option>
                        ))}
                      </select>
                      <input type="number" min={0} value={it.quantity} onChange={(e) => handleItemQuantityChange(idx, Number(e.target.value))} className="w-28 border p-2 rounded" />
                      <button className="text-red-600 text-sm" onClick={() => handleRemoveItem(idx)}>Hapus</button>
                    </div>
                  ))}
                  <div className="mt-2">
                    <button className="px-3 py-1 rounded border text-sm" onClick={handleAddItem}>Tambah Item</button>
                  </div>
                </div>
              </div>
            </div>

            <div className="mt-4 flex justify-end gap-2">
              <button className="px-4 py-2 rounded border" onClick={() => { setModalOpen(false); setEditingSale(null); }}>Batal</button>
              <button className="px-4 py-2 rounded bg-blue-600 text-white" onClick={handleSaveEdit}>Simpan</button>
            </div>
          </div>
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
                                  <div className="flex items-center gap-2">
                                    <div>{time}</div>
                                    <button
                                      className="text-sm text-blue-600 hover:underline"
                                      onClick={() => {
                                        // open modal for this sale
                                        setEditingSale(sale);
                                        setEditingPayment(sale.payment_method || 'CASH');
                                        const its = getSaleItems(sale).map(it => ({ id: it.id, product_id: it.product_id, quantity: Number(it.quantity) || 0 }));
                                        setEditingItems(its);
                                        setModalOpen(true);
                                      }}
                                    >
                                      Edit
                                    </button>
                                  </div>
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
