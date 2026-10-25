import { ReactNode } from 'react';
import Link from 'next/link';

export default function CafeLayout({ children }: { children: ReactNode }) {
  return (
    <div className="min-h-screen bg-gray-50">
      <header className="bg-white border-b sticky top-0 z-10">
        <div className="max-w-7xl mx-auto px-4 py-3 flex items-center justify-between">
          <div className="flex items-center gap-4">
            <h1 className="text-lg font-semibold text-gray-900">Kelola Cafe / Foodcourt</h1>
            <nav className="flex gap-4 text-sm">
              <Link href="/cafe" className="text-blue-600 hover:underline">Daftar Cafe</Link>
              <Link href="/cafe/laporan" className="text-gray-600 hover:text-blue-600 hover:underline">Laporan</Link>
            </nav>
          </div>
          <Link href="/dashboard" className="text-sm text-gray-600 hover:text-blue-600 hover:underline">
            ← Kembali ke Dashboard
          </Link>
        </div>
      </header>
      <main className="max-w-7xl mx-auto px-4 py-6">{children}</main>
    </div>
  );
}