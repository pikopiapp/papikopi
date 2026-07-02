'use client';

import { useEffect, useMemo, useState } from 'react';
import Link from 'next/link';
import { Building2, Landmark, TrendingUp, Wallet, Briefcase, ArrowRight, ChevronDown, ChevronUp, Eye } from 'lucide-react';
import { SalesBarChart } from '@/app/dashboard/Charts';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { fetchInvestorAssignments, resolveInvestorContext } from '@/lib/investor-assignments';
import { formatDateOnlyInJakarta } from '@/lib/helpers/business-day';
import { aggregateDailyOutletSummary, calculateInvestorShare } from '@/lib/bonus-calculator';
import { buildOutletPerformanceBreakdown } from '@/lib/investor-performance';

interface BankDetails {
  account_holder?: string | null;
  bank_name?: string | null;
  account_number?: string | null;
  routing_number?: string | null;
}

interface InvestorProfile {
  id?: string | null;
  email?: string | null;
  name?: string | null;
  phone?: string | null;
  outlet_id?: string | null;
  role?: string | null;
}

interface AssignmentItem {
  id: string;
  outlet_id?: string | null;
  investment_amount?: number | null;
  margin_percentage?: number | null;
  start_date?: string | null;
  status?: string | null;
  outlet?: { id: string; name: string } | null;
}

interface OutletPerformanceSummary {
  summary: Array<{
    date: string;
    revenue: number;
    hpp: number;
    bonus: number;
    meal: number;
    orders: number;
    profit: number;
  }>;
  metrics: {
    revenue: number;
    hpp: number;
    bonus: number;
    meal: number;
    profit: number;
    shareInvestor: number;
    transactions: number;
  };
}

