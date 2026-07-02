"use client";

import React from "react";
import Link from 'next/link';
import type { ChartOptions } from 'chart.js';
import { Doughnut } from 'react-chartjs-2';
import { SalesBarChart, OrdersLineChart, ProfitBarChart } from './Charts';
import { formatDateOnlyInJakarta, parseDateOnlyAsJakarta, getBusinessDayDate } from '@/lib/helpers/business-day';
import { aggregateDailyOutletSummary } from '@/lib/bonus-calculator';
import { getDefaultMonthValue, getMonthRange } from '@/lib/month-range';

const DASHBOARD_USE_BUSINESS_DAY = true;
const BUSINESS_DAY_START_HOUR = 4;

const IconSales = ({ className = "" }: { className?: string }) => (
  <svg viewBox="0 0 24 24" fill="none" className={className} xmlns="http://www.w3.org/2000/svg">
    <path d="M4 5h16v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V5z" stroke="#0f172a" strokeOpacity="0.08" fill="#fff" />
    <path d="M7 8h10M7 12h10M7 16h6" stroke="#0b84ff" strokeWidth="1.4" strokeLinecap="round" strokeLinejoin="round" />
    <text x="18" y="7.5" fontSize="9" fill="#0f172a" opacity="0.7">Rp</text>
  </svg>
);

const IconOrders = ({ className = "" }: { className?: string }) => (
  <svg viewBox="0 0 24 24" className={className} xmlns="http://www.w3.org/2000/svg">
    <path d="M6 2h12l1.5 4H4.5L6 2z" fill="#f3f4f6" stroke="#ef4444" strokeWidth="0.6" />
    <path d="M4 6h16v12a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6z" stroke="#0f172a" strokeOpacity="0.06" fill="none" />
    <circle cx="9" cy="15.5" r="1.2" fill="#ef4444" />
    <circle cx="15" cy="15.5" r="1.2" fill="#ef4444" />
  </svg>
);

const IconCup = ({ className = "" }: { className?: string }) => (
  <svg viewBox="0 0 24 24" className={className} xmlns="http://www.w3.org/2000/svg">
    <path d="M6 7h12v2a6 6 0 0 1-6 6 6 6 0 0 1-6-6V7z" stroke="#7c3aed" strokeWidth="1.2" fill="#fff" />
    <path d="M8 5h8v2H8z" fill="#7c3aed" />
    <path d="M18 9v1a3 3 0 0 0 0 6" stroke="#7c3aed" strokeWidth="1" fill="none" />
  </svg>
);

const IconProfit = ({ className = "" }: { className?: string }) => (
  <svg viewBox="0 0 24 24" className={className} xmlns="http://www.w3.org/2000/svg">
    <path d="M4 14l4-4 4 4 6-6" stroke="#16a34a" strokeWidth="1.6" fill="none" strokeLinecap="round" strokeLinejoin="round" />
    <circle cx="18" cy="6" r="2" fill="#16a34a" />
  </svg>
);

const IconAvg = ({ className = "" }: { className?: string }) => (
  <svg viewBox="0 0 24 24" className={className} xmlns="http://www.w3.org/2000/svg">
    <rect x="3" y="7" width="18" height="10" rx="2" stroke="#f59e0b" strokeWidth="0.9" fill="#fff" />
    <path d="M7 11h10" stroke="#f59e0b" strokeWidth="1.3" strokeLinecap="round" />
    <text x="16" y="16" fontSize="9" fill="#f59e0b">Rp</text>
  </svg>
);

// legacy DonutChart removed in favor of Chart.js Doughnut

// legacy Gauge removed in favor of Chart.js Doughnut gauge

// removed inline mock bars/spark — replaced with Chart.js components below

// Client-side fetch for 7-day daily summary used by the small cards
type SummaryItem = { date: string; outlet_id?: string; revenue: number; hpp: number; bonus: number; meal: number; orders: number; profit: number };
function parseRangeDate(value?: Date | string) {
  if (!value) return undefined;
  if (value instanceof Date) return new Date(value.getFullYear(), value.getMonth(), value.getDate(), 0, 0, 0, 0);
  return parseDateOnlyAsJakarta(value);
}

function weekValueFromDate(d: Date) {
  // returns YYYY-Www (ISO week)
  const date = new Date(Date.UTC(d.getFullYear(), d.getMonth(), d.getDate()));
  // Thursday in current week decides the year
  date.setUTCDate(date.getUTCDate() + 4 - (date.getUTCDay() || 7));
  const yearStart = new Date(Date.UTC(date.getUTCFullYear(), 0, 1));
  const weekNo = Math.ceil((((date.getTime() - yearStart.getTime()) / 86400000) + 1) / 7);
  const yyyy = date.getUTCFullYear();
  const ww = String(weekNo).padStart(2, '0');
  return `${yyyy}-W${ww}`;
}

function weekRangeFromValue(val: string) {
  // val expected like '2026-W27'
  const parts = String(val || '').split('-W');
  if (parts.length !== 2) return null;
  const year = Number(parts[0]);
  const week = Number(parts[1]);
  if (!year || !week) return null;
  // ISO week: find Thursday of the week
  const jan4 = new Date(Date.UTC(year, 0, 4));
  const dayOfWeek = jan4.getUTCDay() || 7; // 1..7
  const thursday = new Date(jan4);
  thursday.setUTCDate(jan4.getUTCDate() - (dayOfWeek - 4) + (week - 1) * 7);
  // Monday is 3 days before Thursday
  const monday = new Date(thursday);
  monday.setUTCDate(thursday.getUTCDate() - 3);
  const sunday = new Date(monday);
  sunday.setUTCDate(monday.getUTCDate() + 6);
  // convert to local Jakarta dates (keep midnight local)
  const start = new Date(monday.getUTCFullYear(), monday.getUTCMonth(), monday.getUTCDate(), 0, 0, 0, 0);
  const end = new Date(sunday.getUTCFullYear(), sunday.getUTCMonth(), sunday.getUTCDate(), 23, 59, 59, 999);
  return { start, end };
}

function useRangeSummary(rangeStart?: string, rangeEnd?: string, useBusinessDay = DASHBOARD_USE_BUSINESS_DAY) {
  const [data, setData] = React.useState<SummaryItem[]>([]);
  const [loading, setLoading] = React.useState(true);
  React.useEffect(() => {
    let mounted = true;
    const fetchIt = async () => {
      try {
        setLoading(true);
        const now = new Date();
        const end = parseRangeDate(rangeEnd) ?? (useBusinessDay ? getBusinessDayDate(now, BUSINESS_DAY_START_HOUR) : now);
        const start = rangeStart
          ? parseRangeDate(rangeStart) ?? new Date(end.getTime())
          : new Date(end.getTime() - 6 * 24 * 60 * 60 * 1000);
        const fmt = (d: Date) => formatDateOnlyInJakarta(d);
        const q = new URLSearchParams({
          start: fmt(start),
          end: fmt(end),
          business_day: useBusinessDay ? '1' : '0',
          business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
          debug: '1',
        });
        const res = await fetch(`/api/reports/daily-summary?${q.toString()}`);
        if (!res.ok) throw new Error('Failed to load daily summary');
        const json = await res.json();
        if (json?.meta) {
          try { console.debug('daily-summary meta', json.meta); } catch (e) {}
        }
        const raw = Array.isArray(json?.data) ? json.data as unknown[] : [];
        const byDate = new Map<string, SummaryItem>();
        raw.forEach((r) => {
          const item = r as Record<string, unknown>;
          const dateStr = typeof item.date === 'string' ? item.date : formatDateOnlyInJakarta(new Date());
          const revenue = typeof item.revenue === 'number' ? item.revenue : Number(item.revenue || 0);
          const hpp = typeof item.hpp === 'number' ? item.hpp : Number(item.hpp || 0);
          const bonus = typeof item.bonus === 'number' ? item.bonus : Number(item.bonus || 0);
          const meal = typeof item.meal === 'number' ? item.meal : Number(item.meal || 0);
          const orders = typeof item.orders === 'number' ? item.orders : Number(item.orders || 0);
          const profit = typeof item.profit === 'number' ? item.profit : Number(item.profit || 0);
          const dt = parseDateOnlyAsJakarta(dateStr);
          const dateLabel = dt.toLocaleDateString('id-ID', { day: '2-digit', month: 'short', timeZone: 'Asia/Jakarta' });
          const existing = byDate.get(dateStr) ?? {
            date: dateLabel,
            revenue: 0,
            hpp: 0,
            bonus: 0,
            meal: 0,
            orders: 0,
            profit: 0,
          };
          existing.revenue += revenue;
          existing.hpp += hpp;
          existing.bonus += bonus;
          existing.meal += meal;
          existing.orders += orders;
          existing.profit += profit;
          byDate.set(dateStr, existing);
        });
        const mapped: SummaryItem[] = Array.from(byDate.values()).sort((a, b) => a.date.localeCompare(b.date));
        // debug log to help inspect fetched summary in browser console
        try { console.debug('use7DaySummary fetched', raw, mapped); } catch (e) {}
        if (mounted) setData(mapped);
      } catch (err) {
        console.error('use7DaySummary', err);
      }
      if (mounted) setLoading(false);
    };
    void fetchIt();
    return () => { mounted = false; };
  }, [rangeStart, rangeEnd]);
  return { data, loading };
}

