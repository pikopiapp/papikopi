'use client';

import { useEffect, useState, useCallback } from 'react';
import { useAuthStore } from '@/lib/store/auth';
import { Package, Plus, Edit2, Trash2, Check, X, AlertCircle, QrCode, Send, Calendar, Printer, Copy } from 'lucide-react';
import QRCode from 'qrcode';
import { BatchPrintMenu } from '@/components/warehouse/batch-print-menu';
import type { ProductBatch } from '@/lib/types';

interface Product {
  id: string;
  name: string;
}

interface Outlet {
  id: string;
  name: string;
}

export default function WarehousePage() {
  const { outletId, setOutletId } = useAuthStore();
  const [batches, setBatches] = useState<ProductBatch[]>([]);
  const [products, setProducts] = useState<Product[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingBatch, setEditingBatch] = useState<ProductBatch | null>(null);
  const [showQR, setShowQR] = useState<ProductBatch | null>(null);
  const [qrImage, setQrImage] = useState<string | null>(null);
  const [formData, setFormData] = useState({
    product_id: '',
    quantity: 1,
    production_date: new Date().toISOString().split('T')[0],
    expired_date: '',
    notes: '',
  });
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);
  const [copiedBatchId, setCopiedBatchId] = useState<string | null>(null);

  // Initialize outlet from localStorage
  useEffect(() => {
    const savedOutletId = localStorage.getItem('selectedOutletId');
    if (savedOutletId && !outletId) {
      setOutletId(savedOutletId);
    }
  }, [outletId, setOutletId]);

  const fetchBatches = useCallback(async () => {
    try {
      setLoading(true);
      const res = await fetch('/api/warehouse/batches');
      if (!res.ok) throw new Error('Failed to fetch');
      
      const data = await res.json();
      setBatches(Array.isArray(data) ? data : []);
    } catch (err) {
      console.error('Fetch batches error:', err);
      setBatches([]);
    } finally {
      setLoading(false);
    }
  }, []);

  const fetchProducts = async () => {
    try {
      const res = await fetch('/api/products');
      const data = await res.json();
      setProducts(Array.isArray(data) ? data : []);
    } catch (err) {
      console.error('Fetch products error:', err);
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

  useEffect(() => {
    // Call fetch functions asynchronously to avoid synchronous setState in effect
    const t = setTimeout(() => {
      fetchBatches();
      fetchProducts();
      fetchOutlets();
    }, 0);
    return () => clearTimeout(t);
  }, [fetchBatches]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setError(null);
      setSuccess(null);

      if (!formData.product_id || !formData.quantity) {
        setError('Please fill in required fields');
        return;
      }

      const method = editingBatch ? 'PUT' : 'POST';
      const body = editingBatch
        ? { id: editingBatch.id, ...formData }
        : formData;

      const res = await fetch('/api/warehouse/batches', {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body),
      });

      if (!res.ok) {
        const errData = await res.json();
        throw new Error(errData.error || 'Failed to save');
      }

      await fetchBatches();
      resetForm();
      setSuccess(editingBatch ? 'Batch updated!' : 'Batch created!');
      setTimeout(() => setSuccess(null), 3000);
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Unknown error';
      setError(msg);
    }
  };

  const handleSendToShowcase = async (batch: ProductBatch) => {
    try {
      const res = await fetch('/api/batch-to-showcase', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ batch_id: batch.id }),
      });

      const data = await res.json();

      if (!res.ok) {
        // Check if batch was already sent
        if (data.alreadySent) {
          setError(`⚠️ Batch "${batch.batch_code}" sudah dikirim ke showcase sebelumnya`);
          setTimeout(() => setError(null), 4000);
          return;
        }
        throw new Error(data.error || 'Gagal mengirim batch');
      }

      setSuccess(data.message);
      setTimeout(() => setSuccess(null), 4000);
      
      // Refresh batches
      await fetchBatches();
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Gagal mengirim batch';
      setError(msg);
      setTimeout(() => setError(null), 4000);
    }
  };

  const handleDelete = async (id: string) => {
    if (!confirm('Delete this batch?')) return;
    try {
      const res = await fetch(`/api/warehouse/batches?id=${id}`, { method: 'DELETE' });
      if (res.ok) {
        await fetchBatches();
        setSuccess('Batch deleted');
        setTimeout(() => setSuccess(null), 3000);
      }
    } catch (err) {
      setError('Failed to delete');
    }
  };

  const resetForm = () => {
    setFormData({
      product_id: '',
      quantity: 1,
      production_date: new Date().toISOString().split('T')[0],
      expired_date: '',
      notes: '',
    });
    setEditingBatch(null);
    setShowForm(false);
  };

  const handleEdit = (batch: ProductBatch) => {
    setEditingBatch(batch);
    setFormData({
      product_id: batch.product_id,
      quantity: batch.quantity,
      production_date: batch.production_date?.split('T')[0] || '',
      expired_date: batch.expired_date?.split('T')[0] || '',
      notes: batch.notes || '',
    });
    setShowForm(true);
  };

  // QR Code content generator
  const getQRContent = (batch: ProductBatch) => {
    return JSON.stringify({
      batch: batch.batch_code,
      product: batch.product_name,
      product_id: batch.product_id,
      prod: batch.production_date?.split('T')[0],
      exp: batch.expired_date?.split('T')[0] || 'N/A',
      status: batch.status,
    });
  };

  const handleCopyQRJson = async (batch: ProductBatch) => {
    try {
      const jsonData = getQRContent(batch);
      await navigator.clipboard.writeText(jsonData);
      setCopiedBatchId(batch.id);
      setSuccess('QR JSON copied to clipboard!');
      setTimeout(() => {
        setCopiedBatchId(null);
        setSuccess(null);
      }, 2000);
    } catch (err) {
      setError('Failed to copy JSON');
    }
  };

  if (loading) return (
    <div className="p-6 flex items-center justify-center h-96">
      <div className="text-center">
        <Package size={48} className="mx-auto text-amber-600 opacity-30 mb-4" />
        <p className="text-gray-500">Loading warehouse data...</p>
      </div>
    </div>
  );

  return (
    <div className="p-3 md:p-4 lg:p-6 space-y-4 md:space-y-6">
      {/* Header */}
      <div className="flex flex-col md:flex-row md:justify-between md:items-center gap-3 md:gap-4">
        <div className="flex items-center gap-2 md:gap-3">
          <Package size={32} className="text-amber-600 md:w-10 md:h-10" />
          <div>
            <h1 className="text-3xl md:text-4xl lg:text-5xl font-bold">Production House</h1>
            <p className="text-gray-500 text-xs md:text-sm lg:text-base">Manage product batches & QR codes</p>
          </div>
        </div>
        <button
          onClick={() => {
            resetForm();
            setShowForm(!showForm);
          }}
          className="bg-amber-600 hover:bg-amber-700 text-white px-3 md:px-6 py-2 md:py-3 rounded-lg flex items-center gap-2 text-sm md:text-base font-semibold whitespace-nowrap"
        >
          <Plus size={18} className="md:w-5 md:h-5" />
          <span>New Batch</span>
        </button>
      </div>

      {/* Status Cards */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-3 md:gap-4">
        <div className="bg-white rounded-lg shadow p-3 md:p-4 lg:p-6 border-l-4 border-blue-500">
          <p className="text-gray-500 text-xs md:text-sm font-semibold">Jumlah Stok</p>
          <p className="text-3xl md:text-4xl lg:text-5xl font-bold text-blue-600 mt-1 md:mt-2">
            {batches.reduce((sum, b) => sum + b.quantity, 0)}
          </p>
          <p className="text-gray-400 text-xs md:text-sm mt-1 md:mt-2">{batches.filter(b => b.status === 'ready' || b.status === 'assigned').length} batches</p>
        </div>

        <div className="bg-white rounded-lg shadow p-6 border-l-4 border-green-500">
          <p className="text-gray-500 text-base font-semibold">Terjual</p>
          <p className="text-5xl font-bold text-green-600 mt-2">
            {batches.reduce((sum, b) => b.status === 'sold' ? sum + b.quantity : sum, 0)}
          </p>
          <p className="text-gray-400 text-xs mt-2">{batches.filter(b => b.status === 'sold').length} batches</p>
        </div>

        <div className="bg-white rounded-lg shadow p-6 border-l-4 border-purple-500">
          <p className="text-gray-500 text-sm font-medium">Ter-Transfer</p>
          <p className="text-3xl font-bold text-purple-600 mt-2">
            {batches.reduce((sum, b) => b.status === 'assigned' ? sum + b.quantity : sum, 0)}
          </p>
          <p className="text-gray-400 text-xs mt-2">{batches.filter(b => b.status === 'assigned').length} batches assigned</p>
        </div>

        <div className="bg-white rounded-lg shadow p-6 border-l-4 border-amber-500">
          <p className="text-gray-500 text-sm font-medium">Sisa/Belum Terjual</p>
          <p className="text-3xl font-bold text-amber-600 mt-2">
            {batches.reduce((sum, b) => b.status === 'ready' ? sum + b.quantity : sum, 0)}
          </p>
          <p className="text-gray-400 text-xs mt-2">{batches.filter(b => b.status === 'ready').length} ready batches</p>
        </div>
      </div>

      {/* Messages */}
      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0" />
          <p className="text-red-800">{error}</p>
        </div>
      )}
      {success && (
        <div className="bg-green-50 border border-green-200 rounded-lg p-4">
          <p className="text-green-800">{success}</p>
        </div>
      )}

      {/* Create/Edit Form */}
      {showForm && (
        <div className="bg-white p-6 rounded-lg shadow-md border border-amber-100">
          <h2 className="text-lg font-semibold mb-4">
            {editingBatch ? `Edit Batch ${editingBatch.batch_code}` : 'Create New Batch'}
          </h2>
          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium mb-1">Product *</label>
                <select
                  value={formData.product_id}
                  onChange={(e) => setFormData({ ...formData, product_id: e.target.value })}
                  required
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
                >
                  <option value="">Select Product</option>
                  {products.map((p) => (
                    <option key={p.id} value={p.id}>{p.name}</option>
                  ))}
                </select>
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Quantity *</label>
                <input
                  type="number"
                  min="1"
                  value={formData.quantity}
                  onChange={(e) => setFormData({ ...formData, quantity: parseInt(e.target.value) || 1 })}
                  required
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Production Date *</label>
                <input
                  type="date"
                  value={formData.production_date}
                  onChange={(e) => setFormData({ ...formData, production_date: e.target.value })}
                  required
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
                />
              </div>
              <div>
                <label className="block text-sm font-medium mb-1">Expired Date</label>
                <input
                  type="date"
                  value={formData.expired_date}
                  onChange={(e) => setFormData({ ...formData, expired_date: e.target.value })}
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
                />
              </div>
              <div className="md:col-span-2">
                <label className="block text-sm font-medium mb-1">Notes</label>
                <textarea
                  value={formData.notes}
                  onChange={(e) => setFormData({ ...formData, notes: e.target.value })}
                  rows={2}
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
                  placeholder="Additional notes..."
                />
              </div>
            </div>
            <div className="flex gap-2 justify-end">
              <button
                type="button"
                onClick={resetForm}
                className="bg-gray-200 hover:bg-gray-300 px-6 py-2 rounded-lg flex items-center gap-2"
              >
                <X size={18} />
                Cancel
              </button>
              <button
                type="submit"
                className="bg-green-600 hover:bg-green-700 text-white px-6 py-2 rounded-lg flex items-center gap-2"
              >
                <Check size={18} />
                Save
              </button>
            </div>
          </form>
        </div>
      )}

      {/* QR Code Modal */}
      {showQR && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white p-6 rounded-lg shadow-xl max-w-sm w-full mx-4">
            <div className="text-center mb-4">
              <QrCode size={48} className="mx-auto text-amber-600 mb-2" />
              <h3 className="text-lg font-bold">Batch QR Code</h3>
              <p className="text-sm text-gray-500">{showQR.batch_code}</p>
            </div>
            
            {/* QR Code Image */}
            {qrImage && (
              <div className="bg-white border border-gray-300 rounded-lg p-4 mb-4 flex justify-center">
                <img src={qrImage} alt="QR Code" className="w-64 h-64" />
              </div>
            )}

            {/* Batch Info */}
            <div className="bg-gray-100 p-4 rounded-lg text-left text-sm font-mono mb-4">
              <p><strong>Product:</strong> {showQR.product_name}</p>
              <p><strong>Code:</strong> {showQR.batch_code}</p>
              <p><strong>Production:</strong> {showQR.production_date?.split('T')[0]}</p>
              <p><strong>Expired:</strong> {showQR.expired_date?.split('T')[0] || 'N/A'}</p>
              <p><strong>Status:</strong> {showQR.status}</p>
            </div>

            <div className="flex gap-2 mb-4">
              <button
                onClick={() => handleCopyQRJson(showQR)}
                className={`flex-1 py-2 rounded-lg flex items-center justify-center gap-2 font-medium transition-colors ${
                  copiedBatchId === showQR.id
                    ? 'bg-green-600 text-white'
                    : 'bg-blue-600 hover:bg-blue-700 text-white'
                }`}
              >
                <Copy size={18} />
                {copiedBatchId === showQR.id ? 'Copied!' : 'Copy JSON'}
              </button>
            </div>

            {/* Close Button */}
            <button
              onClick={() => {
                setShowQR(null);
                setQrImage(null);
              }}
              className="w-full bg-amber-600 hover:bg-amber-700 text-white py-2 rounded-lg"
            >
              Close
            </button>
          </div>
        </div>
      )}

      {/* Batches Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="p-3 md:p-4 border-b bg-gray-50">
          <h3 className="font-semibold flex items-center gap-2 text-sm md:text-base">
            <Package size={18} className="text-amber-600 md:w-5 md:h-5" />
            Production Batches ({batches.length})
          </h3>
        </div>
        <div className="overflow-x-auto">
          {batches.length === 0 ? (
            <div className="p-8 text-center">
              <Package size={48} className="mx-auto text-gray-300 mb-4" />
              <p className="text-gray-500">No batches yet</p>
              <p className="text-gray-400 text-sm">Create your first production batch</p>
            </div>
          ) : (
            <table className="w-full text-xs md:text-sm">
              <thead className="bg-gray-100 border-b">
                <tr>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold">Batch Code</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold hidden md:table-cell">Product</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold">Stok</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold\">Status</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold hidden lg:table-cell\">Tujuan</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold hidden lg:table-cell\">Prod. Date</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold hidden lg:table-cell\">Exp. Date</th>
                  <th className="px-2 md:px-3 lg:px-4 py-2 md:py-3 text-left text-xs md:text-sm font-semibold\">Actions</th>
                </tr>
              </thead>
              <tbody>
                {batches.map((batch) => (
                  <tr key={batch.id} className="border-b hover:bg-amber-50">
                    <td className="px-4 py-3 font-mono text-sm font-medium">{batch.batch_code}</td>
                    <td className="px-4 py-3 font-medium">{batch.product_name || '-'}</td>
                    <td className="px-4 py-3">
                      <span className="bg-blue-100 text-blue-800 px-2 py-1 rounded text-sm font-semibold">
                        {batch.quantity}
                      </span>
                    </td>
                    <td className="px-4 py-3">
                      <span className={`px-3 py-1 rounded-full text-xs font-medium ${
                        batch.status === 'ready' ? 'bg-yellow-100 text-yellow-800' :
                        batch.status === 'assigned' ? 'bg-blue-100 text-blue-800' :
                        batch.status === 'sent_to_showcase' ? 'bg-purple-100 text-purple-800' :
                        batch.status === 'sold' ? 'bg-green-100 text-green-800' :
                        batch.status === 'expired' ? 'bg-red-100 text-red-800' :
                        'bg-gray-100 text-gray-800'
                      }`}>
                        {batch.status === 'ready' ? '📦 Ready' :
                         batch.status === 'assigned' ? '🚚 Assigned' :
                         batch.status === 'sent_to_showcase' ? '🎯 Terkirim ke Showcase' :
                         batch.status === 'sold' ? '✅ Sold' :
                         batch.status === 'expired' ? '⛔ Expired' :
                         batch.status}
                      </span>
                    </td>
                    <td className="px-4 py-3 font-medium">
                      {batch.status === 'sent_to_showcase' ? (
                        <span className="bg-green-100 text-green-800 px-2 py-1 rounded text-sm font-medium">
                          ✅ Showcase
                        </span>
                      ) : batch.outlet_name ? (
                        <span className="bg-purple-100 text-purple-800 px-2 py-1 rounded text-sm">
                          {batch.outlet_name}
                        </span>
                      ) : (
                        <span className="text-gray-400">-</span>
                      )}
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600">{batch.production_date?.split('T')[0]}</td>
                    <td className="px-4 py-3 text-sm text-gray-600">{batch.expired_date?.split('T')[0] || '-'}</td>
                    <td className="px-4 py-3">
                      <div className="flex gap-1 items-center">
                        <button
                          onClick={async () => {
                            setShowQR(batch);
                            try {
                              const qrDataUrl = await QRCode.toDataURL(getQRContent(batch));
                              setQrImage(qrDataUrl);
                            } catch (err) {
                              console.error('Error generating QR code:', err);
                            }
                          }}
                          className="text-gray-600 hover:text-amber-600 p-1"
                          title="View QR"
                        >
                          <QrCode size={18} />
                        </button>
                        <BatchPrintMenu batch={{
                          id: batch.id,
                          batch: batch.batch_code,
                          product_id: batch.product_id,
                          product_name: batch.product_name || '',
                          production_date: batch.production_date?.split('T')[0] || '',
                          expiry_date: batch.expired_date?.split('T')[0],
                          status: batch.status,
                          quantity: batch.quantity,
                        }} />
                        {batch.status === 'ready' && (
                          <button
                            onClick={() => handleSendToShowcase(batch)}
                            className="text-blue-600 hover:text-blue-800 p-1 font-semibold text-xs"
                            title="Send to Showcase"
                          >
                            🎯 Send
                          </button>
                        )}
                        <button
                          onClick={() => handleEdit(batch)}
                          className="text-blue-600 hover:text-blue-800 p-1"
                          title="Edit"
                        >
                          <Edit2 size={18} />
                        </button>
                        <button
                          onClick={() => handleDelete(batch.id)}
                          className="text-red-600 hover:text-red-800 p-1"
                          title="Delete"
                        >
                          <Trash2 size={18} />
                        </button>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          )}
        </div>
      </div>

    </div>
  );
}
