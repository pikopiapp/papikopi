'use client';

import React, { useEffect, useState } from 'react';
import formatLocalDate from '@/lib/formatLocalDate';
import { formatTimestampInJakarta } from '@/lib/helpers/business-day';
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
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from '@/components/ui/table';
import { Badge } from '@/components/ui/badge';
import { Loader2, AlertCircle, CheckCircle, Package, Trash2 } from 'lucide-react';

interface Outlet {
  id: string;
  name: string;
}

interface ShowcaseProduct {
  id: string;
  product_id: string;
  product_name: string;
  total_quantity: number;
}

interface AllocationAssignment {
  id: string;
  showcase_product_id: string;
  product_name: string;
  outlet_id: string;
  outlet_name: string;
  quantity: number;
  created_at: string;
}

interface AssignmentResult {
  success: boolean;
  message: string;
}

export function AssignProductNewComponent() {
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [selectedOutlet, setSelectedOutlet] = useState<string>('');
  const [availableProducts, setAvailableProducts] = useState<ShowcaseProduct[]>([]);
  const [assignments, setAssignments] = useState<AllocationAssignment[]>([]);
  
  const [selectedProduct, setSelectedProduct] = useState<string>('');
  const [productQuantities, setProductQuantities] = useState<Record<string, string>>({});
  
  const [selectedDate, setSelectedDate] = useState<Date>(new Date());
  const [businessDayStartHour, setBusinessDayStartHour] = useState<number>(21);
  
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [deleting, setDeleting] = useState<string | null>(null);
  
  const [result, setResult] = useState<AssignmentResult | null>(null);
  const [error, setError] = useState<string | null>(null);

  // Helper function to calculate business day range
  const getBusinessDayRange = (date: Date, startHour: number) => {
    const year = date.getFullYear();
    const month = date.getMonth();
    const day = date.getDate();

    let businessDayStart: Date;
    let businessDayEnd: Date;

    if (startHour >= 12) {
      // Afternoon/evening start (e.g., 21:00 = 9 PM)
      // Business day runs from (date-1)@startHour to date@startHour
      businessDayStart = new Date(year, month, day - 1, startHour, 0, 0, 0);
      businessDayEnd = new Date(year, month, day, startHour, 0, 0, 0);
    } else {
      // Morning start (e.g., 06:00 = 6 AM)
      // Business day runs from date@startHour to (date+1)@startHour
      businessDayStart = new Date(year, month, day, startHour, 0, 0, 0);
      businessDayEnd = new Date(year, month, day + 1, startHour, 0, 0, 0);
    }

    return { start: businessDayStart, end: businessDayEnd };
  };

  // Fetch settings on mount to get businessDayStartHour
  useEffect(() => {
    const fetchSettings = async () => {
      try {
        const response = await axios.get('/api/settings');
        if (response.data?.businessDayStartHour) {
          setBusinessDayStartHour(response.data.businessDayStartHour);
        }
      } catch {
        // Use default if settings fetch fails
      }
    };
    fetchSettings();
  }, []);

  useEffect(() => {
    const fetchOutlets = async () => {
      try {
        setLoading(true);
        const outletsRes = await axios.get('/api/outlets');
        setOutlets(outletsRes.data);
      } catch (err: unknown) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching outlets';
        setError(errorMessage);
      } finally {
        setLoading(false);
      }
    };

    fetchOutlets();
  }, []);

  // Fetch products and assignments when outlet or date changes
  useEffect(() => {
    const fetchData = async () => {
      if (!selectedOutlet) {
        setAvailableProducts([]);
        setAssignments([]);
        return;
      }

      try {
        setLoading(true);
        const productsRes = await axios.get('/api/showcase/inventory');
        setAvailableProducts(productsRes.data || []);

        // Fetch assignments with business day filter
        const range = getBusinessDayRange(selectedDate, businessDayStartHour);
        const startISO = range.start.toISOString();
        const endISO = range.end.toISOString();

        const assignmentsRes = await axios.get(
          `/api/showcase/assignments?outlet_id=${selectedOutlet}&created_at_gte=${startISO}&created_at_lte=${endISO}`
        );
        setAssignments(assignmentsRes.data || []);
      } catch (err: unknown) {
        const errorMessage = err instanceof Error ? err.message : 'Error fetching data';
        setError(errorMessage);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [selectedOutlet, selectedDate, businessDayStartHour]);

  const handleAssignProduct = async (productId: string) => {
    setError(null);
    setResult(null);

    try {
      if (!selectedOutlet) {
        throw new Error('Pilih outlet terlebih dahulu');
      }

      const quantityStr = productQuantities[productId];
      if (!quantityStr) {
        throw new Error('Masukkan quantity terlebih dahulu');
      }

      const quantityNum = parseInt(quantityStr);
      if (isNaN(quantityNum) || quantityNum <= 0) {
        throw new Error('Quantity harus angka positif');
      }

      setSubmitting(true);
      const response = await axios.post('/api/showcase/allocate', {
        showcase_product_id: productId,
        outlet_id: selectedOutlet,
        quantity: quantityNum,
      });

      console.log('Allocation response:', response.data);
      setResult(response.data);
      if (response.data.success) {
        // Clear quantity for this product
        const newQuantities = { ...productQuantities };
        delete newQuantities[productId];
        setProductQuantities(newQuantities);

        // Refresh assignments with date filter
        const range = getBusinessDayRange(selectedDate, businessDayStartHour);
        const startISO = range.start.toISOString();
        const endISO = range.end.toISOString();

        const assignmentsRes = await axios.get(
          `/api/showcase/assignments?outlet_id=${selectedOutlet}&created_at_gte=${startISO}&created_at_lte=${endISO}`
        );
        setAssignments(assignmentsRes.data || []);
      }
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error saat assign';
      console.error('Assign error:', err);
      setError(errorMessage);
    } finally {
      setSubmitting(false);
    }
  };

  const handleAssign = async (e: React.FormEvent) => {
    e.preventDefault();
    // This is now handled by individual card buttons
  };


  const handleDelete = async (id: string) => {
    if (!confirm('Yakin ingin menghapus alokasi ini?')) return;

    try {
      setDeleting(id);
      const response = await axios.delete(`/api/showcase/assignments/${id}`);

      if (response.data.success) {
        // Refresh assignments
        const assignmentsRes = await axios.get(
          `/api/showcase/assignments?outlet_id=${selectedOutlet}`
        );
        setAssignments(assignmentsRes.data || []);
        setResult({ success: true, message: 'Alokasi berhasil dihapus' });
      }
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error saat hapus';
      setError(errorMessage);
    } finally {
      setDeleting(null);
    }
  };

  if (loading && outlets.length === 0) {
    return (
      <div className="flex justify-center py-8">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Step 1 & Step 2: Single Row Layout */}
      <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
        {/* Step 1: Select Outlet (Left Column) */}
        <Card className="lg:col-span-1">
          <CardHeader>
            <CardTitle className="text-xl">Step 1: Pilih Outlet</CardTitle>
            <CardDescription>Tentukan outlet yang akan dialokasi produk</CardDescription>
          </CardHeader>
          <CardContent>
            {outlets.length > 0 ? (
              <Select value={selectedOutlet} onValueChange={setSelectedOutlet}>
                <SelectTrigger className="w-full">
                  <SelectValue placeholder="Pilih outlet..." />
                </SelectTrigger>
                <SelectContent>
                  {outlets.map((outlet) => (
                    <SelectItem key={outlet.id} value={outlet.id}>
                      {outlet.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            ) : (
              <p className="text-sm text-gray-600 p-2 bg-gray-50 rounded">
                Tidak ada outlet tersedia
              </p>
            )}
          </CardContent>
        </Card>

        {/* Step 2: Assign Products (Right Column - visible when outlet selected) */}
        {selectedOutlet && (
          <Card className="lg:col-span-2">
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <Package className="h-5 w-5" />
                Step 2: Alokasi Produk
              </CardTitle>
              <CardDescription>
                Pilih produk dan jumlah untuk dialokasikan ke outlet ini
              </CardDescription>
            </CardHeader>
            <CardContent>
              {/* Alert Messages */}
              {error && (
                <Alert variant="destructive" className="mb-4">
                  <AlertCircle className="h-4 w-4" />
                  <AlertDescription>{error}</AlertDescription>
                </Alert>
              )}

              {result?.success && (
                <Alert className="border-green-200 bg-green-50 mb-4">
                  <CheckCircle className="h-4 w-4 text-green-600" />
                  <AlertDescription className="text-green-800">
                    {result.message}
                  </AlertDescription>
                </Alert>
              )}

              {result && !result.success && (
                <Alert variant="destructive" className="mb-4">
                  <AlertCircle className="h-4 w-4" />
                  <AlertDescription>{result.message}</AlertDescription>
                </Alert>
              )}

              <form onSubmit={handleAssign} className="space-y-4">
                <div>
                  <label className="block text-sm font-medium mb-3">
                    Pilih Produk & Input Quantity
                  </label>
                  {availableProducts.length > 0 ? (
                    <div className="grid grid-cols-2 gap-2 max-h-96 overflow-y-auto p-2 border rounded-lg bg-gray-50">
                      {availableProducts
                        .sort((a, b) => b.total_quantity - a.total_quantity)
                        .map((product) => {
                        const allocated = assignments
                          .filter(a => a.showcase_product_id === product.id)
                          .reduce((sum, a) => sum + a.quantity, 0);
                        const remaining = product.total_quantity - allocated;
                        const canAllocate = remaining > 0;

                        return (
                          <div
                            key={product.id}
                            className={`p-3 rounded-lg border-2 transition-all flex flex-col ${
                              selectedProduct === product.id
                                ? 'border-blue-500 bg-blue-50 shadow-md'
                                : 'border-gray-200 bg-white hover:border-gray-300'
                            }`}
                          >
                            <button
                              type="button"
                              onClick={() => setSelectedProduct(product.id)}
                              className="w-full text-left mb-2 flex-1"
                              disabled={!canAllocate}
                            >
                              <div className="font-semibold text-xs truncate">
                                {product.product_name}
                              </div>
                              <div className="text-xs text-gray-600 mt-1 space-y-1">
                                <div>Total: <span className="font-medium">{product.total_quantity}</span></div>
                                <div>Dialokasikan: <span className="font-medium">{allocated}</span></div>
                                <div className={`${canAllocate ? 'text-blue-600' : 'text-red-600'}`}>
                                  Sisa: <span className="font-medium">{remaining}</span>
                                </div>
                              </div>
                            </button>
                            <Input
                              type="number"
                              placeholder="Qty"
                              value={productQuantities[product.id] || ''}
                              onChange={(e) =>
                                setProductQuantities({
                                  ...productQuantities,
                                  [product.id]: e.target.value,
                                })
                              }
                              onClick={() => setSelectedProduct(product.id)}
                              min="1"
                              max={remaining}
                              disabled={!canAllocate}
                              className="h-8 text-sm mb-2"
                            />
                            <Button
                              type="button"
                              onClick={() => handleAssignProduct(product.id)}
                              disabled={!productQuantities[product.id] || submitting || !canAllocate}
                              className="h-7 text-xs w-full"
                              size="sm"
                              variant={!canAllocate ? "secondary" : "default"}
                            >
                              {submitting ? (
                                <Loader2 className="h-3 w-3 animate-spin" />
                              ) : !canAllocate ? (
                                'Habis'
                              ) : (
                                'Alokasi'
                              )}
                            </Button>
                          </div>
                        );
                      })}
                    </div>
                  ) : (
                    <p className="text-sm text-gray-600 p-3 bg-gray-50 rounded">
                      Tidak ada produk tersedia
                    </p>
                  )}
                </div>
              </form>
            </CardContent>
          </Card>
        )}
      </div>

      {/* Step 3: Assignment List */}
      {selectedOutlet && (
        <Card>
          <CardHeader>
            <CardTitle>Step 3: Daftar Alokasi</CardTitle>
            <CardDescription>
              {assignments.length} produk dialokasikan ke outlet ini
            </CardDescription>
          </CardHeader>
          <CardContent>
            {/* Date Filter */}
            <div className="mb-4 flex items-center gap-3">
              <label className="text-sm font-medium">Tampilkan Tanggal:</label>
              <input
                type="date"
                value={formatLocalDate(selectedDate)}
                onChange={(e) => setSelectedDate(new Date(e.target.value))}
                className="px-3 py-2 border border-gray-300 rounded-lg text-sm"
              />
              <span className="text-xs text-gray-600">
                (Hari Bisnis: {getBusinessDayRange(selectedDate, businessDayStartHour).start.toLocaleDateString('id-ID')} - {getBusinessDayRange(selectedDate, businessDayStartHour).end.toLocaleDateString('id-ID')})
              </span>
            </div>

            {assignments.length > 0 ? (
              <div className="overflow-x-auto">
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>Produk</TableHead>
                      <TableHead className="text-right">Quantity</TableHead>
                      <TableHead className="text-right">Tanggal</TableHead>
                      <TableHead className="text-right">Aksi</TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {assignments
                      .sort((a, b) => b.quantity - a.quantity)
                      .map((assignment) => (
                      <TableRow key={assignment.id}>
                        <TableCell className="font-medium">
                          {assignment.product_name}
                        </TableCell>
                        <TableCell className="text-right">
                          <Badge variant="secondary">
                            {assignment.quantity}
                          </Badge>
                        </TableCell>
                        <TableCell className="text-right text-sm text-gray-600">
                          {formatTimestampInJakarta(assignment.created_at, { year: 'numeric', month: 'long', day: 'numeric' })}
                        </TableCell>
                        <TableCell className="text-right">
                          <div className="flex justify-end gap-2">
                            <Button
                              size="sm"
                              variant="destructive"
                              onClick={() => handleDelete(assignment.id)}
                              disabled={deleting === assignment.id}
                            >
                              {deleting === assignment.id ? (
                                <Loader2 className="h-4 w-4 animate-spin" />
                              ) : (
                                <Trash2 className="h-4 w-4" />
                              )}
                            </Button>
                          </div>
                        </TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              </div>
            ) : (
              <p className="text-sm text-gray-600 p-4 text-center bg-gray-50 rounded">
                Belum ada produk yang dialokasikan ke outlet ini
              </p>
            )}
          </CardContent>
        </Card>
      )}
    </div>
  );
}

export default AssignProductNewComponent;
