import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';
import { supabaseServer } from '@/lib/supabaseServer';
import { getBusinessDayDate, getBusinessDayRange, parseDateOnlyAsJakarta, formatDateOnlyInJakarta } from '@/lib/helpers/business-day';
import PeriodSelector from '../components/PeriodSelector.client';
import ProfitLossChartServer from '../components/Charts/ProfitLossChart.server';

interface ProfitLossData {
  month: string;
  revenue: number;
  cost: number;
  profit: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

async function getProfitLossAggregated(startIso: string, endIso: string, group: 'day' | 'month') {
  try {
    const startDate = parseDateOnlyAsJakarta(startIso);
    const endDate = parseDateOnlyAsJakarta(endIso);
    const startRange = getBusinessDayRange(startDate, 4);
    const endRange = getBusinessDayRange(endDate, 4);
    const queryStartIso = startRange.start.toISOString();
    const queryEndIso = endRange.end.toISOString();

    const res = await supabaseServer
      .from('sales')
      .select('created_at, total_amount, hpp_total, profit')
      .gte('created_at', queryStartIso)
      .lte('created_at', queryEndIso)
      .order('created_at', { ascending: true });

    if (res.error) return [];
    const rows = res.data || [];
    const map: Record<string, { revenue: number; cost: number; profit: number; count: number }> = {};

    for (const r of rows) {
      const businessDay = getBusinessDayDate(r.created_at, 4);
      const key = group === 'day'
        ? formatDateOnlyInJakarta(businessDay)
        : `${businessDay.getFullYear()}-${String(businessDay.getMonth() + 1).padStart(2, '0')}`;
      if (!map[key]) map[key] = { revenue: 0, cost: 0, profit: 0, count: 0 };
      map[key].revenue += Number(r.total_amount || 0);
      map[key].cost += Number(r.hpp_total || 0);
      map[key].profit += Number(r.profit || 0);
      map[key].count += 1;
    }

    const out = Object.entries(map).map(([period, v]) => ({ period, revenue: v.revenue, cost: v.cost, profit: v.profit, count: v.count }));
    out.sort((a, b) => (a.period > b.period ? 1 : -1));
    return out;
  } catch (err) {
    console.error('server aggregation error', err);
    return [];
  }
}

function formatCurrency(amount: number | string): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(Number(amount));
}

export default async function ProfitLossReport({ searchParams }: { searchParams?: { period?: string; start?: string; end?: string } }) {
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

  let raw: any[] = [];
  try {
    const apiRes = await fetch(`/api/reports/profitloss?start=${encodeURIComponent(startDate.toISOString())}&end=${encodeURIComponent(endDate.toISOString())}&group=${groupParam}`, { cache: 'no-store' });
    if (apiRes.ok) {
      const body = await apiRes.json();
      raw = Array.isArray(body?.data) ? body.data : Array.isArray(body) ? body : [];
    } else {
      raw = await getProfitLossAggregated(startDate.toISOString(), endDate.toISOString(), groupParam);
    }
  } catch (e) {
    raw = await getProfitLossAggregated(startDate.toISOString(), endDate.toISOString(), groupParam);
  }

  const chartArray: ProfitLossData[] = [];
  let totalRevenue = 0;
  let totalCost = 0;
  let totalProfit = 0;

  for (const row of raw) {
    const periodKey = row.period;
    let label = periodKey;
    if (!isShortPeriod) {
      const monthNum = parseInt(periodKey.split('-')[1]);
      const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      label = monthNames[monthNum - 1] || periodKey;
    } else {
      const d = parseDateOnlyAsJakarta(periodKey);
      label = format(d, 'MMM dd');
    }

    chartArray.push({
      month: label,
      revenue: Number(row.revenue || 0),
      cost: Number(row.cost || 0),
      profit: Number(row.profit || 0),
    });

    totalRevenue += Number(row.revenue || 0);
    totalCost += Number(row.cost || 0);
    totalProfit += Number(row.profit || 0);
  }

  const profitMargin = totalRevenue > 0 ? ((totalProfit / totalRevenue) * 100).toFixed(1) : '0';

  const stats = { totalRevenue, totalCost, totalProfit, profitMargin };

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Rugi Laba (P&L)</h1>
        <p className="text-gray-600">Analisis profit dan loss dengan periode fleksibel</p>
      </div>

      <div className="surface-card rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Pilih Periode</h2>
        <p className="text-sm text-gray-700">{period === 'ytd' ? 'Year to Date' : period === 'mtd' ? 'Month to Date' : period === 'wtd' ? 'Week to Date' : 'Custom Range'}</p>
        {period === 'custom' && (params.start || params.end) ? (
          <p className="text-sm text-gray-500">{params.start || ''} — {params.end || ''}</p>
        ) : null}
        <div className="mt-2">
          <PeriodSelector initialPeriod={period} initialStart={params.start} initialEnd={params.end} />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Pendapatan</h3>
          <p className="text-3xl font-bold text-blue-600 mt-2">{formatCurrency(stats.totalRevenue)}</p>
          <p className="text-sm text-gray-500 mt-1">Periode terpilih</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Biaya (HPP)</h3>
          <p className="text-3xl font-bold text-red-600 mt-2">{formatCurrency(stats.totalCost)}</p>
          <p className="text-sm text-gray-500 mt-1">Harga Pokok Penjualan</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Laba Bersih</h3>
          <p className="text-3xl font-bold text-green-600 mt-2">{formatCurrency(stats.totalProfit)}</p>
          <p className="text-sm text-gray-500 mt-1">Net Profit</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Profit Margin</h3>
          <p className="text-3xl font-bold text-orange-600 mt-2">{stats.profitMargin}%</p>
          <p className="text-sm text-gray-500 mt-1">Margin Keuntungan</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Analisis P&L</h2>
        {chartArray.length > 0 ? (
          <ProfitLossChartServer data={chartArray} formatCurrency={formatCurrency} />
        ) : (
          <div className="text-center py-8 text-gray-500">
            <p>Belum ada data P&L untuk periode terpilih</p>
          </div>
        )}
      </div>
    </div>
  );
}
