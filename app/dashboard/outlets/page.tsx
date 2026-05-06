
'use client';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { useAuthStore } from '@/lib/store/auth';
import { Building2, Plus, Edit2, Trash2, MapPin, Tag, Users, X, ShoppingBag, Info, DollarSign, TrendingUp, Package } from 'lucide-react';

interface Outlet {
  id: string;
  name: string;
  type: string;
  address: string | null;
  created_at: string;
}

interface Barista {
  id: string;
  name: string;
  email: string;
  outlet_id?: string | null;
}

interface Product {
  id: string;
  name: string;
  category: {
    id: string;
    name: string;
  } | null;
  available_quantity: number;
  can_make: boolean;
  ingredient_details: Array<{
    ingredient_id: string;
    required: number;
    available: number;
  }>;
}

interface OutletDetails {
  outlet: Outlet;
  assigned_barista: Barista | null;
  sales_summary: {
    total_revenue: number;
    total_profit: number;
    total_bonus: number;
    total_hpp: number;
    total_transactions: number;
    today_revenue: number;
    today_transactions: number;
    cash_revenue: number;
    qris_revenue: number;
  };
  product_sales: Array<{
    product_id: string;
    product_name: string;
    quantity: number;
    revenue: number;
  }>;
  product_batches: Array<{
    product_id: string;
    product_name: string;
    quantity: number;
    batch_code: string;
    production_date: string;
    expired_date: string;
  }>;
  recent_sales: any[];
}