export default function InvestorProfilePage() {
  const { user } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [profile, setProfile] = useState<InvestorProfile | null>(null);
  const [bankDetails, setBankDetails] = useState<BankDetails | null>(null);
  const [assignments, setAssignments] = useState<AssignmentItem[]>([]);
  const [outletPerformance, setOutletPerformance] = useState<Record<string, OutletPerformanceSummary>>({});
  const [performanceLoading, setPerformanceLoading] = useState(false);
  const [expandedOutletId, setExpandedOutletId] = useState<string | null>(null);
  const [selectedMonth, setSelectedMonth] = useState(() => {
    const now = new Date();
    return `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, '0')}`;
  });

  useEffect(() => {
    let active = true;

    const fetchData = async () => {
      if (!user?.id) {
        if (active) setLoading(false);
        return;
      }

      setLoading(true);
      try {
        const resolved = await resolveInvestorContext(user);
        const investorId = resolved.investorId;

        if (resolved.profile && active) {
          setProfile(resolved.profile);
        }

        const { data: bank } = await supabase
          .from('investor_profiles')
          .select('account_holder, bank_name, account_number, routing_number')
          .eq('investor_id', investorId)
          .maybeSingle();
        if (bank && active) {
          setBankDetails(bank as BankDetails);
        }

        const { rows } = await fetchInvestorAssignments(user);
        const outletIds = Array.from(new Set(rows.map((row) => row.outlet_id).filter((id): id is string => Boolean(id))));

        const outletsMap: Record<string, { id: string; name: string }> = {};
        if (outletIds.length > 0) {
          const { data: outlets } = await supabase.from('outlets').select('id, name').in('id', outletIds);
          (outlets || []).forEach((outlet: { id: string; name: string }) => {
            outletsMap[outlet.id] = outlet;
          });
        }

        const enhanced = rows.map((row) => ({
          ...row,
          outlet: outletsMap[row.outlet_id || ''] || null,
        }));

        if (active) {
          setAssignments(enhanced);
        }
      } catch (error) {
        console.error('Failed to load investor profile dashboard', error);
      } finally {
        if (active) {
          setLoading(false);
        }
      }
    };

    void fetchData();

    return () => {
      active = false;
    };
  }, [user]);

  useEffect(() => {
    let active = true;
    const loadOutletPerformance = async () => {
      if (!assignments.length) {
        if (active) {
          setOutletPerformance({});
          setPerformanceLoading(false);
        }
        return;
      }

      setPerformanceLoading(true);
      const [year, month] = selectedMonth.split('-').map(Number);
      const start = new Date(year, month - 1, 1);
      const end = new Date(year, month, 0);
      const since = formatDateOnlyInJakarta(start);
      const until = formatDateOnlyInJakarta(end);

      const results = await Promise.all(
        assignments.map(async (assignment) => {
          if (!assignment.outlet_id) return null;

          const response = await fetch(`/api/sales/by-outlet?outlet_id=${assignment.outlet_id}&since=${since}&until=${until}`);
          if (!response.ok) return null;

          const data = await response.json();
          const rows = Array.isArray(data) ? data : Array.isArray(data?.data) ? data.data : [];

          const sharePercentage = Number(assignment.margin_percentage || 0);
          const summaryRows = aggregateDailyOutletSummary(
            rows.map((sale: Record<string, unknown>) => ({
              created_at: String(sale.created_at || ''),
              outlet_id: String(assignment.outlet_id || ''),
              total_amount: Number(sale.total_amount || 0),
              profit: Number(sale.profit || 0),
              hpp_total: Number(sale.hpp_total || 0),
              bonus_amount: Number(sale.bonus_amount || 0),
              meal_amount: Number(sale.meal_amount || 0),
            })),
            undefined,
            { forceRecomputeBonus: true, forceRecomputeMeal: true }
          );

          const summary = summaryRows.map((item) => ({
            date: item.date,
            revenue: item.revenue,
            hpp: item.hpp,
            bonus: item.bonus,
            meal: item.meal,
            orders: item.orders,
            profit: item.profit,
          }));
          const metrics = summary.reduce(
            (acc, item) => {
              acc.revenue += item.revenue;
              acc.hpp += item.hpp;
              acc.bonus += item.bonus;
              acc.meal += item.meal;
              acc.profit += item.profit;
              acc.shareInvestor += calculateInvestorShare(item.profit, sharePercentage);
              acc.transactions += item.orders;
              return acc;
            },
            { revenue: 0, hpp: 0, bonus: 0, meal: 0, profit: 0, shareInvestor: 0, transactions: 0 }
          );

          return { assignmentId: assignment.id, summary, metrics };
        })
      );

      if (!active) return;

      const next: Record<string, OutletPerformanceSummary> = {};
      results.filter(Boolean).forEach((result) => {
        if (result) {
          next[result.assignmentId] = {
            summary: result.summary,
            metrics: result.metrics,
          };
        }
      });

      setOutletPerformance(next);
      setPerformanceLoading(false);
    };

    void loadOutletPerformance();

    return () => {
      active = false;
    };
  }, [assignments, selectedMonth]);

  const summary = useMemo(() => {
    const totalInvestment = assignments.reduce((sum, item) => sum + (item.investment_amount || 0), 0);
    const totalMargin = assignments.reduce((sum, item) => sum + (item.margin_percentage || 0), 0);
    const activeOutlets = assignments.filter((item) => {
      const status = (item.status || '').toLowerCase();
      return !['inactive', 'pending', 'cancelled'].includes(status);
    }).length;
    const estimatedShare = assignments.reduce((sum, item) => sum + ((item.investment_amount || 0) * ((item.margin_percentage || 0) / 100)), 0);

    return {
      totalOutlets: assignments.length,
      totalInvestment,
      avgMargin: assignments.length ? totalMargin / assignments.length : 0,
      activeOutlets,
      estimatedShare,
    };
  }, [assignments]);

  if (loading) {
    return (
      <div className="flex h-48 items-center justify-center">
        <div className="text-center">
          <div className="mx-auto mb-3 h-10 w-10 animate-spin rounded-full border-b-2 border-t-2 border-[#F59E0B]" />
          <p className="text-sm text-gray-600">Memuat ringkasan portofolio investor...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="rounded-2xl border border-amber-100 bg-linear-to-br from-[#1F4E5F] to-[#2B6C7E] p-6 text-white shadow-sm">
        <div className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
          <div>
            <p className="text-sm font-medium text-amber-100">Profil Investor</p>
            <h1 className="mt-1 text-2xl font-semibold">{profile?.name || user?.email || 'Investor'}</h1>
            <p className="mt-2 max-w-2xl text-sm text-slate-100">
              Ringkasan portofolio outlet yang telah di-assign kepada Anda, lengkap dengan estimasi investasi dan kinerja outlet.
            </p>
          </div>
          <Link href="/investor/settings" className="inline-flex items-center gap-2 rounded-full bg-white/15 px-4 py-2 text-sm font-medium text-white transition hover:bg-white/25">
            Kelola profil
            <ArrowRight size={16} />
          </Link>
        </div>
      </div>

      <div className="grid gap-4 md:grid-cols-2 xl:grid-cols-4">
        <div className="rounded-xl border border-gray-100 bg-white p-4 shadow-sm">
          <div className="flex items-center justify-between">
            <p className="text-sm text-gray-500">Outlet Terassign</p>
            <Building2 size={18} className="text-[#F59E0B]" />
          </div>
          <p className="mt-3 text-2xl font-semibold text-[#1F4E5F]">{summary.totalOutlets}</p>
          <p className="mt-1 text-sm text-gray-500">Outlet aktif dalam portofolio Anda</p>
        </div>

        <div className="rounded-xl border border-gray-100 bg-white p-4 shadow-sm">
          <div className="flex items-center justify-between">
            <p className="text-sm text-gray-500">Total Investasi</p>
            <Wallet size={18} className="text-[#F59E0B]" />
          </div>
          <p className="mt-3 text-2xl font-semibold text-[#1F4E5F]">{summary.totalInvestment.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
          <p className="mt-1 text-sm text-gray-500">Nilai yang telah di-assign ke outlet</p>
        </div>

        <div className="rounded-xl border border-gray-100 bg-white p-4 shadow-sm">
          <div className="flex items-center justify-between">
            <p className="text-sm text-gray-500">Rata-rata Margin</p>
            <TrendingUp size={18} className="text-[#F59E0B]" />
          </div>
          <p className="mt-3 text-2xl font-semibold text-[#1F4E5F]">{summary.avgMargin.toFixed(1)}%</p>
          <p className="mt-1 text-sm text-gray-500">Margin rata-rata dari assignment</p>
        </div>

        <div className="rounded-xl border border-gray-100 bg-white p-4 shadow-sm">
          <div className="flex items-center justify-between">
            <p className="text-sm text-gray-500">Estimasi Profit</p>
            <Briefcase size={18} className="text-[#F59E0B]" />
          </div>
          <p className="mt-3 text-2xl font-semibold text-[#1F4E5F]">{summary.estimatedShare.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
          <p className="mt-1 text-sm text-gray-500">Berdasarkan margin assignment yang ada</p>
        </div>
      </div>

      <div className="space-y-6">
        <div className="rounded-xl border border-gray-100 bg-white p-6 shadow-sm">
          <div className="flex items-center justify-between">
            <div>
              <h2 className="text-lg font-semibold text-[#1F4E5F]">Outlet yang Di-Assign</h2>
              <p className="mt-1 text-sm text-gray-500">Daftar outlet yang menjadi bagian dari portofolio Anda</p>
            </div>
            <span className="rounded-full bg-amber-50 px-3 py-1 text-sm font-medium text-amber-700">{summary.activeOutlets} aktif</span>
          </div>

          <div className="mt-4 flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <h2 className="text-lg font-semibold text-[#1F4E5F]">Outlet yang Di-Assign</h2>
              <p className="mt-1 text-sm text-gray-500">Daftar outlet yang menjadi bagian dari portofolio Anda</p>
            </div>
            <div className="flex items-center gap-3 rounded-lg border border-gray-200 bg-white px-3 py-2 shadow-sm">
              <label htmlFor="monthSelect" className="text-sm font-medium text-gray-600">Bulan</label>
              <input
                id="monthSelect"
                type="month"
                value={selectedMonth}
                onChange={(event) => setSelectedMonth(event.target.value)}
                className="rounded-lg border border-gray-200 bg-white px-3 py-2 text-sm text-gray-700"
              />
            </div>
          </div>
          <div className="mt-5 grid gap-4 xl:grid-cols-2">
            {assignments.length === 0 && (
              <div className="rounded-lg border border-dashed border-gray-200 bg-gray-50 p-4 text-sm text-gray-600 xl:col-span-2">
                Belum ada outlet yang di-assign ke akun investor Anda.
              </div>
            )}

            {assignments.map((assignment) => {
              const performance = outletPerformance[assignment.id];
              const isExpanded = expandedOutletId === assignment.id;
              const breakdown = performance ? buildOutletPerformanceBreakdown(performance.summary, Number(assignment.margin_percentage || 0)) : null;

              return (
                <div key={assignment.id} className="h-full rounded-lg border border-gray-200 p-4">
                  <div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
                    <div>
                      <p className="font-medium text-[#1F4E5F]">{assignment.outlet?.name || assignment.outlet_id || 'Outlet belum terdaftar'}</p>
                      <p className="mt-1 text-sm text-gray-500">Status: {assignment.status || 'Aktif'}</p>
                    </div>
                    <div className="flex flex-wrap items-center gap-3 text-sm">
                      <div className="rounded-lg bg-gray-50 px-3 py-2">
                        <p className="text-gray-500">Investasi</p>
                        <p className="font-semibold text-[#1F4E5F]">{(assignment.investment_amount || 0).toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                      </div>
                      <div className="rounded-lg bg-gray-50 px-3 py-2">
                        <p className="text-gray-500">Margin</p>
                        <p className="font-semibold text-[#1F4E5F]">{assignment.margin_percentage ?? 0}%</p>
                      </div>
                      <button
                        type="button"
                        onClick={() => setExpandedOutletId(isExpanded ? null : assignment.id)}
                        className="inline-flex items-center gap-2 rounded-lg border border-amber-200 bg-amber-50 px-3 py-2 font-medium text-amber-700 transition hover:bg-amber-100"
                      >
                        <Eye size={16} />
                        {isExpanded ? 'Sembunyikan detail' : 'Lihat detail'}
                        {isExpanded ? <ChevronUp size={16} /> : <ChevronDown size={16} />}
                      </button>
                    </div>
                  </div>

                  {performanceLoading && !performance ? (
                    <div className="mt-4 text-sm text-gray-500">Memuat performa outlet...</div>
                  ) : performance ? (
                    <div className="mt-4 space-y-4">
                      <div className="grid gap-2 sm:grid-cols-2 xl:grid-cols-3">
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">Penjualan</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.revenue.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">HPP</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.hpp.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">Meal</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.meal.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">Bonus</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.bonus.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">Profit</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.profit.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                        <div className="rounded-lg bg-gray-50 p-3">
                          <p className="text-xs text-gray-500">Share Investor</p>
                          <p className="font-semibold text-[#1F4E5F]">{performance.metrics.shareInvestor.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</p>
                        </div>
                      </div>
                      <div className="h-48 rounded-lg border border-gray-100 bg-white p-3">
                        <SalesBarChart summary={performance.summary} height={180} />
                      </div>
                      {isExpanded && breakdown && (
                        <div className="space-y-4 rounded-lg border border-amber-100 bg-amber-50/50 p-4">
                          <div>
                            <h3 className="text-sm font-semibold text-[#1F4E5F]">Detail per hari</h3>
                            <div className="mt-3 overflow-hidden rounded-lg border border-gray-200 bg-white">
                              <table className="min-w-full text-sm">
                                <thead className="bg-gray-50 text-left text-gray-600">
                                  <tr>
                                    <th className="px-3 py-2">Hari</th>
                                    <th className="px-3 py-2">Penjualan</th>
                                    <th className="px-3 py-2">Profit</th>
                                    <th className="px-3 py-2">Share Investor</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  {breakdown.daily.map((item) => (
                                    <tr key={item.date} className="border-t border-gray-100">
                                      <td className="px-3 py-2">{item.date}</td>
                                      <td className="px-3 py-2">{item.revenue.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                      <td className="px-3 py-2">{item.profit.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                      <td className="px-3 py-2">{item.shareInvestor.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                    </tr>
                                  ))}
                                </tbody>
                              </table>
                            </div>
                          </div>
                          <div>
                            <h3 className="text-sm font-semibold text-[#1F4E5F]">Detail per minggu</h3>
                            <div className="mt-3 overflow-hidden rounded-lg border border-gray-200 bg-white">
                              <table className="min-w-full text-sm">
                                <thead className="bg-gray-50 text-left text-gray-600">
                                  <tr>
                                    <th className="px-3 py-2">Minggu</th>
                                    <th className="px-3 py-2">Penjualan</th>
                                    <th className="px-3 py-2">Profit</th>
                                    <th className="px-3 py-2">Share Investor</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  {breakdown.weekly.map((item) => (
                                    <tr key={item.weekLabel} className="border-t border-gray-100">
                                      <td className="px-3 py-2">{item.weekLabel}</td>
                                      <td className="px-3 py-2">{item.revenue.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                      <td className="px-3 py-2">{item.profit.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                      <td className="px-3 py-2">{item.shareInvestor.toLocaleString('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 })}</td>
                                    </tr>
                                  ))}
                                </tbody>
                              </table>
                            </div>
                          </div>
                        </div>
                      )}
                    </div>
                  ) : null}
                </div>
              );
            })}
          </div>
        </div>

        <div className="grid gap-6 lg:grid-cols-2">
          <div className="rounded-xl border border-gray-100 bg-white p-6 shadow-sm">
            <div className="flex items-center gap-2 text-[#1F4E5F]">
              <Landmark size={18} />
              <h2 className="text-lg font-semibold">Profil & Bank</h2>
            </div>
            <div className="mt-4 space-y-3 text-sm text-gray-600">
              <div>
                <p className="text-xs uppercase tracking-wide text-gray-400">Nama</p>
                <p className="font-medium text-gray-800">{profile?.name || '—'}</p>
              </div>
              <div>
                <p className="text-xs uppercase tracking-wide text-gray-400">Email</p>
                <p className="font-medium text-gray-800">{profile?.email || user?.email || '—'}</p>
              </div>
              <div>
                <p className="text-xs uppercase tracking-wide text-gray-400">Telepon</p>
                <p className="font-medium text-gray-800">{profile?.phone || '—'}</p>
              </div>
            </div>
            <div className="mt-5 rounded-lg bg-gray-50 p-4 text-sm text-gray-600">
              <p className="font-semibold text-[#1F4E5F]">Bank Details</p>
              {bankDetails ? (
                <div className="mt-2 space-y-1">
                  <p><span className="text-gray-500">Pemilik rekening:</span> {bankDetails.account_holder || '—'}</p>
                  <p><span className="text-gray-500">Bank:</span> {bankDetails.bank_name || '—'}</p>
                  <p><span className="text-gray-500">Nomor rekening:</span> {bankDetails.account_number || '—'}</p>
                </div>
              ) : (
                <p className="mt-2">Belum ada detail bank yang tersimpan.</p>
              )}
            </div>
          </div>

          <div className="rounded-xl border border-gray-100 bg-white p-6 shadow-sm">
            <h2 className="text-lg font-semibold text-[#1F4E5F]">Aksi Cepat</h2>
            <div className="mt-4 space-y-2 text-sm text-gray-600">
              <Link href="/investor/outlets" className="flex items-center justify-between rounded-lg border border-gray-200 px-3 py-2 transition hover:bg-gray-50">
                <span>Lihat outlet investasi</span>
                <ArrowRight size={16} />
              </Link>
              <Link href="/investor/performance" className="flex items-center justify-between rounded-lg border border-gray-200 px-3 py-2 transition hover:bg-gray-50">
                <span>Lihat kinerja outlet</span>
                <ArrowRight size={16} />
              </Link>
              <Link href="/investor/settings" className="flex items-center justify-between rounded-lg border border-gray-200 px-3 py-2 transition hover:bg-gray-50">
                <span>Perbarui profil & bank</span>
                <ArrowRight size={16} />
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
