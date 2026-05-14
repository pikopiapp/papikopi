'use client';

import React, { useEffect, useState, useCallback } from 'react';
import { useAuthStore } from '@/lib/store/auth';
import { AlertCircle, Package, Plus, Trash2, Edit2, Check, X, ShoppingCart, Clock } from 'lucide-react';

interface Ingredient {
  id: string;
  name: string;
  unit: string;
  cost: number;
  quantity?: number;
  created_at?: string;
}

interface PurchaseRecord {
  id: string;
  ingredient_id: string;
  quantity: number;
  unit_price: number;
  total_price: number;
  supplier?: string;
  notes?: string;
  purchase_date: string;
  created_at: string;
}

type StockItem = Ingredient;

export default function InventoryPage() {
  const { outletId, setOutletId } = useAuthStore();
  const [stocks, setStocks] = useState<StockItem[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [initialized, setInitialized] = useState(false);
  const [showForm, setShowForm] = useState(false);
  const [formData, setFormData] = useState({ name: '', unit: '', cost: '' });
  const [editingId, setEditingId] = useState<string | null>(null);
  const [editData, setEditData] = useState({ name: '', unit: '', cost: '', quantity: '' });
  
  // Purchase modal state
  const [showPurchaseModal, setShowPurchaseModal] = useState(false);
  const [purchasingId, setPurchasingId] = useState<string | null>(null);
  const [purchaseData, setPurchaseData] = useState({ quantity: '', unit_price: '', supplier: '', notes: '' });
  const [purchaseHistory, setPurchaseHistory] = useState<PurchaseRecord[]>([]);
  const [showHistory, setShowHistory] = useState<string | null>(null);

  // Initialize outlet from localStorage on mount
  useEffect(() => {
    if (initialized) return;
    
    const savedOutletId = localStorage.getItem('selectedOutletId');
    console.log('🏪 Checking localStorage for outlet:', savedOutletId);
    if (savedOutletId && !outletId) {
      console.log('♻️ Restoring outlet from localStorage:', savedOutletId);
      setOutletId(savedOutletId);
    }
    setInitialized(true);
  }, [initialized, outletId, setOutletId]);

  const fetchStocks = useCallback(async () => {
    try {
      setLoading(true);
      
      // Fetch warehouse inventory (no outlet_id needed)
      console.log(`📊 Fetching warehouse inventory`);
      const response = await fetch(`/api/inventory`);
      
      const data = await response.json();
      
      if (!response.ok) {
        const errorMsg = data?.error || `HTTP error! status: ${response.status}`;
        console.error('❌ API Error:', errorMsg);
        if (data?.code) console.error('Error code:', data.code);
        if (data?.details) console.error('Error details:', data.details);
        throw new Error(errorMsg);
      }
      
      console.log(`✅ Stocks fetched: ${Array.isArray(data) ? data.length : 0} items`);
      setStocks(Array.isArray(data) ? data : []);
    } catch (err) {
      const errorMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('❌ Failed to fetch stocks:', errorMsg);
      setError(`Failed to load inventory: ${errorMsg}`);
    } finally {
      setLoading(false);
    }
  }, []);

  // Fetch data on mount
  useEffect(() => {
    if (initialized) {
      fetchStocks();
    }
  }, [initialized, fetchStocks]);

  // Note: This page displays warehouse inventory with full CRUD operations

  const handleAdd = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setError(null);
      setSuccess(null);
      if (!formData.name || !formData.unit || !formData.cost) {
        setError('Semua field harus diisi');
        return;
      }

      const res = await fetch('/api/inventory', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          name: formData.name,
          unit: formData.unit,
          cost: parseFloat(formData.cost),
        }),
      });

      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || 'Gagal menambah bahan baku');
      }

      setSuccess(`✅ ${formData.name} berhasil ditambahkan`);
      setFormData({ name: '', unit: '', cost: '' });
      setShowForm(false);
      setTimeout(() => setSuccess(null), 3000);
      await fetchStocks();
    } catch (err) {
      const errMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('Add error:', errMsg);
      setError(errMsg);
    }
  };

  const handleEdit = async (id: string) => {
    try {
      setError(null);
      setSuccess(null);
      if (!editData.name || !editData.unit || !editData.cost) {
        setError('Semua field harus diisi');
        return;
      }

      console.log(`✏️ Updating ingredient:`, { id, ...editData });
      const res = await fetch('/api/inventory', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id,
          name: editData.name,
          unit: editData.unit,
          cost: parseFloat(editData.cost),
        }),
      });

      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || 'Gagal update bahan baku');
      }

      console.log(`✅ Update successful`);
      setSuccess(`✅ ${editData.name} berhasil diperbarui`);
      setEditingId(null);
      setEditData({ name: '', unit: '', cost: '', quantity: '' });
      setTimeout(() => setSuccess(null), 3000);
      console.log(`🔄 Refreshing stock list...`);
      await fetchStocks();
      console.log(`✅ Stock list refreshed`);
    } catch (err) {
      const errMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('Edit error:', errMsg);
      setError(errMsg);
    }
  };

  const handleDelete = async (id: string) => {
    if (!confirm('Yakin ingin menghapus bahan baku ini?')) return;
    
    try {
      setError(null);
      const res = await fetch(`/api/inventory?id=${id}`, { method: 'DELETE' });
      
      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || 'Gagal hapus bahan baku');
      }

      await fetchStocks();
    } catch (err) {
      const errMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('Delete error:', errMsg);
      setError(errMsg);
    }
  };

  const fetchPurchaseHistory = async (ingredientId: string) => {
    try {
      console.log(`📋 Fetching purchase history for ingredient: ${ingredientId}`);
      const res = await fetch(`/api/purchase-history?ingredient_id=${ingredientId}`);
      
      if (!res.ok) {
        throw new Error('Gagal fetch riwayat pembelian');
      }
      
      const data = await res.json();
      setPurchaseHistory(Array.isArray(data) ? data : []);
      console.log(`✅ Fetched ${data?.length || 0} purchase records`);
    } catch (err) {
      const errMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('Fetch history error:', errMsg);
      setError(errMsg);
    }
  };

  const handlePurchase = async (ingredientId: string) => {
    try {
      setError(null);
      
      if (!purchaseData.quantity || !purchaseData.unit_price) {
        setError('Quantity dan Unit Price harus diisi');
        return;
      }

      console.log(`💰 Recording purchase:`, { ingredientId, ...purchaseData });
      const res = await fetch('/api/purchase-history', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ingredient_id: ingredientId,
          quantity: parseFloat(purchaseData.quantity),
          unit_price: parseFloat(purchaseData.unit_price),
          supplier: purchaseData.supplier || null,
          notes: purchaseData.notes || null,
        }),
      });

      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || 'Gagal catat pembelian');
      }

      console.log(`✅ Purchase recorded successfully`);
      setPurchaseData({ quantity: '', unit_price: '', supplier: '', notes: '' });
      setShowPurchaseModal(false);
      setPurchasingId(null);
      
      // Refresh stocks and history
      await fetchStocks();
      await fetchPurchaseHistory(ingredientId);
    } catch (err) {
      const errMsg = err instanceof Error ? err.message : 'Unknown error';
      console.error('Purchase error:', errMsg);
      setError(errMsg);
    }
  };


  if (loading) return (
    <div className="p-6 flex items-center justify-center h-96">
      <div className="text-center">
        <Package size={48} className="mx-auto text-amber-600 opacity-30 mb-4" />
        <p className="text-gray-500">Loading inventory...</p>
      </div>
    </div>
  );

  return (
    <div className="p-6 space-y-6">
      {/* Header */}
      <div className="flex justify-between items-start">
        <div className="flex items-center gap-3">
          <Package size={32} className="text-amber-600" />
          <div>
            <h1 className="text-3xl font-bold">Daftar Bahan Baku</h1>
            <p className="text-gray-500 text-sm">Master data inventory warehouse dengan quantity tracking</p>
          </div>
        </div>
        <button
          onClick={() => {
            setShowForm(!showForm);
            setError(null);
          }}
          className="bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg flex items-center gap-2 transition"
        >
          <Plus size={20} />
          Tambah Bahan Baku
        </button>
      </div>

      {/* Messages */}
      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Error</p>
            <p className="text-red-700 text-sm">{error}</p>
          </div>
        </div>
      )}

      {/* Success Snackbar */}
      {success && (
        <div className="fixed bottom-4 right-4 bg-green-50 border border-green-200 rounded-lg p-4 flex gap-3 items-center shadow-lg z-50 animate-in fade-in slide-in-from-bottom-4">
          <div>
            <p className="text-green-700 text-sm font-medium">{success}</p>
          </div>
        </div>
      )}

      {/* Add Form */}
      {showForm && (
        <div className="bg-white p-6 rounded-lg shadow-md border border-amber-100">
          <h2 className="text-lg font-semibold mb-4">Tambah Bahan Baku Baru</h2>
          <form onSubmit={handleAdd} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-5 gap-4">
              <div>
                <label className="block text-sm font-medium mb-2">Nama</label>
                <input
                  type="text"
                  value={formData.name}
                  onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  placeholder="Gula, Kopi, dll"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-2">Satuan</label>
                <input
                  type="text"
                  value={formData.unit}
                  onChange={(e) => setFormData({ ...formData, unit: e.target.value })}
                  placeholder="KG, Pak, Ltr"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-2">Harga (Rp)</label>
                <input
                  type="number"
                  value={formData.cost}
                  onChange={(e) => setFormData({ ...formData, cost: e.target.value })}
                  placeholder="12000"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                />
              </div>
              <div className="flex gap-2">
                <button
                  type="button"
                  onClick={() => {
                    setShowForm(false);
                    setFormData({ name: '', unit: '', cost: '' });
                  }}
                  className="flex-1 bg-gray-300 hover:bg-gray-400 text-gray-800 px-3 py-2 rounded-lg flex items-center justify-center gap-2 transition"
                >
                  <X size={18} />
                </button>
                <button type="submit" className="flex-1 bg-green-600 hover:bg-green-700 text-white px-3 py-2 rounded-lg flex items-center justify-center gap-2 transition">
                  <Check size={18} />
                </button>
              </div>
            </div>
          </form>
        </div>
      )}

      {/* Stock Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="overflow-x-auto">
          {stocks.length === 0 ? (
            <div className="p-8 text-center">
              <Package size={48} className="mx-auto text-gray-300 mb-4" />
              <p className="text-gray-500 font-medium">No stock data</p>
              <p className="text-gray-400 text-sm">Add your first stock to get started</p>
            </div>
          ) : (
            <table className="w-full">
              <thead className="bg-gray-100 border-b">
                <tr>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Nama Bahan Baku</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Satuan</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Harga Pembelian</th>
                  <th className="px-6 py-3 text-center text-sm font-semibold text-gray-700">Aksi</th>
                </tr>
              </thead>
              <tbody>
                {stocks
                  .sort((a, b) => a.name.localeCompare(b.name))
                  .map((stock) => (
                  <React.Fragment key={stock.id}>
                    <tr className="border-b hover:bg-amber-50 transition">
                    {editingId === stock.id ? (
                      // Edit mode
                      <>
                        <td className="px-6 py-4">
                          <input
                            type="text"
                            value={editData.name}
                            onChange={(e) => setEditData({ ...editData, name: e.target.value })}
                            className="w-full px-2 py-1 border rounded focus:ring-2 focus:ring-amber-500"
                          />
                        </td>
                        <td className="px-6 py-4">
                          <input
                            type="text"
                            value={editData.unit}
                            onChange={(e) => setEditData({ ...editData, unit: e.target.value })}
                            className="w-full px-2 py-1 border rounded focus:ring-2 focus:ring-amber-500"
                          />
                        </td>
                        <td className="px-6 py-4">
                          <input
                            type="number"
                            value={editData.cost}
                            onChange={(e) => setEditData({ ...editData, cost: e.target.value })}
                            className="w-full px-2 py-1 border rounded focus:ring-2 focus:ring-amber-500"
                          />
                        </td>
                        <td className="px-6 py-4 flex justify-center gap-2">
                          <button
                            onClick={() => handleEdit(stock.id)}
                            className="bg-green-600 hover:bg-green-700 text-white p-2 rounded transition"
                            title="Simpan"
                          >
                            <Check size={18} />
                          </button>
                          <button
                            onClick={() => {
                              setEditingId(null);
                              setEditData({ name: '', unit: '', cost: '', quantity: '' });
                            }}
                            className="bg-gray-500 hover:bg-gray-600 text-white p-2 rounded transition"
                            title="Batal"
                          >
                            <X size={18} />
                          </button>
                        </td>
                      </>
                    ) : (
                      // View mode
                      <>
                        <td className="px-6 py-4 font-medium text-gray-900">{stock.name}</td>
                        <td className="px-6 py-4 text-gray-600">{stock.unit}</td>
                        <td className="px-6 py-4 text-gray-600 font-medium">
                          Rp {Number(stock.cost).toLocaleString('id-ID')}
                        </td>
                        <td className="px-6 py-4 flex justify-center gap-2">
                          <button
                            onClick={() => {
                              setPurchasingId(stock.id);
                              setShowPurchaseModal(true);
                              setPurchaseData({ quantity: '', unit_price: stock.cost.toString(), supplier: '', notes: '' });
                            }}
                            className="bg-green-600 hover:bg-green-700 text-white p-2 rounded transition"
                            title="Beli"
                          >
                            <ShoppingCart size={18} />
                          </button>
                          <button
                            onClick={() => {
                              setShowHistory(showHistory === stock.id ? null : stock.id);
                              if (showHistory !== stock.id) {
                                fetchPurchaseHistory(stock.id);
                              }
                            }}
                            className="bg-purple-600 hover:bg-purple-700 text-white p-2 rounded transition"
                            title="Riwayat"
                          >
                            <Clock size={18} />
                          </button>
                          <button
                            onClick={() => {
                              setEditingId(stock.id);
                              setEditData({
                                name: stock.name,
                                unit: stock.unit,
                                cost: stock.cost.toString(),
                                quantity: (stock.quantity || 0).toString(),
                              });
                            }}
                            className="bg-blue-600 hover:bg-blue-700 text-white p-2 rounded transition"
                            title="Edit"
                          >
                            <Edit2 size={18} />
                          </button>
                          <button
                            onClick={() => handleDelete(stock.id)}
                            className="bg-red-600 hover:bg-red-700 text-white p-2 rounded transition"
                            title="Hapus"
                          >
                            <Trash2 size={18} />
                          </button>
                        </td>
                      </>
                    )}
                    </tr>
                  </React.Fragment>
                ))}
              </tbody>
            </table>
          )}
        </div>
      </div>

      {/* Purchase Modal */}
      {showPurchaseModal && purchasingId && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-lg p-6 w-96 max-h-96 overflow-y-auto">
            <h2 className="text-lg font-semibold mb-4">Catat Pembelian Bahan Baku</h2>
            <form
              onSubmit={(e) => {
                e.preventDefault();
                handlePurchase(purchasingId);
              }}
              className="space-y-4"
            >
              <div>
                <label className="block text-sm font-medium mb-2">Jumlah</label>
                <input
                  type="number"
                  step="0.01"
                  value={purchaseData.quantity}
                  onChange={(e) => setPurchaseData({ ...purchaseData, quantity: e.target.value })}
                  placeholder="10"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-green-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-2">Harga Satuan</label>
                <input
                  type="number"
                  step="0.01"
                  value={purchaseData.unit_price}
                  onChange={(e) => setPurchaseData({ ...purchaseData, unit_price: e.target.value })}
                  placeholder="12000"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-green-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-2">Supplier (opsional)</label>
                <input
                  type="text"
                  value={purchaseData.supplier}
                  onChange={(e) => setPurchaseData({ ...purchaseData, supplier: e.target.value })}
                  placeholder="Nama supplier"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-green-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-2">Catatan (opsional)</label>
                <textarea
                  value={purchaseData.notes}
                  onChange={(e) => setPurchaseData({ ...purchaseData, notes: e.target.value })}
                  placeholder="Contoh: Kemasan baru, kualitas terbaik"
                  className="w-full px-3 py-2 border rounded-lg focus:ring-2 focus:ring-green-500"
                  rows={3}
                />
              </div>
              <div className="flex gap-2 justify-end">
                <button
                  type="button"
                  onClick={() => {
                    setShowPurchaseModal(false);
                    setPurchasingId(null);
                    setPurchaseData({ quantity: '', unit_price: '', supplier: '', notes: '' });
                  }}
                  className="px-4 py-2 bg-gray-300 hover:bg-gray-400 text-gray-800 rounded-lg transition"
                >
                  Batal
                </button>
                <button type="submit" className="px-4 py-2 bg-green-600 hover:bg-green-700 text-white rounded-lg transition">
                  Catat Pembelian
                </button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* Purchase History Modal */}
      {showHistory && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-lg p-6 w-full max-w-2xl max-h-96 overflow-y-auto">
            <div className="flex justify-between items-center mb-4">
              <h2 className="text-lg font-semibold">
                Riwayat Pembelian {stocks.find(s => s.id === showHistory)?.name}
              </h2>
              <button
                onClick={() => setShowHistory(null)}
                className="text-gray-500 hover:text-gray-700"
              >
                <X size={24} />
              </button>
            </div>

            {purchaseHistory.length === 0 ? (
              <div className="text-center py-8">
                <p className="text-gray-500">Belum ada riwayat pembelian</p>
              </div>
            ) : (
              <div className="space-y-3">
                {purchaseHistory.map((record) => (
                  <div key={record.id} className="bg-gray-50 p-4 rounded-lg border border-gray-200">
                    <div className="flex justify-between items-start mb-2">
                      <div>
                        <p className="font-semibold text-gray-900">
                          {record.quantity} {stocks.find(s => s.id === showHistory)?.unit} @ Rp {Number(record.unit_price).toLocaleString('id-ID')}
                        </p>
                        <p className="text-gray-700">
                          Total: <span className="font-semibold">Rp {Number(record.total_price).toLocaleString('id-ID')}</span>
                        </p>
                      </div>
                      <span className="text-gray-500 text-sm">
                        {new Date(record.purchase_date).toLocaleDateString('id-ID', { 
                          year: 'numeric', 
                          month: 'long', 
                          day: 'numeric' 
                        })}
                      </span>
                    </div>
                    {record.supplier && (
                      <p className="text-gray-600 text-sm">
                        <span className="font-medium">Supplier:</span> {record.supplier}
                      </p>
                    )}
                    {record.notes && (
                      <p className="text-gray-600 text-sm">
                        <span className="font-medium">Catatan:</span> {record.notes}
                      </p>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
