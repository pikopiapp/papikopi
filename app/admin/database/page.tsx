"use client";
import React, { useEffect, useState } from 'react';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';

export default function DatabaseOverviewPage() {
  const [loading, setLoading] = useState(true);
  const [salesCount, setSalesCount] = useState<number | null>(null);
  const [saleItemsCount, setSaleItemsCount] = useState<number | null>(null);
  const [usersCount, setUsersCount] = useState<number | null>(null);
  const [outletsCount, setOutletsCount] = useState<number | null>(null);
  const [recentSales, setRecentSales] = useState<any[]>([]);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let mounted = true;
    const load = async () => {
      try {
        setLoading(true);
        setError(null);

        const { data: sessionData } = await supabase.auth.getSession();
        const token = sessionData?.session?.access_token;
        const hdrs = token ? { Authorization: `Bearer ${token}` } : undefined;

        // Parallel fetches
        const [salesRes, saleItemsRes, usersRes, outletsRes] = await Promise.all([
          fetch('/api/sales', { headers: hdrs }),
          fetch('/api/admin/sale-items', { headers: hdrs }),
          fetch('/api/users', { headers: hdrs }),
          fetch('/api/outlets', { headers: hdrs }),
        ]);

        if (!mounted) return;

        if (salesRes.ok) {
          const js = await salesRes.json();
          const rows = Array.isArray(js?.sales) ? js.sales : js?.data ?? [];
          setSalesCount(Array.isArray(rows) ? rows.length : null);
          setRecentSales((rows || []).slice(0, 5));
        } else {
          console.warn('salesRes failed', salesRes.status);
        }

        if (saleItemsRes.ok) {
          const js = await saleItemsRes.json();
          let cnt: number | null = null;
          if (Array.isArray(js)) cnt = js.length;
          else if (typeof js?.length === 'number') cnt = js.length;
          else if (Array.isArray(js?.data)) cnt = js.data.length;
          setSaleItemsCount(cnt);
        }

        if (usersRes.ok) {
          const js = await usersRes.json();
          let cnt: number | null = null;
          if (Array.isArray(js)) cnt = js.length;
          else if (Array.isArray(js?.data)) cnt = js.data.length;
          setUsersCount(cnt);
        }

        if (outletsRes.ok) {
          const js = await outletsRes.json();
          let cnt: number | null = null;
          if (Array.isArray(js)) cnt = js.length;
          else if (Array.isArray(js?.data)) cnt = js.data.length;
          setOutletsCount(cnt);
        }
      } catch (err: any) {
        console.error(err);
        setError(err?.message || String(err));
      } finally {
        if (mounted) setLoading(false);
      }
    };

    void load();
    return () => { mounted = false; };
  }, []);

  const handleRefreshSession = async () => {
    setLoading(true);
    try {
      const { data, error } = await supabase.auth.refreshSession();
      if (error) throw error;
      // refetch counts
      window.location.reload();
    } catch (err: any) {
      setError(err.message || String(err));
      setLoading(false);
    }
  };

  return (
    <div>
      <header className="mb-6 flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold">Database — Overview</h1>
          <p className="text-sm text-gray-600">Quick admin summary and shortcuts.</p>
        </div>
        <div className="flex gap-2">
          <button onClick={handleRefreshSession} className="px-3 py-2 bg-blue-600 text-white rounded">Refresh Session</button>
          <Link href="/admin/database/sales" className="px-3 py-2 bg-white border rounded">Open Sales</Link>
        </div>
      </header>

      {error && <p className="text-red-600 mb-4">{error}</p>}

      <section className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-6">
        <div className="p-4 bg-white rounded shadow">
          <div className="text-sm text-gray-500">Sales rows</div>
          <div className="text-2xl font-semibold">{loading ? '…' : (salesCount ?? '—')}</div>
        </div>
        <div className="p-4 bg-white rounded shadow">
          <div className="text-sm text-gray-500">Sale items</div>
          <div className="text-2xl font-semibold">{loading ? '…' : (saleItemsCount ?? '—')}</div>
        </div>
        <div className="p-4 bg-white rounded shadow">
          <div className="text-sm text-gray-500">Users</div>
          <div className="text-2xl font-semibold">{loading ? '…' : (usersCount ?? '—')}</div>
        </div>
        <div className="p-4 bg-white rounded shadow">
          <div className="text-sm text-gray-500">Outlets</div>
          <div className="text-2xl font-semibold">{loading ? '…' : (outletsCount ?? '—')}</div>
        </div>
      </section>

      <section className="mb-6">
        <h2 className="text-lg font-medium mb-2">Recent Sales</h2>
        {loading ? <p>Loading…</p> : recentSales.length === 0 ? <p>No recent sales.</p> : (
          <div className="bg-white rounded shadow overflow-auto">
            <table className="min-w-full text-left">
              <thead className="bg-gray-100">
                <tr>
                  <th className="px-4 py-2">ID</th>
                  <th className="px-4 py-2">Outlet</th>
                  <th className="px-4 py-2">Total</th>
                  <th className="px-4 py-2">Profit</th>
                  <th className="px-4 py-2">Created</th>
                </tr>
              </thead>
              <tbody>
                {recentSales.map((s: any) => (
                  <tr key={s.id} className="border-t">
                    <td className="px-4 py-2">{s.id}</td>
                    <td className="px-4 py-2">{s.outlet_id}</td>
                    <td className="px-4 py-2">{Number(s.total_amount || s.total || 0).toLocaleString()}</td>
                    <td className="px-4 py-2">{Number(s.profit || 0).toLocaleString()}</td>
                    <td className="px-4 py-2">{s.created_at ? new Date(s.created_at).toLocaleString() : ''}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </section>

      <section>
        <h2 className="text-lg font-medium mb-2">Quick Actions</h2>
        <div className="flex flex-wrap gap-2">
          <Link href="/admin/database/sales" className="px-3 py-2 bg-white border rounded">Open Sales</Link>
          <Link href="/admin/database/sale-items" className="px-3 py-2 bg-white border rounded">Open Sale Items</Link>
          <a href="/api/sales/seed" className="px-3 py-2 bg-white border rounded">(Re)seed Sales (POST)</a>
        </div>
      </section>
    </div>
  );
}
// page is a client-side overview for admins