// Fetch KPI totals for current 7-day period and previous 7-day period, compute changes
function useKpis(rangeStart?: string, rangeEnd?: string, useBusinessDay = DASHBOARD_USE_BUSINESS_DAY) {
  const [kpis, setKpis] = React.useState<null | {
    sales: number;
    orders: number;
    profit: number;
    aov: number;
    units: number;
    prevRangeText: string;
    salesChange: number;
    ordersChange: number;
    profitChange: number;
    unitsChange: number;
  }>(null);
  const [loading, setLoading] = React.useState(true);

  React.useEffect(() => {
    let mounted = true;
    const fetchSalesRange = async (start: Date, end: Date) => {
      const fmt = (d: Date) => formatDateOnlyInJakarta(d);
      const q = new URLSearchParams({
        since: fmt(start),
        until: fmt(end),
        business_day: useBusinessDay ? '1' : '0',
        business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
        debug: '1',
      });
      const res = await fetch(`/api/sales/by-outlet?${q.toString()}`);
      if (!res.ok) throw new Error('Failed to load sales range');
      const json = await res.json();
      if (json?.meta) {
        try { console.debug('sales-by-outlet meta', json.meta); } catch (e) {}
      }
      const rawSales = (Array.isArray(json)
        ? json as unknown[]
        : (Array.isArray(json?.sales) ? json.sales as unknown[] : (Array.isArray(json?.data) ? json.data as unknown[] : []))) as Record<string, unknown>[];
      const filteredSales = useBusinessDay
        ? rawSales
        : rawSales.filter((sale) => {
          const t = new Date(String(sale['created_at'] || '')).getTime();
          if (Number.isNaN(t)) return false;
          const startTime = new Date(start);
          startTime.setHours(0, 0, 0, 0);
          const endTime = new Date(end);
          endTime.setHours(23, 59, 59, 999);
          return t >= startTime.getTime() && t <= endTime.getTime();
        });

      return filteredSales.reduce((acc: { revenue: number; orders: number; profit: number; units: number }, s) => {
        const sale = s as Record<string, unknown>;

        const revenue = Number(sale['total_amount'] || 0);
        const profit = Number(sale['profit'] || 0);
        const items = Array.isArray(sale['sale_items'])
          ? sale['sale_items'] as Record<string, unknown>[]
          : Array.isArray(sale['items'])
            ? sale['items'] as Record<string, unknown>[]
            : [];
        const units = items.reduce((sum: number, it) => {
          const qty = Number(it['quantity'] ?? it['units'] ?? it['cups'] ?? 0) || 0;
          return sum + qty;
        }, 0);

        acc.revenue += revenue;
        acc.orders += 1;
        acc.profit += profit;
        acc.units += units;
        return acc;
      }, { revenue: 0, orders: 0, profit: 0, units: 0 });
    };

    const load = async () => {
      try {
        setLoading(true);
        const now = new Date();
        const end = parseRangeDate(rangeEnd) ?? (DASHBOARD_USE_BUSINESS_DAY ? getBusinessDayDate(now, BUSINESS_DAY_START_HOUR) : now);
        const start = rangeStart
          ? parseRangeDate(rangeStart) ?? new Date(end.getTime())
          : new Date(end.getTime() - 6 * 24 * 60 * 60 * 1000);

        const prevEnd = new Date(start);
        prevEnd.setDate(start.getDate() - 1);
        const prevStart = new Date(prevEnd);
        prevStart.setDate(prevEnd.getDate() - 6);

        const resAll = await Promise.all([
          fetchSalesRange(start, end),
          fetchSalesRange(prevStart, prevEnd),
        ]) as [
          { revenue: number; orders: number; profit: number; units: number },
          { revenue: number; orders: number; profit: number; units: number }
        ];
        const [cur, prev] = resAll;

        const curAov = cur.orders > 0 ? Math.round((cur.revenue / cur.orders)) : 0;

        const change = (curVal: number, prevVal: number) => {
          if (!prevVal) return 0;
          return Math.round(((curVal - prevVal) / prevVal) * 1000) / 10; // one decimal
        };

        const monthLabel = (d: Date) => d.toLocaleDateString('id-ID', { month: 'short', year: 'numeric' });
        const prevRangeText = `${prevStart.getDate()}–${prevEnd.getDate()} ${monthLabel(prevStart)}`;

        if (mounted) setKpis({
          sales: cur.revenue,
          orders: cur.orders,
          profit: cur.profit,
          aov: curAov,
          units: cur.units || 0,
          prevRangeText,
          salesChange: change(cur.revenue, prev.revenue),
          ordersChange: change(cur.orders, prev.orders),
          profitChange: change(cur.profit, prev.profit),
          unitsChange: change(cur.units || 0, prev.units || 0),
        });
        if (mounted) setLoading(false);
      } catch (err) {
        console.error('useKpis', err);
      }
    };

    void load();
    return () => { mounted = false; };
  }, [rangeStart, rangeEnd]);

  return { kpis, loading };
}

