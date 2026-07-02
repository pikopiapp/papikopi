import { format, startOfYear, startOfMonth, startOfWeek, subDays } from 'date-fns';
import { supabaseServer } from '@/lib/supabaseServer';
import SalesChartServer from '../components/Charts/SalesChart.server';
import PeriodSelector from '../components/PeriodSelector.client';
import ApplyOutletClient from '../components/ApplyOutlet.client';
import TabsClient from '../components/Tabs.client';

interface MonthlySalesData {
  month: string;
  sales: number;
  target: number;
  profit: number;
}

interface AggregatedSalesRow {
  period: string;
  sales: number;
  profit: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'last7' | 'custom' | 'day' | 'week' | 'month';

function formatCurrency(amount: number | string): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(Number(amount));
}

async function getSalesAggregated(startIso: string, endIso: string, group: 'day' | 'month') {
  try {
    const rpc = await supabaseServer.rpc('reports_sales_agg', { start_ts: startIso, end_ts: endIso, grp: group });
    if (!rpc.error && Array.isArray(rpc.data)) return rpc.data;

    const res = await supabaseServer
      .from('sales')
      .select('created_at, total_amount, profit')
      .gte('created_at', startIso)
      .lte('created_at', endIso)
      .order('created_at', { ascending: true });

    if (res.error) return [];
    const rows = res.data || [];
    const map: Record<string, { sales: number; profit: number; count: number }> = {};
    for (const r of rows) {
      // Normalize created_at to UTC if missing TZ, then group by Asia/Jakarta local day
      let created = String(r.created_at || '');
      const hasTZ = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created);
      if (!hasTZ) {
        created = created.replace(' ', 'T');
        if (!created.endsWith('Z')) created = created + 'Z';
      }
      const dt = new Date(created);
      const key = group === 'day'
        ? dt.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' })
        : `${dt.getUTCFullYear()}-${String(dt.getUTCMonth() + 1).padStart(2, '0')}`;
      if (!map[key]) map[key] = { sales: 0, profit: 0, count: 0 };
      map[key].sales += Number(r.total_amount || 0);
      map[key].profit += Number(r.profit || 0);
      map[key].count += 1;
    }

    const out = Object.entries(map).map(([period, v]) => ({ period, sales: v.sales, profit: v.profit, count: v.count }));
    out.sort((a, b) => (a.period > b.period ? 1 : -1));
    return out;
  } catch (err) {
    console.error('server aggregation error', err);
    return [];
  }
}

function buildPeriodRange(startYmd: string, endYmd: string) {
  const periods: string[] = [];
  const start = new Date(`${startYmd}T00:00:00+07:00`);
  const end = new Date(`${endYmd}T00:00:00+07:00`);
  for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
    const y = d.getFullYear();
    const m = String(d.getMonth() + 1).padStart(2, '0');
    const day = String(d.getDate()).padStart(2, '0');
    periods.push(`${y}-${m}-${day}`);
  }
  return periods;
}

type PerOutletSeriesPoint = { period: string; sales: number; profit: number; count: number };
type PerOutletRow = { outlet_id: string; name: string; series: PerOutletSeriesPoint[]; totalSales: number; totalProfit: number; totalCount: number };

function formatDateRangeLabel(start: Date, end: Date) {
  const sameMonth = start.getFullYear() === end.getFullYear() && start.getMonth() === end.getMonth();
  const optionsShort: Intl.DateTimeFormatOptions = { day: '2-digit', month: 'short' };
  const optionsLong: Intl.DateTimeFormatOptions = { day: '2-digit', month: 'short', year: 'numeric' };

  const startLabel = start.toLocaleDateString('id-ID', sameMonth ? optionsShort : optionsLong);
  const endLabel = end.toLocaleDateString('id-ID', optionsLong);

  return `${startLabel} — ${endLabel}`;
}