export default function OutletsPage() {
  const router = useRouter();
  const { outletId } = useAuthStore();
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [formData, setFormData] = useState({ name: '', type: 'e-trike', address: '' });
  const [success, setSuccess] = useState<string | null>(null);
  
  const [showAssignModal, setShowAssignModal] = useState(false);
  const [selectedOutletId, setSelectedOutletId] = useState<string | null>(null);
  const [baristas, setBaristas] = useState<Barista[]>([]);
  const [assignedBaristas, setAssignedBaristas] = useState<Set<string>>(new Set());
  const [outletBarista, setOutletBarista] = useState<Barista | null>(null);
  const [outletBaristasMap, setOutletBaristasMap] = useState<Map<string, Barista>>(new Map());
  const [baristasLoading, setBaristasLoading] = useState(false);

  const [showProductsModal, setShowProductsModal] = useState(false);
  const [selectedOutletForProducts, setSelectedOutletForProducts] = useState<string | null>(null);
  const [products, setProducts] = useState<Product[]>([]);
  const [productsLoading, setProductsLoading] = useState(false);

  const [showDetailsModal, setShowDetailsModal] = useState(false);
  const [selectedOutletForDetails, setSelectedOutletForDetails] = useState<string | null>(null);
  const [outletDetails, setOutletDetails] = useState<OutletDetails | null>(null);
  const [detailsLoading, setDetailsLoading] = useState(false);

  const fetchOutlets = useCallback(async () => {
    try {
      setLoading(true);
      setError(null);

      const res = await fetch('/api/outlets');
      if (!res.ok) {
        throw new Error(`HTTP error! status: ${res.status}`);
      }

      const data = await res.json();
      setOutlets(Array.isArray(data) ? data : []);
      console.log('Outlets fetched:', data);

      try {
        const baristasRes = await fetch('/api/staff?role=barista');
        if (baristasRes.ok) {
          const baristasData = await baristasRes.json();
          
          const assignedIds = new Set<string>();
          const baristasByOutlet = new Map<string, Barista>();
          
          baristasData.forEach((barista: Barista) => {
            if (barista.outlet_id) {
              assignedIds.add(barista.id);
              baristasByOutlet.set(barista.outlet_id, barista);
            }
          });
          
          setAssignedBaristas(assignedIds);
          setOutletBaristasMap(baristasByOutlet);
        }
      } catch (error) {
        console.error('Failed to fetch baristas on load:', error);
      }
    } catch (error) {
      console.error('Failed to fetch outlets:', error);
      setError('Failed to load outlets');
      setOutlets([]);
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    void fetchOutlets();
  }, [fetchOutlets]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setError(null);
      setSuccess(null);

      if (!formData.name || !formData.type) {
        setError('Please fill in all required fields');
        return;
      }

      const method = editingId ? 'PUT' : 'POST';
      const body = editingId
        ? { id: editingId, ...formData }
        : formData;

      console.log('Submitting outlet form:', { method, body });

      const res = await fetch('/api/outlets', {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body)
      });

      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || `HTTP ${res.status}`);
      }

      await fetchOutlets();
      setSuccess(editingId ? 'Outlet updated successfully!' : 'Outlet created successfully!');
      setFormData({ name: '', type: 'e-trike', address: '' });
      setEditingId(null);
      setShowForm(false);
      setTimeout(() => setSuccess(null), 3000);
    } catch (error) {
      const errorMsg = error instanceof Error ? error.message : 'Unknown error';
      console.error('Failed to save outlet:', errorMsg);
      setError(`Failed to save: ${errorMsg}`);
    }
  };

  const handleEdit = (outlet: Outlet) => {
    setEditingId(outlet.id);
    setFormData({
      name: outlet.name,
      type: outlet.type,
      address: outlet.address || ''
    });
    setShowForm(true);
  };

  const handleDelete = async (id: string) => {
    if (!confirm('Are you sure you want to delete this outlet?')) return;
    try {
      const res = await fetch(`/api/outlets?id=${id}`, { method: 'DELETE' });
      if (!res.ok) throw new Error('Delete failed');
      await fetchOutlets();
    } catch (error) {
      console.error('Failed to delete outlet:', error);
      setError('Failed to delete outlet');
    }
  };

  const fetchBaristas = useCallback(async (outletIdParam: string) => {
    try {
      setBaristasLoading(true);
      const res = await fetch('/api/staff?role=barista');
      if (!res.ok) throw new Error('Failed to fetch baristas');
      const allBaristas = await res.json();

      const assignedRes = await fetch(`/api/outlets/${outletIdParam}/baristas`);
      const assignedBaristaList = assignedRes.ok ? await assignedRes.json() : [];
      const outletBaristaObj = assignedBaristaList.length > 0 ? assignedBaristaList[0] : null;

      const assignedIds = new Set<string>();
      allBaristas.forEach((barista: Barista & { outlet_id?: string }) => {
        if (barista.outlet_id) {
          assignedIds.add(barista.id);
        }
      });

      setBaristas(Array.isArray(allBaristas) ? allBaristas : []);
      setAssignedBaristas(assignedIds);
      setOutletBarista(outletBaristaObj);
    } catch (error) {
      console.error('Failed to fetch baristas:', error);
    } finally {
      setBaristasLoading(false);
    }
  }, []);

  const handleOpenAssignModal = (outletId: string) => {
    setError('');
    setSelectedOutletId(outletId);
    setShowAssignModal(true);
    void fetchBaristas(outletId);
  };

  const handleAssignBarista = async (baristaId: string) => {
    if (!selectedOutletId) return;
    try {
      const res = await fetch(`/api/outlets/${selectedOutletId}/baristas`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ barista_id: baristaId })
      });

      const data = await res.json();
      
      if (!res.ok) {
        console.error('Assign barista response:', data);
        throw new Error(data.error || 'Failed to assign barista');
      }
      
      const assignedBarista: Barista = {
        id: data.id,
        name: data.name,
        email: data.email,
        outlet_id: data.outlet_id
      };
      
      setOutletBaristasMap(prev => new Map(prev).set(selectedOutletId, assignedBarista));
      setAssignedBaristas(prev => new Set(prev).add(baristaId));
      
      await fetchBaristas(selectedOutletId);
    } catch (error) {
      console.error('Failed to assign barista:', error);
      setError(error instanceof Error ? error.message : 'Failed to assign barista');
    }
  };

  const handleRemoveBarista = async (outletIdToRemove: string, baristaId: string) => {
    try {
      const res = await fetch(`/api/outlets/${outletIdToRemove}/baristas/${baristaId}`, {
        method: 'DELETE'
      });

      if (!res.ok) throw new Error('Failed to remove barista');
      
      setOutletBaristasMap(prev => {
        const newMap = new Map(prev);
        newMap.delete(outletIdToRemove);
        return new Map(newMap);
      });

      setAssignedBaristas(prev => {
        const newSet = new Set(prev);
        newSet.delete(baristaId);
        return new Set(newSet);
      });

      if (selectedOutletId === outletIdToRemove) {
        await fetchBaristas(outletIdToRemove);
      }
    } catch (error) {
      console.error('Failed to remove barista:', error);
      setError('Failed to remove barista');
    }
  };

  const fetchProducts = useCallback(async (outletIdParam: string) => {
    try {
      setProductsLoading(true);
      const res = await fetch(`/api/outlets/${outletIdParam}/products`);
      if (!res.ok) throw new Error('Failed to fetch products');
      const data = await res.json();
      setProducts(data.products || []);
    } catch (error) {
      console.error('Failed to fetch products:', error);
      setError('Failed to load products');
    } finally {
      setProductsLoading(false);
    }
  }, []);

  const handleOpenProductsModal = (outletId: string) => {
    setError('');
    setSelectedOutletForProducts(outletId);
    setShowProductsModal(true);
    void fetchProducts(outletId);
  };

  const fetchDetails = useCallback(async (outletIdParam: string) => {
    try {
      setDetailsLoading(true);
      const res = await fetch(`/api/outlets/${outletIdParam}/details`);
      if (!res.ok) throw new Error('Failed to fetch details');
      const data = await res.json();
      setOutletDetails(data);
    } catch (error) {
      console.error('Failed to fetch details:', error);
      setError('Failed to load details');
    } finally {
      setDetailsLoading(false);
    }
  }, []);

  const handleOpenDetailsModal = (outletId: string) => {
    setError('');
    setSelectedOutletForDetails(outletId);
    setShowDetailsModal(true);
    void fetchDetails(outletId);
  };

  const outletTypes = ['e-trike', 'coffee_stand'];

  if (loading) {
    return <div className="p-6 text-center">Loading outlets...</div>;
  }

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <Building2 size={32} className="text-[#F59E0B]" />
          <h1 className="text-3xl font-bold text-[#1F4E5F]">Outlets</h1>
        </div>
      </div>

      {error && (
        <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded-lg">
          {error}
        </div>
      )}

      {success && (
        <div className="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded-lg">
          {success}
        </div>
      )}

      {showForm && (
        <div className="bg-white p-6 rounded-lg shadow-md">
          <h2 className="text-lg font-semibold mb-4">{editingId ? 'Edit Outlet' : 'Add New Outlet'}</h2>
          <form onSubmit={handleSubmit} className="space-y-4 max-w-md">
            <div>
              <label className="block text-sm font-medium mb-1">Outlet Name *</label>
              <input
                type="text"
                placeholder="e.g., Gerobak Kopi 1"
                value={formData.name}
                onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                required
                className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500"
              />
            </div>

            <div>
              <label className="block text-sm font-medium mb-1">Type *</label>
              <select
                value={formData.type}
                onChange={(e) => setFormData({ ...formData, type: e.target.value })}
                className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500"
              >
                {outletTypes.map(type => (
                  <option key={type} value={type}>
                    {type.charAt(0).toUpperCase() + type.slice(1)}
                  </option>
                ))}
              </select>
            </div>

            <div>
              <label className="block text-sm font-medium mb-1">Address</label>
              <textarea
                placeholder="Outlet address"
                value={formData.address}
                onChange={(e) => setFormData({ ...formData, address: e.target.value })}
                rows={3}
                className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500"
              />
            </div>

            <div className="flex gap-2">
              <button
                type="submit"
                className="flex-1 bg-gradient-to-r from-[#F59E0B] to-[#FFB703] hover:from-[#E67E22] hover:to-[#F59E0B] text-white px-4 py-2 rounded-lg font-medium transition shadow-lg shadow-[#F59E0B]/30"
              >
                {editingId ? 'Update' : 'Create'} Outlet
              </button>
              <button
                type="button"
                onClick={() => {
                  setShowForm(false);
                  setEditingId(null);
                  setFormData({ name: '', type: 'e-trike', address: '' });
                }}
                className="flex-1 bg-gray-300 hover:bg-gray-400 text-gray-800 px-4 py-2 rounded-lg font-medium transition"
              >
                Cancel
              </button>
            </div>
          </form>
        </div>
      )}

      <button
        onClick={() => {
          setEditingId(null);
          setFormData({ name: '', type: 'e-trike', address: '' });
          setShowForm(!showForm);
        }}
        className="bg-gradient-to-r from-[#F59E0B] to-[#FFB703] hover:from-[#E67E22] hover:to-[#F59E0B] text-white px-4 py-2 rounded-lg flex items-center gap-2 transition shadow-lg shadow-[#F59E0B]/30"
      >
        <Plus size={20} />
        Add Outlet
      </button>

      {outlets.length === 0 ? (
        <div className="text-center py-12">
          <Building2 size={48} className="mx-auto text-gray-300 mb-4" />
          <p className="text-gray-500">No outlets yet. Create one to get started.</p>
        </div>
      ) : (
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
          {outlets.map(outlet => (
            <div key={outlet.id} className="bg-white rounded-2xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow duration-300">
              <div className="bg-gradient-to-r from-[#1F4E5F] via-[#2C6E7F] to-[#1F4E5F] p-4">
                <div className="flex items-center justify-between">
                  <div className="bg-white/20 p-2 rounded-lg">
                    <Building2 size={24} className="text-white" />
                  </div>
                  {outlet.id === outletId && (
                    <span className="bg-white/20 text-white text-xs px-3 py-1 rounded-full font-medium backdrop-blur">
                      Active
                    </span>
                  )}
                </div>
                <h3 className="text-xl font-bold text-white mt-3">{outlet.name}</h3>
                <div className="flex items-center gap-2 text-white/80 text-sm mt-1">
                  <Tag size={14} />
                  <span className="capitalize">{outlet.type.replace('_', ' ')}</span>
                </div>
              </div>

              <div className="p-5 space-y-4">
                {outlet.address && (
                  <div className="flex gap-2 text-sm text-gray-600">
                    <MapPin size={16} className="text-amber-600 shrink-0 mt-0.5" />
                    <p className="line-clamp-2">{outlet.address}</p>
                  </div>
                )}

                <div className="bg-gray-50 rounded-xl p-4">
                  <div className="flex items-center justify-between mb-2">
                    <div className="flex items-center gap-2">
                      <Users size={16} className="text-amber-600" />
                      <p className="font-semibold text-sm text-gray-700">Barista</p>
                    </div>
                    {outletBaristasMap.get(outlet.id) && (
                      <button
                        onClick={() => handleRemoveBarista(outlet.id, outletBaristasMap.get(outlet.id)!.id)}
                        className="text-gray-400 hover:text-red-500 transition-colors"
                        title="Remove barista"
                      >
                        <X size={14} />
                      </button>
                    )}
                  </div>
                  {outletBaristasMap.get(outlet.id) ? (
                    <div className="bg-amber-100 text-amber-800 px-3 py-2 rounded-lg text-sm font-medium">
                      {outletBaristasMap.get(outlet.id)?.name}
                    </div>
                  ) : (
                    <p className="text-xs text-gray-400">No barista assigned</p>
                  )}
                </div>

                <p className="text-xs text-gray-400">
                  Created {new Date(outlet.created_at).toLocaleDateString('id-ID')}
                </p>

                <div className="grid grid-cols-2 gap-2 pt-2">
                  <button
                    onClick={() => router.push(`/dashboard/outlets/${outlet.id}`)}
                    className="bg-gradient-to-r from-[#F59E0B] to-[#FFB703] hover:from-[#E67E22] hover:to-[#F59E0B] text-white px-3 py-2.5 rounded-xl flex items-center justify-center gap-2 font-medium transition-all hover:scale-105 active:scale-95 shadow-lg shadow-[#F59E0B]/30"
                  >
                    <Info size={16} />
                    Detail
                  </button>
                  <button
                    onClick={() => handleOpenProductsModal(outlet.id)}
                    className="bg-purple-500 hover:bg-purple-600 text-white px-3 py-2.5 rounded-xl flex items-center justify-center gap-2 font-medium transition-all hover:scale-105 active:scale-95"
                  >
                    <ShoppingBag size={16} />
                    Products
                  </button>
                  <button
                    onClick={() => handleOpenAssignModal(outlet.id)}
                    className="bg-emerald-500 hover:bg-emerald-600 text-white px-3 py-2.5 rounded-xl flex items-center justify-center gap-2 font-medium transition-all hover:scale-105 active:scale-95"
                  >
                    <Users size={16} />
                    Barista
                  </button>
                  <button
                    onClick={() => handleEdit(outlet)}
                    className="bg-blue-500 hover:bg-blue-600 text-white px-3 py-2.5 rounded-xl flex items-center justify-center gap-2 font-medium transition-all hover:scale-105 active:scale-95"
                  >
                    <Edit2 size={16} />
                    Edit
                  </button>
                </div>

                <button
                  onClick={() => handleDelete(outlet.id)}
                  className="w-full mt-1 bg-red-50 hover:bg-red-100 text-red-600 px-3 py-2 rounded-xl flex items-center justify-center gap-2 font-medium transition-all"
                >
                  <Trash2 size={16} />
                  Delete Outlet
                </button>
              </div>
            </div>
          ))}
        </div>
      )}

      {showAssignModal && selectedOutletId && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-md w-full mx-4">
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-xl font-semibold">Assign Barista to {outlets.find(o => o.id === selectedOutletId)?.name}</h3>
              <button
                onClick={() => setShowAssignModal(false)}
                className="text-gray-500 hover:text-gray-700"
              >
                <X size={24} />
              </button>
            </div>

            {error && (
              <div className="mb-4 p-3 bg-red-50 text-red-700 rounded-lg text-sm">
                {error}
              </div>
            )}

            {baristasLoading ? (
              <div className="text-center py-4">Loading baristas...</div>
            ) : (
              <div className="space-y-2 max-h-96 overflow-y-auto">
                {baristas.length === 0 ? (
                  <p className="text-gray-500 text-center py-4">No baristas available</p>
                ) : (
                  baristas.map((barista: Barista) => {
                    const isAssignedToAnotherOutlet = assignedBaristas.has(barista.id);
                    const isAssignedToThisOutlet = outletBarista?.id === barista.id;
                    const isDisabled = isAssignedToAnotherOutlet || isAssignedToThisOutlet;
                    
                    return (
                      <button
                        key={barista.id}
                        onClick={() => !isDisabled && handleAssignBarista(barista.id)}
                        disabled={isDisabled}
                        className={`w-full text-left px-4 py-3 rounded-lg transition ${
                          isDisabled
                            ? 'bg-gray-100 text-gray-500 cursor-not-allowed'
                            : 'bg-gray-50 hover:bg-gray-100 text-gray-800 cursor-pointer'
                        }`}
                      >
                        <div className="font-medium">{barista.name}</div>
                        <div className="text-sm text-gray-500">{barista.email}</div>
                        {isAssignedToAnotherOutlet && !isAssignedToThisOutlet && (
                          <div className="text-xs text-amber-600 mt-1">Already assigned to another outlet</div>
                        )}
                        {isAssignedToThisOutlet && (
                          <div className="text-xs text-green-600 mt-1">✓ Assigned to this outlet</div>
                        )}
                      </button>
                    );
                  })
                )}
              </div>
            )}

            <button
              onClick={() => setShowAssignModal(false)}
              className="w-full mt-4 bg-gray-300 hover:bg-gray-400 text-gray-800 px-4 py-2 rounded-lg font-medium transition"
            >
              Close
            </button>
          </div>
        </div>
      )}

      {showProductsModal && selectedOutletForProducts && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-2xl w-full mx-4 max-h-[80vh] overflow-y-auto">
            <div className="flex items-center justify-between mb-4 sticky top-0 bg-white">
              <h3 className="text-xl font-semibold">Products - {outlets.find(o => o.id === selectedOutletForProducts)?.name}</h3>
              <button
                onClick={() => setShowProductsModal(false)}
                className="text-gray-500 hover:text-gray-700"
              >
                <X size={24} />
              </button>
            </div>

            {productsLoading ? (
              <div className="text-center py-8">Loading products...</div>
            ) : (
              <div className="space-y-3">
                {products.length === 0 ? (
                  <p className="text-gray-500 text-center py-8">No products available</p>
                ) : (
                  products.map((product: Product) => (
                    <div key={product.id} className={`p-4 rounded-lg border-2 ${
                      product.can_make 
                        ? 'border-green-200 bg-green-50' 
                        : 'border-red-200 bg-red-50'
                    }`}>
                      <div className="flex items-start justify-between mb-2">
                        <div className="flex-1">
                          <h4 className="font-semibold text-gray-800">{product.name}</h4>
                          {product.category && (
                            <p className="text-sm text-gray-600">{product.category.name}</p>
                          )}
                          <p className="text-sm font-medium text-amber-700 mt-1">
                            Stok: {product.available_quantity || 0}
                          </p>
                        </div>
                        <span className={`px-3 py-1 rounded-full text-sm font-medium whitespace-nowrap ml-2 ${
                          product.can_make
                            ? 'bg-green-200 text-green-800'
                            : 'bg-red-200 text-red-800'
                        }`}>
                          {product.can_make ? '✓ Available' : '✗ Out of Stock'}
                        </span>
                      </div>

                      {product.ingredient_details && product.ingredient_details.length > 0 && (
                        <div className="mt-3 pt-3 border-t text-sm">
                          <p className="font-medium text-gray-700 mb-2">Ingredients:</p>
                          <div className="space-y-1">
                            {product.ingredient_details.map((ing, idx) => (
                              <div key={idx} className="flex justify-between text-gray-600">
                                <span className="text-xs">Ingredient ID: {ing.ingredient_id}</span>
                                <span className={`text-xs font-medium ${
                                  ing.available >= ing.required
                                    ? 'text-green-700'
                                    : 'text-red-700'
                                }`}>
                                  {ing.available}/{ing.required} units
                                </span>
                              </div>
                            ))}
                          </div>
                        </div>
                      )}
                    </div>
                  ))
                )}
              </div>
            )}

            <button
              onClick={() => setShowProductsModal(false)}
              className="w-full mt-6 bg-gray-300 hover:bg-gray-400 text-gray-800 px-4 py-2 rounded-lg font-medium transition"
            >
              Close
            </button>
          </div>
        </div>
      )}

      {showDetailsModal && selectedOutletForDetails && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg p-6 max-w-3xl w-full mx-4 max-h-[85vh] overflow-y-auto">
            <div className="flex items-center justify-between mb-4 sticky top-0 bg-white pb-4 border-b">
              <h3 className="text-xl font-semibold">Detail - {outlets.find(o => o.id === selectedOutletForDetails)?.name}</h3>
              <button
                onClick={() => setShowDetailsModal(false)}
                className="text-gray-500 hover:text-gray-700"
              >
                <X size={24} />
              </button>
            </div>

            {detailsLoading ? (
              <div className="text-center py-8">Loading details...</div>
            ) : outletDetails ? (
              <div className="space-y-6">
                <div className="bg-amber-50 p-4 rounded-lg">
                  <h4 className="font-semibold flex items-center gap-2 mb-3">
                    <DollarSign size={18} className="text-amber-600" />
                    Sales Summary
                  </h4>
                  <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Total Revenue</p>
                      <p className="text-lg font-bold text-green-700">Rp {outletDetails.sales_summary.total_revenue.toLocaleString('id-ID')}</p>
                    </div>
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Today's Revenue</p>
                      <p className="text-lg font-bold text-amber-700">Rp {outletDetails.sales_summary.today_revenue.toLocaleString('id-ID')}</p>
                    </div>
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Total Profit</p>
                      <p className="text-lg font-bold text-blue-700">Rp {outletDetails.sales_summary.total_profit.toLocaleString('id-ID')}</p>
                    </div>
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Total Bonus</p>
                      <p className="text-lg font-bold text-purple-700">Rp {outletDetails.sales_summary.total_bonus.toLocaleString('id-ID')}</p>
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-4 mt-3">
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Transactions</p>
                      <p className="text-lg font-bold">{outletDetails.sales_summary.total_transactions}</p>
                    </div>
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Today's Transactions</p>
                      <p className="text-lg font-bold">{outletDetails.sales_summary.today_transactions}</p>
                    </div>
                  </div>
                </div>

                {outletDetails.product_batches && outletDetails.product_batches.length > 0 && (
                  <div className="bg-blue-50 p-4 rounded-lg">
                    <h4 className="font-semibold flex items-center gap-2 mb-3">
                      <Package size={18} className="text-blue-600" />
                      Available Products
                    </h4>
                    <div className="space-y-2">
                      {outletDetails.product_batches.map((batch, idx) => (
                        <div key={idx} className="bg-white p-3 rounded shadow-sm flex justify-between items-center">
                          <div>
                            <p className="font-medium">{batch.product_name}</p>
                            <p className="text-xs text-gray-500">Batch: {batch.batch_code}</p>
                          </div>
                          <div className="text-right">
                            <p className="text-lg font-bold text-amber-700">{batch.quantity}</p>
                            <p className="text-xs text-gray-500">units</p>
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                )}

                {outletDetails.product_sales && outletDetails.product_sales.length > 0 && (
                  <div className="bg-green-50 p-4 rounded-lg">
                    <h4 className="font-semibold flex items-center gap-2 mb-3">
                      <TrendingUp size={18} className="text-green-600" />
                      Product Sales
                    </h4>
                    <div className="space-y-2">
                      {outletDetails.product_sales.slice(0, 5).map((sale, idx) => (
                        <div key={idx} className="bg-white p-3 rounded shadow-sm flex justify-between items-center">
                          <div>
                            <p className="font-medium">{sale.product_name}</p>
                            <p className="text-xs text-gray-500">{sale.quantity} sold</p>
                          </div>
                          <div className="text-right">
                            <p className="font-bold text-green-700">Rp {sale.revenue.toLocaleString('id-ID')}</p>
                          </div>
                        </div>
                      ))}
                    </div>
                  </div>
                )}

                <div className="bg-gray-50 p-4 rounded-lg">
                  <h4 className="font-semibold mb-3">Payment Methods</h4>
                  <div className="grid grid-cols-2 gap-4">
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">Cash</p>
                      <p className="text-lg font-bold">Rp {outletDetails.sales_summary.cash_revenue.toLocaleString('id-ID')}</p>
                    </div>
                    <div className="bg-white p-3 rounded shadow-sm">
                      <p className="text-xs text-gray-500">QRIS</p>
                      <p className="text-lg font-bold">Rp {outletDetails.sales_summary.qris_revenue.toLocaleString('id-ID')}</p>
                    </div>
                  </div>
                </div>
              </div>
            ) : (
              <p className="text-gray-500 text-center py-8">No details available</p>
            )}

            <button
              onClick={() => setShowDetailsModal(false)}
              className="w-full mt-6 bg-gray-300 hover:bg-gray-400 text-gray-800 px-4 py-2 rounded-lg font-medium transition"
            >
              Close
            </button>
          </div>
        </div>
      )}
    </div>
  );
}