function useDashboardSummary(rangeStart?: string, rangeEnd?: string, useBusinessDay = DASHBOARD_USE_BUSINESS_DAY) {
  const [data, setData] = React.useState<null | {
    monthlyCups: number;
    monthlySales: number;
    monthlyProfit: number;
    monthlyMeal: number;
    monthlyBonus: number;
    monthlyHpp: number;
    cupsToday: number;
    salesToday: number;
  }>(null);
  const [loading, setLoading] = React.useState(true);

  React.useEffect(() => {
    let mounted = true;
    const fmt = (d: Date) => formatDateOnlyInJakarta(d);

    const load = async () => {
      try {
        setLoading(true);
        const today = new Date();
        const todayBusinessDay = getBusinessDayDate(today, BUSINESS_DAY_START_HOUR);
        const selectedStart = parseRangeDate(rangeStart) ?? new Date(today.getFullYear(), today.getMonth(), 1);
        const selectedEnd = parseRangeDate(rangeEnd) ?? new Date(today);
        const startIso = fmt(selectedStart);
        const endIso = fmt(selectedEnd);
        const todayIso = fmt(todayBusinessDay);

        const queryParams = new URLSearchParams({
          since: startIso,
          until: endIso,
          business_day: useBusinessDay ? '1' : '0',
          business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
          debug: '1',
        });
        const todayParams = new URLSearchParams({
          since: todayIso,
          until: todayIso,
          business_day: useBusinessDay ? '1' : '0',
          business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
          debug: '1',
        });
        const summaryParams = new URLSearchParams({
          start: startIso,
          end: endIso,
          business_day: useBusinessDay ? '1' : '0',
          business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
          debug: '1',
        });
        const todaySummaryParams = new URLSearchParams({
          start: todayIso,
          end: todayIso,
          business_day: useBusinessDay ? '1' : '0',
          business_day_start_hour: String(BUSINESS_DAY_START_HOUR),
          debug: '1',
        });

        const [monthSalesRes, todaySalesRes, monthSummaryRes, todaySummaryRes] = await Promise.all([
          fetch(`/api/sales/by-outlet?${queryParams.toString()}`),
          fetch(`/api/sales/by-outlet?${todayParams.toString()}`),
          fetch(`/api/reports/daily-summary?${summaryParams.toString()}`),
          fetch(`/api/reports/daily-summary?${todaySummaryParams.toString()}`),
        ]);

        if (!monthSalesRes.ok || !todaySalesRes.ok || !monthSummaryRes.ok || !todaySummaryRes.ok) {
          throw new Error('Failed to load dashboard summary');
        }

        const monthSalesJson = await monthSalesRes.json();
        const todaySalesJson = await todaySalesRes.json();
        const monthSummaryJson = await monthSummaryRes.json();
        const todaySummaryJson = await todaySummaryRes.json();

        if (monthSalesJson?.meta) {
          try { console.debug('dashboard month sales meta', monthSalesJson.meta); } catch (e) {}
        }
        if (todaySalesJson?.meta) {
          try { console.debug('dashboard today sales meta', todaySalesJson.meta); } catch (e) {}
        }

        const monthSales = Array.isArray(monthSalesJson)
          ? (monthSalesJson as Record<string, unknown>[])
          : (Array.isArray(monthSalesJson?.sales) ? (monthSalesJson.sales as Record<string, unknown>[]) : (Array.isArray(monthSalesJson?.data) ? (monthSalesJson.data as Record<string, unknown>[]) : []));
        const todaySales = Array.isArray(todaySalesJson)
          ? (todaySalesJson as Record<string, unknown>[])
          : (Array.isArray(todaySalesJson?.sales) ? (todaySalesJson.sales as Record<string, unknown>[]) : (Array.isArray(todaySalesJson?.data) ? (todaySalesJson.data as Record<string, unknown>[]) : []));
        const monthSummaryData = Array.isArray(monthSummaryJson?.data)
          ? (monthSummaryJson.data as Array<Record<string, unknown>>)
          : [];
        const todaySummaryData = Array.isArray(todaySummaryJson?.data)
          ? (todaySummaryJson.data as Array<Record<string, unknown>>)
          : [];

        const monthlySalesTotal = monthSummaryData.length > 0
          ? monthSummaryData.reduce((sum, item) => sum + Number(item.revenue || 0), 0 as number)
          : monthSales.reduce((sum, item) => {
              const row = item as Record<string, unknown>;
              return sum + Number(row.total_amount || 0);
            }, 0 as number);

        // compute monthly totals from the daily-summary aggregation when available
        const monthlyHppTotal = monthSummaryData.length > 0
          ? monthSummaryData.reduce((sum, item) => sum + Number(item.hpp || 0), 0 as number)
          : monthSales.reduce((sum, item) => {
              const row = item as Record<string, any>;
              const hppFromRow = Number(row.hpp_total ?? row.hpp ?? 0);
              if (hppFromRow && hppFromRow > 0) return sum + hppFromRow;
              const items = Array.isArray(row.sale_items) ? row.sale_items as Record<string, any>[] : (Array.isArray(row.items) ? row.items as Record<string, any>[] : []);
              const itemsHpp = items.reduce((s2, it) => {
                const qty = Number(it.quantity ?? it.qty ?? 1) || 1;
                const hppVal = Number(it.hpp ?? it.hpp_value ?? 0) || 0;
                return s2 + (hppVal * qty);
              }, 0);
              return sum + itemsHpp;
            }, 0 as number);

        const monthlyBonusTotal = monthSummaryData.length > 0
          ? monthSummaryData.reduce((sum, item) => sum + Number(item.bonus || 0), 0 as number)
          : (() => {
              const rowsForAgg = monthSales.map((r) => ({
                date: typeof r.date === 'string' ? String(r.date) : undefined,
                created_at: typeof r.created_at === 'string' ? String(r.created_at) : undefined,
                outlet_id: r.outlet_id,
                total_amount: r.total_amount,
                profit: r.profit,
                hpp_total: r.hpp_total,
                bonus_amount: r.bonus_amount,
                meal_amount: r.meal_amount,
              }));
              const perOutletAggForMonth = aggregateDailyOutletSummary(rowsForAgg as any, undefined, { forceRecomputeBonus: true, forceRecomputeMeal: true });
              return perOutletAggForMonth.reduce((s, r) => s + (r.bonus || 0), 0);
            })();

        const monthlyMealTotal = monthSummaryData.length > 0
          ? monthSummaryData.reduce((sum, item) => sum + Number(item.meal || 0), 0 as number)
          : (() => {
              const rowsForAgg = monthSales.map((r) => ({
                date: typeof r.date === 'string' ? String(r.date) : undefined,
                created_at: typeof r.created_at === 'string' ? String(r.created_at) : undefined,
                outlet_id: r.outlet_id,
                total_amount: r.total_amount,
                profit: r.profit,
                hpp_total: r.hpp_total,
                bonus_amount: r.bonus_amount,
                meal_amount: r.meal_amount,
              }));
              const perOutletAggForMonth = aggregateDailyOutletSummary(rowsForAgg as any, undefined, { forceRecomputeBonus: true, forceRecomputeMeal: true });
              return perOutletAggForMonth.reduce((s, r) => s + (r.meal || 0), 0);
            })();

        const monthlyProfitTotal = monthSummaryData.length > 0
          ? monthSummaryData.reduce((sum, item) => sum + Number(item.profit || 0), 0 as number)
          : Math.round((monthlySalesTotal - monthlyMealTotal - monthlyBonusTotal - monthlyHppTotal));

        const countCups = (rows: Record<string, unknown>[]) => rows.reduce((sum, sale) => {
          const row = sale as Record<string, unknown>;
          const items = Array.isArray(row.sale_items)
            ? row.sale_items as Record<string, unknown>[]
            : Array.isArray(row.items)
              ? row.items as Record<string, unknown>[]
              : [];
          return sum + items.reduce((qtySum, it) => qtySum + (Number(it['quantity'] ?? it['units'] ?? it['cups'] ?? 0) || 0), 0);
        }, 0);

        const monthCupsTotal = countCups(monthSales);
        const todayCupsTotal = countCups(todaySales);
        const todaySalesTotal = todaySummaryData.length > 0
          ? todaySummaryData.reduce((sum, item) => sum + Number(item.revenue || 0), 0 as number)
          : todaySales.reduce((sum, sale) => {
              const row = sale as Record<string, unknown>;
              return sum + Number(row.total_amount || 0);
            }, 0);

        if (mounted) {
          setData({
            monthlyCups: monthCupsTotal,
            monthlySales: monthlySalesTotal,
            monthlyProfit: monthlyProfitTotal,
            monthlyMeal: monthlyMealTotal,
            monthlyBonus: monthlyBonusTotal,
            monthlyHpp: monthlyHppTotal,
            cupsToday: todayCupsTotal,
            salesToday: todaySalesTotal,
          });
        }
      } catch (err) {
        console.error('useDashboardSummary', err);
      } finally {
        if (mounted) setLoading(false);
      }
    };

    void load();
    return () => { mounted = false; };
  }, [rangeStart, rangeEnd]);

  return { data, loading };
}

