'use client';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { DollarSign, ArrowLeft, TrendingUp, AlertCircle, RefreshCw, User, Calendar, CheckCircle, Clock, XCircle } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';
import { id as idLocale } from 'date-fns/locale';

interface WagePayment {
  id: string;
  barista_id: string;
  barista_name: string;
  outlet_id: string;
  outlet_name: string;
  total_omset: number;
  cash_amount: number;
  bonus: number;
  meal_allowance: number;
  deposit_amount: number;
  kekurangan_upah: number;
  status: string;
  submitted_at: string;
  approved_at: string | null;
  date: string;
}

interface WageStats {
  totalPayments: number;
  totalPaid: number;
  totalShortfall: number;
  approvedCount: number;
  pendingCount: number;
  rejectedCount: number;
}

interface BaristaData {
  id: string;
  barista_id: string;
  outlet_id: string;
  total_omset: number;
  cash_amount: number;
  bonus: number;
  meal_allowance: number;
  deposit_amount: number;
  kekurangan_upah: number;
  status: string;
  submitted_at: string;
  approved_at: string | null;
  date: string;
}

export default function WagesPage() {
  const router = useRouter();
  const [payments, setPayments] = useState<WagePayment[]>([]);
  const [allPayments, setAllPayments] = useState<WagePayment[]>([]);
  const [stats, setStats] = useState<WageStats>({
    totalPayments: 0,
    totalPaid: 0,
    totalShortfall: 0,
    approvedCount: 0,
    pendingCount: 0,
    rejectedCount: 0,
  });
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const fetchPayments = useCallback(async () => {
    try {
      setRefreshing(true);
      setError(null);

      const { data, error: fetchError } = await supabase
        .from('cash_deposit_handovers')
        .select('*')
        .order('submitted_at', { ascending: false });

      if (fetchError) {
        console.error('Supabase query error:', fetchError);
        throw fetchError;
      }

      // Fetch barista and outlet names
      let baristaMap: Record<string, string> = {};
      let outletMap: Record<string, string> = {};

      if (data && data.length > 0) {
        const baristaIds = [...new Set((data as BaristaData[]).map(d => d.barista_id))];
        const outletIds = [...new Set((data as BaristaData[]).map(d => d.outlet_id))];

        if (baristaIds.length > 0) {
          const { data: baristas } = await supabase
            .from('users')
            .select('id, name')
            .in('id', baristaIds);
          baristaMap = Object.fromEntries(
            (baristas || []).map(b => [b.id, b.name])
          );
        }

        if (outletIds.length > 0) {
          const { data: outlets } = await supabase
            .from('outlets')
            .select('id, name')
            .in('id', outletIds);
          outletMap = Object.fromEntries(
            (outlets || []).map(o => [o.id, o.name])
          );
        }
      }

      const formattedPayments = ((data as BaristaData[]) || []).map((payment) => ({
        id: payment.id,
        barista_id: payment.barista_id,
        barista_name: baristaMap[payment.barista_id] || 'Unknown',
        outlet_id: payment.outlet_id,
        outlet_name: outletMap[payment.outlet_id] || 'Unknown',
        total_omset: payment.total_omset || 0,
        cash_amount: payment.cash_amount || 0,
        bonus: payment.bonus || 0,
        meal_allowance: payment.meal_allowance || 0,
        deposit_amount: payment.deposit_amount || 0,
        kekurangan_upah: payment.kekurangan_upah || 0,
        status: payment.status,
        submitted_at: payment.submitted_at,
        approved_at: payment.approved_at,
        date: payment.date,
      }));

      setAllPayments(formattedPayments);

      // Calculate statistics
      const newStats: WageStats = {
        totalPayments: formattedPayments.length,
        totalPaid: formattedPayments
          .filter(p => p.status === 'approved')
          .reduce((sum, p) => sum + p.deposit_amount, 0),
        totalShortfall: formattedPayments.reduce((sum, p) => sum + p.kekurangan_upah, 0),
        approvedCount: formattedPayments.filter(p => p.status === 'approved').length,
        pendingCount: formattedPayments.filter(p => p.status === 'pending').length,
        rejectedCount: formattedPayments.filter(p => p.status === 'rejected').length,
      };
      setStats(newStats);
    } catch (err) {
      console.error('Failed to fetch wage payments:', err);
      setError(err instanceof Error ? err.message : 'Failed to load wage data');
    } finally {
      setRefreshing(false);
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    fetchPayments();
  }, [fetchPayments]);

  useEffect(() => {
    const filtered = statusFilter === 'all'
      ? allPayments
      : allPayments.filter(p => p.status === statusFilter);
    setPayments(filtered);
  }, [statusFilter, allPayments]);

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'pending':
        return 'bg-yellow-50 text-yellow-800 border-yellow-200';
      case 'approved':
        return 'bg-green-50 text-green-800 border-green-200';
      case 'rejected':
        return 'bg-red-50 text-red-800 border-red-200';
      default:
        return 'bg-gray-50 text-gray-800 border-gray-200';
    }
  };

  const getStatusIcon = (status: string) => {
    switch (status) {
      case 'pending':
        return <Clock size={16} className="text-yellow-600" />;
      case 'approved':
        return <CheckCircle size={16} className="text-green-600" />;
      case 'rejected':
        return <XCircle size={16} className="text-red-600" />;
      default:
        return null;
    }
  };

  return (
    <div className="p-6 bg-linear-to-br from-emerald-50 to-teal-50 min-h-screen">
      <div className="mb-6">
        <button
          onClick={() => router.back()}
          className="flex items-center text-emerald-600 hover:text-emerald-700 transition-colors"
        >
          <ArrowLeft size={20} className="mr-2" />
          Back
        </button>
      </div>

      <div className="mb-8">
        <div className="flex items-center justify-between mb-2">
          <div className="flex items-center gap-3">
            <DollarSign size={32} className="text-emerald-600" />
            <h1 className="text-4xl font-bold text-gray-800">Pembayaran Upah Barista</h1>
          </div>
          <button
            onClick={() => fetchPayments()}
            disabled={refreshing}
            className="flex items-center gap-2 bg-emerald-600 hover:bg-emerald-700 text-white px-4 py-2 rounded-lg transition disabled:opacity-50"
          >
            <RefreshCw size={16} className={refreshing ? 'animate-spin' : ''} />
            Refresh
          </button>
        </div>
        <p className="text-gray-600">Track history pembayaran upah dan shortfall kompensasi barista</p>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4 mb-8">
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-blue-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Total Records</p>
          <p className="text-2xl font-bold text-gray-800">{stats.totalPayments}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-green-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Approved</p>
          <p className="text-2xl font-bold text-green-600">{stats.approvedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-yellow-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Pending</p>
          <p className="text-2xl font-bold text-yellow-600">{stats.pendingCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-red-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Rejected</p>
          <p className="text-2xl font-bold text-red-600">{stats.rejectedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-teal-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Total Dibayar</p>
          <p className="text-lg font-bold text-teal-600">Rp {(stats.totalPaid / 1000000).toFixed(1)}M</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-orange-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Shortfall</p>
          <p className="text-lg font-bold text-orange-600">Rp {(stats.totalShortfall / 1000000).toFixed(1)}M</p>
        </div>
      </div>

      {/* Filter Buttons */}
      <div className="mb-6 flex gap-2 flex-wrap">
        {['all', 'pending', 'approved', 'rejected'].map((status) => (
          <button
            key={status}
            onClick={() => setStatusFilter(status)}
            className={`px-4 py-2 rounded-lg font-semibold transition ${
              statusFilter === status
                ? 'bg-emerald-600 text-white'
                : 'bg-white text-gray-700 border-2 border-gray-200 hover:border-emerald-600'
            }`}
          >
            {status === 'all' ? 'Semua' : status.charAt(0).toUpperCase() + status.slice(1)}
          </button>
        ))}
      </div>

      {/* Error Message */}
      {error && (
        <div className="bg-red-50 border-l-4 border-red-500 p-4 rounded-lg mb-8 flex items-start gap-3">
          <AlertCircle className="w-5 h-5 text-red-500 flex-shrink-0 mt-0.5" />
          <p className="text-red-800">{error}</p>
        </div>
      )}

      {loading && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <div className="relative">
            <DollarSign size={64} className="text-emerald-600 opacity-20 animate-pulse mx-auto" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-8 h-8 border-4 border-emerald-600 border-t-transparent rounded-full animate-spin" />
            </div>
          </div>
          <p className="text-gray-500 mt-6">Loading wage data...</p>
        </div>
      )}

      {!loading && !error && payments.length === 0 && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <DollarSign size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Payments Found</h3>
          <p className="text-gray-500">Wage payments will appear here once they are recorded.</p>
        </div>
      )}

      {!loading && !error && payments.length > 0 && (
        <div className="space-y-4">
          {payments.map((payment) => (
            <div key={payment.id} className="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-shadow">
              <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
                {/* Left Section - Barista Info */}
                <div className="space-y-3">
                  <div>
                    <p className="text-sm text-gray-500 mb-1">Barista</p>
                    <p className="text-lg font-semibold text-gray-800 flex items-center gap-2">
                      <User size={18} className="text-emerald-600" />
                      {payment.barista_name}
                    </p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500 mb-1">Outlet</p>
                    <p className="text-gray-700">{payment.outlet_name}</p>
                  </div>
                  <div>
                    <p className="text-sm text-gray-500 mb-1">Date</p>
                    <p className="text-gray-700 flex items-center gap-2">
                      <Calendar size={16} className="text-gray-400" />
                      {format(new Date(payment.date), 'dd MMM yyyy', { locale: idLocale })}
                    </p>
                  </div>
                </div>

                {/* Middle Section - Earnings Breakdown */}
                <div className="grid grid-cols-2 gap-3">
                  <div className="bg-blue-50 rounded-lg p-3">
                    <p className="text-xs text-gray-600 font-semibold mb-1">Omset</p>
                    <p className="text-lg font-bold text-blue-600">
                      Rp {payment.total_omset.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className="bg-purple-50 rounded-lg p-3">
                    <p className="text-xs text-gray-600 font-semibold mb-1">Cash</p>
                    <p className="text-lg font-bold text-purple-600">
                      Rp {payment.cash_amount.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className="bg-yellow-50 rounded-lg p-3">
                    <p className="text-xs text-gray-600 font-semibold mb-1">Bonus</p>
                    <p className="text-lg font-bold text-yellow-600">
                      Rp {payment.bonus.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className="bg-orange-50 rounded-lg p-3">
                    <p className="text-xs text-gray-600 font-semibold mb-1">Makan</p>
                    <p className="text-lg font-bold text-orange-600">
                      Rp {payment.meal_allowance.toLocaleString('id-ID')}
                    </p>
                  </div>
                </div>

                {/* Right Section - Final Payment & Shortfall */}
                <div className="space-y-3">
                  <div className="bg-emerald-50 rounded-lg p-4 border-2 border-emerald-200">
                    <p className="text-sm text-gray-600 font-semibold mb-1">Deposit (Bayar)</p>
                    <p className="text-3xl font-bold text-emerald-600">
                      Rp {payment.deposit_amount.toLocaleString('id-ID')}
                    </p>
                  </div>

                  {payment.kekurangan_upah > 0 && (
                    <div className="bg-orange-50 rounded-lg p-4 border-2 border-orange-200">
                      <p className="text-sm text-gray-600 font-semibold mb-1 flex items-center gap-2">
                        <AlertCircle size={16} className="text-orange-600" />
                        Shortfall (Toko Bayar)
                      </p>
                      <p className="text-xl font-bold text-orange-600">
                        Rp {payment.kekurangan_upah.toLocaleString('id-ID')}
                      </p>
                    </div>
                  )}
                </div>
              </div>

              {/* Bottom - Status & Date */}
              <div className="mt-6 pt-6 border-t border-gray-200 flex items-center justify-between">
                <div className="text-sm text-gray-500">
                  <p>Submitted: {format(new Date(payment.submitted_at), 'dd MMM yyyy HH:mm', { locale: idLocale })}</p>
                  {payment.approved_at && (
                    <p className="text-emerald-600">
                      Approved: {format(new Date(payment.approved_at), 'dd MMM yyyy HH:mm', { locale: idLocale })}
                    </p>
                  )}
                </div>
                <div className={`px-4 py-2 rounded-lg border-2 font-semibold text-sm capitalize flex items-center gap-2 ${getStatusColor(payment.status)}`}>
                  {getStatusIcon(payment.status)}
                  {payment.status === 'pending' ? 'Menunggu' : payment.status === 'approved' ? 'Disetujui' : 'Ditolak'}
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
