// Assign Product to Outlet Component
// Manage product assignment from showcase to outlets
// Date: May 2026

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Alert, AlertDescription } from '@/components/ui/alert';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { Badge } from '@/components/ui/badge';
import { Loader2, AlertCircle, CheckCircle, Package } from 'lucide-react';

interface ShowcaseProduct {
  id: string;
  product_id: string;
  product_name: string;
  total_quantity: number;
  allocated_quantity: number;
  allocations: Array<{
    id: string;
    quantity: number;
    outlet_id: string;
    outlet_name: string;
  }>;
}

interface Outlet {
  id: string;
  name: string;
}

interface AssignmentResult {
  success: boolean;
  message: string;
  data?: Record<string, unknown>;
}

export function AssignProductComponent() {
  const [availableProducts, setAvailableProducts] = useState<ShowcaseProduct[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [selectedProduct, setSelectedProduct] = useState<string>('');
  const [selectedOutlet, setSelectedOutlet] = useState<string>('');
  const [quantity, setQuantity] = useState<string>('');
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [result, setResult] = useState<AssignmentResult | null>(null);
  const [error, setError] = useState<string | null>(null);

  // Fetch data on mount
  useEffect(() => {
    const fetchData = async () => {
      try {
        setLoading(true);
        const [productsRes, outletsRes] = await Promise.all([
          axios.get('/api/showcase/inventory'),
          axios.get('/api/outlets'),
        ]);

        setAvailableProducts(productsRes.data);
        setOutlets(outletsRes.data);
      } catch (err: unknown) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching data';
        setError(errorMessage);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  const handleAssign = async (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitting(true);
    setError(null);
    setResult(null);

    try {
      if (!selectedProduct || !selectedOutlet || !quantity) {
        throw new Error('Pilih produk, outlet, dan jumlah quantity');
      }

      const quantityNum = parseInt(quantity);
      if (isNaN(quantityNum) || quantityNum <= 0) {
        throw new Error('Quantity harus angka positif');
      }

      const response = await axios.post('/api/showcase/allocate', {
        showcase_product_id: selectedProduct,
        outlet_id: selectedOutlet,
        quantity: quantityNum,
      });

      setResult(response.data);
      if (response.data.success) {
        setSelectedProduct('');
        setSelectedOutlet('');
        setQuantity('');
        // Refresh products
        const productsRes = await axios.get('/api/showcase/inventory');
        setAvailableProducts(productsRes.data);
      }
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error saat assign';
      setError(errorMessage);
    } finally {
      setSubmitting(false);
    }
  };

  const selectedProductData = availableProducts.find(p => p.id === selectedProduct);
  const availableQuantity = selectedProductData ? (selectedProductData.total_quantity - selectedProductData.allocated_quantity) : 0;

  if (loading) {
    return (
      <div className="flex justify-center py-8">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2 text-2xl">
            <Package className="h-6 w-6" />
            Alokasi Produk ke Outlet
          </CardTitle>
          <CardDescription className="text-base">
            Pilih produk dari showcase untuk dialokasikan ke outlet
          </CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleAssign} className="space-y-4">
            {/* Alert Messages */}
            {error && (
              <Alert variant="destructive">
                <AlertCircle className="h-4 w-4" />
                <AlertDescription>{error}</AlertDescription>
              </Alert>
            )}

            {result?.success && (
              <Alert className="border-green-200 bg-green-50">
                <CheckCircle className="h-4 w-4 text-green-600" />
                <AlertDescription className="text-green-800">
                  {result.message}
                </AlertDescription>
              </Alert>
            )}

            {result && !result.success && (
              <Alert variant="destructive">
                <AlertCircle className="h-4 w-4" />
                <AlertDescription>{result.message}</AlertDescription>
              </Alert>
            )}

            {/* Select Product */}
            <div>
              <label className="block text-base font-semibold mb-2">
                Produk Tersedia ({availableProducts.length})
              </label>
              {availableProducts.length > 0 ? (
                <Select value={selectedProduct} onValueChange={setSelectedProduct}>
                  <SelectTrigger>
                    <SelectValue placeholder="Pilih produk" />
                  </SelectTrigger>
                  <SelectContent>
                    {availableProducts.map((product) => {
                      const available = product.total_quantity - product.allocated_quantity;
                      return (
                        <SelectItem
                          key={product.id}
                          value={product.id}
                        >
                          {product.product_name} - Total: {product.total_quantity} | Allocated: {product.allocated_quantity} | Available: {available}
                        </SelectItem>
                      );
                    })}
                  </SelectContent>
                </Select>
              ) : (
                <p className="text-sm text-gray-600 p-2 bg-gray-50 rounded">
                  Tidak ada produk tersedia di showcase
                </p>
              )}
            </div>

            {/* Product Info */}
            {selectedProductData && (
              <div className="p-3 bg-blue-50 border border-blue-200 rounded text-sm">
                <p className="font-medium text-blue-900">{selectedProductData.product_name}</p>
                <div className="grid grid-cols-3 gap-2 mt-2 text-xs">
                  <div>
                    <span className="text-blue-600">Total:</span> {selectedProductData.total_quantity}
                  </div>
                  <div>
                    <span className="text-blue-600">Allocated:</span> {selectedProductData.allocated_quantity}
                  </div>
                  <div>
                    <span className="text-blue-600">Available:</span> {availableQuantity}
                  </div>
                </div>
              </div>
            )}

            {/* Select Outlet as Cards */}
            <div>
              <label className="block text-base font-semibold mb-3">
                Outlet Tujuan
              </label>
              {outlets.length > 0 ? (
                <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-2">
                  {outlets.map((outlet) => (
                    <button
                      key={outlet.id}
                      type="button"
                      onClick={() => setSelectedOutlet(outlet.id)}
                      className={`p-3 rounded-lg border-2 transition-all text-sm font-medium text-left ${
                        selectedOutlet === outlet.id
                          ? 'border-blue-500 bg-blue-50'
                          : 'border-gray-200 bg-white hover:border-gray-300'
                      }`}
                    >
                      {outlet.name}
                    </button>
                  ))}
                </div>
              ) : (
                <p className="text-sm text-gray-600 p-2 bg-gray-50 rounded">
                  Tidak ada outlet tersedia
                </p>
              )}
            </div>

            {/* Quantity Input */}
            <div>
              <label className="block text-sm font-medium mb-2">
                Jumlah {availableQuantity > 0 && <span className="text-gray-600">(Maks: {availableQuantity})</span>}
              </label>
              <Input
                type="number"
                placeholder="Masukkan jumlah"
                value={quantity}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setQuantity(e.target.value)}
                min="1"
                max={availableQuantity}
              />
            </div>

            {/* Submit Button */}
            <Button
              type="submit"
              disabled={
                !selectedProduct ||
                !selectedOutlet ||
                !quantity ||
                submitting ||
                availableProducts.length === 0 ||
                availableQuantity === 0
              }
              className="w-full"
            >
              {submitting ? (
                <>
                  <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                  Mengalokasi...
                </>
              ) : (
                'Alokasi Produk'
              )}
            </Button>
          </form>
        </CardContent>
      </Card>

      {/* Product List Preview */}
      {availableProducts.length > 0 && (
        <Card>
          <CardHeader>
            <CardTitle className="text-2xl">Produk Tersedia & Alokasi</CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-3 gap-4">
              {availableProducts.map((product) => {
                const available = product.total_quantity - product.allocated_quantity;
                return (
                  <div
                    key={product.id}
                    className="p-4 bg-linear-to-br from-gray-50 to-gray-100 rounded-lg border border-gray-200 hover:border-gray-300 transition-all"
                  >
                    {/* Product Name */}
                    <div className="mb-3">
                      <p className="font-semibold text-sm text-gray-900 truncate">
                        {product.product_name}
                      </p>
                    </div>

                    {/* Quantity Stats */}
                    <div className="space-y-1 mb-3 text-xs">
                      <div className="flex justify-between">
                        <span className="text-gray-600">Total:</span>
                        <span className="font-medium">{product.total_quantity}</span>
                      </div>
                      <div className="flex justify-between">
                        <span className="text-gray-600">Allocated:</span>
                        <span className="font-medium text-orange-600">{product.allocated_quantity}</span>
                      </div>
                      <div className="flex justify-between">
                        <span className="text-gray-600">Available:</span>
                        <span className={`font-medium ${available > 0 ? 'text-green-600' : 'text-red-600'}`}>
                          {available}
                        </span>
                      </div>
                    </div>

                    {/* Progress Bar */}
                    <div className="w-full bg-gray-300 rounded-full h-2 mb-3">
                      <div
                        className={`h-2 rounded-full transition-all ${
                          available > 0 ? 'bg-green-500' : 'bg-red-500'
                        }`}
                        style={{
                          width: `${(product.allocated_quantity / product.total_quantity) * 100}%`,
                        }}
                      />
                    </div>

                    {/* Allocations */}
                    {product.allocations.length > 0 && (
                      <div className="pt-2 border-t border-gray-300">
                        <p className="text-xs font-semibold text-gray-700 mb-2">
                          Dialokasikan ke:
                        </p>
                        <div className="space-y-1 max-h-24 overflow-y-auto">
                          {product.allocations.map((alloc) => (
                            <div
                              key={alloc.id}
                              className="text-xs bg-white p-1.5 rounded border border-blue-100"
                            >
                              <p className="font-medium text-gray-800 truncate">
                                {alloc.outlet_name}
                              </p>
                              <p className="text-blue-600">
                                {alloc.quantity} units
                              </p>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}

                    {/* Status Badge */}
                    <div className="mt-3">
                      <Badge
                        variant={available > 0 ? 'default' : 'secondary'}
                        className="w-full justify-center text-xs"
                      >
                        {available > 0 ? `${available} tersedia` : 'Habis'}
                      </Badge>
                    </div>
                  </div>
                );
              })}
            </div>
          </CardContent>
        </Card>
      )}
    </div>
  );
}

export default AssignProductComponent;
