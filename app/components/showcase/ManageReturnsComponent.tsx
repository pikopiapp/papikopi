// Komponen Kelola Retur Produk
// Menangani retur dari outlet ke showcase dengan pemeriksaan kondisi
// Date: May 2026

import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { supabase } from '@/lib/supabase';
import {
  Card,
  CardContent,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Alert, AlertDescription } from '@/components/ui/alert';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from '@/components/ui/dialog';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { Textarea } from '@/components/ui/textarea';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import {
  Loader2,
  AlertCircle,
  CheckCircle,
  Package,
  RotateCw,
  Trash2,
  Calendar,
  ChevronLeft,
  ChevronRight,
} from 'lucide-react';
import { Input } from '@/components/ui/input';

interface PendingReturn {
  id: number;
  product_id: string; // UUID
  outlet_id: string;
  return_reason: string;
  return_date: string;
  condition_status?: string;
  resolution_status?: string;
  outlets?: { name: string };
  barista_name?: string;
  products?: { name: string; sku: string };
  product_units?: {
    product_id: number;
    batch_id: number;
    products: { name: string; sku: string };
  };
}

interface ReturnDetail {
  id: number;
  product_id?: number;
  product_unit_id: number;
  outlet_id: string;
  return_reason: string;
  return_date: string;
  condition_status?: string;
  condition_notes?: string;
  resolution_status?: string;
  outlets?: { name: string };
  products?: { name: string; sku: string };
  product_units?: {
    product_id: number;
    batch_id: number;
    products: { name: string; sku: string };
  };
}

