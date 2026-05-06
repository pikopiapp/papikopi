// Manage Product Returns Component
// Handle returns from outlets to showcase with condition checking
// Date: May 2026

import React, { useEffect, useState } from 'react';
import axios from 'axios';
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
} from 'lucide-react';

interface PendingReturn {
  id: number;
  product_unit_id: number;
  outlet_id: number;
  return_reason: string;
  return_date: string;
  outlets: { name: string };
  product_units: {
    product_id: number;
    batch_id: number;
    products: { name: string; sku: string };
  };
}

interface ReturnDetail {
  id: number;
  product_unit_id: number;
  outlet_id: number;
  return_reason: string;
  return_date: string;
  condition_status?: string;
  condition_notes?: string;
  resolution_status?: string;
  outlets: { name: string };
  product_units: {
    product_id: number;
    batch_id: number;
    products: { name: string; sku: string };
  };
}

export function ManageReturnsComponent() {
  const [pendingReturns, setPendingReturns] = useState<PendingReturn[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

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

  // Fetch pending returns
  const fetchPendingReturns = async () => {
    try {
      setLoading(true);
      setError(null);
      const response = await axios.get('/api/showcase/returns/pending');
      setPendingReturns(response.data.data || []);
    } catch (err: unknown) {
      const errorMessage = err instanceof Error ? err.message : 'Error fetching returns';
      setError(errorMessage);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchPendingReturns();
    const interval = setInterval(fetchPendingReturns, 30000); // Refresh every 30s
    return () => clearInterval(interval);
  }, []);

  const handleOpenReturnDetail = async (returnId: number) => {
    try {
      const response = await axios.get(`/api/showcase/returns/${returnId}`);
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
      const response = await axios.post(
        `/api/showcase/returns/${selectedReturn.id}/resolve`,
        {
          condition_status: conditionStatus,
          condition_notes: conditionNotes || null,
          resolution_action: resolutionAction,
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

      {/* Tabs for different states */}
      <Tabs defaultValue="pending" className="w-full">
        <TabsList>
          <TabsTrigger value="pending">
            Pending Returns ({pendingReturns.length})
          </TabsTrigger>
        </TabsList>

        <TabsContent value="pending" className="space-y-4">
          {pendingReturns.length > 0 ? (
            <div className="grid gap-4">
              {pendingReturns.map((ret) => (
                <Card key={ret.id} className="border-yellow-200 bg-yellow-50">
                  <CardContent className="pt-6">
                    <div className="flex justify-between items-start">
                      <div className="flex-1">
                        <div className="flex items-center gap-2 mb-2">
                          <h3 className="font-bold text-lg">
                            {ret.product_units.products.name}
                          </h3>
                          <Badge variant="outline">
                            Unit #{ret.product_unit_id}
                          </Badge>
                          <Badge variant="secondary">
                            Return #{ret.id}
                          </Badge>
                        </div>

                        <div className="grid grid-cols-2 gap-3 text-sm mb-3">
                          <div>
                            <p className="text-gray-600">From Outlet</p>
                            <p className="font-medium">
                              {ret.outlets.name}
                            </p>
                          </div>
                          <div>
                            <p className="text-gray-600">SKU</p>
                            <p className="font-medium">
                              {ret.product_units.products.sku}
                            </p>
                          </div>
                          <div>
                            <p className="text-gray-600">Return Reason</p>
                            <p className="font-medium">
                              {ret.return_reason}
                            </p>
                          </div>
                          <div>
                            <p className="text-gray-600">Return Date</p>
                            <p className="font-medium">
                              {new Date(
                                ret.return_date
                              ).toLocaleDateString()}
                            </p>
                          </div>
                        </div>
                      </div>

                      <Button
                        onClick={() => handleOpenReturnDetail(ret.id)}
                        className="ml-4"
                      >
                        Check Condition
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          ) : (
            <Card>
              <CardContent className="pt-6 text-center">
                <Package className="h-12 w-12 mx-auto text-gray-300 mb-2" />
                <p className="text-gray-600">Tidak ada pending returns</p>
              </CardContent>
            </Card>
          )}
        </TabsContent>
      </Tabs>

      {/* Return Detail Dialog */}
      <Dialog open={!!selectedReturn} onOpenChange={() => {
        if (!checkingReturn) setSelectedReturn(null);
      }}>
        <DialogContent className="max-w-2xl">
          <DialogHeader>
            <DialogTitle>Check Product Condition</DialogTitle>
            <DialogDescription>
              Review and determine condition status untuk Return #{selectedReturn?.id}
            </DialogDescription>
          </DialogHeader>

          {selectedReturn && (
            <div className="space-y-6">
              {/* Product Info */}
              <Card>
                <CardHeader>
                  <CardTitle className="text-base">Product Information</CardTitle>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="grid grid-cols-2 gap-4 text-sm">
                    <div>
                      <p className="text-gray-600">Product Name</p>
                      <p className="font-medium">
                        {selectedReturn.product_units.products.name}
                      </p>
                    </div>
                    <div>
                      <p className="text-gray-600">SKU</p>
                      <p className="font-medium">
                        {selectedReturn.product_units.products.sku}
                      </p>
                    </div>
                    <div>
                      <p className="text-gray-600">Outlet</p>
                      <p className="font-medium">
                        {selectedReturn.outlets.name}
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
                  <CardTitle className="text-base">Condition Assessment</CardTitle>
                </CardHeader>
                <CardContent className="space-y-4">
                  {/* Condition Status */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Condition Status *
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
                          ✅ Sellable - Bisa dijual di outlet lain
                        </SelectItem>
                        <SelectItem value="partially_damaged">
                          ⚠️ Partially Damaged - Bisa diperbaiki
                        </SelectItem>
                        <SelectItem value="damaged">
                          ❌ Damaged - Tidak bisa dijual
                        </SelectItem>
                      </SelectContent>
                    </Select>
                  </div>

                  {/* Condition Notes */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Condition Notes
                    </label>
                    <Textarea
                      placeholder="Detail kondisi produk..."
                      value={conditionNotes}
                      onChange={(e) => setConditionNotes(e.target.value)}
                      disabled={checkingReturn}
                      className="h-24"
                    />
                  </div>

                  {/* Resolution Action */}
                  <div>
                    <label className="block text-sm font-medium mb-2">
                      Resolution Action *
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
                              Return to Showcase
                            </div>
                          </SelectItem>
                        )}
                        {(conditionStatus === 'sellable' ||
                          conditionStatus === 'partially_damaged') && (
                          <SelectItem value="return_to_showcase">
                            Return to Showcase for Repair
                          </SelectItem>
                        )}
                        {(conditionStatus === 'damaged' ||
                          conditionStatus === 'partially_damaged') && (
                          <SelectItem value="archive_as_damaged">
                            <div className="flex items-center gap-2">
                              <Trash2 className="h-4 w-4" />
                              Archive as Damaged
                            </div>
                          </SelectItem>
                        )}
                        <SelectItem value="credit_outlet">
                          Credit Outlet
                        </SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                </CardContent>
              </Card>

              {/* Result Message */}
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

              {/* Action Buttons */}
              <div className="flex gap-3">
                <Button
                  onClick={handleResolveReturn}
                  disabled={checkingReturn || !!checkResult?.success}
                  className="flex-1"
                >
                  {checkingReturn ? (
                    <>
                      <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                      Processing...
                    </>
                  ) : (
                    'Resolve Return'
                  )}
                </Button>
                <Button
                  variant="outline"
                  onClick={() => setSelectedReturn(null)}
                  disabled={checkingReturn}
                >
                  Close
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
