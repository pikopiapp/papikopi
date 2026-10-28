import Link from 'next/link';
import { Download, Filter } from 'lucide-react';
import { BonusCalculator } from '@/app/components/BonusCalculator';
import { supabaseServer } from '@/lib/supabaseServer';
import { fetchSalesAgg, fetchSalesAggFallback, isYmd, resolveReportRange } from '@/lib/reports/sales-agg';
import { formatDateOnlyInJakarta, formatTimestampFromUTC } from '@/lib/helpers/business-day';
import PeriodSelector from './components/PeriodSelector.client';

const RECENT_LIMIT = 50;

interface ReportParams {
  period?: string;
  start?: string;
  end?: string;
  tab?: string;
}

interface SaleRow {
  id: string;
  created_at: string | null;
  total_amount: number | string | null;
  profit: number | string | null;
  payment_method: string | null;
  barista_id: string | null;
}

interface Summary {
  revenue: number;
  profit: number;
  orders: number;
}

function formatCurrency(amount: number): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(amount);
}

function formatRangeLabel(startYmd: string, endYmd: string): string {
  const fmt = (ymd: string) =>
    new Date(`${ymd}T00:00:00+07:00`).toLocaleDateString('id-ID', {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
    });
  return `${fmt(startYmd)} — ${fmt(endYmd)}`;
}

async function getSummary(startIso: string, endIso: string): Promise<Summary> {
  const { data, error } = await supabaseServer.rpc('get_sales_totals', {
    p_start: startIso,
    p_end: endIso,
    p_outlet: null,
  });

  const row = !error && Array.isArray(data) ? data[0] : null;
  if (row) {
    return {
      revenue: Number(row.revenue ?? 0),
      profit: Number(row.profit ?? 0),
      orders: Number(row.orders ?? 0),
    };
  }

  try {
    const rows =
      (await fetchSalesAgg(startIso, endIso, 'day')) ??
      (await fetchSalesAggFallback(startIso, endIso, 'day'));
    return rows.reduce<Summary>(
      (acc, r) => ({
        revenue: acc.revenue + r.sales,
        profit: acc.profit + r.profit,
        orders: acc.orders + r.orders,
      }),
      { revenue: 0, profit: 0, orders: 0 }
    );
  } catch (err) {
    console.error('Reports summary failed', err);
    return { revenue: 0, profit: 0, orders: 0 };
  }
}

async function getRecentSales(startIso: string, endIso: string) {
  const { data, error } = await supabaseServer
    .from('sales')
    .select('id, created_at, total_amount, profit, payment_method, barista_id')
    .gte('created_at', startIso)
    .lte('created_at', endIso)
    .order('created_at', { ascending: false })
    .limit(RECENT_LIMIT);

  if (error || !Array.isArray(data)) return [] as (SaleRow & { barista_name: string })[];

  const sales = data as SaleRow[];
  const baristaIds = [...new Set(sales.map((s) => s.barista_id).filter((id): id is string => Boolean(id)))];

  let baristaMap = new Map<string, string>();
  if (baristaIds.length > 0) {
    const { data: baristas } = await supabaseServer.from('users').select('id, name').in('id', baristaIds);
    baristaMap = new Map((baristas ?? []).map((b: { id: string; name: string | null }) => [b.id, b.name || 'Tanpa Nama']));
  }

  return sales.map((s) => ({
    ...s,
    barista_name: (s.barista_id && baristaMap.get(s.barista_id)) || 'Barista lama',
  }));
}

