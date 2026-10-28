import { AlertCircle } from 'lucide-react';
import { supabaseServer } from '@/lib/supabaseServer';
import { formatDateOnlyInJakarta, formatTimestampInJakarta } from '@/lib/helpers/business-day';
import { isYmd } from '@/lib/reports/sales-agg';
import PeriodSelector from '../components/PeriodSelector.client';

const MAX_DAILY_DAYS = 62;

interface ReportParams {
  period?: string;
  start?: string;
  end?: string;
}

interface OutletStockRow {
  outlet_id: string;
  outlet_name: string;
  allocated_units: number | string;
  sold_units: number | string;
  remaining_units: number | string;
  product_count: number | string;
  last_allocated_at: string | null;
}

interface DailyRow {
  stock_date: string;
  outlet_id: string;
  outlet_name: string;
  remaining_cum: number | string;
}

function outletNumber(name: string): number {
  return parseInt(name.match(/\d+/)?.[0] || '999', 10);
}

function formatDate(value: string | null): string {
  if (!value) return '-';
  return formatTimestampInJakarta(value, {
    day: '2-digit',
    month: 'short',
    year: 'numeric',
  });
}

function formatShortDate(ymd: string): string {
  return `${ymd.slice(8, 10)}/${ymd.slice(5, 7)}`;
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

function spanDays(startYmd: string, endYmd: string): number {
  return Math.round(
    (new Date(`${endYmd}T00:00:00Z`).getTime() - new Date(`${startYmd}T00:00:00Z`).getTime()) / 86400000
  ) + 1;
}

export default async function OutletStockReport({
  searchParams,
}: {
  searchParams?: ReportParams | Promise<ReportParams>;
}) {
  const params: ReportParams =
    searchParams instanceof Promise ? (await searchParams) || {} : (searchParams as ReportParams) || {};

  const todayYmd = formatDateOnlyInJakarta(new Date());
  const startYmd = isYmd(params.start) ? params.start : `${todayYmd.slice(0, 7)}-01`;
  const endYmd = isYmd(params.end) ? params.end : todayYmd;
  const rangeDays = spanDays(startYmd, endYmd);

  // Server-side on purpose: reading showcase_allocations straight from the browser capped
  // the result at PostgREST's 1,000 rows (11,470 exist) and never subtracted sales.
  const summaryRes = await supabaseServer.rpc('showcase_stock_by_outlet');
  const dailyRes =
    rangeDays > 0 && rangeDays <= MAX_DAILY_DAYS
      ? await supabaseServer.rpc('showcase_stock_daily_by_outlet', { p_start: startYmd, p_end: endYmd })
      : null;

  const rows: OutletStockRow[] = Array.isArray(summaryRes.data) ? (summaryRes.data as OutletStockRow[]) : [];
  const sorted = [...rows].sort((a, b) => outletNumber(a.outlet_name) - outletNumber(b.outlet_name));

  const totals = sorted.reduce(
    (acc, row) => ({
      allocated: acc.allocated + Number(row.allocated_units ?? 0),
      sold: acc.sold + Number(row.sold_units ?? 0),
      remaining: acc.remaining + Number(row.remaining_units ?? 0),
    }),
    { allocated: 0, sold: 0, remaining: 0 }
  );

  const dailyRows: DailyRow[] = Array.isArray(dailyRes?.data) ? (dailyRes!.data as DailyRow[]) : [];
  const dates = [...new Set(dailyRows.map((r) => r.stock_date))].sort();

  const byOutlet = new Map<string, { name: string; cells: Map<string, number> }>();
  for (const row of dailyRows) {
    let entry = byOutlet.get(row.outlet_id);
    if (!entry) {
      entry = { name: row.outlet_name, cells: new Map() };
      byOutlet.set(row.outlet_id, entry);
    }
    entry.cells.set(row.stock_date, Number(row.remaining_cum ?? 0));
  }
  const dailyMatrix = [...byOutlet.entries()]
    .map(([outlet_id, entry]) => ({ outlet_id, name: entry.name, cells: entry.cells }))
    .sort((a, b) => outletNumber(a.name) - outletNumber(b.name));

  const dailyTotals = dates.map((d) =>
    dailyMatrix.reduce((sum, row) => sum + (row.cells.get(d) ?? 0), 0)
  );

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Stok Outlet</h1>
        <p className="text-gray-600">
          Sisa stok per outlet = unit terkirim − unit terjual (kumulatif sejak Mei 2026)
        </p>
      </div>

      {summaryRes.error && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-red-500 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Data stok belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>showcase_stock_by_outlet</code> belum ada di database. Jalankan
              migrasi <code>supabase/migrations/0010_showcase_stock_by_outlet.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{summaryRes.error.message}</p>
          </div>
        </div>
      )}

      {!summaryRes.error && (
        <div className="surface-card rounded-lg shadow-md overflow-hidden">
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Sisa Stok</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Produk</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Terkirim</th>
                <th className="px-6 py-3 text-right text-sm font-semibold text-gray-800">Terjual</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Alokasi Terakhir</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {sorted.length === 0 ? (
                <tr>
                  <td colSpan={6} className="px-6 py-4 text-center text-gray-500">
                    No data available
                  </td>
                </tr>
              ) : (
                sorted.map((outlet) => {
                  const remaining = Number(outlet.remaining_units ?? 0);
                  return (
                    <tr key={outlet.outlet_id} className="hover:bg-gray-50">
                      <td className="px-6 py-4 font-semibold text-gray-900">{outlet.outlet_name}</td>
                      <td
                        className={`px-6 py-4 text-right font-semibold ${
                          remaining < 0 ? 'text-red-600' : 'text-gray-900'
                        }`}
                      >
                        {remaining.toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.product_count ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.allocated_units ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-right text-gray-700">
                        {Number(outlet.sold_units ?? 0).toLocaleString('id-ID')}
                      </td>
                      <td className="px-6 py-4 text-sm text-gray-600">{formatDate(outlet.last_allocated_at)}</td>
                    </tr>
                  );
                })
              )}
            </tbody>
            {sorted.length > 0 && (
              <tfoot className="bg-gray-50 border-t-2">
                <tr>
                  <td className="px-6 py-4 font-bold text-gray-900">Total ({sorted.length} outlet)</td>
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.remaining.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4" />
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.allocated.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4 text-right font-bold text-gray-900">
                    {totals.sold.toLocaleString('id-ID')}
                  </td>
                  <td className="px-6 py-4" />
                </tr>
              </tfoot>
            )}
          </table>
        </div>
      )}

      <div className="surface-card rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-1">Stok Kumulatif Harian</h2>
        <p className="text-sm text-gray-600 mb-3">
          Angka tiap kolom = sisa stok kumulatif sampai akhir hari tersebut, bukan pergerakan hari itu.
        </p>
        <p className="text-sm text-gray-700 mb-2">{formatRangeLabel(startYmd, endYmd)}</p>
        <PeriodSelector initialPeriod={params.period || 'month'} initialStart={startYmd} initialEnd={endYmd} />
      </div>

      {rangeDays <= 0 && (
        <div className="surface-card rounded-lg shadow-md p-6 text-gray-600">
          Rentang tanggal tidak valid — tanggal akhir lebih awal dari tanggal mulai.
        </div>
      )}

      {rangeDays > MAX_DAILY_DAYS && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-amber-500 text-amber-800">
          Rentang {rangeDays} hari terlalu panjang untuk tabel harian. Pilih maksimal {MAX_DAILY_DAYS} hari.
        </div>
      )}

      {dailyRes?.error && (
        <div className="surface-card rounded-lg shadow-md p-6 border-l-4 border-red-500 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Tabel harian belum bisa dibaca</p>
            <p className="text-red-700 text-sm">
              Fungsi <code>showcase_stock_daily_by_outlet</code> belum ada di database. Jalankan
              migrasi <code>supabase/migrations/0011_showcase_stock_daily_by_outlet.sql</code>.
            </p>
            <p className="text-red-700 text-xs mt-1">{dailyRes.error.message}</p>
          </div>
        </div>
      )}

      {!dailyRes?.error && dailyMatrix.length > 0 && (
        <div className="surface-card rounded-lg shadow-md overflow-hidden">
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="bg-gray-100 border-b">
                <tr>
                  <th className="px-4 py-3 text-left font-semibold text-gray-800 sticky left-0 bg-gray-100">Outlet</th>
                  {dates.map((d) => (
                    <th key={d} className="px-3 py-3 text-right font-semibold text-gray-700 whitespace-nowrap">
                      {formatShortDate(d)}
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody className="divide-y">
                {dailyMatrix.map((row) => (
                  <tr key={row.outlet_id} className="hover:bg-gray-50">
                    <td className="px-4 py-2 font-medium text-gray-900 sticky left-0 bg-white">{row.name}</td>
                    {dates.map((d) => {
                      const value = row.cells.get(d) ?? 0;
                      return (
                        <td
                          key={d}
                          className={`px-3 py-2 text-right tabular-nums ${
                            value < 0 ? 'text-red-600' : 'text-gray-700'
                          }`}
                        >
                          {value.toLocaleString('id-ID')}
                        </td>
                      );
                    })}
                  </tr>
                ))}
              </tbody>
              <tfoot className="bg-gray-50 border-t-2">
                <tr>
                  <td className="px-4 py-3 font-bold text-gray-900 sticky left-0 bg-gray-50">Total</td>
                  {dates.map((d, idx) => (
                    <td key={d} className="px-3 py-3 text-right font-bold text-gray-900 tabular-nums">
                      {dailyTotals[idx].toLocaleString('id-ID')}
                    </td>
                  ))}
                </tr>
              </tfoot>
            </table>
          </div>
        </div>
      )}
    </div>
  );
}
