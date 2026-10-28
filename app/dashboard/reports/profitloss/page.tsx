import { format, endOfMonth, endOfWeek, startOfYear, startOfMonth, startOfWeek, subDays } from 'date-fns';
import {
  fetchSalesAgg,
  fetchSalesAggFallback,
  isYmd,
  resolveReportRange,
} from '@/lib/reports/sales-agg';
import { formatDateOnlyInJakarta } from '@/lib/helpers/business-day';
import PeriodSelector from '../components/PeriodSelector.client';
import ProfitLossChartServer from '../components/Charts/ProfitLossChart.server';

interface ProfitLossData {
  month: string;
  revenue: number;
  cost: number;
  profit: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom' | 'day' | 'week' | 'month' | 'last7';

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

  const today = new Date();
  let startDate = today;
  let endDate = today;
  switch (period) {
    case 'ytd':
      startDate = startOfYear(today);
      endDate = today;
      break;
    case 'mtd':
      startDate = startOfMonth(today);
      endDate = today;
      break;
    case 'wtd':
      startDate = startOfWeek(today, { weekStartsOn: 1 });
      endDate = today;
      break;
    // PeriodSelector emits day/week/month; without these the page silently fell back
    // to "today only" whenever the picker was used.
    case 'week':
      startDate = startOfWeek(today, { weekStartsOn: 1 });
      endDate = endOfWeek(today, { weekStartsOn: 1 });
      break;
    case 'month':
      startDate = startOfMonth(today);
      endDate = endOfMonth(today);
      break;
    case 'last7':
      startDate = subDays(today, 6);
      endDate = today;
      break;
    case 'day':
    case 'custom':
      break;
  }

  const startYmd = period === 'custom' && isYmd(params.start) ? params.start! : formatDateOnlyInJakarta(startDate);
  const endYmd = period === 'custom' && isYmd(params.end) ? params.end! : formatDateOnlyInJakarta(endDate);

  // Daily bars read better for anything up to two months; monthly buckets beyond that.
  const spanDays = Math.round((new Date(`${endYmd}T00:00:00Z`).getTime() - new Date(`${startYmd}T00:00:00Z`).getTime()) / 86400000) + 1;
  const groupParam: 'day' | 'month' = spanDays <= 62 ? 'day' : 'month';

  // Server components cannot fetch their own relative /api route, and the API route's
  // fallback selected a `meal_amount` column that does not exist on `sales`.
  let raw: { period: string; revenue: number; hpp: number; profit: number }[] = [];
  const range = resolveReportRange(startYmd, endYmd);
  if (range) {
    try {
      const agg = await fetchSalesAgg(range.startIso, range.endIso, groupParam);
      const rows = agg ?? (await fetchSalesAggFallback(range.startIso, range.endIso, groupParam));
      raw = rows.map((r) => ({ period: r.period, revenue: r.sales, hpp: r.hpp, profit: r.profit }));
    } catch (err) {
      console.error('P&L aggregation error', err);
    }
  }

  const chartArray: ProfitLossData[] = [];
  let totalRevenue = 0;
  let totalCost = 0;
  let totalProfit = 0;

  for (const row of raw) {
    const periodKey = row.period;
    let label = periodKey;
    if (groupParam === 'month') {
      const monthNum = parseInt(periodKey.split('-')[1], 10);
      const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      label = monthNames[monthNum - 1] || periodKey;
    } else {
      label = format(new Date(`${periodKey}T00:00:00+07:00`), 'MMM dd');
    }

    chartArray.push({
      month: label,
      revenue: Math.round(row.revenue),
      cost: Math.round(row.hpp),
      profit: Math.round(row.profit),
    });

    totalRevenue += row.revenue;
    totalCost += row.hpp;
    totalProfit += row.profit;
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
        <p className="text-sm text-gray-700">
          {period === 'ytd' ? 'Year to Date'
            : period === 'mtd' ? 'Month to Date'
            : period === 'wtd' ? 'Week to Date'
            : period === 'day' ? 'Hari'
            : period === 'week' ? 'Minggu'
            : period === 'month' ? 'Bulan'
            : period === 'last7' ? '7 Hari Terakhir'
            : 'Custom Range'}
        </p>
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