function CostDoughnut({ summary }: { summary: SummaryItem[] }) {
  const totalHpp = summary.reduce((s, x) => s + (x.hpp || 0), 0);
  const totalBonus = summary.reduce((s, x) => s + (x.bonus || 0), 0);
  const totalMeal = summary.reduce((s, x) => s + (x.meal || 0), 0);
  const total = totalHpp + totalBonus + totalMeal || 1;

  const data = {
    labels: ['HPP', 'Bonus', 'Meal'],
    datasets: [
      {
        data: [totalHpp, totalBonus, totalMeal],
        backgroundColor: ['#ef4444', '#7c3aed', '#f59e0b'],
        borderWidth: 0,
      },
    ],
  };

  const options: ChartOptions<'doughnut'> = {
    responsive: true,
    maintainAspectRatio: false,
    plugins: { legend: { position: 'top' }, tooltip: { enabled: true } },
    cutout: '60%',
  };

  const fmt = (v: number) => new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(v);

  return (
    <div style={{ display: 'flex', gap: 16, alignItems: 'stretch', height: '100%' }}>
      <div className="donut-chart-wrap">
        <Doughnut data={data} options={options} />
      </div>
      <div className="donut-info">
        <div style={{ fontWeight: 700, fontSize: 13 }}>Total Cost</div>
        <div style={{ color: '#374151', fontWeight: 700, marginBottom: 6, fontSize: 14 }}>{fmt(total)}</div>
        <div style={{ display: 'flex', flexDirection: 'column', gap: 6, fontSize: 12 }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}><span className="dot red"/> <span className="label" style={{ fontSize:12 }}>HPP</span></div>
            <div style={{ textAlign: 'right' }}><div style={{ fontWeight:700, fontSize:12 }}>{fmt(totalHpp)}</div><div className="muted" style={{ fontSize:11 }}>{Math.round((totalHpp/total)*100)}%</div></div>
          </div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}><span className="dot purple"/> <span className="label" style={{ fontSize:12 }}>Bonus</span></div>
            <div style={{ textAlign: 'right' }}><div style={{ fontWeight:700, fontSize:12 }}>{fmt(totalBonus)}</div><div className="muted" style={{ fontSize:11 }}>{Math.round((totalBonus/total)*100)}%</div></div>
          </div>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <div style={{ display: 'flex', alignItems: 'center', gap: 8 }}><span className="dot orange"/> <span className="label" style={{ fontSize:12 }}>Meal</span></div>
            <div style={{ textAlign: 'right' }}><div style={{ fontWeight:700, fontSize:12 }}>{fmt(totalMeal)}</div><div className="muted" style={{ fontSize:11 }}>{Math.round((totalMeal/total)*100)}%</div></div>
          </div>
        </div>
      </div>
    </div>
  );
}

/* ProfitGauge removed — replaced by ProfitBarChart in the layout */