export default async function ReportsPage({ searchParams }: { searchParams?: ReportParams | Promise<ReportParams> }) {
  const isPromise = searchParams instanceof Promise;
  const params: ReportParams = (isPromise ? (await searchParams) || {} : (searchParams as ReportParams) || {});
  const activeTab = params.tab === 'bonus' ? 'bonus' : 'sales';

  const todayYmd = formatDateOnlyInJakarta(new Date());
  const startYmd = isYmd(params.start) ? params.start : `${todayYmd.slice(0, 7)}-01`;
  const endYmd = isYmd(params.end) ? params.end : todayYmd;
  const range = resolveReportRange(startYmd, endYmd);

  // Server-side on purpose: the previous client query never ran, and the anon client is
  // capped at 1,000 rows per request, so a busy week silently under-reported.
  const summary: Summary = range ? await getSummary(range.startIso, range.endIso) : { revenue: 0, profit: 0, orders: 0 };
  const recentSales = range && activeTab === 'sales' ? await getRecentSales(range.startIso, range.endIso) : [];

  const tabHref = (tab: 'sales' | 'bonus') => {
    const q = new URLSearchParams();
    if (params.period) q.set('period', params.period);
    if (isYmd(params.start)) q.set('start', params.start);
    if (isYmd(params.end)) q.set('end', params.end);
    if (tab === 'bonus') q.set('tab', 'bonus');
    const qs = q.toString();
    return qs ? `/dashboard/reports?${qs}` : '/dashboard/reports';
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex justify-between items-center">
        <h1 className="text-3xl font-bold">Laporan Keuangan</h1>
        <button className="bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg flex items-center gap-2">
          <Download size={20} />
          Export PDF
        </button>
      </div>

      {/* Tab Navigation */}
      <div className="surface-card rounded-lg shadow-md border-b">
        <div className="flex gap-0">
          <Link
            href={tabHref('sales')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'sales'
                ? 'border-amber-600 text-amber-600'
                : 'border-transparent text-gray-600 hover:text-amber-600'
            }`}
          >
            Laporan Penjualan
          </Link>
          <Link
            href={tabHref('bonus')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'bonus'
                ? 'border-green-600 text-green-600'
                : 'border-transparent text-gray-600 hover:text-green-600'
            }`}
          >
            📊 Kalkulator Bonus
          </Link>
        </div>
      </div>

      {/* SALES TAB */}
      {activeTab === 'sales' && (
        <>
          {/* Period Selection */}
          <div className="surface-card p-6 rounded-lg shadow-md">
            <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
              <Filter size={20} />
              Periode Laporan
            </h2>
            <p className="text-sm text-gray-700 mb-2">{formatRangeLabel(startYmd, endYmd)}</p>
            <PeriodSelector initialPeriod={params.period || 'month'} initialStart={startYmd} initialEnd={endYmd} />
          </div>

          {/* Report Content */}
          <div className="surface-card p-6 rounded-lg shadow-md">
            <h3 className="text-lg font-semibold mb-4">Ringkasan Penjualan</h3>
            <div className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div className="border rounded-lg p-4 bg-green-50">
                  <p className="text-gray-600 text-sm">Total Penjualan</p>
                  <p className="text-2xl font-bold text-green-600">{formatCurrency(summary.revenue)}</p>
                </div>
                <div className="border rounded-lg p-4 bg-blue-50">
                  <p className="text-gray-600 text-sm">Total Keuntungan</p>
                  <p className="text-2xl font-bold text-blue-600">{formatCurrency(summary.profit)}</p>
                </div>
                <div className="border rounded-lg p-4 bg-purple-50">
                  <p className="text-gray-600 text-sm">Transaksi</p>
                  <p className="text-2xl font-bold text-purple-600">{summary.orders.toLocaleString('id-ID')}</p>
                </div>
              </div>
            </div>
          </div>

          {/* Sales Detail Table */}
          <div className="surface-card rounded-lg shadow-md overflow-hidden">
            <div className="p-6 border-b">
              <h3 className="text-lg font-semibold">Penjualan Detail ({recentSales.length})</h3>
              <p className="text-sm text-gray-500 mt-1">
                {recentSales.length >= RECENT_LIMIT
                  ? `${RECENT_LIMIT} transaksi terbaru pada periode ini. Ringkasan di atas mencakup seluruh periode.`
                  : 'Seluruh transaksi pada periode ini.'}
              </p>
            </div>
            <div className="overflow-x-auto">
              <table className="w-full">
                <thead className="bg-gray-100 border-b">
                  <tr>
                    <th className="px-6 py-3 text-left text-sm font-semibold">Tanggal</th>
                    <th className="px-6 py-3 text-left text-sm font-semibold">Barista</th>
                    <th className="px-6 py-3 text-right text-sm font-semibold">Pendapatan</th>
                    <th className="px-6 py-3 text-right text-sm font-semibold">Keuntungan</th>
                    <th className="px-6 py-3 text-left text-sm font-semibold">Pembayaran</th>
                  </tr>
                </thead>
                <tbody>
                  {recentSales.length > 0 ? (
                    recentSales.map((sale) => (
                      <tr key={sale.id} className="border-b hover:bg-gray-50">
                        <td className="px-6 py-4 text-sm">
                          {formatTimestampFromUTC(sale.created_at ?? '', {
                            day: '2-digit',
                            month: '2-digit',
                            year: 'numeric',
                            hour: '2-digit',
                            minute: '2-digit',
                          })}
                        </td>
                        <td className="px-6 py-4 text-sm">{sale.barista_name}</td>
                        <td className="px-6 py-4 text-sm text-right font-medium">
                          {formatCurrency(Number(sale.total_amount ?? 0))}
                        </td>
                        <td className="px-6 py-4 text-sm text-right font-medium text-green-600">
                          {formatCurrency(Number(sale.profit ?? 0))}
                        </td>
                        <td className="px-6 py-4 text-sm">
                          <span
                            className={`px-3 py-1 rounded-full text-xs font-semibold ${
                              (sale.payment_method || '').toLowerCase() === 'cash'
                                ? 'bg-green-100 text-green-800'
                                : 'bg-blue-100 text-blue-800'
                            }`}
                          >
                            {(sale.payment_method || '-').toUpperCase()}
                          </span>
                        </td>
                      </tr>
                    ))
                  ) : (
                    <tr className="border-b hover:bg-gray-50">
                      <td colSpan={5} className="px-6 py-4 text-center text-gray-500">
                        Tidak ada data penjualan
                      </td>
                    </tr>
                  )}
                </tbody>
              </table>
            </div>
          </div>
        </>
      )}

      {/* BONUS TAB */}
      {activeTab === 'bonus' && (
        <div className="space-y-6">
          <div className="surface-card rounded-lg shadow-md p-6">
            <h2 className="text-2xl font-bold mb-2 text-green-700">📊 Sistem Perhitungan Bonus Berjenjang</h2>
            <p className="text-gray-600 mb-6">
              Hitung bonus penjualan berdasarkan metode berjenjang (progressive). Semakin besar omset, semakin banyak layer bonus yang didapat.
            </p>

            {/* Tier Structure Reference */}
            <div className="mb-8 p-4 bg-green-50 rounded-lg border border-green-200">
              <h3 className="font-semibold text-lg mb-3">📋 Struktur Tier Bonus</h3>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                <div className="surface-card p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 1</p>
                  <p className="font-bold text-green-600">10%</p>
                  <p className="text-xs text-gray-500">0 - 200rb</p>
                </div>
                <div className="surface-card p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 2</p>
                  <p className="font-bold text-green-600">12%</p>
                  <p className="text-xs text-gray-500">200rb - 350rb</p>
                </div>
                <div className="surface-card p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 3</p>
                  <p className="font-bold text-green-600">15%</p>
                  <p className="text-xs text-gray-500">350rb - 500rb</p>
                </div>
                <div className="surface-card p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 4</p>
                  <p className="font-bold text-green-600">20%</p>
                  <p className="text-xs text-gray-500">500rb+</p>
                </div>
              </div>
            </div>
          </div>

          {/* Bonus Calculator Component */}
          <BonusCalculator showBreakdown={true} />
        </div>
      )}
    </div>
  );
}
