'use client';

import { useEffect, useState } from 'react';
import axios from 'axios';
import { X } from 'lucide-react';

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

interface BatchAllocationData {
  batch: {
    id: string;
    batch_code: string;
    product_name: string;
    total_quantity: number;
    status: string;
  };
  allocations: Allocation[];
  summary: {
    total_quantity: number;
    total_allocated: number;
    remaining: number;
    outlet_count: number;
  };
}

interface BatchAllocationViewProps {
  batchId: string;
}

export default function BatchAllocationView({ batchId }: BatchAllocationViewProps) {
  const [data, setData] = useState<BatchAllocationData | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedOutlet, setSelectedOutlet] = useState<Allocation | null>(null);

  useEffect(() => {
    const fetchAllocations = async () => {
      try {
        setLoading(true);
        const res = await axios.get(`/api/showcase/assignments/batch/get-allocations?batch_id=${batchId}`);
        
        if (res.data.success) {
          setData(res.data.data);
        } else {
          setError(res.data.error || 'Failed to fetch allocations');
        }
      } catch (err) {
        const msg = err instanceof Error ? err.message : 'Failed to fetch allocations';
        setError(msg);
        console.error('Fetch error:', err);
      } finally {
        setLoading(false);
      }
    };

    if (batchId) {
      fetchAllocations();
    }
  }, [batchId]);

  if (loading) {
    return <div className="p-4 text-gray-500">Loading allocations...</div>;
  }

  if (error) {
    return <div className="p-4 text-red-600">Error: {error}</div>;
  }

  if (!data) {
    return <div className="p-4 text-gray-500">No data available</div>;
  }

  const { batch, allocations, summary } = data;
  const percentAllocated = Math.round((summary.total_allocated / summary.total_quantity) * 100);

  return (
    <div className="space-y-6">
      {/* Batch Header */}
      <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
        <h3 className="font-bold text-lg text-blue-900">{batch.batch_code}</h3>
        <p className="text-blue-700">{batch.product_name}</p>
        <p className="text-sm text-blue-600 mt-1">Status: <span className="font-semibold">{batch.status}</span></p>
      </div>

      {/* Allocation Summary */}
      <div className="grid grid-cols-3 gap-4">
        <div className="bg-linear-to-br from-blue-50 to-blue-100 border border-blue-200 rounded-lg p-4">
          <p className="text-gray-600 text-sm">Total Qty</p>
          <p className="text-2xl font-bold text-blue-900">{summary.total_quantity}</p>
        </div>
        <div className="bg-linear-to-br from-green-50 to-green-100 border border-green-200 rounded-lg p-4">
          <p className="text-gray-600 text-sm">Allocated</p>
          <p className="text-2xl font-bold text-green-900">{summary.total_allocated}</p>
          <p className="text-xs text-green-700 mt-1">{percentAllocated}%</p>
        </div>
        <div className="bg-linear-to-br from-orange-50 to-orange-100 border border-orange-200 rounded-lg p-4">
          <p className="text-gray-600 text-sm">Remaining</p>
          <p className="text-2xl font-bold text-orange-900">{summary.remaining}</p>
        </div>
      </div>

      {/* Progress Bar */}
      <div className="space-y-2">
        <div className="flex justify-between text-sm">
          <span className="font-medium">Allocation Progress</span>
          <span className="text-gray-600">{summary.total_allocated} / {summary.total_quantity}</span>
        </div>
        <div className="w-full bg-gray-200 rounded-full h-3 overflow-hidden">
          <div
            className="bg-linear-to-r from-green-400 to-blue-500 h-full transition-all duration-300"
            style={{ width: `${percentAllocated}%` }}
          />
        </div>
      </div>

      {/* Allocations List */}
      <div>
        <h4 className="font-bold text-lg mb-3">Allocated to {summary.outlet_count} Outlet{summary.outlet_count !== 1 ? 's' : ''}</h4>
        <div className="space-y-3">
          {allocations.length > 0 ? (
            allocations.map((allocation) => (
              <div 
                key={allocation.id} 
                onClick={() => setSelectedOutlet(allocation)}
                className="bg-white border border-gray-200 rounded-lg p-4 hover:shadow-md transition-all cursor-pointer hover:border-blue-400"
              >
                <div className="flex justify-between items-start">
                  <div className="flex-1">
                    <h5 className="font-semibold text-gray-900">{allocation.outlet.name}</h5>
                    <p className="text-sm text-gray-600">{allocation.outlet.type}</p>
                    <p className="text-xs text-gray-500 mt-1">{allocation.outlet.address}</p>
                  </div>
                  <div className="text-right">
                    <p className="text-2xl font-bold text-green-600">{allocation.quantity}</p>
                    <p className="text-xs text-gray-500 mt-1">
                      {new Date(allocation.allocated_date).toLocaleDateString()}
                    </p>
                  </div>
                </div>
              </div>
            ))
          ) : (
            <div className="text-center py-8 text-gray-500">
              No allocations yet
            </div>
          )}
        </div>
      </div>

      {/* Detail Modal */}
      {selectedOutlet && (
        <div className="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-lg shadow-lg max-w-md w-full max-h-96 overflow-y-auto">
            {/* Modal Header */}
            <div className="bg-linear-to-r from-blue-600 to-blue-700 p-6 text-white flex justify-between items-start">
              <div>
                <h3 className="text-xl font-bold">{selectedOutlet.outlet.name}</h3>
                <p className="text-blue-100 text-sm mt-1">{selectedOutlet.outlet.type}</p>
              </div>
              <button
                onClick={() => setSelectedOutlet(null)}
                className="text-blue-100 hover:text-white transition-colors"
              >
                <X size={24} />
              </button>
            </div>

            {/* Modal Content */}
            <div className="p-6 space-y-4">
              {/* Address */}
              <div>
                <label className="block text-sm font-medium text-gray-700">Address</label>
                <p className="mt-1 text-gray-900">{selectedOutlet.outlet.address}</p>
              </div>

              {/* Batch Info */}
              <div>
                <label className="block text-sm font-medium text-gray-700">Batch</label>
                <p className="mt-1 text-gray-900 font-mono text-sm">{batch.batch_code}</p>
              </div>

              {/* Product */}
              <div>
                <label className="block text-sm font-medium text-gray-700">Product</label>
                <p className="mt-1 text-gray-900">{batch.product_name}</p>
              </div>

              {/* Quantity Allocated */}
              <div className="bg-green-50 border border-green-200 rounded-lg p-3">
                <label className="block text-sm font-medium text-green-900">Quantity Allocated</label>
                <p className="mt-1 text-2xl font-bold text-green-600">{selectedOutlet.quantity} unit</p>
              </div>

              {/* Allocation Date */}
              <div>
                <label className="block text-sm font-medium text-gray-700">Allocated Date</label>
                <p className="mt-1 text-gray-900">
                  {new Date(selectedOutlet.allocated_date).toLocaleString()}
                </p>
              </div>

              {/* Percentage of Total */}
              <div className="bg-blue-50 border border-blue-200 rounded-lg p-3">
                <label className="block text-sm font-medium text-blue-900">% of Batch</label>
                <p className="mt-1 text-lg font-semibold text-blue-600">
                  {Math.round((selectedOutlet.quantity / batch.total_quantity) * 100)}%
                </p>
              </div>

              {/* Close Button */}
              <button
                onClick={() => setSelectedOutlet(null)}
                className="w-full mt-4 px-4 py-2 bg-gray-200 text-gray-900 rounded-lg hover:bg-gray-300 transition-colors font-medium"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
