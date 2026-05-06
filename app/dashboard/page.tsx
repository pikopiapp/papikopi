"use client";

import { useAuth } from "@/app/providers/auth-provider";
import { useRouter } from "next/navigation";
import { LogOut, ShoppingCart, TrendingUp, Users } from "lucide-react";

export default function DashboardPage() {
  const { user, logout } = useAuth();
  const router = useRouter();

  const handleLogout = async () => {
    await logout();
    router.push("/login");
  };

  const role = user?.role as string;

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Navbar */}
      <nav className="bg-white shadow">
        <div className="max-w-7xl mx-auto px-4 py-4 flex justify-between items-center">
          <h1 className="text-2xl font-bold text-amber-900">PapiKopi Dashboard</h1>
          <button
            onClick={handleLogout}
            className="flex items-center gap-2 bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg transition"
          >
            <LogOut className="w-4 h-4" />
            Logout
          </button>
        </div>
      </nav>

      {/* Main Content */}
      <div className="max-w-7xl mx-auto p-6">
        <div className="mb-8">
          <h2 className="text-3xl font-bold text-gray-800 mb-2">Selamat datang, {user?.name}!</h2>
          <p className="text-gray-600">
            Role: <span className="font-semibold capitalize">{role}</span>
          </p>
        </div>

        {/* Quick Actions */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
          <div
            onClick={() => router.push("/dashboard/pos")}
            className="bg-white p-6 rounded-lg shadow hover:shadow-lg cursor-pointer transition transform hover:scale-105"
          >
            <ShoppingCart className="w-8 h-8 text-amber-600 mb-4" />
            <h3 className="font-bold text-gray-800">POS</h3>
            <p className="text-sm text-gray-600">Transaksi Penjualan</p>
          </div>

          <div
            onClick={() => router.push("/dashboard/sales")}
            className="bg-white p-6 rounded-lg shadow hover:shadow-lg cursor-pointer transition transform hover:scale-105"
          >
            <TrendingUp className="w-8 h-8 text-green-600 mb-4" />
            <h3 className="font-bold text-gray-800">Laporan</h3>
            <p className="text-sm text-gray-600">Penjualan & Profit</p>
          </div>

          <div
            onClick={() => router.push("/dashboard/products")}
            className="bg-white p-6 rounded-lg shadow hover:shadow-lg cursor-pointer transition transform hover:scale-105"
          >
            <ShoppingCart className="w-8 h-8 text-blue-600 mb-4" />
            <h3 className="font-bold text-gray-800">Menu</h3>
            <p className="text-sm text-gray-600">Kelola Produk</p>
          </div>

          <div
            onClick={() => router.push("/dashboard/users")}
            className="bg-white p-6 rounded-lg shadow hover:shadow-lg cursor-pointer transition transform hover:scale-105"
          >
            <Users className="w-8 h-8 text-purple-600 mb-4" />
            <h3 className="font-bold text-gray-800">Tim</h3>
            <p className="text-sm text-gray-600">Manajemen Pengguna</p>
          </div>
        </div>

        {/* Status Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          <div className="bg-gradient-to-br from-amber-100 to-amber-50 p-6 rounded-lg border border-amber-200">
            <p className="text-amber-800 text-sm font-semibold">Omzet Hari Ini</p>
            <p className="text-3xl font-bold text-amber-900 mt-2">Rp 0</p>
          </div>

          <div className="bg-gradient-to-br from-green-100 to-green-50 p-6 rounded-lg border border-green-200">
            <p className="text-green-800 text-sm font-semibold">Profit Hari Ini</p>
            <p className="text-3xl font-bold text-green-900 mt-2">Rp 0</p>
          </div>

          <div className="bg-gradient-to-br from-blue-100 to-blue-50 p-6 rounded-lg border border-blue-200">
            <p className="text-blue-800 text-sm font-semibold">Transaksi</p>
            <p className="text-3xl font-bold text-blue-900 mt-2">0</p>
          </div>
        </div>
      </div>
    </div>
  );
}
