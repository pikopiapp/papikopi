'use client';

import React, { useState, useEffect } from 'react';
import { useSearchParams } from 'next/navigation';
import BatchAllocationView from '@/app/components/showcase/BatchAllocationView';
import { Suspense } from 'react';

function AllocationViewerContent() {
  const searchParams = useSearchParams();
  const [batchId, setBatchId] = useState<string>('');

  useEffect(() => {
    const queryBatchId = searchParams.get('batch_id');
    if (queryBatchId) {
      setBatchId(queryBatchId);
    } else {
      // Default batch ID
      setBatchId('f9445328-a0db-4d55-ad8d-0dc5e91600f4');
    }
  }, [searchParams]);

  const handleBack = () => {
    window.history.back();
  };

  return (
    <div className="min-h-screen bg-gray-50 p-6">
      <div className="max-w-4xl mx-auto">
        <div className="mb-6 flex justify-between items-start">
          <div>
            <h1 className="text-3xl font-bold text-gray-900 mb-2">Batch Allocation Details</h1>
            <p className="text-gray-600">View and manage batch allocations across outlets</p>
          </div>
          <button
            onClick={handleBack}
            className="px-4 py-2 bg-gray-600 text-white rounded-lg hover:bg-gray-700 transition-colors"
          >
            ← Back
          </button>
        </div>

        {/* Batch ID Input */}
        <div className="bg-white rounded-lg shadow p-4 mb-6">
          <label className="block text-sm font-medium text-gray-700 mb-2">
            Batch ID
          </label>
          <input
            type="text"
            value={batchId}
            onChange={(e) => setBatchId(e.target.value)}
            className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            placeholder="Enter batch ID..."
          />
          <p className="text-xs text-gray-500 mt-2">
            {searchParams.get('batch_id') ? 'Loaded from warehouse' : 'Default batch'}
          </p>
        </div>

        {/* Allocation View */}
        <div className="bg-white rounded-lg shadow p-6">
          {batchId ? (
            <BatchAllocationView batchId={batchId} />
          ) : (
            <div className="text-center py-12 text-gray-500">
              Loading batch information...
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default function AllocationViewerPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center min-h-screen">Loading...</div>}>
      <AllocationViewerContent />
    </Suspense>
  );
}
