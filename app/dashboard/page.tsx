"use client";

import { useAuth } from "@/app/providers/auth-provider";
import { useRouter } from "next/navigation";
import { ShoppingCart, TrendingUp, Users, Store, Coffee, AlertCircle, DollarSign } from "lucide-react";
import { useEffect, useState } from "react";
import { supabase } from "@/lib/supabase";

interface DashboardStats {
  todayRevenue: number;
  todayProfit: number;
  todayTransactions: number;
  totalOutlets: number;
  totalBaristas: number;
  activeOutlets: number;
}

export default function DashboardPage() {
  const { user } = useAuth();

  const router = useRouter();
  const [stats, setStats] = useState<DashboardStats>({
    todayRevenue: 0,
    todayProfit: 0,
    todayTransactions: 0,
    totalOutlets: 0,
    totalBaristas: 0,
    activeOutlets: 0
  });
  // const [loading, setLoading] = useState(true);

  const [error, setError] = useState<string | null>(null);

  const fetchDashboardStats = async () => {
    try {
      setError(null);


      const today = new Date().toISOString().split('T')[0];

      // Get today's sales
      const { data: todaysSales, error: salesError } = await supabase
        .from('sales')
        .select('id, total_amount, profit')
        .gte('created_at', `${today}T00:00:00`)
        .lte('created_at', `${today}T23:59:59`);

      if (salesError) throw salesError;

      type SaleAggRow = { total_amount?: number | string | null; profit?: number | string | null };
      const todayRevenue = (todaysSales ?? []).reduce(
        (sum: number, s) => sum + Number((s as SaleAggRow).total_amount ?? 0),
        0
      );
      const todayProfit = (todaysSales ?? []).reduce(
        (sum: number, s) => sum + Number((s as SaleAggRow).profit ?? 0),
        0
      );



      const todayTransactions = todaysSales?.length || 0;

      // Get outlets count
      const { data: outlets, error: outletsError } = await supabase
        .from('outlets')
        .select('id', { count: 'exact' });

      if (outletsError) throw outletsError;
      const totalOutlets = outlets?.length || 0;

      // Get baristas count
      const { data: baristas, error: baristasError } = await supabase
        .from('users')
        .select('id', { count: 'exact' })
        .eq('role', 'barista');

      if (baristasError) throw baristasError;
      const totalBaristas = baristas?.length || 0;

      // Get active outlets (outlets with sales today)
      type SaleRow = { outlet_id?: string | null };
      const activeOutletsSet = new Set((todaysSales ?? []).map((s) => (s as SaleRow).outlet_id).filter(Boolean));
      const activeOutlets = activeOutletsSet.size;


      setStats({
        todayRevenue,
        todayProfit,
        todayTransactions,
        totalOutlets,
        totalBaristas,
        activeOutlets
      });
    } catch (err) {
      console.error('Failed to fetch dashboard stats:', err);
      setError('Gagal memuat data dashboard');
    } finally {
    }

  };

  useEffect(() => {
    const t = setTimeout(() => {
      fetchDashboardStats();
    }, 0);
    return () => clearTimeout(t);
  }, []);

  const role = (user?.user_metadata?.role ?? '') as string;


  return (
    <div className="min-h-screen bg-gray-50">
      {/* Navbar */}
      <nav className="bg-white shadow">

      </nav>

      {/* Main Content */}
      <div className="max-w-7xl mx-auto p-6">
        <div className="mb-8 bg-white p-6 rounded-lg shadow border border-gray-200">
          <h2 className="text-3xl font-bold text-gray-800 mb-2">Selamat datang, {user?.user_metadata?.full_name ?? user?.email ?? 'Pengguna'}!</h2>
          <p className="text-gray-600">
            Role: <span className="font-semibold capitalize">{role}</span>
          </p>
        </div>


        {/* Quick Actions */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-6 mb-8">
          {[
            { href: '/dashboard/pos', icon: ShoppingCart, title: 'POS', desc: 'Transaksi Penjualan' },
            { href: '/dashboard/sales', icon: TrendingUp, title: 'Laporan', desc: 'Penjualan & Profit' },
            { href: '/dashboard/products', icon: ShoppingCart, title: 'Produk', desc: 'Kelola Produk' },
            { href: '/dashboard/users', icon: Users, title: 'Tim', desc: 'Manajemen Pengguna' },
            { href: '/dashboard/wages', icon: DollarSign, title: 'Gajian', desc: 'Upah & Pembayaran' },
          ].map((a) => (
            <div
              key={a.href}
              onClick={() => router.push(a.href)}
              className="bg-white p-6 rounded-lg shadow hover:shadow-lg cursor-pointer transition transform hover:scale-105"
            >
              <a.icon className="w-8 h-8 text-amber-600 mb-4" />
              <h3 className="font-bold text-gray-800">{a.title}</h3>
              <p className="text-sm text-gray-600">{a.desc}</p>
            </div>
          ))}
        </div>

        {/* Status Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
          <div className="bg-linear-to-br from-amber-100 to-amber-50 p-6 rounded-lg border border-amber-200">
            <p className="text-amber-800 text-sm font-semibold">Omzet Hari Ini</p>
            <p className="text-3xl font-bold text-amber-900 mt-2">
              Rp {stats.todayRevenue.toLocaleString('id-ID')}
            </p>
          </div>

          <div className="bg-linear-to-br from-green-100 to-green-50 p-6 rounded-lg border border-green-200">
            <p className="text-green-800 text-sm font-semibold">Profit Hari Ini</p>
            <p className="text-3xl font-bold text-green-900 mt-2">
              Rp {stats.todayProfit.toLocaleString('id-ID')}
            </p>
          </div>

          <div className="bg-linear-to-br from-blue-100 to-blue-50 p-6 rounded-lg border border-blue-200">
            <p className="text-blue-800 text-sm font-semibold">Transaksi Hari Ini</p>
            <p className="text-3xl font-bold text-blue-900 mt-2">{stats.todayTransactions}</p>
          </div>
        </div>

        {/* Additional Stats */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
          <div className="bg-white p-6 rounded-lg shadow border-l-4 border-purple-500">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-gray-600 text-sm font-semibold mb-1">Total Outlet</p>
                <p className="text-2xl font-bold text-gray-800">{stats.totalOutlets}</p>
              </div>
              <Store className="w-10 h-10 text-purple-500 opacity-20" />
            </div>
            <p className="text-xs text-gray-500 mt-2">
              {stats.activeOutlets} aktif hari ini
            </p>
          </div>

          <div className="bg-white p-6 rounded-lg shadow border-l-4 border-orange-500">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-gray-600 text-sm font-semibold mb-1">Total Barista</p>
                <p className="text-2xl font-bold text-gray-800">{stats.totalBaristas}</p>
              </div>
              <Coffee className="w-10 h-10 text-orange-500 opacity-20" />
            </div>
          </div>

          <div className="bg-white p-6 rounded-lg shadow border-l-4 border-cyan-500">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-gray-600 text-sm font-semibold mb-1">Rata-rata Transaksi</p>
                <p className="text-2xl font-bold text-gray-800">
                  {stats.todayTransactions > 0 
                    ? `Rp ${Math.round(stats.todayRevenue / stats.todayTransactions).toLocaleString('id-ID')}`
                    : 'Rp 0'}
                </p>
              </div>
              <TrendingUp className="w-10 h-10 text-cyan-500 opacity-20" />
            </div>
          </div>
        </div>

        {/* Error Message */}
        {error && (
          <div className="bg-red-50 border-l-4 border-red-500 p-4 rounded-lg mb-8 flex items-start gap-3">
            <AlertCircle className="w-5 h-5 text-red-500 shrink-0 mt-0.5" />
            <p className="text-red-800">{error}</p>
          </div>
        )}
      </div>
    </div>
  );
}
