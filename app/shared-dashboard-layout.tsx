'use client';

import { ReactNode } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { useRouter, usePathname } from 'next/navigation';
import { useAuthStore } from '@/lib/store/auth';
import { 
  LogOut, LayoutDashboard, TrendingDown, Archive,
  Factory, ShoppingBag, Users2, Store, ClipboardList, Settings, MessageSquare,
  Package, RotateCw, Eye, Calendar, Zap, BarChart3, Clock, AlertCircle,
  Target, DollarSign, Receipt, Users, Briefcase
} from 'lucide-react';

export default function GenericDashboardLayout({ children }: { children: ReactNode }) {
  const router = useRouter();
  const pathname = usePathname();
  const { logout, user } = useAuthStore();

  const handleLogout = () => {
    logout();
    router.push('/login');
  };

  const isActive = (path: string) => {
    if (path === '/showcase' || path === '/dashboard') {
      return pathname === path;
    }
    return pathname === path || pathname.startsWith(path + '/');
  };

  const navGroups = [
    {
      title: 'Dashboard',
      items: [
        { href: '/dashboard', label: 'Overview', icon: LayoutDashboard },
        { href: '/dashboard/analytics', label: 'Analytics', icon: TrendingDown },
      ]
    },
    {
      title: 'Warehouse',
      items: [
        { href: '/dashboard/warehouse', label: 'Production', icon: Factory },
        { href: '/dashboard/inventory', label: 'Inventory', icon: Archive },
      ]
    },
    {
      title: 'Showcase',
      items: [
        { href: '/showcase', label: 'Manage Showcase', icon: LayoutDashboard },
        { href: '/showcase/assign', label: 'Alokasi Produk', icon: Package },
        { href: '/showcase/returns', label: 'Kelola Returns', icon: RotateCw },
        { href: '/showcase/tracking', label: 'Lacak Alokasi', icon: Eye },
      ]
    },
    {
      title: 'Outlets',
      items: [
        { href: '/dashboard/outlets', label: 'Outlets', icon: Store },
        { href: '/dashboard/outlets/stock', label: 'Outlet Stock', icon: Archive },
        { href: '/dashboard/outlets/performance', label: 'Performance', icon: Target },
        { href: '/dashboard/staff', label: 'Barista', icon: Users2 },
        { href: '/dashboard/outlets/cash-handover', label: 'Cash Handover', icon: DollarSign },
        { href: '/dashboard/outlets/transactions', label: 'Transactions', icon: Receipt },
      ]
    },
    {
      title: 'Reports',
      items: [
        { href: '/dashboard/reports/daily-summary', label: 'Daily Summary', icon: Calendar },
        { href: '/dashboard/reports/sales', label: 'Report Penjualan', icon: ClipboardList },
        { href: '/dashboard/reports/profitloss', label: 'Rugi Laba', icon: TrendingDown },
        { href: '/dashboard/reports/outlet-stock', label: 'Stok Outlet', icon: Archive },
        { href: '/dashboard/reports/product-performance', label: 'Product Performance', icon: Zap },
        { href: '/dashboard/reports/outlet-comparison', label: 'Outlet Comparison', icon: BarChart3 },
        { href: '/dashboard/reports/batch-aging', label: 'Batch Aging', icon: Clock },
        { href: '/dashboard/reports/returns-analysis', label: 'Returns Analysis', icon: AlertCircle },
        { href: '/dashboard/reports/allocation', label: 'Alokasi Produk', icon: Package },
        { href: '/dashboard/reports/warehouse', label: 'Warehouse Summary', icon: Factory },
      ]
    },
    {
      title: 'Configuration',
      items: [
        { href: '/dashboard/users', label: 'Manage Users', icon: Users },
        { href: '/dashboard/users/investor-management', label: 'Investor Management', icon: Briefcase },
        { href: '/dashboard/outlets', label: 'Outlets', icon: Store },
        { href: '/dashboard/products', label: 'Products', icon: ShoppingBag },
        { href: '/dashboard/messaging', label: 'Messaging', icon: MessageSquare },
        { href: '/dashboard/settings', label: 'Settings', icon: Settings },
      ]
    }
  ];

  const allNavItems = navGroups.flatMap(group => group.items);

  return (
    <div className="flex h-screen bg-[#1F4E5F]">
      {/* Sidebar */}
      <aside className="w-72 bg-gradient-to-b from-[#1F4E5F] via-[#163944] to-[#1F4E5F] text-white flex flex-col shadow-2xl">
        {/* Logo */}
        <div className="p-6 border-b border-white/10">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 relative rounded-xl overflow-hidden shadow-lg bg-white">
              <Image
                src="/logo.png"
                alt="PapiKopi Logo"
                fill
                className="object-cover"
              />
            </div>
            <div>
              <h1 className="text-xl font-bold text-white">
                PapiKopi
              </h1>
              <p className="text-xs text-white/60">Outlet Management</p>
            </div>
          </div>
        </div>

        {/* User Info */}
        {user && (
          <div className="px-6 py-4 border-b border-white/10">
            <div className="bg-white/10 rounded-xl p-3">
              <p className="text-sm font-medium text-white">{user.name}</p>
              <p className="text-xs text-white/60 capitalize">{user.role}</p>
            </div>
          </div>
        )}

        {/* Navigation */}
        <nav className="flex-1 overflow-y-auto p-4 space-y-6">
          {navGroups.map((group, idx) => (
            <div key={idx}>
              <h3 className="text-xs font-semibold text-white/40 uppercase tracking-wider mb-3 px-3">
                {group.title}
              </h3>
              <div className="space-y-1">
                {group.items.map(({ href, label, icon: Icon }) => (
                  <Link
                    key={href}
                    href={href}
                    className={`flex items-center gap-3 px-4 py-3 rounded-xl transition-all duration-200 ${
                      isActive(href)
                        ? 'bg-gradient-to-r from-[#F59E0B] to-[#FFB703] text-[#163944] shadow-lg shadow-[#F59E0B]/30 font-semibold'
                        : 'text-white/70 hover:bg-white/10 hover:text-white'
                    }`}
                  >
                    <Icon size={18} />
                    <span className="font-medium text-sm">{label}</span>
                    {isActive(href) && (
                      <div className="ml-auto w-2 h-2 bg-[#163944] rounded-full animate-pulse" />
                    )}
                  </Link>
                ))}
              </div>
            </div>
          ))}
        </nav>

        {/* Logout */}
        <div className="p-4 border-t border-white/10">
          <button
            onClick={handleLogout}
            className="w-full flex items-center gap-3 px-4 py-3 rounded-xl bg-red-500/20 hover:bg-red-500/30 text-red-300 hover:text-red-200 transition-all duration-200"
          >
            <LogOut size={18} />
            <span className="font-medium text-sm">Logout</span>
          </button>
        </div>
      </aside>

      {/* Main Content */}
      <div className="flex-1 flex flex-col overflow-hidden">
        {/* Top Bar */}
        <header className="bg-white shadow-sm px-8 py-5 border-b border-gray-200 flex items-center justify-between">
          <div>
            <h2 className="text-2xl font-bold text-[#1F4E5F]">
              {allNavItems.find(item => isActive(item.href))?.label || 'Dashboard'}
            </h2>
            <p className="text-sm text-gray-500 mt-1">
              {new Date().toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            </p>
          </div>
          <div className="flex items-center gap-4">
            <div className="text-right">
              <p className="text-sm text-gray-500">Current Time</p>
              <p className="font-semibold text-[#1F4E5F]">
                {new Date().toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' })}
              </p>
            </div>
          </div>
        </header>

        {/* Content */}
        <main className="flex-1 overflow-auto bg-gray-50 p-8">
          {children}
        </main>
      </div>
    </div>
  );
}
