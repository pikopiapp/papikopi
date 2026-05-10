'use client';

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Settings, Clock, Wrench, Server, Bell, HardDrive } from 'lucide-react';

const settingsNav = [
  {
    label: 'Hari Bisnis',
    href: '/dashboard/settings',
    icon: Clock,
    description: 'Konfigurasi jam mulai hari bisnis',
    color: 'amber'
  },
  {
    label: 'Pemeliharaan',
    href: '/dashboard/settings/maintenance',
    icon: Wrench,
    description: 'Mode pemeliharaan sistem',
    color: 'orange'
  },
  {
    label: 'Status Server',
    href: '/dashboard/settings/server-status',
    icon: Server,
    description: 'Monitor kesehatan sistem',
    color: 'blue'
  },
  {
    label: 'Notifikasi',
    href: '/dashboard/settings/notifications',
    icon: Bell,
    description: 'Kelola preferensi notifikasi',
    color: 'purple'
  },
  {
    label: 'Backup & Pemulihan',
    href: '/dashboard/settings/backup',
    icon: HardDrive,
    description: 'Backup data dan pemulihan',
    color: 'teal'
  },
];

export default function SettingsNavigation({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const isMainPage = pathname === '/dashboard/settings';

  return (
    <div className="space-y-6">
      {/* Navigation Cards - Only show if on main page */}
      {isMainPage && (
        <>
          <div className="flex items-center gap-3 mb-6">
            <Settings size={32} className="text-gray-700" />
            <h1 className="text-3xl font-bold">Pengaturan Outlet</h1>
          </div>

          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-4">
            {settingsNav.map((item) => {
              const Icon = item.icon;
              const colorClasses = {
                amber: 'hover:bg-amber-50 border-amber-200 hover:border-amber-300',
                orange: 'hover:bg-orange-50 border-orange-200 hover:border-orange-300',
                blue: 'hover:bg-blue-50 border-blue-200 hover:border-blue-300',
                purple: 'hover:bg-purple-50 border-purple-200 hover:border-purple-300',
                teal: 'hover:bg-teal-50 border-teal-200 hover:border-teal-300',
              };

              const iconColors = {
                amber: 'text-amber-600',
                orange: 'text-orange-600',
                blue: 'text-blue-600',
                purple: 'text-purple-600',
                teal: 'text-teal-600',
              };

              return (
                <Link key={item.href} href={item.href}>
                  <div className={`p-6 rounded-lg border border-gray-200 cursor-pointer transition-all ${colorClasses[item.color as keyof typeof colorClasses]}`}>
                    <Icon size={28} className={`mb-3 ${iconColors[item.color as keyof typeof iconColors]}`} />
                    <h3 className="font-semibold text-gray-900 mb-1">{item.label}</h3>
                    <p className="text-sm text-gray-600">{item.description}</p>
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
        </>
      )}

      {/* Render children (sub-pages) */}
      {children}
    </div>
  );
}
