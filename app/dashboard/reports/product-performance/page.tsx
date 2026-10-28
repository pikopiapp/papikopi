import { endOfMonth, endOfWeek, startOfYear, startOfMonth, startOfWeek, subDays } from 'date-fns';
import { resolveReportRange, isYmd } from '@/lib/reports/sales-agg';
import { loadProductPerformance } from '@/lib/reports/product-performance';
import { formatDateOnlyInJakarta } from '@/lib/helpers/business-day';
import PeriodSelector from '../components/PeriodSelector.client';
import ProductPerformanceChartServer from '../components/Charts/ProductPerformanceChart.server';

interface ProductData {
  product: string;
  sold: number;
  revenue: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom' | 'day' | 'week' | 'month' | 'last7';

function formatCurrency(amount: number): string {
  return new Intl.NumberFormat('id-ID', {
    style: 'currency',
    currency: 'IDR',
    minimumFractionDigits: 0,
    maximumFractionDigits: 0,
  }).format(amount);
}

export default async function ProductPerformanceReport({ searchParams }: { searchParams?: { period?: string; start?: string; end?: string } }) {
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
      startDate = startOfWeek(today);
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

  // Aggregate server-side; a relative fetch to our own API throws inside a server
  // component, and the old fallback filtered on an embedded column (no effect) then
  // aggregated the first 1,000 sale_items of all time.
  let raw: { product: string; sold: number; revenue: number }[] = [];
  const range = resolveReportRange(startYmd, endYmd);
  if (range) {
    try {
      raw = await loadProductPerformance(range.startIso, range.endIso);
    } catch (err) {
      console.error('Product aggregation error', err);
    }
  }

  const chartArray: ProductData[] = raw.map((r) => ({ product: r.product, sold: Number(r.sold || 0), revenue: Number(r.revenue || 0) }));

  const totalSold = chartArray.reduce((sum, p) => sum + p.sold, 0);
  const totalRevenue = chartArray.reduce((sum, p) => sum + p.revenue, 0);
  const avgRevenue = totalSold > 0 ? totalRevenue / totalSold : 0;
  const top = chartArray[0] || { product: 'N/A', sold: 0 };

  const stats = { topProduct: top.product, topProductSold: top.sold, avgRevenue, totalSold };

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Product Performance</h1>
        <p className="text-gray-600">Analisis performa produk dengan periode fleksibel</p>
      </div>

      <div className="surface-card rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Pilih Periode</h2>
        <div className="mt-2">
          <PeriodSelector initialPeriod={period} initialStart={params.start} initialEnd={params.end} />
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Top Product</h3>
          <p className="text-2xl font-bold text-blue-600 mt-2">{stats.topProduct}</p>
          <p className="text-sm text-gray-500 mt-1">{stats.topProductSold} units sold</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Avg Revenue/Item</h3>
          <p className="text-2xl font-bold text-green-600 mt-2">{formatCurrency(stats.avgRevenue)}</p>
          <p className="text-sm text-gray-500 mt-1">Per unit sold (Top 10)</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sold</h3>
          <p className="text-2xl font-bold text-orange-600 mt-2">{stats.totalSold}</p>
          <p className="text-sm text-gray-500 mt-1">Units in Top 10 products</p>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-xl font-bold text-gray-800 mb-4">Sales by Product (Top 10)</h2>
        {chartArray.length > 0 ? (
          <ProductPerformanceChartServer data={chartArray} formatCurrency={formatCurrency} />
        ) : (
          <div className="text-center py-8 text-gray-500">
            <p>Belum ada data produk untuk periode terpilih</p>
          </div>
        )}
      </div>
    </div>
  );
}
