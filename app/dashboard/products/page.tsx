'use client';

import { useState, useEffect } from 'react';
import { ShoppingCart, Plus, Trash2, Edit2, X, Eye, Upload } from 'lucide-react';

interface Category {
  id: string;
  name: string;
}

interface Ingredient {
  id: string;
  name: string;
  unit: string;
  cost: number;
}

interface ProductIngredient {
  ingredient_id: string;
  quantity: number;
  ingredient?: Ingredient;
}

interface Product {
  id: string;
  name: string;
  price: number;
  category_id: string | null;
  category?: Category;
  product_ingredients?: ProductIngredient[];
  hpp?: string;
  margin?: string;
  image_url?: string;
}

export default function ProductsPage() {
  const [activeTab, setActiveTab] = useState<'products' | 'categories' | 'ingredients'>('products');
  const [categories, setCategories] = useState<Category[]>([]);
  const [ingredients, setIngredients] = useState<Ingredient[]>([]);
  const [products, setProducts] = useState<Product[]>([]);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');
  const [selectedProduct, setSelectedProduct] = useState<Product | null>(null);
  const [showModal, setShowModal] = useState(false);
  const [uploadingImageId, setUploadingImageId] = useState<string | null>(null);

  // Form states
  const [formData, setFormData] = useState({
    name: '',
    unit: '',
    cost: '',
    category_id: '',
    price: '',
    selectedIngredients: [] as Array<{ ingredient_id: string; quantity: number }>,
  });

  const fetchData = async () => {
    try {
      setLoading(true);
      const [categoriesRes, ingredientsRes, productsRes] = await Promise.all([
        fetch('/api/categories'),
        fetch('/api/ingredients'),
        fetch('/api/products'),
      ]);

      if (categoriesRes.ok) setCategories(await categoriesRes.json());
      if (ingredientsRes.ok) setIngredients(await ingredientsRes.json());
      if (productsRes.ok) setProducts(await productsRes.json());
    } catch (err) {
      setError('Failed to fetch data');
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const t = setTimeout(() => {
      fetchData();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  const resetForm = () => {
    setFormData({
      name: '',
      unit: '',
      cost: '',
      category_id: '',
      price: '',
      selectedIngredients: [],
    });
    setEditingId(null);
    setShowForm(false);
    setError('');
  };

  const handleFormChange = (e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const handleAddIngredient = (ingredientId: string) => {
    if (ingredientId && !formData.selectedIngredients.find(si => si.ingredient_id === ingredientId)) {
      setFormData(prev => ({
        ...prev,
        selectedIngredients: [...prev.selectedIngredients, { ingredient_id: ingredientId, quantity: 1 }],
      }));
    }
  };

  const handleRemoveIngredient = (ingredientId: string) => {
    setFormData(prev => ({
      ...prev,
      selectedIngredients: prev.selectedIngredients.filter(si => si.ingredient_id !== ingredientId),
    }));
  };

  const handleIngredientQuantity = (ingredientId: string, quantity: number) => {
    setFormData(prev => ({
      ...prev,
      selectedIngredients: prev.selectedIngredients.map(si =>
        si.ingredient_id === ingredientId ? { ...si, quantity } : si
      ),
    }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setError('');

    try {
      if (activeTab === 'categories') {
        const endpoint = editingId ? '/api/categories' : '/api/categories';
        const method = editingId ? 'PUT' : 'POST';
        const body = editingId ? { id: editingId, name: formData.name } : { name: formData.name };

        const res = await fetch(endpoint, { method, headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) });
        if (!res.ok) throw new Error('Failed to save category');
      } else if (activeTab === 'ingredients') {
        const endpoint = editingId ? '/api/ingredients' : '/api/ingredients';
        const method = editingId ? 'PUT' : 'POST';
        const body = editingId
          ? { id: editingId, name: formData.name, unit: formData.unit, cost: parseFloat(formData.cost) }
          : { name: formData.name, unit: formData.unit, cost: parseFloat(formData.cost) };

        const res = await fetch(endpoint, { method, headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) });
        if (!res.ok) throw new Error('Failed to save ingredient');
      } else if (activeTab === 'products') {
        const endpoint = editingId ? '/api/products' : '/api/products';
        const method = editingId ? 'PUT' : 'POST';
        const body = editingId
          ? {
              id: editingId,
              name: formData.name,
              category_id: formData.category_id || null,
              price: parseFloat(formData.price),
              ingredients: formData.selectedIngredients,
            }
          : {
              name: formData.name,
              category_id: formData.category_id || null,
              price: parseFloat(formData.price),
              ingredients: formData.selectedIngredients,
            };

        const res = await fetch(endpoint, { method, headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(body) });
        if (!res.ok) throw new Error('Failed to save product');
      }

      fetchData();
      resetForm();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error saving');
      console.error(err);
    }
  };

  const handleDelete = async (id: string) => {
    if (!confirm('Are you sure?')) return;
    try {
      const endpoint = activeTab === 'categories'
        ? `/api/categories?id=${id}`
        : activeTab === 'ingredients'
        ? `/api/ingredients?id=${id}`
        : `/api/products?id=${id}`;

      const res = await fetch(endpoint, { method: 'DELETE' });
      if (!res.ok) throw new Error('Failed to delete');
      fetchData();
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error deleting');
    }
  };

  const handleEdit = (item: Category | Ingredient | Product) => {
    if (activeTab === 'categories') {
      const categoryItem = item as Category;
      setFormData(prev => ({ ...prev, name: categoryItem.name }));
    } else if (activeTab === 'ingredients') {
      const ingredientItem = item as Ingredient;
      setFormData(prev => ({ ...prev, name: ingredientItem.name, unit: ingredientItem.unit, cost: ingredientItem.cost.toString() }));
    } else if (activeTab === 'products') {
      const productItem = item as Product;
      setFormData(prev => ({
        ...prev,
        name: productItem.name,
        category_id: productItem.category_id || '',
        price: productItem.price.toString(),
        selectedIngredients: (productItem.product_ingredients || []).map((pi: ProductIngredient) => ({
          ingredient_id: pi.ingredient_id,
          quantity: pi.quantity,
        })),
      }));
    }
    setEditingId(item.id);
    setShowForm(true);
  };

  const handleImageUpload = async (productId: string, file: File | null) => {
    if (!file) return;

    try {
      setUploadingImageId(productId);
      const formData = new FormData();
      formData.append('productId', productId);
      formData.append('file', file);

      const res = await fetch('/api/products/upload-image', {
        method: 'POST',
        body: formData,
      });

      const data = await res.json();
      if (!res.ok) throw new Error(data.error || 'Failed to upload image');

      await fetchData();
      setError('');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to upload image');
    } finally {
      setUploadingImageId(null);
    }
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <ShoppingCart size={32} className="text-amber-600" />
        <h1 className="text-3xl font-bold">Products & Menu</h1>
      </div>

      {error && <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded-lg">{error}</div>}

      {/* Tabs */}
      <div className="bg-white rounded-lg shadow-md">
        <div className="flex border-b">
          {[
            { id: 'products', label: 'Products' },
            { id: 'categories', label: 'Categories' },
            { id: 'ingredients', label: 'Ingredients' }
          ].map(tab => (
            <button
              key={tab.id}
              onClick={() => {
                setActiveTab(tab.id as 'products' | 'categories' | 'ingredients');
                resetForm();
              }}
              className={`flex-1 px-6 py-4 font-medium border-b-2 transition ${
                activeTab === tab.id
                  ? 'border-amber-600 text-amber-600'
                  : 'border-transparent text-gray-600 hover:text-gray-800'
              }`}
            >
              {tab.label}
            </button>
          ))}
        </div>

        <div className="p-6">
          <div className="flex justify-between items-center mb-6">
            <h2 className="text-lg font-semibold">
              {activeTab === 'products' && 'Manage Products'}
              {activeTab === 'categories' && 'Manage Categories'}
              {activeTab === 'ingredients' && 'Manage Ingredients'}
            </h2>
            <button
              onClick={() => { resetForm(); setShowForm(true); }}
              className="flex bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg items-center gap-2"
            >
              <Plus size={20} />
              Add New
            </button>
          </div>

          {loading && <div className="text-center py-8 text-gray-500">Loading...</div>}

          {showForm && (
            <div className="bg-gray-50 p-6 rounded-lg mb-6 border border-gray-200 space-y-4">
              <div className="flex justify-between items-center">
                <h3 className="text-lg font-semibold">
                  {editingId ? 'Edit' : 'Add'} {activeTab === 'products' ? 'Product' : activeTab === 'categories' ? 'Category' : 'Ingredient'}
                </h3>
                <button onClick={resetForm} className="text-gray-500 hover:text-gray-700">
                  <X size={20} />
                </button>
              </div>

              <form onSubmit={handleSubmit} className="space-y-4">
                {activeTab === 'categories' && (
                  <input
                    name="name"
                    placeholder="Category Name"
                    value={formData.name}
                    onChange={handleFormChange}
                    required
                    className="w-full px-4 py-2 border rounded-lg"
                  />
                )}

                {activeTab === 'ingredients' && (
                  <>
                    <input
                      name="name"
                      placeholder="Ingredient Name"
                      value={formData.name}
                      onChange={handleFormChange}
                      required
                      className="w-full px-4 py-2 border rounded-lg"
                    />
                    <input
                      name="unit"
                      placeholder="Unit (e.g., kg, ml, pcs)"
                      value={formData.unit}
                      onChange={handleFormChange}
                      required
                      className="w-full px-4 py-2 border rounded-lg"
                    />
                    <input
                      name="cost"
                      placeholder="Cost (Harga Satuan)"
                      type="number"
                      step="0.01"
                      value={formData.cost}
                      onChange={handleFormChange}
                      required
                      className="w-full px-4 py-2 border rounded-lg"
                    />
                  </>
                )}

                {activeTab === 'products' && (
                  <>
                    <input
                      name="name"
                      placeholder="Product Name"
                      value={formData.name}
                      onChange={handleFormChange}
                      required
                      className="w-full px-4 py-2 border rounded-lg"
                    />
                    <select
                      name="category_id"
                      value={formData.category_id}
                      onChange={handleFormChange}
                      className="w-full px-4 py-2 border rounded-lg"
                    >
                      <option value="">Select Category (Optional)</option>
                      {categories.map(cat => (
                        <option key={cat.id} value={cat.id}>{cat.name}</option>
                      ))}
                    </select>
                    <input
                      name="price"
                      placeholder="Selling Price"
                      type="number"
                      step="0.01"
                      value={formData.price}
                      onChange={handleFormChange}
                      required
                      className="w-full px-4 py-2 border rounded-lg"
                    />

                    {/* Ingredients Selection */}
                    <div className="border border-amber-200 rounded-lg p-4 bg-amber-50">
                      <h4 className="font-semibold mb-4 text-amber-900">📋 Resep Produk (Select Ingredients)</h4>
                      
                      {/* Available Ingredients */}
                      <div className="mb-4">
                        <label className="text-xs font-semibold text-gray-600 uppercase">Pilih Ingredients:</label>
                        <div className="grid grid-cols-1 gap-2 mt-2 max-h-48 overflow-y-auto">
                          {ingredients.length === 0 ? (
                            <p className="text-sm text-gray-500 italic">No ingredients yet. Create one first.</p>
                          ) : (
                            ingredients.map(ing => (
                              <label key={ing.id} className="flex items-center gap-3 p-2 bg-white rounded border hover:border-amber-400 cursor-pointer transition">
                                <input
                                  type="checkbox"
                                  checked={formData.selectedIngredients.some(si => si.ingredient_id === ing.id)}
                                  onChange={(e) => {
                                    if (e.target.checked) handleAddIngredient(ing.id);
                                    else handleRemoveIngredient(ing.id);
                                  }}
                                  className="rounded w-4 h-4 accent-amber-600"
                                />
                                <div className="flex-1">
                                  <div className="font-medium text-sm">{ing.name}</div>
                                  <div className="text-xs text-gray-500">{ing.unit} • Rp {ing.cost.toLocaleString('id-ID')}/{ing.unit}</div>
                                </div>
                              </label>
                            ))
                          )}
                        </div>
                      </div>

                      {/* Selected Ingredients with Quantities */}
                      {formData.selectedIngredients.length > 0 && (
                        <div className="border-t border-amber-200 pt-4">
                          <label className="text-xs font-semibold text-gray-600 uppercase block mb-3">Jumlah per Produk:</label>
                          <div className="space-y-3">
                            {formData.selectedIngredients.map(si => {
                              const ing = ingredients.find(i => i.id === si.ingredient_id);
                              const hppPortion = (ing?.cost || 0) * si.quantity;
                              return (
                                <div key={si.ingredient_id} className="flex items-center gap-3 p-3 bg-white rounded border border-amber-200">
                                  <button
                                    type="button"
                                    onClick={() => handleRemoveIngredient(si.ingredient_id)}
                                    className="text-red-500 hover:text-red-700 shrink-0"
                                  >
                                    <Trash2 size={16} />
                                  </button>
                                  <div className="flex-1">
                                    <div className="font-medium text-sm">{ing?.name}</div>
                                    <div className="text-xs text-gray-500">Cost: Rp {hppPortion.toLocaleString('id-ID')}</div>
                                  </div>
                                  <div className="flex items-center gap-1">
                                    <input
                                      type="number"
                                      step="0.01"
                                      value={si.quantity}
                                      onChange={(e) => handleIngredientQuantity(si.ingredient_id, parseFloat(e.target.value) || 0)}
                                      placeholder="0"
                                      className="w-24 px-3 py-2 border border-gray-300 rounded text-sm font-medium"
                                    />
                                    <span className="text-sm font-medium text-gray-700 min-w-fit">{ing?.unit}</span>
                                  </div>
                                </div>
                              );
                            })}
                          </div>
                        </div>
                      )}
                    </div>
                  </>
                )}

                <div className="flex gap-2">
                  <button type="submit" className="bg-green-600 hover:bg-green-700 text-white px-4 py-2 rounded-lg">
                    Save
                  </button>
                  <button type="button" onClick={resetForm} className="bg-gray-400 hover:bg-gray-500 text-white px-4 py-2 rounded-lg">
                    Cancel
                  </button>
                </div>
              </form>
            </div>
          )}

          {/* Lists */}
          {!loading && (
            <>
              {activeTab === 'products' ? (
                <div className="grid grid-cols-1 gap-6 md:grid-cols-2 xl:grid-cols-4">
                  {products.length === 0 ? (
                    <div className="rounded-2xl border border-dashed border-gray-300 bg-gray-50 p-8 text-center text-gray-500 md:col-span-2 xl:col-span-3">
                      No products yet
                    </div>
                  ) : (
                    products.map(product => (
                      <div
                        key={product.id}
                        className="group relative h-96 overflow-hidden rounded-2xl border border-gray-200 bg-white shadow-sm transition duration-200 hover:-translate-y-1 hover:shadow-lg"
                      >
                        {product.image_url ? (
                          <img
                            src={product.image_url}
                            alt={product.name}
                            className="absolute inset-0 h-full w-full object-cover object-center transition duration-300 group-hover:scale-105"
                            onError={(e) => {
                              e.currentTarget.style.display = 'none';
                            }}
                          />
                        ) : (
                          <div className="absolute inset-0 flex items-center justify-center bg-linear-to-br from-amber-50 via-white to-orange-50 text-sm font-semibold uppercase tracking-[0.2em] text-gray-400">
                            No Image
                          </div>
                        )}

                        <div className="pointer-events-none absolute inset-0 bg-linear-to-t from-black/80 via-black/30 to-transparent" />

                        <div className="absolute right-3 top-3 z-20 flex gap-2">
                          <button onClick={() => { setSelectedProduct(product); setShowModal(true); }} className="rounded-full bg-white/90 p-2 text-green-600 shadow-sm transition hover:bg-green-50" title="View">
                            <Eye size={16} />
                          </button>
                          <button onClick={() => handleEdit(product)} className="rounded-full bg-white/90 p-2 text-blue-600 shadow-sm transition hover:bg-blue-50">
                            <Edit2 size={16} />
                          </button>
                          <button onClick={() => handleDelete(product.id)} className="rounded-full bg-white/90 p-2 text-red-600 shadow-sm transition hover:bg-red-50">
                            <Trash2 size={16} />
                          </button>
                        </div>

                        <div className="relative z-10 flex h-full flex-col justify-between p-4 text-white">
                          <div className="flex items-start justify-end">
                            <span className="rounded-full bg-white/90 px-2.5 py-1 text-xs font-semibold text-amber-700 shadow-sm">
                              {product.margin || '-'}
                            </span>
                          </div>

                          <div className="flex flex-1 items-center justify-center">
                            <div className="rounded-lg bg-white/60 px-3 py-2 text-center shadow-sm">
                              <h3 className="text-base font-semibold leading-tight text-black">{product.name}</h3>
                              <p className="mt-0.5 text-xs leading-tight text-black/80">{product.category?.name || 'Tanpa kategori'}</p>
                            </div>
                          </div>

                          <div className="space-y-3 rounded-2xl border border-white/20 bg-white/20 p-3 shadow-lg backdrop-blur-md">
                            <div className="space-y-2 text-sm">
                              <div className="flex items-center justify-between">
                                <span className="text-white/75">Harga</span>
                                <span className="font-semibold text-white">Rp {product.price.toLocaleString('id-ID')}</span>
                              </div>
                              <div className="flex items-center justify-between">
                                <span className="text-white/75">HPP</span>
                                <span className="font-semibold text-amber-300">Rp {typeof product.hpp === 'string' ? product.hpp : (product.hpp || 0)}</span>
                              </div>
                            </div>

                            <label className="flex cursor-pointer items-center justify-center gap-2 rounded-xl border border-white/30 bg-white/15 px-3 py-2.5 text-sm font-medium text-white transition hover:bg-white/25">
                              <Upload size={14} />
                              {uploadingImageId === product.id ? 'Uploading...' : 'Upload image'}
                              <input
                                type="file"
                                accept="image/*"
                                className="hidden"
                                onChange={(e) => handleImageUpload(product.id, e.target.files?.[0] || null)}
                              />
                            </label>
                          </div>
                        </div>
                      </div>
                    ))
                  )}
                </div>
              ) : activeTab === 'categories' ? (
                <div className="overflow-x-auto">
                  <table className="w-full">
                    <thead className="border-b bg-gray-100">
                      <tr>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Category Name</th>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      {categories.length === 0 && (
                        <tr><td colSpan={2} className="px-6 py-4 text-center text-gray-500">No categories yet</td></tr>
                      )}
                      {categories.map(cat => (
                        <tr key={cat.id} className="border-b hover:bg-gray-50">
                          <td className="px-6 py-4">{cat.name}</td>
                          <td className="px-6 py-4 flex gap-2">
                            <button onClick={() => handleEdit(cat)} className="text-blue-600 hover:text-blue-800">
                              <Edit2 size={18} />
                            </button>
                            <button onClick={() => handleDelete(cat.id)} className="text-red-600 hover:text-red-800">
                              <Trash2 size={18} />
                            </button>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              ) : (
                <div className="overflow-x-auto">
                  <table className="w-full">
                    <thead className="border-b bg-gray-100">
                      <tr>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Ingredient</th>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Unit</th>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Cost</th>
                        <th className="px-6 py-3 text-left text-sm font-semibold">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      {ingredients.length === 0 && (
                        <tr><td colSpan={4} className="px-6 py-4 text-center text-gray-500">No ingredients yet</td></tr>
                      )}
                      {ingredients.map(ing => (
                        <tr key={ing.id} className="border-b hover:bg-gray-50">
                          <td className="px-6 py-4">{ing.name}</td>
                          <td className="px-6 py-4">{ing.unit}</td>
                          <td className="px-6 py-4">Rp {ing.cost.toLocaleString('id-ID')}</td>
                          <td className="px-6 py-4 flex gap-2">
                            <button onClick={() => handleEdit(ing)} className="text-blue-600 hover:text-blue-800">
                              <Edit2 size={18} />
                            </button>
                            <button onClick={() => handleDelete(ing.id)} className="text-red-600 hover:text-red-800">
                              <Trash2 size={18} />
                            </button>
                          </td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              )}
            </>
          )}
        </div>
      </div>

      {/* Product Detail Modal */}
      {showModal && selectedProduct && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
          <div className="bg-white rounded-lg shadow-xl max-w-2xl w-full max-h-[90vh] overflow-y-auto">
            {/* Header */}
            <div className="sticky top-0 bg-white border-b flex justify-between items-center px-6 py-4">
              <h2 className="text-2xl font-bold text-gray-900">{selectedProduct.name}</h2>
              <button onClick={() => { setShowModal(false); setSelectedProduct(null); }} className="text-gray-500 hover:text-gray-700">
                <X size={24} />
              </button>
            </div>

            {/* Content */}
            <div className="p-6 space-y-6">
              {/* Product Image */}
              {selectedProduct.image_url && (
                <div className="flex justify-center">
                  <img 
                    src={selectedProduct.image_url} 
                    alt={selectedProduct.name}
                    className="max-w-xs h-auto rounded-lg shadow-md object-cover"
                    onError={(e) => {
                      e.currentTarget.src = '/placeholder-product.png';
                    }}
                  />
                </div>
              )}

              {/* Product Info Grid */}
              <div className="grid grid-cols-2 gap-4">
                <div className="bg-blue-50 p-4 rounded-lg">
                  <div className="text-xs font-semibold text-gray-600 uppercase mb-1">Price</div>
                  <div className="text-2xl font-bold text-blue-600">Rp {selectedProduct.price.toLocaleString('id-ID')}</div>
                </div>
                <div className="bg-amber-50 p-4 rounded-lg">
                  <div className="text-xs font-semibold text-gray-600 uppercase mb-1">HPP</div>
                  <div className="text-2xl font-bold text-amber-600">Rp {typeof selectedProduct.hpp === 'string' ? selectedProduct.hpp : (selectedProduct.hpp || 0)}</div>
                </div>
                <div className="bg-green-50 p-4 rounded-lg">
                  <div className="text-xs font-semibold text-gray-600 uppercase mb-1">Margin</div>
                  <div className="text-2xl font-bold text-green-600">{selectedProduct.margin}</div>
                </div>
                <div className="bg-purple-50 p-4 rounded-lg">
                  <div className="text-xs font-semibold text-gray-600 uppercase mb-1">Category</div>
                  <div className="text-lg font-bold text-purple-600">{selectedProduct.category?.name || '-'}</div>
                </div>
              </div>

              {/* Recipe */}
              <div className="border border-amber-200 rounded-lg p-4 bg-amber-50">
                <h3 className="text-lg font-semibold text-amber-900 mb-4">📋 Resep Produk</h3>
                
                {selectedProduct.product_ingredients && selectedProduct.product_ingredients.length > 0 ? (
                  <div className="space-y-3">
                    {selectedProduct.product_ingredients.map((pi) => {
                      const ingredient = pi.ingredient;
                      const totalCost = (ingredient?.cost || 0) * pi.quantity;
                      return (
                        <div key={pi.ingredient_id} className="bg-white p-3 rounded-lg border border-amber-200 flex justify-between items-center">
                          <div className="flex-1">
                            <div className="font-semibold text-gray-900">{ingredient?.name}</div>
                            <div className="text-sm text-gray-600 flex gap-2">
                              <span className="font-medium">{pi.quantity} {ingredient?.unit}</span>
                              <span>•</span>
                              <span>Rp {(ingredient?.cost || 0).toLocaleString('id-ID')}/{ingredient?.unit}</span>
                            </div>
                          </div>
                          <div className="text-right">
                            <div className="font-bold text-amber-700">Rp {totalCost.toLocaleString('id-ID')}</div>
                          </div>
                        </div>
                      );
                    })}
                    
                    {/* Total HPP from Recipe */}
                    <div className="bg-amber-100 border-t-2 border-amber-200 mt-4 pt-3">
                      <div className="flex justify-between items-center">
                        <span className="font-semibold text-amber-900">Total HPP Bahan:</span>
                        <span className="text-xl font-bold text-amber-700">
                          Rp {selectedProduct.product_ingredients.reduce((sum, pi) => {
                            return sum + ((pi.ingredient?.cost || 0) * pi.quantity);
                          }, 0).toLocaleString('id-ID')}
                        </span>
                      </div>
                    </div>
                  </div>
                ) : (
                  <p className="text-gray-500 italic">Tidak ada resep untuk produk ini</p>
                )}
              </div>
            </div>

            {/* Footer */}
            <div className="sticky bottom-0 bg-gray-50 border-t px-6 py-4 flex justify-end gap-3">
              <button 
                onClick={() => { setShowModal(false); setSelectedProduct(null); }}
                className="px-4 py-2 bg-gray-300 hover:bg-gray-400 text-gray-900 rounded-lg font-medium transition"
              >
                Close
              </button>
              <button 
                onClick={() => { handleEdit(selectedProduct); setShowModal(false); }}
                className="px-4 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-lg font-medium transition flex items-center gap-2"
              >
                <Edit2 size={18} />
                Edit
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
