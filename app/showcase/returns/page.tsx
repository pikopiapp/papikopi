'use client';

import React from 'react';
import { ManageReturnsComponent } from '@/app/components/showcase/ManageReturnsComponent';

export default function ManageReturnsPage() {
  return (
    <div className="p-6 space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Manage Product Returns</h1>
        <p className="text-gray-600">Check product condition and resolve returns</p>
      </div>
      <ManageReturnsComponent />
    </div>
  );
}
