'use client';

import React from 'react';
import { AssignProductNewComponent } from '@/app/components/showcase/AssignProductNewComponent';

export default function AssignProductPage() {
  return (
    <div className="p-6 space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Alokasi Produk ke Outlet</h1>
        <p className="text-gray-600">Kelola alokasi produk dari showcase ke outlet</p>
      </div>
      <AssignProductNewComponent />
    </div>
  );
}
