'use client';

import { useEffect, useState } from 'react';
import { formatTimestampInJakarta } from '@/lib/helpers/business-day';
import axios from 'axios';
import { ChevronDown, X } from 'lucide-react';
import { typeLabel } from '@/lib/utils/outletTypes';

interface Outlet {
  id: string;
  name: string;
  type: string;
  address: string;
}

interface Allocation {
  id: string;
  quantity: number;
  allocated_date: string;
  outlet: Outlet;
}

interface ShowcaseProduct {
  id: string;
  product_id: string;
  product_name: string;
  total_quantity: number;
  allocated_quantity: number;
  available_quantity: number;
  created_at: string;
  allocations: Allocation[];
}

interface InventorySummary {
  total_products: number;
  total_quantity: number;
  total_allocated: number;
  total_available: number;
}

export default function ShowcaseInventoryPage() {
  const [products, setProducts] = useState<ShowcaseProduct[]>([]);
  const [summary, setSummary] = useState<InventorySummary | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedProduct, setSelectedProduct] = useState<ShowcaseProduct | null>(null);
  const [expandedProducts, setExpandedProducts] = useState<Set<string>>(new Set());

  useEffect(() => {
    fetchInventory();
  }, []);

  const fetchInventory = async () => {
    try {
      setLoading(true);
      setError(null);
      const res = await axios.get('/api/showcase/inventory');

      if (res.data.success) {
        setProducts(res.data.data.products || []);
        setSummary(res.data.data.summary);
      } else {
        setError(res.data.error || 'Failed to fetch inventory');
      }
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Failed to fetch inventory';
      setError(msg);
      console.error('Fetch error:', err);
    } finally {
      setLoading(false);
    }
  };

  const toggleExpand = (productId: string) => {
    const newExpanded = new Set(expandedProducts);
    if (newExpanded.has(productId)) {
      newExpanded.delete(productId);
    } else {
      newExpanded.add(productId);
    }
    setExpandedProducts(newExpanded);
  };

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center h-96">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto mb-4"></div>
          <p className="text-gray-600">Loading showcase inventory...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-gray-900 mb-2">Showcase Inventory</h1>
        <p className="text-gray-600">Accumulated products from warehouse batches</p>
      </div>

      {/* Error Message */}
      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4">
          <p className="text-red-800">{error}</p>
        </div>
      )}

      {/* Summary Cards */}
      {summary && (
        <div className="grid grid-cols-4 gap-4">
          <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
            <p className="text-gray-600 text-sm">Product Types</p>
            <p className="text-3xl font-bold text-blue-900 mt-2">{summary.total_products}</p>
          </div>
          <div className="bg-green-50 border border-green-200 rounded-lg p-4">
            <p className="text-gray-600 text-sm">Total Stock</p>
            <p className="text-3xl font-bold text-green-900 mt-2">{summary.total_quantity}</p>
          </div>
          <div className="bg-purple-50 border border-purple-200 rounded-lg p-4">
            <p className="text-gray-600 text-sm">Allocated</p>
            <p className="text-3xl font-bold text-purple-900 mt-2">{summary.total_allocated}</p>
          </div>
          <div className="bg-orange-50 border border-orange-200 rounded-lg p-4">
            <p className="text-gray-600 text-sm">Available</p>
            <p className="text-3xl font-bold text-orange-900 mt-2">{summary.total_available}</p>
          </div>
        </div>
      )}

      {/* Products List */}
      <div className="surface-card rounded-lg shadow overflow-hidden">
        <div className="p-4 border-b surface-muted">
          <h3 className="font-semibold text-lg">Products in Showcase</h3>
          <p className="text-sm text-gray-600">Click to view details and allocations</p>
        </div>

        {products.length === 0 ? (
          <div className="p-8 text-center">
            <p className="text-gray-500">No products in showcase yet</p>
            <p className="text-gray-400 text-sm">Send batches from warehouse to populate inventory</p>
          </div>
        ) : (
          <div className="divide-y">
            {products.map((product) => (
              <div key={product.id} className="border-b last:border-b-0">
                {/* Product Header */}
                <div
                  onClick={() => toggleExpand(product.id)}
                  className="p-4 hover:bg-gray-50 cursor-pointer transition-colors flex justify-between items-center"
                >
                  <div className="flex-1">
                    <h4 className="font-semibold text-gray-900 text-lg">{product.product_name}</h4>
                    <div className="flex gap-4 mt-2 text-sm">
                      <span className="text-gray-600">
                        Total: <span className="font-bold text-green-600">{product.total_quantity}</span> pcs
                      </span>
                      <span className="text-gray-600">
                        Allocated: <span className="font-bold text-purple-600">{product.allocated_quantity}</span> pcs
                      </span>
                      <span className="text-gray-600">
                        Available: <span className="font-bold text-orange-600">{product.available_quantity}</span> pcs
                      </span>
                    </div>
                  </div>
                  <ChevronDown
                    size={24}
                    className={`transition-transform text-gray-600 ${expandedProducts.has(product.id) ? 'rotate-180' : ''}`}
                  />
                </div>

                {/* Expanded Details */}
                {expandedProducts.has(product.id) && (
                  <div className="p-4 surface-muted space-y-4 border-t">
                    {/* Total Info */}
                    <div className="surface-card border border-gray-200 rounded-lg p-4">
                      <p className="text-sm text-gray-600 mb-2">Total Product Stock</p>
                      <p className="text-4xl font-bold text-green-600">{product.total_quantity} pcs</p>
                      <p className="text-xs text-gray-500 mt-2">First assigned: {formatTimestampInJakarta(product.created_at, { year: 'numeric', month: 'long', day: 'numeric' })}</p>
                    </div>

                    {/* Allocations */}
                    <div>
                      <h5 className="font-semibold text-gray-900 mb-3">🎯 Allocations to Outlets ({product.allocations.length})</h5>
                      {product.allocations.length > 0 ? (
                        <div className="space-y-2">
                          {product.allocations.map((allocation) => (
                            <div key={allocation.id} className="surface-card border border-gray-200 rounded p-3">
                              <div className="flex justify-between items-start">
                                <div>
                                  <p className="font-semibold text-gray-900">{allocation.outlet.name}</p>
                                  <p className="text-xs text-gray-600">{typeLabel(allocation.outlet.type)}</p>
                                  <p className="text-xs text-gray-500">{allocation.outlet.address}</p>
                                </div>
                                <div className="text-right">
                                  <p className="text-lg font-bold text-green-600">{allocation.quantity}</p>
                                  <p className="text-xs text-gray-500">
                                    {formatTimestampInJakarta(allocation.allocated_date, { year: 'numeric', month: 'long', day: 'numeric' })}
                                  </p>
                                </div>
                              </div>
                            </div>
                          ))}
                        </div>
                      ) : (
                        <div className="bg-white border border-dashed border-gray-300 rounded p-3 text-center text-gray-500 text-sm">
                          Not allocated yet
                        </div>
                      )}
                    </div>

                    {/* Allocate Button */}
                    <button
                      onClick={() => setSelectedProduct(product)}
                      className="w-full bg-blue-600 hover:bg-blue-700 text-white py-2 rounded-lg font-medium transition-colors"
                    >
                      ➕ Allocate to Outlet
                    </button>
                  </div>
                )}
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Allocation Modal */}
      {selectedProduct && (
        <AllocationModal
          product={selectedProduct}
          onClose={() => setSelectedProduct(null)}
          onSuccess={() => {
            setSelectedProduct(null);
            fetchInventory();
          }}
        />
      )}
    </div>
  );
}

interface AllocationModalProps {
  product: ShowcaseProduct;
  onClose: () => void;
  onSuccess: () => void;
}

function AllocationModal({ product, onClose, onSuccess }: AllocationModalProps) {
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [selectedOutlet, setSelectedOutlet] = useState('');
  const [quantity, setQuantity] = useState(1);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    fetchOutlets();
  }, []);

  const fetchOutlets = async () => {
    try {
      const res = await axios.get('/api/outlets');
      setOutlets(res.data || []);
    } catch (err) {
      console.error('Error fetching outlets:', err);
    }
  };

  const handleAllocate = async () => {
    if (!selectedOutlet || quantity < 1) {
      setError('Please select outlet and quantity');
      return;
    }

    try {
      setLoading(true);
      setError(null);
      const res = await axios.post('/api/showcase/allocate', {
        showcase_product_id: product.id,
        outlet_id: selectedOutlet,
        quantity: parseInt(quantity.toString()),
      });

      if (res.data.success) {
        onSuccess();
      } else {
        setError(res.data.error || 'Failed to allocate');
      }
    } catch (err) {
      const msg = err instanceof Error ? err.message : 'Failed to allocate';
      setError(msg);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
      <div className="bg-white rounded-lg shadow-lg max-w-md w-full">
        {/* Header */}
        <div className="bg-linear-to-r from-blue-600 to-blue-700 p-6 text-white flex justify-between items-start">
          <div>
            <h3 className="text-xl font-bold">{product.product_name}</h3>
            <p className="text-blue-100 text-sm mt-1">Allocate to Outlet</p>
          </div>
          <button onClick={onClose} className="text-blue-100 hover:text-white">
            <X size={24} />
          </button>
        </div>

        {/* Content */}
        <div className="p-6 space-y-4">
          {/* Available Info */}
          <div className="bg-blue-50 border border-blue-200 rounded p-3">
            <p className="text-sm text-blue-900">Available Quantity</p>
            <p className="text-2xl font-bold text-blue-600">{product.available_quantity} pcs</p>
          </div>

          {error && (
            <div className="bg-red-50 border border-red-200 rounded p-3 text-sm text-red-800">
              {error}
            </div>
          )}

          {/* Outlet Selection */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Outlet</label>
            <select
              value={selectedOutlet}
              onChange={(e) => setSelectedOutlet(e.target.value)}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="">Select Outlet</option>
              {outlets.map((outlet) => (
                <option key={outlet.id} value={outlet.id}>
                  {outlet.name}
                </option>
              ))}
            </select>
          </div>

          {/* Quantity Input */}
          <div>
            <label className="block text-sm font-medium text-gray-700 mb-2">Quantity</label>
            <input
              type="number"
              min="1"
              max={product.available_quantity}
              value={quantity}
              onChange={(e) => setQuantity(parseInt(e.target.value) || 1)}
              className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <p className="text-xs text-gray-500 mt-1">Max: {product.available_quantity} pcs</p>
          </div>

          {/* Buttons */}
          <div className="flex gap-3 pt-4">
            <button
              onClick={onClose}
              className="flex-1 px-4 py-2 bg-gray-200 text-gray-900 rounded-lg hover:bg-gray-300 transition-colors font-medium"
            >
              Cancel
            </button>
            <button
              onClick={handleAllocate}
              disabled={loading}
              className="flex-1 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 disabled:bg-gray-400 transition-colors font-medium"
            >
              {loading ? 'Allocating...' : 'Allocate'}
            </button>
          </div>
        </div>
      </div>
    </div>
  );
}
