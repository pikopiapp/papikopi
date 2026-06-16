'use client';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { DollarSign, ArrowLeft, TrendingUp, AlertCircle, RefreshCw, User, Calendar, CheckCircle, Clock, XCircle } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';
import { id as idLocale } from 'date-fns/locale';
import { calculateMealAllowance } from '@/lib/bonus-calculator';
// Use DB-backed holidays via /api/holidays

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

interface DailyBaristaWage {
  barista_id: string;
  barista_name: string;
  outlet_id: string;
  outlet_name: string;
  date: string;
  omset: number;
  bonus: number;
  meal_allowance: number;
  total_wage: number;
  status: string;
}

export default function WagesPage() {
  const router = useRouter();
  const [payments, setPayments] = useState<WagePayment[]>([]);
  const [allPayments, setAllPayments] = useState<WagePayment[]>([]);
  const [dailyWages, setDailyWages] = useState<DailyBaristaWage[]>([]);
  const [stats, setStats] = useState<WageStats>({
    totalPayments: 0,
    totalPaid: 0,
    totalShortfall: 0,
    approvedCount: 0,
    pendingCount: 0,
    rejectedCount: 0,
  });
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const [dailyWagesStatusFilter, setDailyWagesStatusFilter] = useState<string>('all');
  const [selectedBarista, setSelectedBarista] = useState<string>('all');
  const [selectedDate, setSelectedDate] = useState<string>(format(new Date(), 'yyyy-MM-dd'));
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [customHolidays, setCustomHolidays] = useState<Map<string,string>>(new Map());
  const [nationalHolidays, setNationalHolidays] = useState<Map<string,string>>(new Map());

  useEffect(() => {
    let mounted = true;
    (async () => {
      try {
        const res = await fetch('/api/holidays');
        if (!res.ok) return;
        const json = await res.json();
        if (!mounted) return;
        if (json && json.success && Array.isArray(json.data)) {
          const custom = new Map<string,string>();
          const national = new Map<string,string>();
          for (const r of json.data as Array<{date:string;description?:string;is_national?:boolean}>) {
            const d = String(r.date);
            const desc = r.description || '';
            if (r.is_national) national.set(d, desc);
            else custom.set(d, desc);
          }
          setCustomHolidays(custom);
          setNationalHolidays(national);
        }
      } catch {
        // ignore
      }
    })();
    return () => { mounted = false; };
  }, []);

  const fetchPayments = useCallback(async () => {
    try {
      setRefreshing(true);
      setError(null);

      // Fetch sales data from the sales table
      const { data: salesData, error: salesError } = await supabase
        .from('sales')
        .select('*')
        .order('created_at', { ascending: false });

      if (salesError) {
        console.error('Supabase query error:', salesError);
        throw salesError;
      }

      // Fetch barista and outlet names
      let baristaMap: Record<string, string> = {};
      let outletMap: Record<string, string> = {};

      if (salesData && salesData.length > 0) {
        const baristaIds = [...new Set(salesData.map((s: any) => s.barista_id))];
        const outletIds = [...new Set(salesData.map((s: any) => s.outlet_id))];

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

      // Format sales data into payment structure
      const formattedPayments = ((salesData || []) as any[]).map((sale) => ({
        id: sale.id,
        barista_id: sale.barista_id,
        barista_name: baristaMap[sale.barista_id] || 'Unknown',
        outlet_id: sale.outlet_id,
        outlet_name: outletMap[sale.outlet_id] || 'Unknown',
        total_omset: sale.total_amount || 0,
        cash_amount: sale.total_amount || 0,
        bonus: sale.bonus_amount || 0,
        meal_allowance: 0,
        deposit_amount: 0,
        kekurangan_upah: 0,
        status: 'approved',
        submitted_at: sale.created_at,
        approved_at: sale.created_at,
        date: format(new Date(sale.created_at), 'yyyy-MM-dd'),
      }));

      setAllPayments(formattedPayments);

      // Build daily wages summary from sales data
      const wagesMap = new Map<string, DailyBaristaWage>();
      formattedPayments.forEach(payment => {
        const key = `${payment.date}-${payment.outlet_id}-${payment.barista_id}`;
        const existing = wagesMap.get(key);
        
        // Aggregate sales per barista per outlet per day
        const dailyOmset = (existing?.omset || 0) + payment.total_omset;
        const dailyBonus = (existing?.bonus || 0) + payment.bonus;
        const mealAllowance = calculateMealAllowance(dailyOmset); // Calculate based on daily omset ONLY
        
        wagesMap.set(key, {
          barista_id: payment.barista_id,
          barista_name: payment.barista_name,
          outlet_id: payment.outlet_id,
          outlet_name: payment.outlet_name,
          date: payment.date,
          omset: dailyOmset,
          bonus: dailyBonus,
          meal_allowance: mealAllowance,
          total_wage: dailyBonus + mealAllowance,
          status: 'approved',
        });
      });

      const dailyWagesList = Array.from(wagesMap.values())
        .sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime());
      setDailyWages(dailyWagesList);

      // Calculate statistics
      const newStats: WageStats = {
        totalPayments: formattedPayments.length,
        totalPaid: formattedPayments.reduce((sum, p) => sum + p.bonus, 0),
        totalShortfall: 0, // No shortfall in sales data
        approvedCount: formattedPayments.length,
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
    // defer setting state to avoid synchronous setState in effect
    const t = setTimeout(() => setPayments(filtered), 0);
    return () => clearTimeout(t);
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
    <div className="p-6 surface min-h-screen">


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
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-blue-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Total Records</p>
          <p className="text-2xl font-bold text-gray-800">{stats.totalPayments}</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-green-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Approved</p>
          <p className="text-2xl font-bold text-green-600">{stats.approvedCount}</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-yellow-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Pending</p>
          <p className="text-2xl font-bold text-yellow-600">{stats.pendingCount}</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-red-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Rejected</p>
          <p className="text-2xl font-bold text-red-600">{stats.rejectedCount}</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-teal-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Total Dibayar</p>
          <p className="text-lg font-bold text-teal-600">Rp {(stats.totalPaid / 1000000).toFixed(1)}M</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-orange-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Shortfall</p>
          <p className="text-lg font-bold text-orange-600">Rp {(stats.totalShortfall / 1000000).toFixed(1)}M</p>
        </div>
        <div className="surface-card rounded-lg shadow p-4 border-l-4 border-purple-500">
          <p className="text-xs text-gray-600 font-semibold mb-1 uppercase">Daily Records</p>
          <p className="text-2xl font-bold text-purple-600">{dailyWages.length}</p>
        </div>
      </div>

      {/* Daily Wages Section */}
      <div className="mb-8">
        <h2 className="text-2xl font-bold text-gray-800 mb-4 flex items-center gap-2">
          <Calendar size={24} className="text-emerald-600" />
          Upah Barista Per Hari
        </h2>
        
        {/* Daily Wages Filters */}
        <div className="mb-4 flex flex-col gap-3">
            <div className="flex gap-2 flex-wrap">
            {['all', 'pending', 'approved', 'rejected'].map((status) => (
              <button
                key={`daily-${status}`}
                onClick={() => setDailyWagesStatusFilter(status)}
                className={`px-4 py-2 rounded-lg font-semibold text-sm transition ${
                  dailyWagesStatusFilter === status
                    ? 'bg-emerald-600 text-white'
                      : 'surface-muted text-gray-700 hover:surface-card'
                }`}
              >
                {status === 'all' ? 'Semua' : status.charAt(0).toUpperCase() + status.slice(1)}
              </button>
            ))}
          </div>

          <div className="flex gap-2 flex-wrap items-center">
            <label className="text-sm font-semibold text-gray-700">Pilih Tanggal:</label>
            <input
              type="date"
              value={selectedDate}
              onChange={(e) => setSelectedDate(e.target.value)}
              className="px-4 py-2 rounded-lg border-2 border-gray-200 focus:border-blue-600 focus:outline-none bg-white text-gray-700 font-semibold"
            />
            {(() => {
              const iso = selectedDate; // state stores yyyy-MM-dd
              const isHolidayDate = nationalHolidays.has(iso) || customHolidays.has(iso) || new Date(iso).getDay() === 0 || new Date(iso).getDay() === 6;
              return isHolidayDate ? (
                <span className="px-3 py-1 bg-red-100 text-red-700 rounded-lg text-xs font-semibold">
                  🎉 Hari Libur
                </span>
              ) : null;
            })()}
            <button
              onClick={() => setSelectedDate(format(new Date(), 'yyyy-MM-dd'))}
              className="px-4 py-2 rounded-lg bg-blue-600 hover:bg-blue-700 text-white font-semibold text-sm transition"
            >
              Hari Ini
            </button>
          </div>
          
          {/* Barista Filter */}
          <select
            value={selectedBarista}
            onChange={(e) => setSelectedBarista(e.target.value)}
            className="px-4 py-2 rounded-lg border-2 border-gray-200 focus:border-emerald-600 focus:outline-none bg-white text-gray-700 font-semibold"
          >
            <option value="all">Semua Barista</option>
            {Array.from(new Set(dailyWages.map(w => w.barista_id))).map((baristaId) => {
              const baristaName = dailyWages.find(w => w.barista_id === baristaId)?.barista_name;
              return (
                <option key={baristaId} value={baristaId}>
                  {baristaName}
                </option>
              );
            })}
          </select>
        </div>

        {dailyWages.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {dailyWages
              .filter(wage => {
                // Status filter
                if (dailyWagesStatusFilter !== 'all' && wage.status !== dailyWagesStatusFilter) {
                  return false;
                }
                
                // Barista filter
                if (selectedBarista !== 'all' && wage.barista_id !== selectedBarista) {
                  return false;
                }
                
                // Date filter - show only selected date
                if (wage.date !== selectedDate) {
                  return false;
                }
                
                return true;
              })
              .sort((a, b) => {
                // Sort by barista name
                return a.barista_name.localeCompare(b.barista_name);
              })
              .map((wage, idx) => {
                const isToday = format(new Date(wage.date), 'yyyy-MM-dd') === format(new Date(), 'yyyy-MM-dd');
              return (
                <div
                  key={`${wage.date}-${wage.barista_id}`}
                  className={`rounded-lg border-2 p-4 transition ${
                    isToday
                      ? 'surface-muted border-emerald-500 shadow-lg'
                      : 'surface-card border-gray-200 hover:shadow-md'
                  }`}
                >
                  <div className="flex items-start justify-between mb-3">
                    <div>
                      <p className="text-xs text-gray-500 mb-0.5 font-semibold uppercase">Outlet</p>
                      <p className="text-sm text-gray-700 mb-2">{wage.outlet_name}</p>
                      <p className="text-sm text-gray-500 mb-0.5">Barista</p>
                      <p className="font-bold text-gray-800">{wage.barista_name}</p>
                      <p className="text-xs text-gray-500 flex items-center gap-1 mt-1">
                        <Calendar size={12} />
                        {format(new Date(wage.date), 'dd MMM yyyy', { locale: idLocale })}
                        {isToday && ' (Hari ini)'}
                        {!isToday && new Date(wage.date).getTime() === new Date(new Date().setDate(new Date().getDate() - 1)).getTime() && ' (Kemarin)'}
                      </p>
                    </div>
                    {isToday && (
                      <span className="bg-emerald-500 text-white text-xs px-3 py-1 rounded-full font-semibold">
                        HARI INI
                      </span>
                    )}
                  </div>

                  <div className="space-y-2 mb-3 pt-3 border-t border-gray-200">
                    <div className="flex justify-between text-sm">
                      <span className="text-gray-600">Omset:</span>
                      <span className="font-semibold text-gray-800">
                        Rp {wage.omset.toLocaleString('id-ID')}
                      </span>
                    </div>
                    <div className="flex justify-between text-sm">
                      <span className="text-gray-600">Bonus:</span>
                      <span className="font-semibold text-yellow-600">
                        Rp {wage.bonus.toLocaleString('id-ID')}
                      </span>
                    </div>
                    <div className="flex justify-between text-sm">
                      <span className="text-gray-600">Uang Makan:</span>
                      <span className="font-semibold text-orange-600">
                        Rp {wage.meal_allowance.toLocaleString('id-ID')}
                      </span>
                    </div>
                    <div className="flex justify-between text-sm pt-2 border-t border-gray-200 mt-2">
                      <span className="font-bold text-gray-800">Total Upah:</span>
                      <span className={`font-bold text-lg ${
                        wage.status === 'approved' ? 'text-emerald-600' : 'text-amber-600'
                      }`}>
                        Rp {wage.total_wage.toLocaleString('id-ID')}
                      </span>
                    </div>
                  </div>

                  <div className={`text-xs px-3 py-1 rounded text-center font-semibold ${
                    wage.status === 'approved'
                      ? 'bg-green-100 text-green-700'
                      : wage.status === 'pending'
                      ? 'bg-yellow-100 text-yellow-700'
                      : 'bg-red-100 text-red-700'
                  }`}>
                    {wage.status === 'pending' ? '⏳ Menunggu' : wage.status === 'approved' ? '✓ Disetujui' : '✗ Ditolak'}
                  </div>

                  <p className="text-xs text-gray-500 mt-2 pt-2 border-t border-gray-200">
                    {wage.omset >= 300000
                      ? '🔹 Omset ≥ Rp 300rb → Uang Makan Rp 34rb'
                      : '🔹 Omset < Rp 300rb → Uang Makan Rp 25rb'}
                  </p>
                </div>
              );
            })}
          </div>
        ) : (
          <div className="surface-card rounded-lg p-8 text-center text-gray-500">
            Belum ada data upah harian
          </div>
        )}
      </div>
      {/* Error Message */}
      {error && (
        <div className="bg-red-50 border-l-4 border-red-500 p-4 rounded-lg mb-8 flex items-start gap-3">
          <AlertCircle className="w-5 h-5 text-red-500 shrink-0 mt-0.5" />
          <p className="text-red-800">{error}</p>
        </div>
      )}

      {loading && (
        <div className="surface-card rounded-2xl shadow-lg p-12 text-center">
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
        <div className="surface-card rounded-2xl shadow-lg p-12 text-center">
          <DollarSign size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Sales Data Found</h3>
          <p className="text-gray-500">Sales data akan muncul di daily wages section di atas setelah ada transaksi.</p>
        </div>
      )}
    </div>
  );
}
