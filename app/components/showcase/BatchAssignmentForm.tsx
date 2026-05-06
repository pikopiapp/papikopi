'use client';

import React, { useEffect, useState } from 'react';
import Link from 'next/link';
import axios from 'axios';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Loader2, AlertCircle, Package, CheckCircle } from 'lucide-react';

interface ProductBatch {
  id: string;
  batch_code: string;
  product_name: string;
  quantity: number;
  production_date: string;
  expired_date: string;
  status: string;
}

interface Outlet {
  id: string;
  name: string;
}

interface BatchAssignmentFormProps {
  onAssignmentSuccess?: (batchId: string) => void;
}

export function BatchAssignmentForm({ onAssignmentSuccess }: BatchAssignmentFormProps) {
  const [selectedBatchId, setSelectedBatchId] = useState<string | null>(null);
  const [batch, setBatch] = useState<ProductBatch | null>(null);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [selectedOutlet, setSelectedOutlet] = useState<string>('');
  const [quantity, setQuantity] = useState<number>(1);
  const [notes, setNotes] = useState<string>('');
  const [loading, setLoading] = useState(false);
  const [assigning, setAssigning] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  // Initialize on mount - read batch ID from localStorage
  useEffect(() => {
    if (typeof window !== 'undefined') {
      const batchId = localStorage.getItem('selectedBatchId');
      if (batchId) {
        // Use functional update to avoid cascading renders
        setSelectedBatchId(batchId);
      }
    }
  }, []);

  // Helper function to calculate days left
  const calculateDaysLeft = (expiredDate: string): number => {
    const now = new Date().getTime();
    const expiry = new Date(expiredDate).getTime();
    return Math.max(0, Math.floor((expiry - now) / (1000 * 60 * 60 * 24)));
  };

  // Fetch batch and outlets data
  useEffect(() => {
    const fetchData = async () => {
      if (!selectedBatchId) return;

      try {
        setLoading(true);
        setError(null);

        // Fetch batch details
        try {
          const batchRes = await axios.get(`/api/warehouse/batches?id=${selectedBatchId}`);
          if (batchRes.data) {
            const batchData = Array.isArray(batchRes.data) ? batchRes.data[0] : batchRes.data;
            if (batchData) {
              setBatch(batchData);
              setQuantity(batchData.quantity);
            }
          }
        } catch (batchErr) {
          console.warn('Warning fetching batch:', batchErr);
          // Continue anyway - might not have auth
        }

        // Fetch outlets list - always attempt this
        try {
          const outletsRes = await axios.get('/api/outlets');
          console.log('Outlets response:', outletsRes.data);
          
          if (outletsRes.data) {
            const outletsList = Array.isArray(outletsRes.data) ? outletsRes.data : [];
            if (outletsList.length > 0) {
              setOutlets(outletsList);
            } else {
              console.warn('No outlets returned from API');
              setError('No outlets available. Please add outlets first.');
            }
          }
        } catch (outletsErr) {
          console.error('Outlets fetch error:', outletsErr);
          setError(`Failed to load outlets: ${outletsErr instanceof Error ? outletsErr.message : 'Unknown error'}`);
        }
      } catch (err) {
        const errorMessage = err instanceof Error ? err.message : 'Failed to load data';
        setError(errorMessage);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [selectedBatchId]);

  const handleAssign = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!batch || !selectedOutlet || !quantity) {
      setError('Please fill all required fields');
      return;
    }

    try {
      setAssigning(true);
      setError(null);

      // Call assignment API
      const res = await axios.post('/api/showcase/assignments/batch', {
        batch_id: batch.id,
        outlet_id: selectedOutlet,
        quantity,
        notes,
      });

      if (res.data && res.data.success) {
        setSuccess(`Batch assigned successfully to ${outlets.find(o => o.id === selectedOutlet)?.name}!`);
        
        // Call callback with batch ID to show allocation view
        if (onAssignmentSuccess && batch) {
          setTimeout(() => {
            onAssignmentSuccess(batch.id);
          }, 500);
        }
        
        // Clear localStorage
        localStorage.removeItem('selectedBatchId');
        
        // Reset form
        setSelectedBatchId(null);
        setBatch(null);
        setSelectedOutlet('');
        setQuantity(1);
        setNotes('');
      }
    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'Failed to assign batch';
      setError(errorMessage);
      console.error('Error:', err);
    } finally {
      setAssigning(false);
    }
  };

  if (!selectedBatchId) {
    return (
      <div className="p-6 space-y-6">
        <div>
          <h1 className="text-3xl font-bold">Batch Assignment</h1>
          <p className="text-gray-600">No batch selected for assignment</p>
        </div>
        <div className="text-center py-12">
          <Package size={48} className="mx-auto text-gray-300 mb-4" />
          <p className="text-gray-500">Select a batch from warehouse to assign to outlet</p>
          <a href="/dashboard/warehouse" className="text-amber-600 hover:text-amber-700 font-semibold mt-4 inline-block">
            Go to Warehouse →
          </a>
        </div>
      </div>
    );
  }

  if (loading) {
    return (
      <div className="flex justify-center items-center h-96">
        <div className="text-center">
          <Loader2 className="animate-spin h-8 w-8 mx-auto mb-4 text-amber-600" />
          <p className="text-gray-500">Loading batch details...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold">Assign Batch to Outlet</h1>
        <p className="text-gray-600">Assign production batch to sales outlet</p>
      </div>

      {/* Error Alert */}
      {error && (
        <Alert variant="destructive">
          <AlertCircle className="h-4 w-4" />
          <AlertDescription>{error}</AlertDescription>
        </Alert>
      )}

      {/* Success Alert */}
      {success && (
        <Alert className="bg-green-50 border-green-200">
          <CheckCircle className="h-4 w-4 text-green-600" />
          <AlertDescription className="text-green-800">{success}</AlertDescription>
        </Alert>
      )}

      {/* Batch Information Card */}
      {batch && (
        <Card>
          <CardHeader>
            <CardTitle>Batch Information</CardTitle>
            <CardDescription>Details of batch being assigned</CardDescription>
          </CardHeader>
          <CardContent className="space-y-4">
            <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
              <div>
                <p className="text-sm text-gray-600">Batch Code</p>
                <p className="font-mono font-bold text-lg">{batch.batch_code}</p>
              </div>
              <div>
                <p className="text-sm text-gray-600">Product</p>
                <p className="font-semibold">{batch.product_name}</p>
              </div>
              <div>
                <p className="text-sm text-gray-600">Available Qty</p>
                <p className="font-bold text-lg text-blue-600">{batch.quantity} units</p>
              </div>
              <div>
                <p className="text-sm text-gray-600">Status</p>
                <Badge>{batch.status}</Badge>
              </div>
            </div>
            <div className="grid grid-cols-2 md:grid-cols-3 gap-4 pt-4 border-t">
              <div>
                <p className="text-sm text-gray-600">Production Date</p>
                <p className="text-sm">{new Date(batch.production_date).toLocaleDateString()}</p>
              </div>
              <div>
                <p className="text-sm text-gray-600">Expiry Date</p>
                <p className="text-sm">{new Date(batch.expired_date).toLocaleDateString()}</p>
              </div>
              <div>
                <p className="text-sm text-gray-600">Days Left</p>
                <p className="text-sm font-semibold">
                  {calculateDaysLeft(batch.expired_date)} days
                </p>
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Assignment Form */}
      <Card>
        <CardHeader>
          <CardTitle>Assign to Outlet</CardTitle>
          <CardDescription>Select outlet and quantity to assign</CardDescription>
        </CardHeader>
        <CardContent>
          <form onSubmit={handleAssign} className="space-y-6">
            {/* Outlet Selection */}
            <div>
              <label className="block text-sm font-medium mb-2">Outlet *</label>
              {outlets.length === 0 ? (
                <div className="p-4 bg-yellow-50 border border-yellow-200 rounded-lg text-sm">
                  <p className="text-yellow-800 font-medium mb-2">No outlets available</p>
                  <p className="text-yellow-700 mb-3">Please create outlets first in the system.</p>
                  <Link href="/dashboard/outlets" className="text-yellow-900 hover:text-yellow-950 font-semibold underline">
                    Go to Outlets Management →
                  </Link>
                </div>
              ) : (
                <select
                  value={selectedOutlet}
                  onChange={(e) => setSelectedOutlet(e.target.value)}
                  required
                  className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
                >
                  <option value="">-- Select Outlet --</option>
                  {outlets.map((outlet) => (
                    <option key={outlet.id} value={outlet.id}>
                      {outlet.name}
                    </option>
                  ))}
                </select>
              )}
            </div>

            {/* Quantity Selection */}
            <div>
              <label className="block text-sm font-medium mb-2">Quantity to Assign *</label>
              <input
                type="number"
                min="1"
                max={batch?.quantity || 1}
                value={quantity}
                onChange={(e) => setQuantity(Math.min(parseInt(e.target.value) || 1, batch?.quantity || 1))}
                required
                className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
              />
              <p className="text-xs text-gray-600 mt-1">Max: {batch?.quantity} units</p>
            </div>

            {/* Notes */}
            <div>
              <label className="block text-sm font-medium mb-2">Notes (Optional)</label>
              <textarea
                value={notes}
                onChange={(e) => setNotes(e.target.value)}
                placeholder="Any special instructions or notes..."
                rows={4}
                className="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500"
              />
            </div>

            {/* Action Buttons */}
            <div className="flex gap-3 pt-4">
              <button
                type="submit"
                disabled={assigning}
                className="flex-1 bg-amber-600 hover:bg-amber-700 text-white py-2 rounded-lg font-semibold flex items-center justify-center gap-2 disabled:opacity-50"
              >
                {assigning ? (
                  <>
                    <Loader2 size={18} className="animate-spin" />
                    Assigning...
                  </>
                ) : (
                  <>
                    <CheckCircle size={18} />
                    Assign Batch
                  </>
                )}
              </button>
              <button
                type="button"
                onClick={() => {
                  localStorage.removeItem('selectedBatchId');
                  window.location.href = '/showcase';
                }}
                className="px-6 py-2 border border-gray-300 rounded-lg font-semibold hover:bg-gray-50"
              >
                Cancel
              </button>
            </div>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}

export default BatchAssignmentForm;
