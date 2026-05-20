'use client';

import { ReactNode, useState, useEffect } from 'react';
import Link from 'next/link';
import Image from 'next/image';
import { useRouter, usePathname } from 'next/navigation';
import { useAuthStore } from '@/lib/store/auth';
import { 
  LogOut, LayoutDashboard, TrendingDown, Archive,
  Factory, ShoppingBag, Users2, Store, ClipboardList, Settings, MessageSquare,
  Package, RotateCw, Eye, Calendar, Zap, BarChart3, Clock, AlertCircle,
  Target, DollarSign, Receipt, Users, Briefcase, Calculator, Menu, X
} from 'lucide-react';

export default function GenericDashboardLayout({ children }: { children: ReactNode }) {
  const router = useRouter();
  const pathname = usePathname();
  const { logout, user } = useAuthStore();
  const [currentTime, setCurrentTime] = useState<string>('');
  const [isMounted, setIsMounted] = useState(false);
  const [sidebarOpen, setSidebarOpen] = useState(false);

  useEffect(() => {
    setIsMounted(true);
    setCurrentTime(new Date().toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' }));
    
    const timer = setInterval(() => {
      setCurrentTime(new Date().toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' }));
    }, 1000);

    return () => clearInterval(timer);
  }, []);

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
      title: 'Home',
      items: [
        { href: '/dashboard', label: 'Dashboard', icon: LayoutDashboard },
      ]
    },
    {
      title: 'Toko & Penjualan',
      items: [
        { href: '/dashboard/outlets', label: 'Outlets', icon: Store },
        { href: '/dashboard/staff', label: 'Barista', icon: Users2 },
        { href: '/dashboard/outlets/transactions', label: 'Penjualan', icon: Receipt },
        { href: '/dashboard/outlets/cash-handover', label: 'Cash Handover', icon: DollarSign },
        { href: '/dashboard/wages', label: 'Gajian', icon: DollarSign },
        { href: '/dashboard/bonus-calculator', label: 'Bonus Calculator', icon: Calculator },
        { href: '/dashboard/outlets/performance', label: 'Performance', icon: Target },
      ]
    },
    {
      title: 'Produksi & Stok',
      items: [
        { href: '/dashboard/warehouse', label: 'Produksi', icon: Factory },
        { href: '/dashboard/inventory', label: 'Inventaris', icon: Archive },
        { href: '/showcase', label: 'Showcase', icon: LayoutDashboard },
        { href: '/showcase/assign', label: 'Alokasi Produk', icon: Package },
        { href: '/showcase/returns', label: 'Returns', icon: RotateCw },
      ]
    },
    {
      title: 'Investor',
      items: [
        { href: '/dashboard/investor', label: 'Dashboard', icon: BarChart3 },
        { href: '/dashboard/investor/outlets', label: 'Outlets Investasi', icon: Store },
        { href: '/dashboard/investor/profit-history', label: 'Laporan Profit', icon: TrendingDown },
        { href: '/dashboard/investor/settings', label: 'Pengaturan', icon: Settings },
      ]
    },
    {
      title: 'Laporan',
      items: [
        { href: '/dashboard/reports/daily-summary', label: 'Ringkasan Harian', icon: Calendar },
        { href: '/dashboard/reports/sales', label: 'Penjualan', icon: ClipboardList },
        { href: '/dashboard/reports/profitloss', label: 'Rugi Laba', icon: TrendingDown },
        { href: '/dashboard/reports/outlet-stock', label: 'Stok Outlet', icon: Archive },
        { href: '/dashboard/reports/product-performance', label: 'Performa Produk', icon: Zap },
        { href: '/dashboard/reports/outlet-comparison', label: 'Perbandingan Outlet', icon: BarChart3 },
        { href: '/dashboard/reports/batch-aging', label: 'Umur Batch', icon: Clock },
        { href: '/dashboard/reports/returns-analysis', label: 'Analisis Returns', icon: AlertCircle },
      ]
    },
    {
      title: 'Kelola Sistem',
      items: [
        { href: '/dashboard/users', label: 'User', icon: Users },
        { href: '/dashboard/users/investor-management', label: 'Investor', icon: Briefcase },
        { href: '/dashboard/products', label: 'Produk', icon: ShoppingBag },
        { href: '/dashboard/messaging', label: 'Chat', icon: MessageSquare },
        { href: '/dashboard/settings', label: 'Pengaturan Sistem', icon: Settings },
      ]
    }
  ];

  const allNavItems = navGroups.flatMap(group => group.items);

  return (
    <div className="flex h-screen bg-[#1F4E5F]">
      {/* Mobile Menu Button */}
      <button
        onClick={() => setSidebarOpen(!sidebarOpen)}
        className="fixed top-4 right-4 z-50 lg:hidden p-2 bg-white rounded-lg shadow-lg hover:bg-gray-100 transition-colors"
      >
        {sidebarOpen ? <X size={24} /> : <Menu size={24} />}
      </button>

      {/* Overlay for mobile */}
      {sidebarOpen && (
        <div
          className="fixed inset-0 bg-black/50 z-30 lg:hidden"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside className={`
        fixed lg:static top-0 left-0 h-screen z-40 
        w-72 bg-gradient-to-b from-[#1F4E5F] via-[#163944] to-[#1F4E5F] 
        text-white flex flex-col shadow-2xl
        transform transition-transform duration-300 lg:translate-x-0
        ${sidebarOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'}
      `}>
        {/* Logo */}
        <div className="p-6 border-b border-white/10">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 relative rounded-xl overflow-hidden shadow-lg bg-white flex-shrink-0">
              <Image
                src="/logo.png"
                alt="PapiKopi Logo"
                fill
                sizes="48px"
                className="object-cover"
              />
            </div>
            <div className="hidden lg:block">
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
              <p className="text-sm font-medium text-white hidden lg:block">{user.name}</p>
              <p className="text-xs text-white/60 capitalize hidden lg:block">{user.role}</p>
              <p className="text-xs text-white/60 lg:hidden">{user.role}</p>
            </div>
          </div>
        )}

        {/* Navigation */}
        <nav className="flex-1 overflow-y-auto p-4 space-y-4 md:space-y-6">
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
                    onClick={() => setSidebarOpen(false)}
                    className={`flex items-center gap-3 px-3 md:px-4 py-2 md:py-3 rounded-xl transition-all duration-200 justify-start ${
                      isActive(href)
                        ? 'bg-gradient-to-r from-[#F59E0B] to-[#FFB703] text-[#163944] shadow-lg shadow-[#F59E0B]/30 font-semibold'
                        : 'text-white/70 hover:bg-white/10 hover:text-white'
                    }`}
                    title={label}
                  >
                    <Icon size={18} className="flex-shrink-0" />
                    <span className="font-medium text-xs md:text-sm">{label}</span>
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
            className="w-full flex items-center gap-3 px-3 md:px-4 py-2 md:py-3 rounded-xl bg-red-500/20 hover:bg-red-500/30 text-red-300 hover:text-red-200 transition-all duration-200 justify-start"
            title="Logout"
          >
            <LogOut size={18} className="flex-shrink-0" />
            <span className="font-medium text-xs md:text-sm">Logout</span>
          </button>
        </div>
      </aside>

      {/* Main Content */}
      <div className="flex-1 flex flex-col overflow-hidden lg:ml-0">
        {/* Top Bar */}
        <header className="bg-white shadow-sm px-4 lg:px-8 py-5 border-b border-gray-200 flex items-center justify-between lg:pt-5 pt-14">
          <div>
            <h2 className="text-xl lg:text-2xl font-bold text-[#1F4E5F]">
              <span className="lg:hidden">PapiKopi</span>
              <span className="hidden lg:inline">{allNavItems.find(item => isActive(item.href))?.label || 'Dashboard'}</span>
            </h2>
            <p className="text-xs lg:text-sm text-gray-500 mt-1 hidden lg:block">
              {new Date().toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            </p>
          </div>
          <div className="flex items-center gap-2 lg:gap-4">
            <div className="text-right hidden md:block">
              <p className="text-xs lg:text-sm text-gray-500">Current Time</p>
              <p className="font-semibold text-[#1F4E5F]">
                {isMounted ? currentTime : ''}
              </p>
            </div>
          </div>
        </header>

        {/* Content */}
        <main className="flex-1 overflow-auto bg-gray-50 p-4 lg:p-8">
          {children}
        </main>
      </div>
    </div>
  );
}
