'use client';

import { useEffect, useState } from 'react';
import { Plus, ChevronDown, ChevronUp, AlertCircle, X, RotateCcw } from 'lucide-react';

interface ShowcaseProduct {
  id: string;
  product_id: string;
  product_name: string;
  total_quantity: number;
  allocated_quantity: number;
  allocations?: Allocation[];
}

interface Allocation {
  id: string;
  outlet_id: string;
  outlet_name?: string;
  quantity: number;
  allocated_at?: string;
}

interface Outlet {
  id: string;
  name: string;
}

interface AssignForm {
  quantity: number;
  outlet_id: string;
}

export default function ShowcasePage() {
  const [products, setProducts] = useState<ShowcaseProduct[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [loading, setLoading] = useState(true);
  const [expandedId, setExpandedId] = useState<string | null>(null);
  const [showModal, setShowModal] = useState(false);
  const [modalMode, setModalMode] = useState<'view' | 'allocate'>('allocate'); // New: track modal mode
  const [selectedProduct, setSelectedProduct] = useState<ShowcaseProduct | null>(null);
  const [formData, setFormData] = useState<AssignForm>({
    quantity: 0,
    outlet_id: '',
  });
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [showResetConfirm, setShowResetConfirm] = useState(false);
  const [resetting, setResetting] = useState(false);

  useEffect(() => {
    fetchProducts();
    fetchOutlets();
  }, []);

  const fetchProducts = async () => {
    try {
      setLoading(true);
      const res = await fetch('/api/showcase/inventory');
      if (!res.ok) throw new Error('Failed to fetch products');
      const data = await res.json();
      setProducts(Array.isArray(data) ? data : []);
    } catch (err) {
      console.error('Fetch products error:', err);
      setError('Gagal memuat produk showcase');
    } finally {
      setLoading(false);
    }
  };

  const fetchOutlets = async () => {
    try {
      const res = await fetch('/api/outlets');
      const data = await res.json();
      setOutlets(Array.isArray(data) ? data : []);
    } catch (err) {
      console.error('Fetch outlets error:', err);
    }
  };

  const openAssignModal = (product: ShowcaseProduct) => {
    setSelectedProduct(product);
    setModalMode('allocate');
    setFormData({
      quantity: 0,
      outlet_id: outlets[0]?.id || '',
    });
    setShowModal(true);
    setError(null);
  };

  const openViewModal = (product: ShowcaseProduct) => {
    setSelectedProduct(product);
    setModalMode('view');
    setShowModal(true);
    setError(null);
  };

  const handleAssign = async () => {
    if (!selectedProduct || !formData.outlet_id || formData.quantity <= 0) {
      setError('Semua field harus diisi dengan benar');
      return;
    }

    const available = selectedProduct.total_quantity - selectedProduct.allocated_quantity;
    if (formData.quantity > available) {
      setError(`Qty tidak boleh melebihi stok tersedia (${available})`);
      return;
    }

    try {
      const res = await fetch('/api/showcase/allocate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          showcase_product_id: selectedProduct.id,
          outlet_id: formData.outlet_id,
          quantity: formData.quantity,
        }),
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.error || 'Gagal mengalokasikan produk');
      }

      setSuccess(`✅ ${selectedProduct.product_name} (${formData.quantity} pcs) berhasil dialokasikan!`);
      setShowModal(false);
      setTimeout(() => setSuccess(null), 4000);
      
      // Refresh products
      await fetchProducts();
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Gagal mengalokasikan produk';
      setError(msg);
    }
  };

  const handleResetShowcase = async () => {
    setResetting(true);
    try {
      const res = await fetch('/api/admin/reset-showcase', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.message || 'Gagal mereset showcase');
      }

      setSuccess('✅ Showcase berhasil direset! Semua alokasi dihapus.');
      setShowResetConfirm(false);
      setTimeout(() => setSuccess(null), 4000);
      await fetchProducts();
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Gagal mereset showcase';
      setError(msg);
    } finally {
      setResetting(false);
    }
  };

  const getAvailableQty = (product: ShowcaseProduct) => {
    return product.total_quantity - product.allocated_quantity;
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="text-4xl mb-4">📦</div>
          <p className="text-gray-600">Memuat produk showcase...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6">
      {/* Header */}
      <div className="mb-8 flex justify-between items-start">
        <div>
          <h1 className="text-5xl font-bold">Showcase Inventory</h1>
          <p className="text-gray-600 mt-2 text-lg">Kelola produk yang tersedia di showcase</p>
        </div>
        <button
          onClick={() => setShowResetConfirm(true)}
          className="px-6 py-3 bg-red-500 hover:bg-red-600 text-white rounded-lg flex items-center gap-2 transition text-lg font-semibold"
        >
          <RotateCcw size={20} />
          Reset Semua
        </button>
      </div>

      {/* Reset Confirmation Modal */}
      {showResetConfirm && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-sm mx-4 shadow-xl">
            <div className="flex items-center gap-3 mb-4">
              <AlertCircle className="text-red-500" size={28} />
              <h3 className="text-2xl font-bold">Reset Showcase?</h3>
            </div>
            <p className="text-gray-600 mb-6 text-lg">
              Ini akan menghapus SEMUA alokasi produk ke outlet. Data total produk tetap aman.
            </p>
            <div className="bg-yellow-50 border border-yellow-200 rounded p-3 mb-6 text-base text-yellow-800 font-medium">
              ⚠️ Aksi ini tidak bisa dibatalkan. Pastikan Anda sudah yakin.
            </div>
            <div className="flex gap-3">
              <button
                onClick={() => setShowResetConfirm(false)}
                className="flex-1 px-4 py-3 bg-gray-200 hover:bg-gray-300 rounded transition text-base font-medium"
              >
                Batal
              </button>
              <button
                onClick={handleResetShowcase}
                disabled={resetting}
                className="flex-1 px-4 py-3 bg-red-500 hover:bg-red-600 text-white rounded transition disabled:bg-gray-400 text-base font-medium"
              >
                {resetting ? 'Mereset...' : 'Reset Semua'}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Messages */}
      {error && (
        <div className="mb-4 p-4 bg-red-100 border border-red-400 text-red-800 rounded flex items-center gap-2 text-lg">
          <AlertCircle size={22} />
          {error}
        </div>
      )}
      {success && (
        <div className="mb-4 p-4 bg-green-100 border border-green-400 text-green-800 rounded text-lg">
          {success}
        </div>
      )}

      {/* Products Grid */}
      {products.length === 0 ? (
        <div className="text-center py-12">
          <p className="text-gray-400 text-lg">Belum ada produk di showcase</p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {products.map((product) => {
            const available = getAvailableQty(product);
            const isExpanded = expandedId === product.id;

            return (
              <div key={product.id} className="bg-white rounded-lg shadow-md overflow-hidden border border-gray-200 hover:shadow-lg transition">
                {/* Card Header */}
                <div className="p-4 bg-gradient-to-r from-amber-50 to-orange-50 border-b">
                  <h3 className="font-bold text-2xl">{product.product_name}</h3>
                </div>

                {/* Card Body */}
                <div className="p-4">
                  {/* Stats */}
                  <div className="grid grid-cols-3 gap-3 mb-4">
                    <div className="bg-blue-50 rounded p-3 text-center">
                      <div className="text-4xl font-bold text-blue-600">{product.total_quantity}</div>
                      <div className="text-sm text-gray-600 font-medium">Total</div>
                    </div>
                    <div className="bg-yellow-50 rounded p-3 text-center">
                      <div className="text-4xl font-bold text-yellow-600">{product.allocated_quantity}</div>
                      <div className="text-sm text-gray-600 font-medium">Allocated</div>
                    </div>
                    <div className="bg-green-50 rounded p-3 text-center">
                      <div className="text-4xl font-bold text-green-600">{available}</div>
                      <div className="text-sm text-gray-600 font-medium">Available</div>
                    </div>
                  </div>

                  {/* Buttons Group */}
                  <div className="space-y-2">
                    {/* Allocate Button */}
                    <button
                      onClick={() => openAssignModal(product)}
                      disabled={available <= 0}
                      className={`w-full py-2 px-3 rounded font-medium flex items-center justify-center gap-2 transition ${
                        available > 0
                          ? 'bg-blue-600 text-white hover:bg-blue-700'
                          : 'bg-gray-200 text-gray-400 cursor-not-allowed'
                      }`}
                    >
                      <Plus size={18} />
                      Allocate to Outlet
                    </button>

                    {/* View Button */}
                    <button
                      onClick={() => openViewModal(product)}
                      className="w-full py-2 px-3 rounded font-medium flex items-center justify-center gap-2 transition bg-purple-100 text-purple-700 hover:bg-purple-200"
                    >
                      👁️ View Detail
                    </button>

                    {/* Expand Button */}
                    <button
                      onClick={() => setExpandedId(isExpanded ? null : product.id)}
                      className="w-full py-2 text-sm text-gray-600 hover:text-gray-800 flex items-center justify-center gap-1"
                    >
                      {isExpanded ? (
                        <>
                          <ChevronUp size={16} />
                          Sembunyikan
                        </>
                      ) : (
                        <>
                          <ChevronDown size={16} />
                          Lihat Allocation
                        </>
                      )}
                    </button>
                  </div>
                </div>

                {/* Expanded Details */}
                {isExpanded && (
                  <div className="px-4 pb-4 border-t bg-gray-50">
                    <div className="text-sm text-gray-600 mt-3">
                      <p className="font-semibold mb-2">Allocation Details:</p>
                      <p className="text-xs">Product ID: {product.product_id}</p>
                      <p className="text-xs">Showcase ID: {product.id}</p>
                    </div>
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}

      {/* Modal */}
      {showModal && selectedProduct && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center p-4 z-50">
          <div className="bg-white rounded-lg shadow-lg max-w-md w-full p-6">
            {/* Close Button */}
            <button
              onClick={() => setShowModal(false)}
              className="absolute top-4 right-4 text-gray-500 hover:text-gray-700"
            >
              <X size={24} />
            </button>

            {modalMode === 'view' ? (
              // VIEW MODAL - Lihat allocation
              <>
                <h2 className="text-2xl font-bold mb-4">📦 {selectedProduct.product_name}</h2>

                {/* Stats */}
                <div className="grid grid-cols-3 gap-3 mb-6">
                  <div className="bg-blue-50 rounded p-3 text-center">
                    <div className="text-xl font-bold text-blue-600">{selectedProduct.total_quantity}</div>
                    <div className="text-xs text-gray-600">Total</div>
                  </div>
                  <div className="bg-yellow-50 rounded p-3 text-center">
                    <div className="text-xl font-bold text-yellow-600">{selectedProduct.allocated_quantity}</div>
                    <div className="text-xs text-gray-600">Allocated</div>
                  </div>
                  <div className="bg-green-50 rounded p-3 text-center">
                    <div className="text-xl font-bold text-green-600">
                      {selectedProduct.total_quantity - selectedProduct.allocated_quantity}
                    </div>
                    <div className="text-xs text-gray-600">Available</div>
                  </div>
                </div>

                {/* Allocation List */}
                <div className="mb-4">
                  <h3 className="font-semibold text-lg mb-3">Outlet Allocation:</h3>
                  {selectedProduct.allocations && selectedProduct.allocations.length > 0 ? (
                    <div className="space-y-2 max-h-96 overflow-y-auto">
                      {selectedProduct.allocations.map((alloc) => (
                        <div key={alloc.id} className="bg-gray-50 p-3 rounded border border-gray-200 flex justify-between items-center">
                          <div>
                            <p className="font-medium text-lg">{alloc.outlet_name || 'Unknown Outlet'}</p>
                            <p className="text-xs text-gray-500">{alloc.outlet_id}</p>
                          </div>
                          <div className="bg-blue-100 text-blue-800 px-4 py-2 rounded font-bold text-sm">
                            {alloc.quantity} pcs
                          </div>
                        </div>
                      ))}
                    </div>
                  ) : (
                    <div className="text-center py-8 text-gray-400">
                      <p className="text-lg">Belum ada alokasi untuk produk ini</p>
                    </div>
                  )}
                </div>

                {/* Buttons */}
                <div className="flex gap-2 pt-4">
                  <button
                    onClick={() => setShowModal(false)}
                    className="flex-1 px-4 py-2 border rounded font-medium hover:bg-gray-50"
                  >
                    Close
                  </button>
                  <button
                    onClick={() => setModalMode('allocate')}
                    className="flex-1 px-4 py-2 bg-blue-600 text-white rounded font-medium hover:bg-blue-700"
                  >
                    + Allocate
                  </button>
                </div>
              </>
            ) : (
              // ALLOCATE MODAL
              <>
                <h2 className="text-2xl font-bold mb-4">Allocate {selectedProduct.product_name}</h2>

                <div className="space-y-4">
                  {/* Available Info */}
                  <div className="bg-green-50 p-3 rounded border border-green-200">
                    <p className="text-sm text-green-800">
                      <span className="font-semibold">Stok tersedia: </span>
                      {selectedProduct.total_quantity - selectedProduct.allocated_quantity} pcs
                    </p>
                  </div>

                  {/* Outlet Selection */}
                  <div>
                    <label className="block text-sm font-semibold mb-2">Pilih Outlet</label>
                    <select
                      value={formData.outlet_id}
                      onChange={(e) =>
                        setFormData({ ...formData, outlet_id: e.target.value })
                      }
                      className="w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                    >
                      <option value="">-- Pilih Outlet --</option>
                      {outlets.map((outlet) => (
                        <option key={outlet.id} value={outlet.id}>
                          {outlet.name}
                        </option>
                      ))}
                    </select>
                  </div>

                  {/* Quantity Input */}
                  <div>
                    <label className="block text-sm font-semibold mb-2">Jumlah (pcs)</label>
                    <input
                      type="number"
                      min="1"
                      max={selectedProduct.total_quantity - selectedProduct.allocated_quantity}
                      value={formData.quantity}
                      onChange={(e) =>
                        setFormData({ ...formData, quantity: parseInt(e.target.value) || 0 })
                      }
                      className="w-full border rounded px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                      placeholder="0"
                    />
                  </div>

                  {/* Modal Error */}
                  {error && (
                    <div className="p-3 bg-red-50 text-red-800 rounded text-sm border border-red-200">
                      {error}
                    </div>
                  )}

                  {/* Buttons */}
                  <div className="flex gap-2 pt-4">
                    <button
                      onClick={() => {
                        setShowModal(false);
                        setError(null);
                      }}
                      className="flex-1 px-4 py-2 border rounded font-medium hover:bg-gray-50"
                    >
                      Cancel
                    </button>
                    <button
                      onClick={handleAssign}
                      className="flex-1 px-4 py-2 bg-blue-600 text-white rounded font-medium hover:bg-blue-700"
                    >
                      Allocate
                    </button>
                  </div>
                </div>
              </>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