export default function DashboardPage() {
  type RangePreset = 'day' | 'week' | 'month' | 'custom';

  // Date range state (default: current Jakarta business day)
  const [endDate, setEndDate] = React.useState<Date>(() => {
    const today = new Date();
    const monthEnd = new Date(today.getFullYear(), today.getMonth() + 1, 0);
    monthEnd.setHours(23, 59, 59, 999);
    return monthEnd;
  });
  const [startDate, setStartDate] = React.useState<Date>(() => new Date(new Date().getFullYear(), new Date().getMonth(), 1));
  const [pickerOpen, setPickerOpen] = React.useState(false);
  const [rangePreset, setRangePreset] = React.useState<RangePreset>('month');
  const [selectedMonthValue, setSelectedMonthValue] = React.useState<string>(() => getDefaultMonthValue());
  const [tmpStart, setTmpStart] = React.useState<string>(() => formatDateOnlyInJakarta(startDate));
  const [tmpEnd, setTmpEnd] = React.useState<string>(() => formatDateOnlyInJakarta(endDate));
  const [tmpDate, setTmpDate] = React.useState<string>(() => formatDateOnlyInJakarta(startDate));
  const [tmpWeek, setTmpWeek] = React.useState<string>(() => weekValueFromDate(startDate));

  React.useEffect(() => {
    setTmpStart(formatDateOnlyInJakarta(startDate));
    setTmpEnd(formatDateOnlyInJakarta(endDate));
    // keep single-date picker in sync when start==end
    if (startDate.getTime() === endDate.getTime()) setTmpDate(formatDateOnlyInJakarta(startDate));
    // sync week picker when range matches an ISO week Monday..Sunday
    try {
      const maybeWeek = weekValueFromDate(startDate);
      const r = weekRangeFromValue(maybeWeek);
      if (r && r.start.getFullYear() === startDate.getFullYear() && r.start.getMonth() === startDate.getMonth() && r.start.getDate() === startDate.getDate() && r.end.getFullYear() === endDate.getFullYear() && r.end.getMonth() === endDate.getMonth() && r.end.getDate() === endDate.getDate()) {
        setTmpWeek(maybeWeek);
      }
    } catch (e) {}
  }, [startDate, endDate]);

  const startRange = formatDateOnlyInJakarta(startDate);
  const endRange = formatDateOnlyInJakarta(endDate);
  const isFullMonthSelection = startDate.getDate() === 1 && endDate.getDate() === new Date(endDate.getFullYear(), endDate.getMonth() + 1, 0).getDate() && startDate.getMonth() === endDate.getMonth() && startDate.getFullYear() === endDate.getFullYear();
  const useBusinessDayForCurrentRange = false;
  const { data: summary, loading: summaryLoading } = useRangeSummary(startRange, endRange, useBusinessDayForCurrentRange);
  const { kpis, loading: kpisLoading } = useKpis(startRange, endRange, useBusinessDayForCurrentRange);
  const { data: dashboardSummary, loading: dashboardLoading } = useDashboardSummary(startRange, endRange, useBusinessDayForCurrentRange);

  const monthOptions = React.useMemo(() => {
    const options = [] as Array<{ value: string; label: string }>;
    const today = new Date();
    for (let i = 0; i < 24; i++) {
      const date = new Date(today.getFullYear(), today.getMonth() - i, 1);
      const value = getDefaultMonthValue(date);
      const label = date.toLocaleDateString('id-ID', { month: 'long', year: 'numeric' });
      options.push({ value, label: label.charAt(0).toUpperCase() + label.slice(1) });
    }
    return options;
  }, []);

  const applyPreset = (preset: RangePreset) => {
    const today = new Date();
    let end = new Date(today);
    let start = new Date(today);

    if (preset === 'day') {
      start = new Date(today);
    } else if (preset === 'week') {
      const day = today.getDay();
      const diffToMonday = (day + 6) % 7;
      start = new Date(today);
      start.setDate(today.getDate() - diffToMonday);
      start.setHours(0, 0, 0, 0);
      end.setTime(start.getTime());
      end.setDate(start.getDate() + 6);
      end.setHours(23, 59, 59, 999);
    } else if (preset === 'month') {
      start = new Date(today.getFullYear(), today.getMonth(), 1);
      end = new Date(today.getFullYear(), today.getMonth() + 1, 0);
      end.setHours(23, 59, 59, 999);
    } else {
      start = new Date(startDate);
    }

    setRangePreset(preset);
    if (preset === 'month') {
      setSelectedMonthValue(getDefaultMonthValue(start));
    }
    setStartDate(start);
    setEndDate(end);
    setTmpStart(formatDateOnlyInJakarta(start));
    setTmpEnd(formatDateOnlyInJakarta(end));
    setPickerOpen(false);
  };

  const applyMonthSelection = (monthValue: string) => {
    const monthRange = getMonthRange(monthValue);
    setSelectedMonthValue(monthValue);
    setStartDate(monthRange.start);
    setEndDate(monthRange.end);
    setTmpStart(formatDateOnlyInJakarta(monthRange.start));
    setTmpEnd(formatDateOnlyInJakarta(monthRange.end));
    setRangePreset('month');
    setPickerOpen(false);
  };

  const formatRangeLabel = (s: Date, e: Date) => {
    const opts: Intl.DateTimeFormatOptions = { day: '2-digit', month: 'short', timeZone: 'Asia/Jakarta' };
    const sLabel = s.toLocaleDateString('id-ID', opts);
    const eLabel = e.toLocaleDateString('id-ID', { day: '2-digit', month: 'short', year: 'numeric', timeZone: 'Asia/Jakarta' });
    return `${sLabel} — ${eLabel} ▾`;
  };

  return (
    <main className="page">
      <header className="header">
        <div>
          <h1>Ringkasan Performa Papi Kopi</h1>
        </div>
        <div style={{ position: 'relative' }}>
          <div style={{ display: 'flex', flexDirection: 'column', gap: 8, marginBottom: 8, alignItems: 'flex-end' }}>
            <div style={{ display: 'flex', gap: 12, justifyContent: 'flex-end', alignItems: 'center' }}>
              {(['day', 'week', 'month'] as RangePreset[]).map((preset) => (
                <button
                  key={preset}
                  onClick={() => applyPreset(preset)}
                  className={`btn secondary ${rangePreset === preset ? 'active' : ''}`}
                  style={{ padding: '6px 10px', fontSize: 12, border: rangePreset === preset ? '1px solid #0f766e' : '1px solid #d1d5db', background: rangePreset === preset ? '#ccfbf1' : '#fff', color: rangePreset === preset ? '#115e59' : '#374151' }}
                >
                  {preset === 'day' ? 'Hari' : preset === 'week' ? 'Minggu' : 'Bulan'}
                </button>
              ))}

              <button className="date-range" aria-expanded={pickerOpen} onClick={() => { setTmpStart(formatDateOnlyInJakarta(startDate)); setTmpEnd(formatDateOnlyInJakarta(endDate)); setPickerOpen((s) => !s); }} style={{ padding: '6px 10px', fontSize: 12, border: '1px solid #0f766e', background: '#ccfbf1', color: '#115e59' }}>
                {formatRangeLabel(startDate, endDate)}
              </button>
            </div>

            <div style={{ display: 'flex', gap: 8, alignItems: 'center', borderRadius: 8, border: '1px solid #e5e7eb', background: '#fff', padding: '8px', boxShadow: '0 1px 2px rgba(0,0,0,0.04)' }}>
              <label htmlFor="dateSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginRight: 6 }}>Tanggal</label>
              <input
                id="dateSelect"
                type="date"
                value={tmpDate}
                onChange={(e) => {
                  setTmpDate(e.target.value);
                  const d = parseDateOnlyAsJakarta(e.target.value);
                  if (!isNaN(d.getTime())) {
                    setStartDate(d);
                    setEndDate(d);
                    setTmpStart(formatDateOnlyInJakarta(d));
                    setTmpEnd(formatDateOnlyInJakarta(d));
                    setRangePreset('day');
                    setSelectedMonthValue(getDefaultMonthValue(d));
                  }
                }}
                style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }}
              />

              <label htmlFor="weekSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginLeft: 8 }}>Minggu</label>
              <input
                id="weekSelect"
                type="week"
                value={tmpWeek}
                onChange={(e) => {
                  setTmpWeek(e.target.value);
                  const r = weekRangeFromValue(e.target.value);
                  if (r) {
                    setStartDate(r.start);
                    setEndDate(r.end);
                    setTmpStart(formatDateOnlyInJakarta(r.start));
                    setTmpEnd(formatDateOnlyInJakarta(r.end));
                    setRangePreset('week');
                    setSelectedMonthValue(getDefaultMonthValue(r.start));
                  }
                }}
                style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }}
              />

              <label htmlFor="monthSelect" style={{ fontSize: 13, fontWeight: 600, color: '#6b7280', marginLeft: 6 }}>Bulan</label>
              <input
                id="monthSelect"
                type="month"
                value={selectedMonthValue}
                onChange={(e) => applyMonthSelection(e.target.value)}
                style={{ border: '1px solid #e5e7eb', borderRadius: 6, background: '#fff', padding: '6px 8px', fontSize: 13, color: '#374151' }}
              />

              {/* range button moved to presets row */}
            </div>
          </div>
          {pickerOpen && (
            <div style={{ position: 'absolute', right: 0, top: 'calc(100% + 8px)', zIndex: 40, background: '#fff', border: '1px solid #e5e7eb', boxShadow: '0 6px 18px rgba(15,23,42,0.08)', padding: 12, borderRadius: 8, minWidth: 260 }}>
              <div style={{ display: 'flex', gap: 8, marginBottom: 8 }}>
                <div style={{ display: 'flex', flexDirection: 'column', gap: 6 }}>
                  <label className="muted" style={{ fontSize: 12 }}>Dari</label>
                  <input type="date" value={tmpStart} onChange={(e) => setTmpStart(e.target.value)} style={{ padding: '6px 8px', borderRadius: 6, border: '1px solid #d1d5db' }} />
                </div>
                <div style={{ display: 'flex', flexDirection: 'column', gap: 6 }}>
                  <label className="muted" style={{ fontSize: 12 }}>Sampai</label>
                  <input type="date" value={tmpEnd} onChange={(e) => setTmpEnd(e.target.value)} style={{ padding: '6px 8px', borderRadius: 6, border: '1px solid #d1d5db' }} />
                </div>
              </div>
              <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8 }}>
                <button onClick={() => { setTmpStart(formatDateOnlyInJakarta(startDate)); setTmpEnd(formatDateOnlyInJakarta(endDate)); setPickerOpen(false); }} className="btn secondary">Batal</button>
                <button onClick={() => {
                  const s = parseDateOnlyAsJakarta(tmpStart);
                  const e = parseDateOnlyAsJakarta(tmpEnd);
                  if (isNaN(s.getTime()) || isNaN(e.getTime())) return;
                  // ensure start <= end
                  if (s.getTime() > e.getTime()) {
                    setStartDate(e);
                    setEndDate(s);
                    setTmpStart(formatDateOnlyInJakarta(e));
                    setTmpEnd(formatDateOnlyInJakarta(s));
                  } else {
                    setStartDate(s);
                    setEndDate(e);
                    setTmpStart(formatDateOnlyInJakarta(s));
                    setTmpEnd(formatDateOnlyInJakarta(e));
                  }
                  setRangePreset('custom');
                  setPickerOpen(false);
                }} className="btn primary">Terapkan</button>
              </div>
            </div>
          )}
        </div>
      </header>

      <div className="dashboard-two-column">
        <section className="summary-grid">
          {dashboardLoading || !dashboardSummary ? (
            <div className="summary-card loading" style={{ gridColumn: '1 / -1' }}>Memuat ringkasan...</div>
          ) : (
            <div className="summary-card summary-card-single">
              <div className="summary-card-single__title">Monthly Summary</div>
              <div className="summary-card-single__stats" style={{ display: 'flex', gap: 20, alignItems: 'flex-start' }}>
                <div style={{ flex: 1, display: 'flex', flexDirection: 'column', gap: 12 }}>
                  <div>
                    <div className="summary-label">Monthly Cups</div>
                    <div className="summary-value">{dashboardSummary.monthlyCups.toLocaleString('id-ID')}</div>
                  </div>
                  <div>
                    <div className="summary-label">Monthly Sales</div>
                    <div className="summary-value">{new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(dashboardSummary.monthlySales)}</div>
                  </div>
                  <div>
                    <div className="summary-label">Monthly Meal</div>
                    <div className="summary-value">Rp {(dashboardSummary.monthlyMeal ?? 0).toLocaleString('id-ID')}</div>
                  </div>
                  <div>
                    <div className="summary-label">Monthly Bonus</div>
                    <div className="summary-value">Rp {(dashboardSummary.monthlyBonus ?? 0).toLocaleString('id-ID')}</div>
                  </div>
                  <div>
                    <div className="summary-label">Monthly HPP</div>
                    <div className="summary-value">{new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(dashboardSummary.monthlyHpp ?? 0)}</div>
                  </div>
                  <div style={{ marginTop: 12 }}>
                    <div className="summary-label">Monthly Profit</div>
                    <div className="summary-value summary-value--profit">{new Intl.NumberFormat('id-ID', { minimumFractionDigits: 2, maximumFractionDigits: 2 }).format(dashboardSummary.monthlyProfit)}</div>
                  </div>
                </div>
                <div style={{ width: 220, display: 'flex', flexDirection: 'column', gap: 12 }}>
                  <div style={{ padding: 12, borderRadius: 8, background: '#fff', boxShadow: '0 4px 10px rgba(15,23,42,0.04)' }}>
                    <div className="summary-label">Cup Today</div>
                    <div className="summary-value">{dashboardSummary.cupsToday.toLocaleString('id-ID')}</div>
                  </div>
                  <div style={{ padding: 12, borderRadius: 8, background: '#fff', boxShadow: '0 4px 10px rgba(15,23,42,0.04)' }}>
                    <div className="summary-label">Sales Today</div>
                    <div className="summary-value">Rp {dashboardSummary.salesToday.toLocaleString('id-ID')}</div>
                  </div>
                </div>
              </div>
            </div>
          )}
        </section>

        <section className="kpi-grid">
        <div className="kpi card">
          <div className="kpi-head">
            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
              <div className="icon bg-blue"><IconSales /></div>
              <small className="muted">Total Sales</small>
            </div>
            <Link href="/dashboard/reports/sales" className="detail-link" aria-label="Lihat detail penjualan">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
              </svg>
            </Link>
          </div>
          {kpisLoading ? (
            <div>
              <div className="skeleton skeleton-text" style={{ width: 140, height: 28 }} />
              <div className="skeleton skeleton-sub" style={{ width: 160, height: 12, marginTop: 8 }} />
            </div>
          ) : (
            <>
              <div className="value">{kpis ? new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(kpis.sales) : '—'}</div>
              <div className={"trend " + (kpis && kpis.salesChange >= 0 ? 'up' : 'down')}>{kpis ? `${kpis.salesChange >= 0 ? '▲ ' : '▼ '}${Math.abs(kpis.salesChange)}% ` : ''}<span className="muted">{kpis ? `vs ${kpis.prevRangeText}` : ''}</span></div>
            </>
          )}
        </div>

        <div className="kpi card">
          <div className="kpi-head">
            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
              <div className="icon bg-teal"><IconOrders /></div>
              <small className="muted">Total Units (cup)</small>
            </div>
            <Link href="/dashboard/reports/outlet-stock" className="detail-link" aria-label="Lihat detail outlet stock">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
              </svg>
            </Link>
          </div>
          {kpisLoading ? (
            <div>
              <div className="skeleton skeleton-text" style={{ width: 72, height: 28 }} />
              <div className="skeleton skeleton-sub" style={{ width: 120, height: 12, marginTop: 8 }} />
            </div>
          ) : (
            <>
              <div className="value">{kpis ? kpis.units : '—'}</div>
              <div className={"trend " + (kpis && kpis.unitsChange >= 0 ? 'up' : 'down')}>{kpis ? `${kpis.unitsChange >= 0 ? '▲ ' : '▼ '}${Math.abs(kpis.unitsChange)}% ` : ''}<span className="muted">{kpis ? `vs ${kpis.prevRangeText}` : ''}</span></div>
            </>
          )}
        </div>

        <div className="kpi card">
          <div className="kpi-head">
            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
              <div className="icon bg-purple"><IconOrders /></div>
              <small className="muted">Total Orders</small>
            </div>
            <Link href="/dashboard/reports/outlet-comparison" className="detail-link" aria-label="Lihat detail outlet comparison">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
              </svg>
            </Link>
          </div>
          {kpisLoading ? (
            <div>
              <div className="skeleton skeleton-text" style={{ width: 64, height: 28 }} />
              <div className="skeleton skeleton-sub" style={{ width: 120, height: 12, marginTop: 8 }} />
            </div>
          ) : (
            <>
              <div className="value">{kpis ? kpis.orders : '—'}</div>
              <div className={"trend " + (kpis && kpis.ordersChange >= 0 ? 'up' : 'down')}>{kpis ? `${kpis.ordersChange >= 0 ? '▲ ' : '▼ '}${Math.abs(kpis.ordersChange)}% ` : ''}<span className="muted">{kpis ? `vs ${kpis.prevRangeText}` : ''}</span></div>
            </>
          )}
        </div>

        <div className="kpi card">
          <div className="kpi-head">
            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
              <div className="icon bg-green"><IconProfit /></div>
              <small className="muted">Total Profit</small>
            </div>
            <Link href="/dashboard/reports/profitloss" className="detail-link" aria-label="Lihat detail profit">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
              </svg>
            </Link>
          </div>
          {kpisLoading ? (
            <div>
              <div className="skeleton skeleton-text" style={{ width: 100, height: 28 }} />
              <div className="skeleton skeleton-sub" style={{ width: 140, height: 12, marginTop: 8 }} />
            </div>
          ) : (
            <>
              <div className="value">{kpis ? new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(kpis.profit) : '—'}</div>
              <div className={"trend " + (kpis && kpis.profitChange >= 0 ? 'up' : 'down')}>{kpis ? `${kpis.profitChange >= 0 ? '▲ ' : '▼ '}${Math.abs(kpis.profitChange)}% ` : ''}<span className="muted">{kpis ? `vs ${kpis.prevRangeText}` : ''}</span></div>
            </>
          )}
        </div>

        <div className="kpi card">
          <div className="kpi-head">
            <div style={{ display: 'flex', alignItems: 'center', gap: 14 }}>
              <div className="icon bg-yellow"><IconAvg /></div>
              <small className="muted">Avg Order Value</small>
            </div>
            <Link href="/dashboard/reports/product-performance" className="detail-link" aria-label="Lihat detail produk">
              <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
              </svg>
            </Link>
          </div>
          {kpisLoading ? (
            <div>
              <div className="skeleton skeleton-text" style={{ width: 92, height: 28 }} />
              <div className="skeleton skeleton-sub" style={{ width: 140, height: 12, marginTop: 8 }} />
            </div>
          ) : (
            <>
              <div className="value">{kpis ? new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(kpis.aov) : '—'}</div>
              <div className={"trend " + (kpis && kpis.salesChange >= 0 ? 'up' : 'down')}>{kpis ? `${kpis.salesChange >= 0 ? '▲ ' : '▼ '}${Math.abs(kpis.salesChange)}% ` : ''}<span className="muted">{kpis ? `vs ${kpis.prevRangeText}` : ''}</span></div>
            </>
          )}
        </div>
      </section>
      </div>

      <section className="main-grid">
        <div className="left">
          <div className="top-grid">
            
            <div className="card cost-breakdown">
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: 8, marginBottom: 10 }}>
                <h3>Cost Breakdown</h3>
                <span className="muted" style={{ fontSize: 12 }}>
                  {rangePreset === 'day' ? 'Hari ini' : rangePreset === 'week' ? 'Minggu (Senin–Minggu)' : rangePreset === 'month' ? 'Bulan berjalan' : 'Kustom'}
                </span>
              </div>
              <div className="donut-area">
                {summaryLoading ? (
                  <div style={{ display: 'flex', gap: 16, alignItems: 'stretch', height: '100%' }}>
                    <div className="skeleton" style={{ flex: '0 0 60%', minWidth: 160, height: '100%' }} />
                    <div style={{ flex: '0 0 40%', minWidth: 120 }}>
                      <div className="skeleton skeleton-text" style={{ width: '80%', height: 20, marginBottom: 12 }} />
                      <div className="skeleton skeleton-sub" style={{ width: '60%', height: 14, marginBottom: 8 }} />
                      <div className="skeleton skeleton-sub" style={{ width: '60%', height: 14, marginBottom: 8 }} />
                      <div className="skeleton skeleton-sub" style={{ width: '60%', height: 14 }} />
                    </div>
                  </div>
                ) : (
                  <CostDoughnut summary={summary} />
                )}
                {/* legend moved into CostDoughnut */}
              </div>
            </div>

            <div className="card profit-margin">
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: 8, marginBottom: 10 }}>
                <h3>Profit Margin</h3>
                <span className="muted" style={{ fontSize: 12 }}>
                  {rangePreset === 'day' ? 'Hari ini' : rangePreset === 'week' ? 'Minggu (Senin–Minggu)' : rangePreset === 'month' ? 'Bulan berjalan' : 'Kustom'}
                </span>
              </div>
              <ProfitBarChart summary={summary} />
            </div>
          </div>

          <div className="bottom-grid">
            <div className="card trends">
              <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', gap: 12 }}>
                <h3>Sales & Profit Trend (7 Hari)</h3>
                <Link href="/dashboard/reports/daily-summary" className="detail-link" aria-label="Lihat daily summary">
                  <svg viewBox="0 0 24 24" width="22" height="22" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12 5c4 0 7.27 2.5 9 6-1.73 3.5-5 6-9 6s-7.27-2.5-9-6c1.73-3.5 5-6 9-6z" stroke="#0f172a" strokeOpacity="0.6" strokeWidth="1.2" fill="none" />
                    <circle cx="12" cy="11" r="2.5" fill="#0f172a" fillOpacity="0.85" />
                  </svg>
                </Link>
              </div>
              <div className="chart-row">
                    <div className="bar-chart">
                      {/* Bar chart: revenue + hpp/bonus/meal */}
                      {summaryLoading ? <div className="skeleton" style={{ height: 260 }} /> : <SalesBarChart summary={summary} />}
                    </div>
                  </div>
            </div>

            <div className="card orders-trend">
              <h3>Orders Trend (7 Hari)</h3>
                <div className="orders-chart">
                  {summaryLoading ? <div className="skeleton" style={{ height: 260 }} /> : <OrdersLineChart summary={summary} />}
                </div>
            </div>
          </div>
        </div>

        <aside className="right card sidebar">
          <h3>Insight Minggu Ini</h3>
          <ul className="insights">
            {(() => {
              const fmt = (v: number) => new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR', maximumFractionDigits: 0 }).format(v);
              if (!summary || summary.length === 0) {
                return (
                  <>
                    <li><strong>Penjualan tertinggi</strong> terjadi pada <span className="muted">—</span></li>
                    <li><strong>Profit margin</strong> rata-rata <span className="muted">—</span></li>
                    <li><strong>Total order</strong> <span className="muted">—</span></li>
                    <li><strong>HPP</strong> menyumbang <span className="muted">—</span> dari total biaya</li>
                  </>
                );
              }

              // find highest revenue day
              const highest = summary.reduce((p, c) => (c.revenue > p.revenue ? c : p), summary[0]);
              // average profit margin across days
              const margins = summary.map((s) => (s.revenue ? (s.profit / s.revenue) * 100 : 0));
              const avgMargin = Math.round((margins.reduce((a, b) => a + b, 0) / margins.length) * 10) / 10;
              // total orders this week
              const totalOrders = summary.reduce((s, x) => s + (x.orders || 0), 0);
              // hpp contribution to total cost
              const totalHpp = summary.reduce((s, x) => s + (x.hpp || 0), 0);
              const totalBonus = summary.reduce((s, x) => s + (x.bonus || 0), 0);
              const totalMeal = summary.reduce((s, x) => s + (x.meal || 0), 0);
              const totalCost = totalHpp + totalBonus + totalMeal || 1;
              const hppPct = Math.round((totalHpp / totalCost) * 100);

              const fullWeekday: Record<string, string> = { Sen: 'Senin', Sel: 'Selasa', Rab: 'Rabu', Kam: 'Kamis', Jum: 'Jumat', Sab: 'Sabtu', Min: 'Minggu' };
              const dayLabel = fullWeekday[highest.date] || highest.date;

              return (
                <>
                  <li><strong>Penjualan tertinggi</strong> terjadi pada <span className="muted">{dayLabel}</span> ({fmt(highest.revenue)})</li>
                  <li><strong>Profit margin</strong> rata-rata <span className="muted">{avgMargin}%</span></li>
                  <li><strong>Total order</strong> {totalOrders} <span className="muted">{kpis ? (kpis.ordersChange >= 0 ? `▲ ${kpis.ordersChange}% vs ${kpis.prevRangeText}` : `▼ ${Math.abs(kpis.ordersChange)}% vs ${kpis.prevRangeText}`) : ''}</span></li>
                  <li><strong>HPP</strong> menyumbang <span className="muted">{hppPct}%</span> dari total biaya</li>
                </>
              );
            })()}
          </ul>

          {/* Laporan lainnya: quick access with contrasting icon badges */}
          <div className="shortcuts card small" style={{ marginTop: 14 }}>
            <h4>Laporan lainnya</h4>
            <div className="shortcut-grid" style={{ display: 'grid', gridTemplateColumns: 'repeat(2, minmax(0,1fr))', gap: 10, marginTop: 8 }}>
              <Link href="/dashboard/reports/returns-analysis" aria-label="Returns Analysis" style={{ display: 'inline-flex', gap:12, alignItems:'center', padding:'8px 12px', borderRadius:12, background:'#fff', textDecoration:'none', color:'#0f172a', width: '100%', boxShadow:'0 1px 2px rgba(0,0,0,0.04)' }}>
                <span style={{ width:36, height:36, borderRadius:8, display:'inline-flex', alignItems:'center', justifyContent:'center', background:'#ef4444' }}>
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 4v8l3-3" stroke="#fff" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round"/></svg>
                </span>
                <span style={{ fontSize:13, fontWeight:700 }}>Returns Analysis</span>
              </Link>

              <Link href="/dashboard/reports/allocation" aria-label="Allocation" style={{ display: 'inline-flex', gap:12, alignItems:'center', padding:'8px 12px', borderRadius:12, background:'#fff', textDecoration:'none', color:'#0f172a', width: '100%', boxShadow:'0 1px 2px rgba(0,0,0,0.04)' }}>
                <span style={{ width:36, height:36, borderRadius:8, display:'inline-flex', alignItems:'center', justifyContent:'center', background:'#2563eb' }}>
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3 12h18" stroke="#fff" strokeWidth="1.6" strokeLinecap="round"/></svg>
                </span>
                <span style={{ fontSize:13, fontWeight:700 }}>Allocation</span>
              </Link>

              <Link href="/dashboard/reports/warehouse" aria-label="Warehouse" style={{ display: 'inline-flex', gap:12, alignItems:'center', padding:'8px 12px', borderRadius:12, background:'#fff', textDecoration:'none', color:'#0f172a', width: '100%', boxShadow:'0 1px 2px rgba(0,0,0,0.04)' }}>
                <span style={{ width:36, height:36, borderRadius:8, display:'inline-flex', alignItems:'center', justifyContent:'center', background:'#059669' }}>
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3 9l9-5 9 5v8a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V9z" stroke="#fff" strokeWidth="1.2" strokeLinejoin="round"/></svg>
                </span>
                <span style={{ fontSize:13, fontWeight:700 }}>Warehouse</span>
              </Link>

              <Link href="/dashboard/reports/batch-aging" aria-label="Batch Aging" style={{ display: 'inline-flex', gap:12, alignItems:'center', padding:'8px 12px', borderRadius:12, background:'#fff', textDecoration:'none', color:'#0f172a', width: '100%', boxShadow:'0 1px 2px rgba(0,0,0,0.04)' }}>
                <span style={{ width:36, height:36, borderRadius:8, display:'inline-flex', alignItems:'center', justifyContent:'center', background:'#d97706' }}>
                  <svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 6v6l4 2" stroke="#fff" strokeWidth="1.2" strokeLinecap="round" strokeLinejoin="round"/></svg>
                </span>
                <span style={{ fontSize:13, fontWeight:700 }}>Batch Aging</span>
              </Link>
            </div>
          </div>

          <div className="tips small card">
            <h4>Tips</h4>
            <p className="muted">Fokus tingkatkan penjualan di hari Selasa dan Rabu untuk pertumbuhan lebih stabil.</p>
          </div>
        </aside>
      </section>

      <style jsx>{`
:global(*) {
  box-sizing: border-box;
}

:global(body) {
  margin: 0;
  background: #f4f7fb;
  color: #0f172a;
  font-family: Inter, ui-sans-serif, system-ui, -apple-system,
    BlinkMacSystemFont, "Segoe UI", sans-serif;
  line-height: 1.45;
  font-size: 15px;
}

.page {
  padding: 28px;
  max-width: 1400px;
  margin: 0 auto;
}

/* =========================
   HEADER
========================= */

.header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 32px;
}

.header h1 {
  margin: 0 0 6px 0;
  font-size: 34px;
  font-weight: 800;
  letter-spacing: -0.4px;
}

.date-range {
  background: #fff;
  border: 1px solid #e9eef6;
  border-radius: 12px;
  padding: 10px 14px;
  min-width: 200px;

  box-shadow: 0 6px 18px rgba(13,31,75,0.04);

  font-weight: 600;
  font-size: 14px;
}

/* =========================
   CARD
========================= */

.card {
  background: #fff;

  border-radius: 18px;
  border: 1px solid #eef3f9;

  padding: 20px;

  box-shadow: 0 6px 18px rgba(13,31,75,0.04);

  transition: all .18s ease;
}

.card:hover {
  transform: translateY(-2px);

  box-shadow:
    0 10px 30px rgba(15,23,42,.08);
}

.card h3 {
  margin: 0 0 16px;

  font-size: 20px;
  font-weight: 700;
  color: #0f172a;
}

/* =========================
   KPI
========================= */

  .dashboard-two-column {
  display: grid;
  /* increase Monthly Summary column width further to give more room */
  grid-template-columns: minmax(420px, 0.40fr) minmax(0, 0.60fr);
  gap: 24px;
  margin-bottom: 24px;
  align-items: start;
}

.summary-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: 16px;
}

 .summary-card {
  /* theme-friendly background color (was #0f172a) */
  background: #2563eb;
  color: #fff;
  border-radius: 18px;
  padding: 20px;
  border: 1px solid rgba(255,255,255,0.08);
  display: flex;
  flex-direction: column;
  justify-content: center;
  min-height: 115px;
}

/* allow inner flex children to shrink and prevent the small white boxes from overflowing */
.summary-card { overflow: hidden; position: relative; }
.summary-card-single__stats > div { min-width: 0; }
.summary-card-single__stats > div:last-child { flex: 0 1 160px; max-width: 160px; }

/* compact style for the small right-side boxes */
.summary-card-single__stats > div:last-child .summary-label {
  color: #0f172a;
  font-size: 11px;
  text-transform: none;
  letter-spacing: 0.02em;
}
.summary-card-single__stats > div:last-child .summary-value {
  color: #0f172a;
  font-size: 16px;
  font-weight: 700;
}

.summary-card-single {
  gap: 16px;
}

.summary-card-single__title {
  font-size: 16px;
  font-weight: 700;
  color: #f8fafc;
}

.summary-card-single__stats {
  display: grid;
  grid-template-columns: 1fr;
  gap: 12px;
}

.summary-card.loading {
  grid-column: 1 / -1;
  background: #fff;
  color: #0f172a;
  border-color: #e5e7eb;
}

.summary-label {
  font-size: 13px;
  color: rgba(241,245,249,0.8);
  text-transform: uppercase;
  letter-spacing: 0.08em;
  margin-bottom: 8px;
}

.summary-value {
  font-size: 28px;
  font-weight: 800;
  line-height: 1;
}

/* larger, theme-colored monthly profit value */
.summary-value--profit {
  font-size: 44px;
  font-weight: 900;
  color: #fbbf24; /* yellow */
  line-height: 1;
}

.kpi-grid {
  display: grid;
  grid-template-columns: repeat(2,minmax(0,1fr));
  gap: 16px;
}

.kpi {
  min-height: 150px;

  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.kpi-head {
  display: flex;
  align-items: center;
  gap: 14px;
}

.icon {
  width: 56px;
  height: 56px;

  border-radius: 12px;

  display: flex;
  align-items: center;
  justify-content: center;

  flex-shrink: 0;
}

.icon svg {
  width: 28px;
  height: 28px;
}

.bg-blue {
  background: #eef5ff;
}

.bg-purple {
  background: #f4efff;
}

.bg-green {
  background: #edfdf4;
}

.bg-yellow {
  background: #fff5e7;
}

.bg-teal {
  background: #ecfeff;
}

.kpi .value {
  margin-top: 10px;
  /* reduced per request */
  font-size: 24px;
  font-weight: 800;

  line-height: 1.05;
  letter-spacing: -0.6px;

  color: #0f172a;
}

/* =========================
   SKELETON
========================= */
.skeleton {
  background: linear-gradient(90deg, #f3f4f6 0%, #eceff6 50%, #f3f4f6 100%);
  background-size: 200% 100%;
  animation: shimmer 1.2s linear infinite;
  border-radius: 8px;
}
.skeleton-text { border-radius: 6px; }
.skeleton-sub { border-radius: 6px; opacity: 0.9; }

@keyframes shimmer {
  0% { background-position: 200% 0; }
  100% { background-position: -200% 0; }
}

.trend {
  font-size: 13px;
  font-weight: 600;
}

.trend.up {
  color: #16a34a;
}

.trend.down {
  color: #ef4444;
}

.detail-link {
  margin-left: 12px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 34px;
  height: 34px;
  border-radius: 10px;
  background: #f1f5f9;
  color: #0f172a;
  text-decoration: none;
  transition: background .12s ease, transform .08s ease;
}

.detail-link:hover {
  background: #e2e8f0;
  transform: translateY(-1px);
}

/* =========================
   TEXT
========================= */

.muted {
  color: #64748b;
}

.small {
  font-size: 12px;
}

/* =========================
   LAYOUT
========================= */

.main-grid {
  display: grid;
  grid-template-columns: minmax(0,1fr) 360px;
  gap: 28px;
}

.top-grid {
  display: grid;
  grid-template-columns: 1fr 1fr; /* make both top cards equal width */
  gap: 24px;
}

.bottom-grid {
  display: grid;
  grid-template-columns: 1fr 380px;
  gap: 28px;
  margin-top: 20px;
}

/* =========================
   COST BREAKDOWN
========================= */

  .cost-breakdown,
  .profit-margin {
  min-height: 300px; /* equal height for both cards (shorter) */
}

.donut-area {
  display: flex;
  gap: 16px;
  align-items: center;
}

  /* donut/info use proportional widths and stretch to card height */
  .card.cost-breakdown .donut-area { align-items: stretch; }
  .card.cost-breakdown .donut-area > .donut-chart-wrap { flex: 0 0 60%; min-width: 160px; }
  .card.cost-breakdown .donut-area > .donut-info { flex: 0 0 40%; min-width: 120px; display: flex; align-items: center; }
  .donut-chart-wrap { height: 100%; }
  .donut-chart-wrap canvas { width: 100% !important; height: 100% !important; }
  .donut-info { padding-left: 12px; }

  /* ensure profit bar chart fills card height */
  .profit-bar-chart { height: 100%; }
  .profit-bar-chart canvas { width: 100% !important; height: 100% !important; }

.dot {
  width: 12px;
  height: 12px;
  border-radius: 50%;
  display: inline-block;
}

.dot.red {
  background: #ef4444;
}

.dot.purple {
  background: #7c3aed;
}

.dot.orange {
  background: #f59e0b;
}

.label {
  font-weight: 600;
  color: #334155;
}

.value-sm {
  font-weight: 700;
}

.cost-percent {
  background: #f8fafc;
  border-radius: 12px;
  padding: 6px 12px;
  font-weight: 600;
}

/* =========================
   PROFIT MARGIN
========================= */

.profit-margin {
  position: relative;
  overflow: hidden;
}

.profit-margin::before {
  content: "";

  position: absolute;
  inset: 0;

  background:
    radial-gradient(
      circle at top right,
      rgba(16,185,129,.08),
      transparent 55%
    );

  pointer-events: none;
}

.gauge-text strong {
  font-size: 28px;
  font-weight: 800;
  line-height: 1;
}

.gauge-text {
  position: relative;
  z-index: 2;
}

/* =========================
   CHARTS
========================= */

.chart-row {
  width: 100%;
}

.bar-chart {
  height: 260px;
}

.orders-chart {
  height: 260px;
}

.trends canvas,
.orders-trend canvas {
  width: 100% !important;
}

/* =========================
   SIDEBAR
========================= */

.sidebar {
  display: flex;
  flex-direction: column;
}

.insights {
  list-style: none;
  padding: 0;
  margin: 0;

  display: flex;
  flex-direction: column;
  gap: 12px;
}

.insights li {
  background: #fff;

  border: 1px solid #edf2f7;
  border-radius: 18px;

  padding: 18px;

  box-shadow:
    0 1px 2px rgba(0,0,0,.02);

  transition: .2s;
}

.insights li:hover {
  border-color: #dbeafe;
}

.insights strong {
  color: #0f172a;
}

/* =========================
   TIPS
========================= */

.tips {
  margin-top: 16px;

  background: #eef5ff !important;

  border: 1px solid #cfe0ff;
  border-radius: 14px;

  box-shadow: none;
}

.tips h4 {
  margin: 0 0 10px;
  color: #2563eb;
}

.tips p {
  margin: 0;
}

/* =========================
   RESPONSIVE
========================= */

@media (max-width: 1280px) {

  .main-grid {
    grid-template-columns: 1fr;
  }

  .sidebar {
    order: -1;
  }
}

@media (max-width: 1024px) {

  .dashboard-two-column {
    grid-template-columns: 1fr;
  }

  .kpi-grid {
    grid-template-columns: repeat(2,1fr);
  }

  .top-grid {
    grid-template-columns: 1fr;
  }

  .bottom-grid {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 768px) {

  .page {
    padding: 20px;
  }

  .header {
    flex-direction: column;
    gap: 16px;
  }

  .header h1 {
    font-size: 30px;
  }

  .kpi-grid {
    grid-template-columns: 1fr;
  }

  .kpi .value {
    font-size: 20px;
  }

  .donut-area {
    flex-direction: column;
  }

  .bar-chart,
  .orders-chart {
    height: 300px;
  }
}
`}</style>
    </main>
  );
}