export function ManageReturnsComponent() {
  const [pendingReturns, setPendingReturns] = useState<PendingReturn[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedDate, setSelectedDate] = useState<Date | undefined>(new Date());

  // Return checking dialog state
  const [selectedReturn, setSelectedReturn] = useState<ReturnDetail | null>(null);
  const [checkingReturn, setCheckingReturn] = useState(false);
  const [conditionStatus, setConditionStatus] = useState<
    'sellable' | 'damaged' | 'partially_damaged'
  >('sellable');
  const [conditionNotes, setConditionNotes] = useState('');
  const [resolutionAction, setResolutionAction] = useState<
    'return_to_showcase' | 'archive_as_damaged' | 'credit_outlet'
  >('return_to_showcase');
  const [checkResult, setCheckResult] = useState<{ success: boolean; message: string } | null>(null);

  // Enrich returns with outlet and barista data
  const enrichReturnsData = async (returns: any[]) => {
    const outletIds = [...new Set(returns.map(r => r.outlet_id).filter(Boolean))];

    const outletMap: Record<string, { name: string }> = {};
    const baristaMap: Record<string, string> = {};

    if (outletIds.length > 0) {
      const { data: outlets } = await supabase
        .from('outlets')
        .select('id, name')
        .in('id', outletIds);
      if (outlets) {
        outlets.forEach((o: any) => {
          outletMap[o.id] = { name: o.name };
        });
      }

      // Fetch barista names from users table
      const { data: users } = await supabase
        .from('users')
        .select('id, name, outlet_id')
        .in('outlet_id', outletIds);
      if (users) {
        users.forEach((u: any) => {
          if (u.outlet_id) {
            baristaMap[u.outlet_id] = u.name;
          }
        });
      }
    }

    // Enrich the returns with outlet names and barista names
    return returns.map((ret: any) => ({
      ...ret,
      outlets: ret.outlet_id ? outletMap[ret.outlet_id] : undefined,
      barista_name: ret.outlet_id ? baristaMap[ret.outlet_id] : undefined,
    }));
  };

  // Hitung jumlah retur per hari
  const getReturnsByDate = (returns: PendingReturn[]) => {
    const dateMap: Record<string, PendingReturn[]> = {};
    
    returns.forEach((ret) => {
      const date = new Date(ret.return_date).toLocaleDateString('id-ID', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
      });
      if (!dateMap[date]) {
        dateMap[date] = [];
      }
      dateMap[date].push(ret);
    });
    
    return dateMap;
  };

  // Filter retur berdasarkan tanggal yang dipilih
  const filteredReturns = selectedDate
    ? pendingReturns.filter((ret) => {
        const returnDate = new Date(ret.return_date).toLocaleDateString('id-ID', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
        });
        const selectedDateStr = selectedDate.toLocaleDateString('id-ID', {
          year: 'numeric',
          month: '2-digit',
          day: '2-digit',
        });
        return returnDate === selectedDateStr;
      })
    : pendingReturns;

  const returnsByDate = getReturnsByDate(pendingReturns);
  const sortedDates = Object.keys(returnsByDate).sort().reverse();

  // Fetch pending returns
  const fetchPendingReturns = async () => {
    try {
      setLoading(true);
      setError(null);
      
      // Get the session token from Supabase
      const { data: { session } } = await supabase.auth.getSession();
      
      if (!session?.access_token) {
        setError('Not authenticated. Please login first.');
        setLoading(false);
        return;
      }

      const response = await axios.get('/api/showcase/returns/pending', {
        headers: {
          'Authorization': `Bearer ${session.access_token}`
        }
      });
      const data = response.data.data || [];
      
      // If no returns exist, seed test data
      if (data.length === 0) {
        try {
          await axios.post('/api/showcase/returns/seed', {}, {
            headers: {
              'Authorization': `Bearer ${session.access_token}`
            }
          });
          // Fetch returns again after seeding
          const seedResponse = await axios.get('/api/showcase/returns/pending', {
            headers: {
              'Authorization': `Bearer ${session.access_token}`
            }
          });
          const seedData = seedResponse.data.data || [];
          const enrichedData = await enrichReturnsData(seedData);
          setPendingReturns(enrichedData);
        } catch (seedErr) {
          console.log('Seed attempt - may already have data:', seedErr);
          const enrichedData = await enrichReturnsData(data);
          setPendingReturns(enrichedData);
        }
      } else {
        const enrichedData = await enrichReturnsData(data);
        setPendingReturns(enrichedData);
      }
    } catch (err: any) {
      if (err.response?.status === 401) {
        setError('Unauthorized. Please login to access this page.');
      } else if (err.response?.status === 500) {
        const errorMsg = err.response?.data?.message || 'Server error';
        setError(`Server error: ${errorMsg}`);
      } else {
        const errorMessage = err instanceof Error ? err.message : err.response?.data?.message || 'Error fetching returns';
        setError(errorMessage);
      }
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    // Wait a bit for auth to initialize, then fetch
    const timer = setTimeout(() => {
      fetchPendingReturns();
    }, 500);
    
    return () => {
      clearTimeout(timer);
    };
  }, []);

  const handleOpenReturnDetail = async (returnId: number) => {
    try {
      // Get the session token from Supabase
      const { data: { session } } = await supabase.auth.getSession();
      if (!session?.access_token) {
        setError('Not authenticated. Please login first.');
        return;
      }

      const response = await axios.get(`/api/showcase/returns/${returnId}`, {
        headers: {
          'Authorization': `Bearer ${session.access_token}`
        }
      });
      setSelectedReturn(response.data.data);
      setCheckResult(null);
      setConditionStatus('sellable');
      setConditionNotes('');
      setResolutionAction('return_to_showcase');
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error fetching return detail';
      setError(errorMessage);
    }
  };

  const handleResolveReturn = async () => {
    if (!selectedReturn) return;

    setCheckingReturn(true);
    try {
      // Get the session token from Supabase
      const { data: { session } } = await supabase.auth.getSession();
      if (!session?.access_token) {
        setCheckResult({
          success: false,
          message: 'Not authenticated. Please login first.'
        });
        setCheckingReturn(false);
        return;
      }

      const response = await axios.post(
        `/api/showcase/returns/${selectedReturn.id}/resolve`,
        {
          condition_status: conditionStatus,
          condition_notes: conditionNotes || null,
          resolution_action: resolutionAction,
        },
        {
          headers: {
            'Authorization': `Bearer ${session.access_token}`
          }
        }
      );

      setCheckResult(response.data);
      if (response.data.success) {
        // Refresh pending returns
        await fetchPendingReturns();
        // Close dialog after 2 seconds
        setTimeout(() => {
          setSelectedReturn(null);
        }, 2000);
      }
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error resolving return';
      setCheckResult({
        success: false,
        message: errorMessage,
      });
    } finally {
      setCheckingReturn(false);
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center py-8">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Error Alert */}
      {error && (
        <Alert variant="destructive">
          <AlertCircle className="h-4 w-4" />
          <AlertDescription>{error}</AlertDescription>
        </Alert>
      )}

      {/* Tabs untuk berbagai status */}
      <Tabs defaultValue="pending" className="w-full">
        <TabsList>
          <TabsTrigger value="pending">
            Retur Menunggu ({pendingReturns.length})
          </TabsTrigger>
        </TabsList>

        <TabsContent value="pending" className="space-y-4">
          {/* Date Picker Card - Always Visible */}
          <Card className="bg-blue-50 border-blue-200">
            <CardHeader>
              <CardTitle className="text-base flex items-center gap-2">
                <Calendar className="h-5 w-5" />
                Pilih Tanggal Retur
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              {/* Manual Date Input */}
              <div className="flex gap-2">
                <Input
                  type="date"
                  value={selectedDate ? selectedDate.toISOString().split('T')[0] : ''}
                  onChange={(e) => {
                    if (e.target.value) {
                      setSelectedDate(new Date(e.target.value));
                    }
                  }}
                  className="flex-1"
                />
                <Button
                  onClick={() => setSelectedDate(new Date())}
                  variant="outline"
                  className="whitespace-nowrap"
                >
                  Retur Hari Ini
                </Button>
              </div>

              {/* Display selected date info */}
              {selectedDate && (
                <div className="bg-white p-3 rounded border border-blue-200">
                  <p className="text-sm font-medium text-gray-700">
                    Retur Tanggal:
                  </p>
                  <p className="text-lg font-bold text-blue-600">
                    {selectedDate.toLocaleDateString('id-ID', {
                      weekday: 'long',
                      year: 'numeric',
                      month: 'long',
                      day: 'numeric',
                    })}
                  </p>
                </div>
              )}
            </CardContent>
          </Card>

          {/* Retur untuk hari yang dipilih */}
          {filteredReturns.length > 0 ? (
            <div className="space-y-4">
              <div className="text-sm font-medium text-gray-600">
                Menampilkan {filteredReturns.length} retur untuk{' '}
                {selectedDate?.toLocaleDateString('id-ID', {
                  weekday: 'long',
                  year: 'numeric',
                  month: 'long',
                  day: 'numeric',
                })}
              </div>

              {/* Retur Per Outlet dengan Cards Grid 4 Kolom */}
              {(() => {
                const outletMap: Record<string, typeof filteredReturns> = {};
                filteredReturns.forEach((ret) => {
                  const outletKey = ret.outlet_id;
                  if (!outletMap[outletKey]) {
                    outletMap[outletKey] = [];
                  }
                  outletMap[outletKey].push(ret);
                });

                return (
                  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
                    {Object.entries(outletMap).map(([outletKey, returns]) => {
                      if (!returns || returns.length === 0) return null;
                      
                      const firstReturn = returns[0];
                      const outletName = firstReturn.outlets?.name || 'Outlet Tidak Diketahui';
                      const baristaName = firstReturn.barista_name || 'Barista Unknown';
                      
                      return (
                        <Card key={outletKey} className="bg-green-50 border-green-200">
                          <CardHeader>
                            <CardTitle className="text-base">{outletName} ({baristaName})</CardTitle>
                          </CardHeader>
                          <CardContent>
                            <div className="space-y-3">
                              <p className="font-semibold text-sm text-gray-700">
                                Retur {returns.length} unit
                              </p>
                              <div className="overflow-x-auto">
                                <table className="w-full text-xs">
                                  <thead>
                                    <tr className="border-b border-green-300">
                                      <th className="text-left py-2 px-2 font-semibold text-gray-700">Produk</th>
                                      <th className="text-center py-2 px-2 font-semibold text-gray-700">Qty</th>
                                      <th className="text-left py-2 px-2 font-semibold text-gray-700">Alasan</th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    {returns.map((ret) => (
                                      <tr key={ret.id} className="border-b border-green-100">
                                        <td className="py-2 px-2 text-gray-700">{ret.products?.name || 'Produk Tidak Diketahui'}</td>
                                        <td className="text-center py-2 px-2 font-semibold text-gray-800">1</td>
                                        <td className="py-2 px-2 text-gray-600 text-xs">{ret.return_reason}</td>
                                      </tr>
                                    ))}
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </CardContent>
                        </Card>
                      );
                    })}
                  </div>
                );
              })()}
            </div>
          ) : pendingReturns.length === 0 ? (
            <Card>
              <CardContent className="pt-6 text-center">
                <Package className="h-12 w-12 mx-auto text-gray-300 mb-2" />
                <p className="text-gray-600">Tidak ada retur yang menunggu</p>
              </CardContent>
            </Card>
          ) : (
            <Card>
              <CardContent className="pt-6 text-center">
                <Package className="h-12 w-12 mx-auto text-gray-300 mb-2" />
                <p className="text-gray-600">Tidak ada retur untuk tanggal ini</p>
              </CardContent>
            </Card>
          )}
        </TabsContent>
      </Tabs>

      {/* Dialog Detail Retur */}
      <Dialog open={!!selectedReturn} onOpenChange={() => {
        if (!checkingReturn) setSelectedReturn(null);
      }}>
        <DialogContent className="max-w-2xl">
          <DialogHeader>
            <DialogTitle>Periksa Kondisi Produk</DialogTitle>
            <DialogDescription>
              Tinjau dan tentukan status kondisi untuk Retur #{selectedReturn?.id}
            </DialogDescription>
          </DialogHeader>

          {selectedReturn && (
            <div className="space-y-6">
              {/* Info Produk */}
              <Card>
                <CardHeader>
                  <CardTitle className="text-base">Informasi Produk</CardTitle>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="grid grid-cols-2 gap-4 text-sm">
                    <div>
                      <p className="text-gray-600">Product Name</p>
                      <p className="font-medium">
                        {selectedReturn.products?.name || 'Produk Tidak Diketahui'}
                      </p>
                    </div>
                    <div>
                      <p className="text-gray-600">SKU</p>
                      <p className="font-medium">
                        {selectedReturn.products?.sku || 'N/A'}
                      </p>
                    </div>
                    <div>
                      <p className="text-gray-600">Outlet</p>
                      <p className="font-medium">
                        {selectedReturn.outlets?.name || 'Unknown'}
                      </p>
                    </div>
                    <div>
                      <p className="text-gray-600">Return Reason</p>
                      <p className="font-medium">
                        {selectedReturn.return_reason}
                      </p>
                    </div>
                  </div>
                </CardContent>
              </Card>

              {/* Condition Assessment */}
              <Card>
                <CardHeader>
                  <CardTitle className="text-base">Penilaian Kondisi</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                  {/* Status Kondisi */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Status Kondisi *
                    </label>
                    <Select
                      value={conditionStatus}
                      onValueChange={(value: string) =>
                        setConditionStatus(
                          value as 'sellable' | 'damaged' | 'partially_damaged'
                        )
                      }
                      disabled={checkingReturn}
                    >
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="sellable">
                          ✅ Bisa Dijual - Kondisi baik
                        </SelectItem>
                        <SelectItem value="partially_damaged">
                          ⚠️ Rusak Sebagian - Bisa diperbaiki
                        </SelectItem>
                        <SelectItem value="damaged">
                          ❌ Rusak Total - Tidak bisa dijual
                        </SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  {/* Catatan Kondisi */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Catatan Kondisi
                    </label>
                    <Textarea
                      placeholder="Detail kondisi produk..."
                      value={conditionNotes}
                      onChange={(e) => setConditionNotes(e.target.value)}
                      disabled={checkingReturn}
                      className="h-24"
                    />
                  </div>

                  {/* Aksi Penyelesaian */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Aksi Penyelesaian *
                    </label>
                    <Select
                      value={resolutionAction}
                      onValueChange={(value: string) =>
                        setResolutionAction(
                          value as 'return_to_showcase' | 'archive_as_damaged' | 'credit_outlet'
                        )
                      }
                      disabled={checkingReturn}
                    >
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        {conditionStatus === 'sellable' && (
                          <SelectItem value="return_to_showcase">
                            <div className="flex items-center gap-2">
                              <RotateCw className="h-4 w-4" />
                              Kembalikan ke Showcase
                            </div>
                          </SelectItem>
                        )}
                        {(conditionStatus === 'sellable' ||
                          conditionStatus === 'partially_damaged') && (
                          <SelectItem value="return_to_showcase">
                            Kembalikan ke Showcase untuk Perbaikan
                          </SelectItem>
                        )}
                        {(conditionStatus === 'damaged' ||
                          conditionStatus === 'partially_damaged') && (
                          <SelectItem value="archive_as_damaged">
                            <div className="flex items-center gap-2">
                              <Trash2 className="h-4 w-4" />
                              Arsipkan sebagai Rusak
                            </div>
                          </SelectItem>
                        )}
                        <SelectItem value="credit_outlet">
                          Kredit Outlet
                        </SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                </CardContent>
              </Card>

              {/* Pesan Hasil */}
              {checkResult && (
                <Alert
                  variant={checkResult.success ? 'default' : 'destructive'}
                >
                  {checkResult.success ? (
                    <CheckCircle className="h-4 w-4" />
                  ) : (
                    <AlertCircle className="h-4 w-4" />
                  )}
                  <AlertDescription>{checkResult.message}</AlertDescription>
                </Alert>
              )}

              {/* Tombol Aksi */}
              <div className="flex gap-3">
                <Button
                  onClick={handleResolveReturn}
                  disabled={checkingReturn || !!checkResult?.success}
                  className="flex-1"
                >
                  {checkingReturn ? (
                    <>
                      <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                      Memproses...
                    </>
                  ) : (
                    'Selesaikan Retur'
                  )}
                </Button>
                <Button
                  variant="outline"
                  onClick={() => setSelectedReturn(null)}
                  disabled={checkingReturn}
                >
                  Tutup
                </Button>
              </div>
            </div>
          )}
        </DialogContent>
      </Dialog>
    </div>
  );
}

export default ManageReturnsComponent;