async function getSalesPerOutletDaily(startYmd: string, endYmd: string): Promise<{ periods: string[]; data: PerOutletRow[] }> {
  const startIso = new Date(`${startYmd}T00:00:00+07:00`).toISOString();
  const endIso = new Date(`${endYmd}T23:59:59.999+07:00`).toISOString();

  const res = await supabaseServer
    .from('sales')
    .select('created_at, total_amount, profit, outlet_id')
    .gte('created_at', startIso)
    .lte('created_at', endIso)
    .order('created_at', { ascending: true });

  if (res.error) return { periods: [], data: [] };
  const rows = res.data || [];

  const periods = buildPeriodRange(startYmd, endYmd);
  const map: Record<string, { name?: string; series: Record<string, number>; profit: Record<string, number>; count: Record<string, number> }> = {};

  for (const r of rows) {
    let created = String(r.created_at || '');
    const hasTZ = /[zZ]|[+-]\d{2}:?\d{2}$/.test(created);
    if (!hasTZ) {
      created = created.replace(' ', 'T');
      if (!created.endsWith('Z')) created = created + 'Z';
    }
    const dt = new Date(created);
    const key = dt.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
    const oid = r.outlet_id ? String(r.outlet_id) : 'unknown';
    if (!map[oid]) map[oid] = { series: {}, profit: {}, count: {} };
    map[oid].series[key] = (map[oid].series[key] || 0) + Number(r.total_amount || 0);
    map[oid].profit[key] = (map[oid].profit[key] || 0) + Number(r.profit || 0);
    map[oid].count[key] = (map[oid].count[key] || 0) + 1;
  }

  // Resolve outlet names
  const ids = Object.keys(map).filter(id => id !== 'unknown');
  const names: Record<string, string> = {};
  if (ids.length) {
    const outletsRes = await supabaseServer.from('outlets').select('id, name').in('id', ids);
    if (!outletsRes.error && Array.isArray(outletsRes.data)) {
      for (const o of outletsRes.data) names[String(o.id)] = o.name || String(o.id);
    }
  }

  const out: PerOutletRow[] = Object.entries(map).map(([outlet_id, v]) => {
    const series = periods.map(p => ({ period: p, sales: v.series[p] || 0, profit: v.profit[p] || 0, count: v.count[p] || 0 }));
    return {
      outlet_id,
      name: outlet_id === 'unknown' ? 'Unknown' : names[outlet_id] || outlet_id,
      series,
      totalSales: series.reduce((s, x) => s + x.sales, 0),
      totalProfit: series.reduce((s, x) => s + x.profit, 0),
      totalCount: series.reduce((s, x) => s + x.count, 0),
    };
  });

  out.sort((a, b) => b.totalSales - a.totalSales);
  return { periods, data: out };
}

function isThenable(value: unknown): value is Promise<unknown> {
  return typeof value === 'object' && value !== null && 'then' in value && typeof (value as { then?: unknown }).then === 'function';
}

