import { AlertCircle } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';
import { formatDateOnlyInJakarta, getDateBoundaryInJakarta } from '@/lib/helpers/business-day';
import { isYmd } from '@/lib/reports/sales-agg';
import ReturnsPeriodSelector from './ReturnsPeriodSelector.client';

type PeriodKey = 'ytd' | 'mtd' | 'wtd' | 'custom';

interface ReportParams {
  period?: string;
  start?: string;
  end?: string;
}

interface ReasonRow {
  reason: string;
  return_count: number | string;
}

interface TotalsRow {
  orders: number | string;
}

function normalizePeriod(value?: string): PeriodKey {
  return value === 'ytd' || value === 'wtd' || value === 'custom' ? value : 'mtd';
}

function mondayOf(ymd: string): string {
  const date = new Date(`${ymd}T00:00:00Z`);
  const dow = date.getUTCDay();
  date.setUTCDate(date.getUTCDate() - (dow === 0 ? 6 : dow - 1));
  return date.toISOString().slice(0, 10);
}

function resolveRange(period: PeriodKey, params: ReportParams) {
  const today = formatDateOnlyInJakarta(new Date());
  if (period === 'ytd') return { start: `${today.slice(0, 4)}-01-01`, end: today };
  if (period === 'wtd') return { start: mondayOf(today), end: today };
  if (period === 'custom') {
    return {
      start: isYmd(params.start) ? params.start : `${today.slice(0, 7)}-01`,
      end: isYmd(params.end) ? params.end : today,
    };
  }
  return { start: `${today.slice(0, 7)}-01`, end: today };
}

function impactOf(count: number): string {
  if (count >= 10) return 'High';
  if (count >= 5) return 'Medium';
  return 'Low';
}

function rangeLabel(startYmd: string, endYmd: string): string {
  const fmt = (ymd: string) =>
    new Date(`${ymd}T00:00:00+07:00`).toLocaleDateString('id-ID', {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
    });
  return `${fmt(startYmd)} — ${fmt(endYmd)}`;
}

export default async function ReturnsAnalysisReport({
  searchParams,
}: {
  searchParams?: ReportParams | Promise<ReportParams>;
}) {
  const params: ReportParams =
    searchParams instanceof Promise ? (await searchParams) || {} : (searchParams as ReportParams) || {};

  const period = normalizePeriod(params.period);
  const { start: startYmd, end: endYmd } = resolveRange(period, params);

  const startIso = getDateBoundaryInJakarta(startYmd, false).toISOString();
  const endIso = getDateBoundaryInJakarta(endYmd, true).toISOString();

  // Server-side on purpose: reading product_returns from the browser capped the result at
  // PostgREST's 1,000 rows (19,273 exist), so MTD showed 1,000 instead of the real count.
  const [returnsRes, totalsRes] = await Promise.all([
    supabaseServer.rpc('get_returns_by_reason', { p_start: startIso, p_end: endIso }),
    supabaseServer.rpc('get_sales_totals', { p_start: startIso, p_end: endIso, p_outlet: null }),
  ]);

  const reasons: ReasonRow[] = Array.isArray(returnsRes.data) ? (returnsRes.data as ReasonRow[]) : [];
  const totalReturns = reasons.reduce((sum, row) => sum + Number(row.return_count ?? 0), 0);
  const totalsRow = (Array.isArray(totalsRes.data) ? totalsRes.data[0] : totalsRes.data) as TotalsRow | null;
  const totalOrders = Number(totalsRow?.orders ?? 0);
  const returnRate = totalOrders > 0 ? (totalReturns / totalOrders) * 100 : 0;

  const rows = reasons
    .map((row) => {
      const count = Number(row.return_count ?? 0);
      return {
        reason: String(row.reason ?? 'Unknown'),
        count,
        percentage: totalReturns > 0 ? Math.round((count / totalReturns) * 100) : 0,
        impact: impactOf(count),
      };
    })
    .sort((a, b) => b.count - a.count);

  const impactColor = (impact: string) => {
    switch (impact) {
      case 'High':
        return 'text-red-600';
      case 'Medium':
        return 'text-yellow-600';
      case 'Low':
        return 'text-green-600';
      default:
        return 'text-gray-600';
    }
  };

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Returns Analysis</h1>
        <p className="text-gray-600">Analisis return dan damage produk</p>
        <p className="text-sm text-gray-500 mt-2">{rangeLabel(startYmd, endYmd)}</p>
      </div>

      {returnsRes.error && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-red-500 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Data return belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>get_returns_by_reason</code> belum ada di database. Jalankan migrasi{' '}
              <code>supabase/migrations/0013_reports_returns_and_outlet_performance.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{returnsRes.error.message}</p>
          </div>
        </div>
      )}

      <div className="surface-card rounded-lg shadow-md p-6">
        <ReturnsPeriodSelector period={period} start={startYmd} end={endYmd} />
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Returns</h3>
          <p className="text-4xl font-bold text-red-600 mt-2">{totalReturns.toLocaleString('id-ID')}</p>
          <p className="text-sm text-gray-500 mt-1">{period.toUpperCase()}</p>
        </div>
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Return Rate</h3>
          <p className="text-4xl font-bold text-orange-600 mt-2">{returnRate.toFixed(1)}%</p>
          <p className="text-sm text-gray-500 mt-1">Of total transactions</p>
        </div>
        <div className="surface-card rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Orders in Period</h3>
          <p className="text-4xl font-bold text-gray-800 mt-2">{totalOrders.toLocaleString('id-ID')}</p>
          <p className="text-sm text-gray-500 mt-1">Pembagi return rate</p>
        </div>
      </div>

      {totalsRes.error && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-red-500 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Jumlah transaksi belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>get_sales_totals</code> belum ada di database. Jalankan migrasi{' '}
              <code>supabase/migrations/0008_sales_aggregation.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{totalsRes.error.message}</p>
          </div>
        </div>
      )}

      <div className="surface-card rounded-lg shadow-md overflow-hidden">
        {rows.length === 0 ? (
          <div className="p-6 text-center text-gray-500">No returns data available</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Return Reason</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Count</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Percentage</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Impact</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {rows.map((item) => (
                <tr key={item.reason} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{item.reason}</td>
                  <td className="px-6 py-4 text-gray-700">{item.count.toLocaleString('id-ID')}</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center gap-2">
                      <div className="w-16 bg-gray-200 rounded-full h-2">
                        <div className="bg-blue-600 h-2 rounded-full" style={{ width: `${item.percentage}%` }} />
                      </div>
                      <span className="text-sm text-gray-600">{item.percentage}%</span>
                    </div>
                  </td>
                  <td className={`px-6 py-4 font-semibold ${impactColor(item.impact)}`}>{item.impact}</td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
