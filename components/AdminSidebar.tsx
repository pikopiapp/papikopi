"use client";
import Link from 'next/link';
import React from 'react';

export default function AdminSidebar() {
  return (
    <aside className="w-64 bg-white border-r">
      <div className="p-4 border-b flex items-center justify-between">
        <h2 className="text-lg font-semibold">Admin</h2>
        <Link href="/admin" className="text-sm text-blue-600 hover:underline">Overview</Link>
      </div>

      <nav className="p-4">
        <div className="mb-4">
          <h3 className="text-xs text-gray-500 uppercase mb-2">Database</h3>
          <ul className="space-y-2">
            <li>
              <Link href="/admin/database/sales" className="block px-3 py-2 rounded hover:bg-gray-100">
                Sales
              </Link>
            </li>
            <li>
              <Link href="/admin/database/sale-items" className="block px-3 py-2 rounded hover:bg-gray-100">
                Sale Items
              </Link>
            </li>
          </ul>
        </div>
      </nav>
    </aside>
  );
}
