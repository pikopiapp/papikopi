'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Settings, Clock, Wrench, Server, Bell, HardDrive, ChevronRight } from 'lucide-react';
import { ReactNode } from 'react';

const settingsNav = [
  {
    label: 'Hari Bisnis',
    href: '/dashboard/settings/business-day',
    icon: Clock,
    description: 'Konfigurasi jam mulai hari bisnis',
  },
  {
    label: 'Pemeliharaan',
    href: '/dashboard/settings/maintenance',
    icon: Wrench,
    description: 'Mode pemeliharaan sistem',
  },
  {
    label: 'Status Server',
    href: '/dashboard/settings/server-status',
    icon: Server,
    description: 'Monitor kesehatan sistem',
  },
  {
    label: 'Notifikasi',
    href: '/dashboard/settings/notifications',
    icon: Bell,
    description: 'Kelola preferensi notifikasi',
  },
  {
    label: 'Backup & Pemulihan',
    href: '/dashboard/settings/backup',
    icon: HardDrive,
    description: 'Backup data dan pemulihan',
  },
];

export default function SettingsLayout({ children }: { children: ReactNode }) {
  const pathname = usePathname();
  const isMainPage = pathname === '/dashboard/settings';
  const currentNav = settingsNav.find(item => item.href === pathname);

  return (
    <div>
      {isMainPage ? (
        // Main settings page with cards
        <div className="p-6 space-y-6">
          <div className="flex items-center gap-3 mb-6">
            <Settings size={32} className="text-gray-700" />
            <h1 className="text-3xl font-bold">Pengaturan Outlet</h1>
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4 mb-6">
            {settingsNav.map((item) => {
              const Icon = item.icon;
              return (
                <Link key={item.href} href={item.href}>
                  <div className="h-full p-6 rounded-lg border-2 border-gray-200 hover:border-gray-300 hover:shadow-md transition-all cursor-pointer group">
                    <Icon size={28} className="mb-3 text-gray-600 group-hover:text-blue-600 transition-colors" />
                    <h3 className="font-semibold text-gray-900 mb-1 group-hover:text-blue-600 transition-colors">{item.label}</h3>
                    <p className="text-sm text-gray-600 mb-3">{item.description}</p>
                    <div className="flex items-center text-blue-600 text-sm font-medium opacity-0 group-hover:opacity-100 transition-opacity">
                      Buka <ChevronRight size={16} className="ml-1" />
                    </div>
                  </div>
                </Link>
              );
            })}
          </div>

          <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
            <p className="text-sm text-blue-800">
              <strong>💡 Tips:</strong> Konfigurasi outlet dikelola secara terpisah. Setiap outlet dapat memiliki 
              pengaturan hari bisnis, notifikasi, dan backup yang berbeda.
            </p>
          </div>
        </div>
      ) : (
        // Sub-page with top navigation breadcrumb only
        <div className="p-6 space-y-6">
          {/* Top Navigation Breadcrumb - Minimal Navigation */}
          <div className="flex items-center gap-3 mb-6">
            <Link 
              href="/dashboard/settings"
              className="flex items-center gap-2 text-gray-600 hover:text-gray-900 transition-colors"
            >
              <Settings size={20} />
              <span className="text-sm font-medium">Pengaturan</span>
            </Link>
            <ChevronRight size={16} className="text-gray-400" />
            {currentNav && (
              <>
                {(() => {
                  const Icon = currentNav.icon;
                  return <Icon size={20} className="text-blue-600" />;
                })()}
                <span className="text-sm font-semibold text-gray-900">{currentNav.label}</span>
              </>
            )}
          </div>

          {/* Main Content */}
          {children}
        </div>
      )}
    </div>
  );
}
