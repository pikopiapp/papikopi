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
  Target, DollarSign, Receipt, Users, Briefcase, Calculator, Menu, X, HardDrive
  , ChevronDown, ChevronRight
} from 'lucide-react';

export default function GenericDashboardLayout({ children }: { children: ReactNode }) {
  const router = useRouter();
  const pathname = usePathname();
  const { logout, user } = useAuthStore();
  const [currentTime, setCurrentTime] = useState<string>('');
  const [isMounted, setIsMounted] = useState(false);
  const [sidebarOpen, setSidebarOpen] = useState(false);

  useEffect(() => {
    // Defer state updates to avoid synchronous setState inside effect (cascading renders)
    const init = setTimeout(() => {
      setIsMounted(true);
      setCurrentTime(new Date().toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' }));
    }, 0);

    const timer = setInterval(() => {
      setCurrentTime(new Date().toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' }));
    }, 60_000);

    return () => {
      clearTimeout(init);
      clearInterval(timer);
    };
  }, []);

  // Keep HTML `dark` class in sync with OS/browser preference so components using `.dark` or `dark:` work.
  useEffect(() => {
    if (typeof window === 'undefined') return;
    const mq = window.matchMedia('(prefers-color-scheme: dark)');
    const apply = (isDark: boolean) => {
      if (isDark) document.documentElement.classList.add('dark');
      else document.documentElement.classList.remove('dark');
    };
    apply(mq.matches);
    const handler = (e: MediaQueryListEvent) => apply(e.matches);
    try {
      mq.addEventListener('change', handler);
    } catch {
      mq.addListener(handler);
    }
    return () => {
      try { mq.removeEventListener('change', handler); } catch { mq.removeListener(handler); }
    };
  }, []);

  const handleLogout = () => {
    logout();
    router.push('/login');
  };

  const isActive = (path: string) => {
    // Treat some top-level routes as exact-only matches.
    // For example, '/dashboard/outlets' should not be considered active
    // when viewing '/dashboard/outlets/transactions'.
    const exactOnly = new Set(['/showcase', '/dashboard', '/dashboard/outlets']);
    if (exactOnly.has(path)) return pathname === path;
    return pathname === path || pathname.startsWith(path + '/');
  };

  const navGroups = [
    {
      title: 'Beranda',
      items: [
        { href: '/dashboard', label: 'Dashboard', icon: LayoutDashboard },
      ]
    },
    {
      title: 'Toko & Penjualan',
      items: [
        { href: '/dashboard/outlets', label: 'Outlet', icon: Store },
        { href: '/dashboard/staff', label: 'Barista', icon: Users2 },
        { href: '/dashboard/outlets/transactions', label: 'Penjualan', icon: Receipt },
        { href: '/dashboard/expenses', label: 'Pengeluaran', icon: Receipt },
        { href: '/dashboard/outlets/cash-handover', label: 'Setoran', icon: DollarSign },
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
        { href: '/dashboard/investor/outlets', label: 'Outlet Investasi', icon: Store },
        { href: '/dashboard/investor/profit-history', label: 'Laporan Profit', icon: TrendingDown },
        { href: '/dashboard/investor/settings', label: 'Pengaturan', icon: Settings },
      ]
    },
    {
      title: 'Laporan',
      items: [
        { href: '/dashboard/reports', label: 'Overview', icon: BarChart3 },
        { href: '/dashboard/reports/daily-summary', label: 'Daily Summary', icon: Calendar },
        { href: '/dashboard/reports/sales', label: 'Sales', icon: Receipt },
        { href: '/dashboard/reports/profitloss', label: 'Profit & Loss', icon: DollarSign },
        { href: '/dashboard/reports/product-performance', label: 'Product Performance', icon: Target },
        { href: '/dashboard/reports/returns-analysis', label: 'Returns Analysis', icon: RotateCw },
        { href: '/dashboard/reports/outlet-comparison', label: 'Outlet Comparison', icon: Store },
        { href: '/dashboard/reports/outlet-stock', label: 'Outlet Stock', icon: Archive },
        { href: '/dashboard/reports/allocation', label: 'Allocation', icon: Package },
        { href: '/dashboard/reports/warehouse', label: 'Warehouse', icon: Factory },
        { href: '/dashboard/reports/batch-aging', label: 'Batch Aging', icon: Clock },
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

  const [openGroups, setOpenGroups] = useState<Record<number, boolean>>(() => {
    // Always render collapsed on first render (server and initial client) to keep HTML deterministic.
    const serverInitial: Record<number, boolean> = {};
    navGroups.forEach((_, i) => (serverInitial[i] = false));
    return serverInitial;
  });

  // After hydration, hydrate openGroups from localStorage and open group containing active route.
  useEffect(() => {
    if (!isMounted) return;

    // load persisted state (if any)
    let persisted: Record<number, boolean> | null = null;
    try {
      const raw = localStorage.getItem('pk:openReportGroups');
      if (raw) persisted = JSON.parse(raw);
    } catch (e) {
      // ignore
    }

    if (persisted) {
      // defer to avoid synchronous setState in effect
      const t = setTimeout(() => setOpenGroups(persisted), 0);
      return () => clearTimeout(t);
    }

    // If a group contains the active route and the persisted state doesn't mention it,
    // open that group. Do not overwrite user's persisted choices.
    navGroups.forEach((g, i) => {
      const hasActive = g.items.some(item => isActive(item.href));
      const persistedHas = persisted ? Object.prototype.hasOwnProperty.call(persisted, String(i)) : false;
      if (hasActive && !persistedHas) {
        setOpenGroups(prev => ({ ...prev, [i]: true }));
      }
    });
  }, [isMounted, pathname]);

  // Persist openGroups to localStorage
  useEffect(() => {
    try {
      localStorage.setItem('pk:openReportGroups', JSON.stringify(openGroups));
    } catch (e) {
      // ignore
    }
  }, [openGroups]);

  return (
    <div className="flex h-screen">
      {/* Mobile Menu Button */}
      <button
        onClick={() => setSidebarOpen(!sidebarOpen)}
        className="fixed top-4 right-4 z-50 lg:hidden p-2 surface-card rounded-lg shadow-lg transition-colors"
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
        w-72 sidebar-gradient 
        text-white flex flex-col shadow-2xl
        transform transition-transform duration-300 lg:translate-x-0
        ${sidebarOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'}
      `}>
        {/* Logo */}
        <div className="p-6 border-b border-white/10">
          <div className="flex items-center gap-3">
            <div className="w-12 h-12 relative rounded-xl overflow-hidden shadow-lg surface-card shrink-0">
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
            <div className="surface-muted rounded-xl p-3">
                  <p className="text-sm font-medium text-gray-900 dark:text-white hidden lg:block">{user.user_metadata?.full_name ?? user.email}</p>
                  <p className="text-xs text-gray-600 dark:text-white/60 capitalize hidden lg:block">{user.user_metadata?.role ?? ''}</p>
                  <p className="text-xs text-gray-600 dark:text-white/60 lg:hidden">{user.user_metadata?.role ?? ''}</p>
                </div>
          </div>
        )}

        {/* Navigation */}
        <nav className="flex-1 overflow-y-auto p-4 space-y-4 md:space-y-6">
            {navGroups.map((group, idx) => (
              <div key={idx}>
                <button
                  onClick={() => setOpenGroups(prev => ({ ...prev, [idx]: !prev[idx] }))}
                  className="w-full flex items-center justify-between px-3 md:px-4 py-2 md:py-3 rounded-md hover:bg-white/05"
                  aria-expanded={isMounted ? !!openGroups[idx] : false}
                >
                  <div className="flex items-center gap-3">
                    <span className="text-xs font-semibold text-white/40 uppercase tracking-wider">{group.title}</span>
                  </div>
                  <div className="flex items-center gap-2">
                    <ChevronDown size={16} className={`${isMounted && openGroups[idx] ? 'rotate-180 transform' : ''} text-white/60 transition-transform duration-200`} />
                  </div>
                </button>
                  <div className={`overflow-hidden transition-all duration-300 mt-2 px-1 ${isMounted && openGroups[idx] ? 'max-h-96 opacity-100' : 'max-h-0 opacity-0'}`}>
                    <div className="space-y-1">
                    {group.items.map(({ href, label, icon: Icon }) => (
                      <Link
                        key={href}
                        href={href}
                        onClick={() => setSidebarOpen(false)}
                        className={`flex items-center gap-3 px-3 md:px-4 py-2 md:py-3 rounded-xl transition-all duration-200 justify-start ${
                          isActive(href)
                            ? 'accent-gradient text-accent shadow-lg font-semibold'
                            : 'text-white/70 hover:bg-white/10 hover:text-white'
                        }`}
                        title={label}
                      >
                        <Icon size={18} className="shrink-0" />
                        <span className="font-medium text-xs md:text-sm">{label}</span>
                        {isActive(href) && (
                          <div className="ml-auto w-2 h-2 bg-sidebar-foreground rounded-full animate-pulse" />
                        )}
                      </Link>
                    ))}
                    </div>
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
            <LogOut size={18} className="shrink-0" />
            <span className="font-medium text-xs md:text-sm">Logout</span>
          </button>
        </div>
      </aside>

      {/* Main Content */}
      <div className="flex-1 flex flex-col overflow-hidden lg:ml-0">
        {/* Top Bar */}
        <header className="surface-card shadow-sm px-4 lg:px-8 py-5 border-b flex items-center justify-between lg:pt-5 pt-14">
          <div>
            <h2 className="text-xl lg:text-2xl font-bold text-accent">
              <span className="lg:hidden">PapiKopi</span>
              <span className="hidden lg:inline">{allNavItems.find(item => isActive(item.href))?.label || 'Dashboard'}</span>
            </h2>
            <p className="text-xs lg:text-sm text-gray-500 mt-1 hidden lg:block">
              {new Date().toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' })}
            </p>
          </div>
          <div className="flex items-center gap-2 lg:gap-4">
            <div className="hidden md:flex items-center gap-3">
              <Link href="/dashboard/settings/backup" className="inline-flex items-center gap-2 px-3 py-2 rounded-lg bg-teal-600 text-white hover:bg-teal-700">
                <HardDrive size={16} />
                <span className="text-sm font-medium">Backup</span>
              </Link>
            </div>
            <div className="text-right hidden md:block">
              <p className="text-xs lg:text-sm text-gray-500">Current Time</p>
              <p className="font-semibold text-accent">
                {isMounted ? currentTime : ''}
              </p>
            </div>
          </div>
        </header>

        {/* Content */}
        <main className="flex-1 overflow-auto surface p-4 lg:p-8">
          {children}
        </main>
      </div>
    </div>
  );
}
