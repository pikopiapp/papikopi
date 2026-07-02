"use client";

import React, { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { fetchInvestorAssignments } from '@/lib/investor-assignments';
import Link from 'next/link';
import { TrendingUp, DollarSign } from 'lucide-react';
import { format } from 'date-fns';

interface Outlet {
  id: string;
  name: string;
  address: string;
}

interface Assignment {
  id: string;
  outlet_id: string | null;
  investment_amount: number | null;
  margin_percentage: number | null;
  status: string | null;
  start_date: string | null;
  outlet?: Outlet | null;
  outlet_revenue?: number;
  investor_share?: number;
}

interface SalesRecord {
  outlet_id: string;
  profit: number;
}

export default function InvestorOutletsPage() {
  const { user } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [assignments, setAssignments] = useState<Assignment[]>([]);

  useEffect(() => {
    let active = true;

    const fetchAssignments = async () => {
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
        const outletsMap: Record<string, Outlet> = {};
        if (ids.length > 0) {
          const { data: outlets } = await supabase.from('outlets').select('id, name, address').in('id', ids);
          (outlets || []).forEach((o: Outlet) => {
            outletsMap[o.id] = o;
          });
        }

        // Fetch sales data for revenue calculation
        const { data: salesData } = await supabase
          .from('sales')
          .select('outlet_id, profit');

        // Calculate outlet revenues
        const revenueMap: Record<string, number> = {};
        if (salesData) {
          for (const sale of salesData as SalesRecord[]) {
            revenueMap[sale.outlet_id] = (revenueMap[sale.outlet_id] || 0) + (sale.profit || 0);
          }
        }

        const enhanced: Assignment[] = (rows || []).map((r) => {
          const outletId = typeof r.outlet_id === 'string' && r.outlet_id.trim().length > 0 ? r.outlet_id : null;
          const outletRevenue = outletId ? (revenueMap[outletId] || 0) : 0;

          return {
            ...r,
            outlet: outletId ? outletsMap[outletId] || null : null,
            outlet_revenue: outletRevenue,
            investor_share: (outletRevenue * (r.margin_percentage || 0)) / 100,
          };
        });
        if (active) {
          setAssignments(enhanced);
        }
      } catch (e) {
        console.error(e);
      } finally {
        if (active) {
          setLoading(false);
        }
      }
    };

    void fetchAssignments();

    return () => {
      active = false;
    };
  }, [user]);

  const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', minimumFractionDigits: 0 }).format(value);
  };

  const getStatusBadge = (status: string) => {
    const styles: Record<string, string> = {
      active: 'bg-green-100 text-green-800',
      completed: 'bg-gray-100 text-gray-800',
      suspended: 'bg-red-100 text-red-800',
    };
    return styles[status] || 'bg-gray-100 text-gray-800';
  };

  const totalInvestment = assignments.reduce((s, a) => s + (a.investment_amount || 0), 0);
  const totalInvestorShare = assignments.reduce((s, a) => s + (a.investor_share || 0), 0);


  return (
    <div className="min-h-[60vh]">
      <div className="max-w-5xl mx-auto">
        <div className="mb-6">
          <h2 className="text-2xl font-bold">Outlet Investasi</h2>
          <p className="text-sm text-gray-500 mt-1">Ringkasan semua outlet yang Anda investasikan beserta pendapatan.</p>
        </div>

        {loading ? (
          <div className="flex items-center justify-center h-48">
            <div className="text-center">
              <div className="animate-spin rounded-full h-10 w-10 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-2"></div>
              <p className="text-gray-600">Loading outlets…</p>
            </div>
          </div>
        ) : assignments.length === 0 ? (
          <div className="surface-card p-8 rounded shadow-sm bg-white border text-center">
            <p className="text-gray-600">Anda belum memiliki outlet yang di-assign.</p>
          </div>
        ) : (
          <>
            {/* Summary Cards */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
              <div className="surface-card p-4 rounded shadow-sm bg-white border">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-gray-500">Total Investasi</p>
                    <p className="text-xl font-bold mt-1">{formatCurrency(totalInvestment)}</p>
                  </div>
                  <DollarSign className="text-amber-600" size={32} />
                </div>
              </div>
              <div className="surface-card p-4 rounded shadow-sm bg-white border">
                <div className="flex items-center justify-between">
                  <div>
                    <p className="text-sm text-gray-500">Total Earning (est.)</p>
                    <p className="text-xl font-bold mt-1">{formatCurrency(totalInvestorShare)}</p>
                  </div>
                  <TrendingUp className="text-green-600" size={32} />
                </div>
              </div>
            </div>

            {/* Outlet Cards */}
            <div className="grid grid-cols-1 gap-4">
              {assignments.map((a) => (
                <div key={a.id} className="surface-card p-5 rounded shadow-sm bg-white border">
                  <div className="flex items-start justify-between mb-4">
                    <div className="flex-1">
                      <div className="font-semibold text-lg">{a.outlet?.name || a.outlet_id}</div>
                      <div className="text-xs text-gray-500 mt-1">{a.outlet?.address || ''}</div>
                    </div>
                    <span className={`px-3 py-1 rounded-full text-xs font-medium ${getStatusBadge(a.status || 'inactive')}`}>
                      {a.status || 'inactive'}
                    </span>
                  </div>

                  <div className="grid grid-cols-2 md:grid-cols-5 gap-4 mb-4 text-sm">
                    <div>
                      <p className="text-gray-500 text-xs">Investasi</p>
                      <p className="font-semibold mt-1">{formatCurrency(a.investment_amount || 0)}</p>
                    </div>
                    <div>
                      <p className="text-gray-500 text-xs">Margin</p>
                      <p className="font-semibold mt-1">{a.margin_percentage ?? '—'}%</p>
                    </div>
                    <div>
                      <p className="text-gray-500 text-xs">Revenue Outlet</p>
                      <p className="font-semibold mt-1">{formatCurrency(a.outlet_revenue || 0)}</p>
                    </div>
                    <div>
                      <p className="text-gray-500 text-xs">Your Share</p>
                      <p className="font-semibold mt-1 text-green-600">{formatCurrency(a.investor_share || 0)}</p>
                    </div>
                    <div>
                      <p className="text-gray-500 text-xs">Mulai</p>
                      <p className="font-semibold mt-1">{a.start_date ? format(new Date(a.start_date), 'dd MMM yyyy') : '—'}</p>
                    </div>
                  </div>

                  <div className="pt-3 border-t">
                    <Link
                      href={`/dashboard/outlets/${a.outlet_id}`}
                      className="text-sm text-amber-600 hover:text-amber-700 font-medium"
                    >
                      Lihat detail outlet →
                    </Link>
                  </div>
                </div>
              ))}
            </div>
          </>
        )}
      </div>
    </div>
  );
}

