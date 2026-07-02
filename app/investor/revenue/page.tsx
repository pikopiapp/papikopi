"use client";

import React, { useEffect, useState } from 'react';
import { useAuthStore } from '@/lib/store/auth';
import { fetchInvestorAssignments } from '@/lib/investor-assignments';

interface AssignmentSummary {
  id: string;
  outlet_id?: string | null;
  investment_amount?: number | null;
  margin_percentage?: number | null;
  status?: string | null;
}

export default function InvestorRevenuePage() {
  const { user } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [assignments, setAssignments] = useState<AssignmentSummary[]>([]);

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
        if (active) {
          setAssignments(rows || []);
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

  // naive revenue estimate: investment_amount * margin_percentage / 100
  const estimatedRevenue = assignments.reduce((s, a) => s + ((Number(a.investment_amount) || 0) * (Number(a.margin_percentage) || 0) / 100), 0);

  return (
    <div className="min-h-[60vh]">
      <div className="max-w-4xl mx-auto">
        <h2 className="text-xl font-semibold mb-4">Pendapatan</h2>

        {loading ? (
          <div className="text-gray-600">Loading revenue…</div>
        ) : (
          <div className="space-y-4">
            <div className="surface-card p-4 rounded shadow-sm bg-white border">
              <div className="text-sm text-gray-500">Estimasi Pendapatan Total</div>
              <div className="font-semibold text-lg">{estimatedRevenue}</div>
              <p className="text-xs text-gray-500 mt-2">Perhitungan kasar: investment × margin%</p>
            </div>

            <div className="surface-card p-4 rounded shadow-sm bg-white border">
              <h3 className="font-medium mb-3">Rincian per Assignment</h3>
              <div className="space-y-2">
                {assignments.map((a) => (
                  <div key={a.id} className="p-2 border rounded bg-gray-50 flex items-center justify-between">
                    <div>
                      <div className="font-medium">Assignment {a.id}</div>
                      <div className="text-xs text-gray-500">Investment: {a.investment_amount ?? '—'}</div>
                    </div>
                    <div className="text-right">
                      <div className="text-sm text-gray-500">Estimate</div>
                      <div className="font-medium">{((Number(a.investment_amount) || 0) * (Number(a.margin_percentage) || 0) / 100).toFixed(2)}</div>
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
