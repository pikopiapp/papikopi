'use client';

import { Settings } from 'lucide-react';

export default function SettingsPage() {
  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <Settings size={32} className="text-amber-600" />
        <h1 className="text-3xl font-bold">Settings</h1>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6 space-y-6">
        <h2 className="text-lg font-semibold">General Settings</h2>
        
        <div className="space-y-6 max-w-2xl">
          {/* Placeholder sections for future settings */}
          <div className="p-4 bg-gray-50 rounded-lg border border-gray-200">
            <h3 className="font-semibold text-gray-700 mb-2">Application Settings</h3>
            <p className="text-gray-600 text-sm">Settings coming soon...</p>
          </div>

          <div className="p-4 bg-gray-50 rounded-lg border border-gray-200">
            <h3 className="font-semibold text-gray-700 mb-2">Business Configuration</h3>
            <p className="text-gray-600 text-sm">Settings coming soon...</p>
          </div>

          <div className="p-4 bg-gray-50 rounded-lg border border-gray-200">
            <h3 className="font-semibold text-gray-700 mb-2">Advanced Options</h3>
            <p className="text-gray-600 text-sm">Settings coming soon...</p>
          </div>
        </div>
      </div>

      <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
        <p className="text-sm text-blue-800">
          <strong>Tip:</strong> Product and menu management has moved to the <strong>Products</strong> section in the sidebar.
        </p>
      </div>
    </div>
  );
}
