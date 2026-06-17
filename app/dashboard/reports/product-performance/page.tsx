import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';
import { supabaseServer } from '@/lib/supabaseServer';
import PeriodSelector from '../components/PeriodSelector.client';
import ProductPerformanceChartServer from '../components/Charts/ProductPerformanceChart.server';

interface ProductData {
  product: string;
  sold: number;
  revenue: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

async function getProductAggregated(startIso: string, endIso: string) {
  try {
    const rpc = await supabaseServer.rpc('reports_product_performance', { start_ts: startIso, end_ts: endIso, limit_count: 10 });
    if (!rpc.error && Array.isArray(rpc.data)) return rpc.data;

    const res = await supabaseServer
      .from('sale_items')
      .select(`
        quantity,
        price,
        products(id, name),
        sales(created_at)
      `)
      .gte('sales.created_at', startIso)
      .lte('sales.created_at', endIso);

    if (res.error) return [];
    const items = res.data || [];
    const map: Record<string, { sold: number; revenue: number }> = {};
    for (const it of items) {
      const prod = Array.isArray(it.products) ? it.products[0] : it.products;
      const name = prod?.name || 'Unknown';
      const qty = Number(it.quantity || 0);
      const rev = Number(it.price || 0) * qty;
      if (!map[name]) map[name] = { sold: 0, revenue: 0 };
      map[name].sold += qty;
      map[name].revenue += rev;
    }

    const out = Object.entries(map)
      .map(([product, v]) => ({ product, sold: v.sold, revenue: v.revenue }))
      .sort((a, b) => b.revenue - a.revenue)
      .slice(0, 10);

    return out;
  } catch (err) {
    console.error('server aggregation error', err);
    return [];
  }
}

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

  let raw: any[] = [];
  let apiUrl = '';
  try {
    apiUrl = `/api/reports/product-performance?start=${encodeURIComponent(startDate.toISOString())}&end=${encodeURIComponent(endDate.toISOString())}`;
    const apiRes = await fetch(apiUrl, { cache: 'no-store' });
    if (apiRes.ok) {
      const body = await apiRes.json();
      raw = Array.isArray(body?.data) ? body.data : Array.isArray(body) ? body : [];
    } else {
      raw = await getProductAggregated(startDate.toISOString(), endDate.toISOString());
    }
  } catch (e) {
    raw = await getProductAggregated(startDate.toISOString(), endDate.toISOString());
  }

  const chartArray: ProductData[] = raw.map((r: any) => ({ product: r.product, sold: Number(r.sold || 0), revenue: Number(r.revenue || 0) }));

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
        <div className="mt-3 text-sm text-gray-500">
          <div>Debug: start = {startDate.toISOString()}</div>
          <div>Debug: end = {endDate.toISOString()}</div>
          <div>Debug: api = {apiUrl}</div>
          <div>Debug: rows = {raw.length}</div>
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
          <p className="text-sm text-gray-500 mt-1">Per unit sold</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-6">
          <h3 className="text-lg font-semibold text-gray-700">Total Sold</h3>
          <p className="text-2xl font-bold text-orange-600 mt-2">{stats.totalSold}</p>
          <p className="text-sm text-gray-500 mt-1">Total units</p>
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