export default async function SalesReport({ searchParams }: { searchParams?: { period?: string; start?: string; end?: string; outlet?: string } }) {
  // `searchParams` can be a Promise in Next.js App Router.
  const params = isThenable(searchParams) ? await searchParams : searchParams || {};
  const period = (params.period as PeriodType) || 'month';
  let startDate = new Date();
  let endDate = new Date();

  const hasExplicitRange = Boolean(params.start || params.end);
  if (hasExplicitRange) {
    if (params.start) startDate = new Date(params.start);
    if (params.end) endDate = new Date(params.end);
  } else {
    switch (period) {
      case 'ytd':
        startDate = startOfYear(new Date());
        endDate = new Date();
        break;
      case 'mtd':
        startDate = startOfMonth(new Date());
        endDate = new Date();
        break;
      case 'wtd':
        startDate = startOfWeek(new Date(), { weekStartsOn: 1 });
        endDate = new Date();
        break;
      case 'last7':
        startDate = subDays(new Date(), 6);
        endDate = new Date();
        break;
      case 'day':
        startDate = new Date();
        endDate = new Date();
        break;
      case 'week':
        startDate = startOfWeek(new Date(), { weekStartsOn: 1 });
        endDate = new Date(startDate);
        endDate.setDate(startDate.getDate() + 6);
        break;
      case 'month':
        startDate = startOfMonth(new Date());
        endDate = new Date(startDate.getFullYear(), startDate.getMonth() + 1, 0);
        break;
      case 'custom':
        if (params.start) startDate = new Date(params.start);
        if (params.end) endDate = new Date(params.end);
        break;
    }
  }

  const isShortPeriod = period === 'wtd' || period === 'last7' || period === 'day' || period === 'week' || period === 'custom' || hasExplicitRange;
  // Use daily grouping for short periods and custom ranges (so "Terapkan" shows days)
  const groupParam: 'day' | 'month' = (isShortPeriod || period === 'custom') ? 'day' : 'month';

  // Use the existing app API route for aggregated sales to match other pages' data-fetch pattern.
  // Send `start`/`end` as local `yyyy-MM-dd` to match the dashboard date-picker behavior.
  let raw: AggregatedSalesRow[] = [];
  const startYmd = format(startDate, 'yyyy-MM-dd');
  const endYmd = format(endDate, 'yyyy-MM-dd');
  const outletParam = params.outlet ? `&outlet=${encodeURIComponent(params.outlet)}` : '';
  const apiUrl = `/api/reports/sales?start=${encodeURIComponent(startYmd)}&end=${encodeURIComponent(endYmd)}&group=${groupParam}${outletParam}`;
  try {
    const apiRes = await fetch(apiUrl, { cache: 'no-store' });
    if (apiRes.ok) {
      const body = await apiRes.json();
      raw = Array.isArray(body?.data) ? (body.data as AggregatedSalesRow[]) : Array.isArray(body) ? (body as AggregatedSalesRow[]) : [];
    } else {
      raw = await getSalesAggregated(startDate.toISOString(), endDate.toISOString(), groupParam);
    }
  } catch {
    // fallback to direct DB aggregation if API fetch fails
    raw = await getSalesAggregated(startDate.toISOString(), endDate.toISOString(), groupParam);
  }
  const chartArray: MonthlySalesData[] = [];
  let totalYTD = 0;
  let totalProfit = 0;

  for (const row of raw) {
    const periodKey = row.period;
    let label = periodKey;
    if (!isShortPeriod) {
      const monthNum = parseInt(periodKey.split('-')[1]);
      const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      label = monthNames[monthNum - 1] || periodKey;
    } else {
      // parse day key as Jakarta-local midnight for correct label
      const d = new Date(periodKey + 'T00:00:00+07:00');
      label = format(d, 'MMM dd');
    }

    const avgTarget = 50000000;

    chartArray.push({
      month: label,
      sales: Number(row.sales || 0),
      target: avgTarget,
      profit: Number(row.profit || 0),
    });

    totalYTD += Number(row.sales || 0);
    totalProfit += Number(row.profit || 0);
  }

  const totalTarget = chartArray.reduce((sum, m) => sum + m.target, 0);
  const achievement = totalTarget > 0 ? (totalYTD / totalTarget) * 100 : 0;
  let growthRate = 0;
  if (chartArray.length >= 2) {
    const lastPeriod = chartArray[chartArray.length - 1].sales;
    const prevPeriod = chartArray[chartArray.length - 2].sales;
    if (prevPeriod > 0) growthRate = ((lastPeriod - prevPeriod) / prevPeriod) * 100;
  }

  const stats = {
    totalYTD,
    totalProfit,
    achievement: Math.round(achievement),
    growthRate: growthRate.toFixed(1),
  };

  // Fetch per-outlet breakdown + daily series for the same period (server-side)
  const perOutletDaily = await getSalesPerOutletDaily(startYmd, endYmd);
  const perOutlet: PerOutletRow[] = perOutletDaily.data || [];

  return (
    <div className="space-y-6">
      {/* If user is tied to an outlet, add outlet query param automatically (client-side) */}
      <ApplyOutletClient />
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Report Penjualan</h1>
        <p className="text-gray-600">Laporan penjualan dengan periode fleksibel</p>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Periode Terpilih</h2>
        <p className="text-sm text-gray-700">
          {period === 'ytd' ? 'Year to Date' : period === 'mtd' ? 'Month to Date' : period === 'wtd' ? 'Week to Date' : period === 'day' ? 'Hari' : period === 'week' ? 'Minggu' : period === 'month' ? 'Bulan' : 'Custom Range'}
        </p>
        <p className="text-sm text-gray-500">
          {formatDateRangeLabel(startDate, endDate)}
        </p>
        <div className="mt-2">
          {/* Interactive period selector (client) */}
          <PeriodSelector initialPeriod={period} initialStart={params.start} initialEnd={params.end} />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Penjualan</h3>
          <p className="text-3xl font-bold text-green-600 mt-2">{formatCurrency(stats.totalYTD)}</p>
          <p className="text-sm text-gray-500 mt-1">Periode terpilih</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Profit</h3>
          <p className="text-3xl font-bold text-purple-600 mt-2">{formatCurrency(stats.totalProfit)}</p>
          <p className="text-sm text-gray-500 mt-1">Keuntungan total</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Target Achievement</h3>
          <p className="text-3xl font-bold text-blue-600 mt-2">{stats.achievement}%</p>
          <p className="text-sm text-gray-500 mt-1">Pencapaian target</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Growth Rate</h3>
          <p className={`text-3xl font-bold mt-2 ${Number(stats.growthRate) >= 0 ? 'text-green-600' : 'text-red-600'}`}>
            {Number(stats.growthRate) >= 0 ? '+' : ''}{stats.growthRate}%
          </p>
          <p className="text-sm text-gray-500 mt-1">Pertumbuhan</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <TabsClient />
        <div id="reports-tabs">
          <div className="trend-section">
            <h2 className="text-xl font-bold text-gray-800 mb-4">Sales Trend</h2>
            {chartArray.length > 0 ? (
              <SalesChartServer data={chartArray} formatCurrency={(n: number) => formatCurrency(n)} />
            ) : (
              <div className="text-center py-8 text-gray-500">
                <p>Belum ada data penjualan untuk periode terpilih</p>
                <div className="mt-4 text-left text-xs text-gray-500">
                  <p><strong>Debug:</strong></p>
                  <p>start: {startDate.toISOString()}</p>
                  <p>end: {endDate.toISOString()}</p>
                  <p>group: {groupParam}</p>
                  <p>apiUrl: {apiUrl}</p>
                  <details className="mt-2 text-xs text-gray-400">
                    <summary>Raw rows ({raw.length})</summary>
                    <pre className="whitespace-pre-wrap wrap-break-word max-h-48 overflow-auto">{JSON.stringify(raw, null, 2)}</pre>
                  </details>
                </div>
              </div>
            )}
          </div>

          <div className="outlet-section" style={{ display: 'none' }}>
            <h2 className="text-xl font-bold text-gray-800 mb-4">Per-Outlet Breakdown</h2>
            {perOutlet.length > 0 ? (
              <div>
                <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                  {perOutlet.map((o: PerOutletRow) => (
                    <div key={o.outlet_id} className="border rounded p-4">
                      <div className="flex items-center justify-between space-x-4">
                        <div className="flex-1">
                          <div className="font-semibold">{o.name}</div>
                          <div className="text-sm text-gray-500">Orders: {o.totalCount}</div>
                        </div>
                        <div className="w-40">
                          {/* sparkline */}
                          <svg viewBox="0 0 200 36" width="200" height="36" className="block">
                            {(() => {
                              const vals = o.series.map((s) => s.sales);
                              const max = Math.max(...vals, 1);
                              const step = vals.length > 1 ? 180 / (vals.length - 1) : 180;
                              const h = 24;
                              const points = vals.map((v, i) => `${10 + i * step},${4 + (h - (v / max) * h)}`);
                              const path = points.length ? `M ${points.join(' L ')}` : '';
                              return (
                                <>
                                  <path d={path} fill="none" stroke="#3b82f6" strokeWidth={2} strokeLinecap="round" strokeLinejoin="round" />
                                </>
                              );
                            })()}
                          </svg>
                        </div>
                        <div className="text-right w-36">
                          <div className="font-bold text-green-600">{formatCurrency(o.totalSales)}</div>
                          <div className="text-sm text-gray-600">{formatCurrency(o.totalProfit)}</div>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            ) : (
              <p className="text-sm text-gray-500">Tidak ada data per-outlet untuk periode ini.</p>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
