import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';
import { supabaseServer } from '@/lib/supabaseServer';
import SalesChartServer from '../components/Charts/SalesChart.server';
import PeriodSelector from '../components/PeriodSelector.client';

interface MonthlySalesData {
  month: string;
  sales: number;
  target: number;
  profit: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

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
      const dt = new Date(r.created_at);
      const key = group === 'day'
        ? `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}-${String(dt.getDate()).padStart(2, '0')}`
        : `${dt.getFullYear()}-${String(dt.getMonth() + 1).padStart(2, '0')}`;
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

export default async function SalesReport({ searchParams }: { searchParams?: { period?: string; start?: string; end?: string } }) {
  // `searchParams` can be a Promise in Next.js app router — unwrap before use.
  // Use a local `params` object for all access to avoid accidental await errors.
  // If `searchParams` is already an object, use it directly; otherwise await it.
  // (Type cast to any to test for thenable.)
  const maybe = searchParams as any;
  const params = maybe && typeof maybe.then === 'function' ? (await maybe) || {} : (searchParams || {});
  const period = (params.period as PeriodType) || 'wtd';
  let startDate = new Date();
  let endDate = new Date();

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
      startDate = startOfWeek(new Date());
      endDate = new Date();
      break;
    case 'custom':
      if (params.start) startDate = new Date(params.start);
      if (params.end) endDate = new Date(params.end);
      break;
  }

  const isShortPeriod = period === 'wtd';
  const groupParam: 'day' | 'month' = isShortPeriod ? 'day' : 'month';

  // Use the existing app API route for aggregated sales to match other pages' data-fetch pattern.
  // Server-side `fetch` with a relative URL will call the internal route handler.
  let raw: any[] = [];
  let apiUrl = `/api/reports/sales?start=${encodeURIComponent(startDate.toISOString())}&end=${encodeURIComponent(endDate.toISOString())}&group=${groupParam}`;
  try {
    const apiRes = await fetch(apiUrl, { cache: 'no-store' });
    if (apiRes.ok) {
      const body = await apiRes.json();
      raw = Array.isArray(body?.data) ? body.data : Array.isArray(body) ? body : [];
    } else {
      raw = await getSalesAggregated(startDate.toISOString(), endDate.toISOString(), groupParam);
    }
  } catch (e) {
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
      const d = new Date(periodKey);
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

  return (
    <div className="space-y-6">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Report Penjualan</h1>
        <p className="text-gray-600">Laporan penjualan dengan periode fleksibel</p>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Periode Terpilih</h2>
        <p className="text-sm text-gray-700">{period === 'ytd' ? 'Year to Date' : period === 'mtd' ? 'Month to Date' : period === 'wtd' ? 'Week to Date' : 'Custom Range'}</p>
        {period === 'custom' && (params.start || params.end) ? (
          <p className="text-sm text-gray-500">{params.start || ''} — {params.end || ''}</p>
        ) : null}
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
    </div>
  );
}
