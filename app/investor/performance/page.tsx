"use client";

import React, { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { fetchInvestorAssignments } from '@/lib/investor-assignments';

interface AssignmentPerformanceItem {
  id: string;
  outlet_id?: string | null;
  investment_amount?: number | null;
  margin_percentage?: number | null;
  status?: string | null;
  outlet?: { id: string; name: string } | null;
}

export default function InvestorPerformancePage() {
  const { user } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [assignments, setAssignments] = useState<AssignmentPerformanceItem[]>([]);

  useEffect(() => {
    let active = true;

    const fetch = async () => {
      if (!user?.id) {
        if (active) {
          setLoading(false);
        }
        return;
      }

      setLoading(true);
      try {
        const { rows } = await fetchInvestorAssignments(user);

        const ids = Array.from(new Set((rows || []).map((r) => r.outlet_id).filter((id): id is string => Boolean(id))));
        const outletsMap: Record<string, { id: string; name: string }> = {};
        if (ids.length > 0) {
          const { data: outlets } = await supabase.from('outlets').select('id, name').in('id', ids);
          (outlets || []).forEach((o: { id: string; name: string }) => {
            outletsMap[o.id] = o;
          });
        }

        if (active) {
          setAssignments((rows || []).map((r) => ({ ...r, outlet: outletsMap[r.outlet_id || ''] || null })));
        }
      } catch (e) {
        console.error(e);
      } finally {
        if (active) {
          setLoading(false);
        }
      }
    };

    void fetch();

    return () => {
      active = false;
    };
  }, [user]);

  // placeholder aggregate: compute total investment and average margin
  const totalInvestment = assignments.reduce((s, a) => s + (Number(a.investment_amount) || 0), 0);
  const avgMargin = assignments.length ? (assignments.reduce((s, a) => s + (Number(a.margin_percentage) || 0), 0) / assignments.length).toFixed(1) : '—';

  return (
    <div className="min-h-[60vh]">
      <div className="max-w-5xl mx-auto">
        <h2 className="text-xl font-semibold mb-4">Kinerja Outlet</h2>

        {loading ? (
          <div className="text-gray-600">Loading performance…</div>
        ) : (
          <div className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="surface-card p-4 rounded shadow-sm bg-white border">
                <div className="text-sm text-gray-500">Total Investasi</div>
                <div className="font-semibold text-lg">{totalInvestment}</div>
              </div>
              <div className="surface-card p-4 rounded shadow-sm bg-white border">
                <div className="text-sm text-gray-500">Rata-rata Margin</div>
                <div className="font-semibold text-lg">{avgMargin}%</div>
              </div>
            </div>

            <div className="surface-card p-4 rounded shadow-sm bg-white border">
              <h3 className="font-medium mb-3">Per-outlet overview</h3>
              <div className="space-y-2">
                {assignments.map((a) => (
                  <div key={a.id} className="p-2 border rounded bg-gray-50 flex items-center justify-between">
                    <div>
                      <div className="font-medium">{a.outlet?.name || a.outlet_id}</div>
                      <div className="text-xs text-gray-500">Investasi: {a.investment_amount ?? '—'}</div>
                    </div>
                    <div className="text-right">
                      <div className="text-sm text-gray-500">Margin</div>
                      <div className="font-medium">{a.margin_percentage ?? '—'}%</div>
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
