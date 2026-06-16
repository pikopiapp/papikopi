"use client";

export const dynamic = 'force-dynamic';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { DollarSign, ArrowLeft, TrendingUp, User, Calendar, RefreshCw } from 'lucide-react';
import { format } from 'date-fns';

interface CashHandoverSession {
  id: string;
  outlet_id: string;
  outlet_name: string;
  handled_by: string;
  approved_by: string | null;
  start_amount: number;
  qris_amount?: number;
  bonus?: number;
  meal_allowance?: number;
  cash_received: number;
  cash_handed_over: number;
  difference: number;
  status: string;
  created_at: string;
  approved_at: string | null;
}

interface CashHandoverStats {
  totalSessions: number;
  approvedCount: number;
  pendingCount: number;
  rejectedCount: number;
  totalCash: number;
}

interface SessionData {
  id: string;
  outlet_id: string;
  barista_id: string;
  approved_by: string | null;
  total_omset: number;
  cash_amount: number;
  qris_amount: number;
  deposit_amount: number;
  status: string;
  submitted_at: string;
  approved_at: string | null;
}

export default function CashHandoverPage() {
  return <CashHandoverPageContent />;
}

function CashHandoverPageContent() {
  const router = useRouter();

  // Avoid useSearchParams during prerender to prevent Suspense boundary errors.
  // If you need the date query param later, re-introduce it behind a <Suspense> boundary.
  const dateParam: string | null = null;

  const pad = (n: number) => String(n).padStart(2, '0');
  const formatLocalKey = (d: Date | string | null | undefined) => {
    if (!d) return '';
    const dt = typeof d === 'string' ? new Date(d) : d;
    return `${dt.getFullYear()}-${pad(dt.getMonth() + 1)}-${pad(dt.getDate())}`;
  };

  const selectedDateKey = formatLocalKey(dateParam || new Date());
  const selectedDateStr = (dateParam ? new Date(dateParam) : new Date()).toLocaleDateString('id-ID', { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' });
  const [sessions, setSessions] = useState<CashHandoverSession[]>([]);
  const [allSessions, setAllSessions] = useState<CashHandoverSession[]>([]);
  const [stats, setStats] = useState<CashHandoverStats>({
    totalSessions: 0,
    approvedCount: 0,
    pendingCount: 0,
    rejectedCount: 0,
    totalCash: 0
  });
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const [sortBy, setSortBy] = useState<string>('none');
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [page, setPage] = useState<number>(1);
  const [limit, setLimit] = useState<number>(20);
  const [total, setTotal] = useState<number>(0);
  const [baristaFilter, setBaristaFilter] = useState<string>('all');

  const fetchSessions = useCallback(async () => {
    try {
      setRefreshing(true);
      setError(null);
      const controller = new AbortController();
      const timeout = setTimeout(() => controller.abort(), 15000);

      const res = await fetch(`/api/cash-handovers?limit=${limit}&page=${page}`, { signal: controller.signal });
      clearTimeout(timeout);

      if (!res.ok) throw new Error('Failed to fetch cash handovers');

      const payload: { data: CashHandoverSession[]; total: number; page: number; limit: number } = await res.json();

      const data = payload.data || [];
      setAllSessions(data);
      setTotal(typeof payload.total === 'number' ? payload.total : 0);

      const newStats: CashHandoverStats = {
        totalSessions: typeof payload.total === 'number' ? payload.total : (data || []).length,
        approvedCount: (data || []).filter(s => s.status === 'approved').length,
        pendingCount: (data || []).filter(s => s.status === 'pending').length,
        rejectedCount: (data || []).filter(s => s.status === 'rejected').length,
        totalCash: (data || []).reduce((sum, s) => sum + (s.cash_handed_over || 0), 0)
      };
      setStats(newStats);
    } catch (err) {
      console.error('Failed to fetch cash handover sessions:', err);
      setError(err instanceof Error ? err.message : 'Failed to load cash handover data');
    } finally {
      setRefreshing(false);
      setLoading(false);
    }
  }, [page, limit]);

  useEffect(() => {
    const t = setTimeout(() => void fetchSessions(), 0);
    return () => clearTimeout(t);
  }, [fetchSessions]);

  useEffect(() => {
    // start from all sessions
    let filtered = [...allSessions];

    // apply optional calendar-date filter (yyyy-MM-dd) to match daily-summary grouping
    if (dateParam) {
      filtered = filtered.filter(s => formatLocalKey(s.created_at) === selectedDateKey);
    }

    // status filter
    filtered = statusFilter === 'all'
      ? filtered
      : filtered.filter(s => s.status === statusFilter);

    if (baristaFilter !== 'all') {
      filtered = filtered.filter(s => (s.handled_by || '').includes(baristaFilter));
    }

    if (sortBy === 'barista_asc') {
      filtered.sort((a, b) => (a.handled_by || '').localeCompare(b.handled_by || ''));
    } else if (sortBy === 'barista_desc') {
      filtered.sort((a, b) => (b.handled_by || '').localeCompare(a.handled_by || ''));
    }

    const t = setTimeout(() => setSessions(filtered), 0);
    return () => clearTimeout(t);
  }, [statusFilter, allSessions, sortBy, baristaFilter, dateParam, selectedDateKey]);

  useEffect(() => {
    // refetch when page or limit changes
    const t = setTimeout(() => {
      setLoading(true);
      void fetchSessions();
    }, 0);
    return () => clearTimeout(t);
  }, [page, limit]);

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'pending':
        return 'bg-yellow-50 text-yellow-800 border-yellow-200';
      case 'approved':
        return 'bg-green-50 text-green-800 border-green-200';
      case 'verified by barista':
        return 'bg-teal-50 text-teal-800 border-teal-200';
      case 'rejected':
        return 'bg-red-50 text-red-800 border-red-200';
      default:
        return 'bg-gray-50 text-gray-800 border-gray-200';
    }
  };

  const statusLabels: Record<string, string> = {
    all: 'Semua',
    pending: 'Menunggu',
    approved: 'Disetujui',
    rejected: 'Ditolak',
  };

  const baristaOptions = Array.from(new Set(allSessions.map(s => s.handled_by).filter(Boolean))).sort();

  return (
    <div className="p-6 min-h-screen" style={{ background: 'linear-gradient(135deg, var(--surface-start), var(--surface-end))' }}>



      <div className="mb-8">
        <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-3">
            <DollarSign size={32} className="text-amber-600" />
            <h1 className="text-4xl font-bold text-gray-800">Setoran</h1>
          </div>
          <button
            onClick={() => fetchSessions()}
            disabled={refreshing}
            className="flex items-center gap-2 bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg transition disabled:opacity-50"
          >
            <RefreshCw size={16} className={refreshing ? 'animate-spin' : ''} />
            Segarkan
          </button>
        </div>
        <p className="text-gray-600">Kelola dan pantau sesi setoran di seluruh outlet</p>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-2 md:grid-cols-5 gap-4 mb-8">
          <div className="bg-white rounded-lg shadow p-4 border-l-4 border-blue-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Total Setoran</p>
          <p className="text-2xl font-bold text-gray-800">{stats.totalSessions}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-green-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Disetujui</p>
          <p className="text-2xl font-bold text-green-600">{stats.approvedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-yellow-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Menunggu</p>
          <p className="text-2xl font-bold text-yellow-600">{stats.pendingCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-red-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Ditolak</p>
          <p className="text-2xl font-bold text-red-600">{stats.rejectedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-purple-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Total Disetor</p>
          <p className="text-lg font-bold text-purple-600">Rp {stats.totalCash.toLocaleString('id-ID')}</p>
        </div>
      </div>

      {/* Filter Buttons */}
      <div className="mb-6">
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div className="flex items-center gap-2 flex-wrap">
            {['all', 'pending', 'approved', 'rejected'].map((status) => (
              <button
                key={status}
                onClick={() => setStatusFilter(status)}
                className={`px-4 py-2 rounded-lg font-semibold transition ${
                  statusFilter === status
                    ? 'bg-amber-600 text-white'
                    : 'bg-white text-gray-700 border-2 border-gray-200 hover:border-amber-600'
                }`}
              >
                {statusLabels[status] ?? (status.charAt(0).toUpperCase() + status.slice(1))}
              </button>
            ))}
          </div>

          <div className="flex items-center gap-4 flex-wrap">
            <div className="flex flex-col">
              <label className="text-sm text-gray-600 mb-1">Per halaman</label>
              <select value={limit} onChange={(e) => { setLimit(Number(e.target.value)); setPage(1); }} className="border rounded px-2 py-1">
                <option value={20}>20</option>
                <option value={50}>50</option>
                <option value={100}>100</option>
              </select>
            </div>

            <div className="flex flex-col">
              <label className="text-sm text-gray-600 mb-1">Barista</label>
              <select value={baristaFilter} onChange={(e) => { setBaristaFilter(e.target.value); setPage(1); }} className="border rounded px-2 py-1 min-w-[180px]">
                <option value="all">Semua</option>
                {baristaOptions.map(b => (
                  <option key={b} value={b}>{b}</option>
                ))}
              </select>
            </div>

            <div className="flex flex-col">
              <label className="text-sm text-gray-600 mb-1">Urutkan</label>
              <select value={sortBy} onChange={(e) => setSortBy(e.target.value)} className="border rounded px-2 py-1">
                <option value="none">Tidak</option>
                <option value="barista_asc">Barista A → Z</option>
                <option value="barista_desc">Barista Z → A</option>
              </select>
            </div>
          </div>
        </div>
      </div>

      {loading && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <div className="relative">
            <DollarSign size={64} className="text-amber-600 opacity-20 animate-pulse mx-auto" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-8 h-8 border-4 border-amber-600 border-t-transparent rounded-full animate-spin" />
            </div>
          </div>
          <p className="text-gray-500 mt-6">Memuat data setoran...</p>
        </div>
      )}

      {error && (
        <div className="bg-red-50 border-2 border-red-200 rounded-2xl shadow-lg p-6">
          <p className="text-red-800">{error}</p>
        </div>
      )}

      {!loading && !error && sessions.length === 0 && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <DollarSign size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">Belum ada setoran</h3>
          <p className="text-gray-500">Sesi setoran akan muncul di sini setelah tercatat.</p>
        </div>
      )}

      {!loading && !error && sessions.length > 0 && (
        <div className="grid gap-4">
          {/* Pager controls */}
          <div className="flex items-center justify-between mb-4">
            <div className="flex items-center gap-2">
                <button
                  onClick={() => setPage((p) => Math.max(1, p - 1))}
                  disabled={page <= 1}
                  className="px-3 py-1 rounded bg-white border hover:bg-gray-50 disabled:opacity-50"
                >
                  Sebelumnya
                </button>
                <button
                  onClick={() => setPage((p) => p + 1)}
                  disabled={page >= Math.max(1, Math.ceil(total / limit))}
                  className="px-3 py-1 rounded bg-white border hover:bg-gray-50 disabled:opacity-50"
                >
                  Berikutnya
                </button>
                <div className="text-sm text-gray-600 ml-3">Halaman {page} / {Math.max(1, Math.ceil(total / limit))}</div>
              </div>
              <div className="text-sm text-gray-600">Total: {total}</div>
          </div>
          {sessions.map((session) => (
            <div key={session.id} className="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-shadow">
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-6 items-start">
                <div className="sm:col-span-2 flex items-center justify-between gap-6">
                  <div className="flex items-center gap-3">
                    <span className="text-sm text-gray-500">Outlet</span>
                    <span className="text-lg font-semibold text-gray-800">{session.outlet_name}</span>
                  </div>
                  <div className="flex items-center gap-3">
                    <span className="text-sm text-gray-500">Penanggung Jawab</span>
                    <span className="text-gray-700 flex items-center gap-2"><User size={16} /> {session.handled_by}</span>
                  </div>
                </div>
                {session.approved_by && (
                  <div className="sm:col-span-2 mt-2">
                    <p className="text-sm text-gray-500 mb-1">Disetujui Oleh</p>
                    <p className="text-gray-700">{session.approved_by}</p>
                  </div>
                )}

                <div className="sm:col-span-2 grid grid-cols-1 sm:grid-cols-2 gap-6 items-stretch">
                  <div className="h-full">
                    <div className="mb-4 h-full">
                      <div className="bg-gray-50 rounded-lg p-4 border border-gray-100 h-full flex flex-col">
                        <p className="text-sm text-gray-500 mb-2">Omset</p>
                        <div className="flex items-center justify-between text-sm">
                          <div className="text-gray-700">Penjualan</div>
                          <div className="font-semibold">Rp {Number(session.start_amount || 0).toLocaleString('id-ID')}</div>
                        </div>
                        <div className="flex items-center justify-between text-sm mt-2">
                          <div className="text-gray-600">├─ Cash</div>
                          <div className="font-medium">Rp {Number(session.cash_received || 0).toLocaleString('id-ID')}</div>
                        </div>
                        <div className="flex items-center justify-between text-sm mt-1">
                          <div className="text-gray-600">└─ QRIS</div>
                          <div className="text-gray-600">Rp {Number(session.qris_amount ?? 0).toLocaleString('id-ID')}</div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="h-full">
                    {(() => {
                      const bonus = Number((session as CashHandoverSession).bonus ?? 0);
                      const meal = Number((session as CashHandoverSession).meal_allowance ?? 0);
                      const cash = Number(session.cash_received || 0);
                      const netCash = cash - (bonus + meal);
                      const qris = Number((session as CashHandoverSession).qris_amount ?? 0);

                      return (
                        <div className="bg-green-50 border border-green-200 rounded-lg p-4 h-full flex flex-col justify-between">
                          <p className="text-sm font-semibold text-gray-700 mb-3">Rincian Setoran</p>

                          <div className="text-sm text-gray-600 mb-2">Berangkat dari CASH (bukan Omset)</div>
                          <div className="flex items-center justify-between text-sm mb-2">
                            <div className="text-gray-700">CASH Diterima</div>
                            <div className="font-semibold">Rp {cash.toLocaleString('id-ID')}</div>
                          </div>

                          <div className="flex items-center justify-between text-sm mb-1">
                            <div className="text-gray-700">- Bonus (Bertahap)</div>
                            <div className="text-red-600">-Rp {bonus.toLocaleString('id-ID')}</div>
                          </div>
                          <div className="flex items-center justify-between text-sm mb-2">
                            <div className="text-gray-700">- Uang Makan</div>
                            <div className="text-red-600">-Rp {meal.toLocaleString('id-ID')}</div>
                          </div>

                          <div className="border-t border-green-100 pt-3 flex items-center justify-between">
                            <div className="text-gray-700 font-semibold">
                              {netCash > qris ? '= Setoran Barista' : netCash < qris ? '= Harus Bayar kekurangan ke Barista' : '= Setoran Barista'}
                            </div>
                            <div className="text-green-700 font-bold">Rp {netCash.toLocaleString('id-ID')}</div>
                          </div>
                        </div>
                      );
                    })()}
                  </div>
                </div>
              </div>

              <div className="mt-6 pt-6 border-t border-gray-200 flex items-center justify-between">
                <div className="flex items-center gap-2 text-sm">
                  <Calendar size={16} className="text-gray-400" />
                  <span className="text-sm text-gray-500">Created</span>
                  <span className="text-gray-700 ml-2">{new Date(session.created_at).toLocaleString(undefined, { dateStyle: 'medium', timeStyle: 'short' })}</span>
                </div>
                <div className={`px-4 py-2 rounded-lg border-2 font-semibold text-sm capitalize ${getStatusColor(session.status)}`}>
                  {session.status}
                </div>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
