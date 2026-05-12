'use client';

import { useEffect, useState, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import { DollarSign, ArrowLeft, TrendingUp, User, Calendar, RefreshCw } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';

interface CashHandoverSession {
  id: string;
  outlet_id: string;
  outlet_name: string;
  handled_by: string;
  approved_by: string | null;
  start_amount: number;
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
  const router = useRouter();
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
  const [loading, setLoading] = useState(true);
  const [refreshing, setRefreshing] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const fetchSessions = useCallback(async () => {
    try {
      setRefreshing(true);
      setError(null);
      
      // Fetch cash handover data directly
      const { data, error: fetchError } = await supabase
        .from('cash_deposit_handovers')
        .select('*')
        .order('submitted_at', { ascending: false });

      if (fetchError) {
        console.error('Supabase query error:', fetchError);
        throw fetchError;
      }

      // If we have data, fetch outlet and user names separately
      let outletsMap: Record<string, string> = {};
      let usersMap: Record<string, string> = {};

      if (data && data.length > 0) {
        const outletIds = [...new Set((data as SessionData[]).map(d => d.outlet_id))];
        const userIds = [
          ...new Set(
            (data as SessionData[])
              .flatMap(d => [d.barista_id, d.approved_by])
              .filter((id): id is string => id !== null)
          )
        ];

        if (outletIds.length > 0) {
          const { data: outlets } = await supabase
            .from('outlets')
            .select('id, name')
            .in('id', outletIds);
          outletsMap = Object.fromEntries(
            (outlets || []).map(o => [o.id, o.name])
          );
        }

        if (userIds.length > 0) {
          const { data: users } = await supabase
            .from('users')
            .select('id, name')
            .in('id', userIds);
          usersMap = Object.fromEntries(
            (users || []).map(u => [u.id, u.name])
          );
        }
      }

      const formattedSessions = ((data as unknown) as SessionData[] || []).map((session) => ({
        id: session.id,
        outlet_id: session.outlet_id,
        outlet_name: outletsMap[session.outlet_id] || 'Unknown',
        handled_by: usersMap[session.barista_id] || 'Unknown',
        approved_by: session.approved_by ? usersMap[session.approved_by] || null : null,
        start_amount: session.total_omset || 0,
        cash_received: session.cash_amount || 0,
        cash_handed_over: session.deposit_amount || 0,
        difference: (session.cash_amount || 0) - (session.deposit_amount || 0),
        status: session.status,
        created_at: session.submitted_at,
        approved_at: session.approved_at
      }));

      setAllSessions(formattedSessions);

      // Calculate statistics from all sessions
      const newStats: CashHandoverStats = {
        totalSessions: formattedSessions.length,
        approvedCount: formattedSessions.filter(s => s.status === 'approved').length,
        pendingCount: formattedSessions.filter(s => s.status === 'pending').length,
        rejectedCount: formattedSessions.filter(s => s.status === 'rejected').length,
        totalCash: formattedSessions.reduce((sum, s) => sum + (s.cash_handed_over || 0), 0)
      };
      setStats(newStats);
    } catch (err) {
      console.error('Failed to fetch cash handover sessions:', err);
      setError(err instanceof Error ? err.message : 'Failed to load cash handover data');
    } finally {
      setRefreshing(false);
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    fetchSessions();
  }, [fetchSessions]);

  useEffect(() => {
    const filtered = statusFilter === 'all' 
      ? allSessions 
      : allSessions.filter(s => s.status === statusFilter);
    setSessions(filtered);
  }, [statusFilter, allSessions]);

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

  return (
    <div className="p-6 bg-linear-to-br from-amber-50 to-orange-50 min-h-screen">
      <div className="mb-6">
        <button
          onClick={() => router.back()}
          className="flex items-center text-amber-600 hover:text-amber-700 transition-colors"
        >
          <ArrowLeft size={20} className="mr-2" />
          Back
        </button>
      </div>

      <div className="mb-8">
        <div className="flex items-center justify-between mb-2">
          <div className="flex items-center gap-3">
            <DollarSign size={32} className="text-amber-600" />
            <h1 className="text-4xl font-bold text-gray-800">Cash Handover</h1>
          </div>
          <button
            onClick={() => fetchSessions()}
            disabled={refreshing}
            className="flex items-center gap-2 bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg transition disabled:opacity-50"
          >
            <RefreshCw size={16} className={refreshing ? 'animate-spin' : ''} />
            Refresh
          </button>
        </div>
        <p className="text-gray-600">Manage and track cash handover sessions across all outlets</p>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-2 md:grid-cols-5 gap-4 mb-8">
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-blue-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Total Sessions</p>
          <p className="text-2xl font-bold text-gray-800">{stats.totalSessions}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-green-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Approved</p>
          <p className="text-2xl font-bold text-green-600">{stats.approvedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-yellow-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Pending</p>
          <p className="text-2xl font-bold text-yellow-600">{stats.pendingCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-red-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Rejected</p>
          <p className="text-2xl font-bold text-red-600">{stats.rejectedCount}</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4 border-l-4 border-purple-500">
          <p className="text-sm text-gray-600 font-semibold mb-1">Total Cash</p>
          <p className="text-lg font-bold text-purple-600">Rp {stats.totalCash.toLocaleString('id-ID')}</p>
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
                ? 'bg-amber-600 text-white'
                : 'bg-white text-gray-700 border-2 border-gray-200 hover:border-amber-600'
            }`}
          >
            {status.charAt(0).toUpperCase() + status.slice(1)}
          </button>
        ))}
      </div>

      {loading && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <div className="relative">
            <DollarSign size={64} className="text-amber-600 opacity-20 animate-pulse mx-auto" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-8 h-8 border-4 border-amber-600 border-t-transparent rounded-full animate-spin" />
            </div>
          </div>
          <p className="text-gray-500 mt-6">Loading cash handover data...</p>
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
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Cash Handovers Yet</h3>
          <p className="text-gray-500">Cash handover sessions will appear here once they are recorded.</p>
        </div>
      )}

      {!loading && !error && sessions.length > 0 && (
        <div className="grid gap-4">
          {sessions.map((session) => (
            <div key={session.id} className="bg-white rounded-2xl shadow-lg p-6 hover:shadow-xl transition-shadow">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <div className="mb-4">
                    <p className="text-sm text-gray-500 mb-1">Outlet</p>
                    <p className="text-lg font-semibold text-gray-800">{session.outlet_name}</p>
                  </div>
                  <div className="mb-4">
                    <p className="text-sm text-gray-500 mb-1">Handled By</p>
                    <p className="text-gray-700 flex items-center gap-2">
                      <User size={16} /> {session.handled_by}
                    </p>
                  </div>
                  {session.approved_by && (
                    <div>
                      <p className="text-sm text-gray-500 mb-1">Approved By</p>
                      <p className="text-gray-700">{session.approved_by}</p>
                    </div>
                  )}
                </div>

                <div className="grid grid-cols-2 gap-4">
                  <div className="bg-blue-50 rounded-lg p-4">
                    <p className="text-sm text-gray-500 mb-2">Start Amount</p>
                    <p className="text-xl font-bold text-blue-600">
                      Rp {session.start_amount.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className="bg-green-50 rounded-lg p-4">
                    <p className="text-sm text-gray-500 mb-2">Cash Received</p>
                    <p className="text-xl font-bold text-green-600">
                      Rp {session.cash_received.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className="bg-orange-50 rounded-lg p-4">
                    <p className="text-sm text-gray-500 mb-2">Handed Over</p>
                    <p className="text-xl font-bold text-orange-600">
                      Rp {session.cash_handed_over.toLocaleString('id-ID')}
                    </p>
                  </div>
                  <div className={`rounded-lg p-4 ${session.difference === 0 ? 'bg-green-50' : session.difference > 0 ? 'bg-yellow-50' : 'bg-red-50'}`}>
                    <p className="text-sm text-gray-500 mb-2">Difference</p>
                    <p className={`text-xl font-bold ${session.difference === 0 ? 'text-green-600' : session.difference > 0 ? 'text-yellow-600' : 'text-red-600'}`}>
                      Rp {session.difference.toLocaleString('id-ID')}
                    </p>
                  </div>
                </div>
              </div>

              <div className="mt-6 pt-6 border-t border-gray-200 flex items-center justify-between">
                <div className="flex items-center gap-4">
                  <Calendar size={16} className="text-gray-400" />
                  <div>
                    <p className="text-sm text-gray-500">Created</p>
                    <p className="text-gray-700">{format(new Date(session.created_at), 'PPP HH:mm')}</p>
                  </div>
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
