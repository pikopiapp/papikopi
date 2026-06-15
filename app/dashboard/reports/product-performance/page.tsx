'use client';

import { useEffect, useState } from 'react';
import { BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { supabase } from '@/lib/supabase';
import { format, startOfYear, startOfMonth, startOfWeek } from 'date-fns';

interface ProductData {
  product: string;
  sold: number;
  revenue: number;
}

type PeriodType = 'ytd' | 'mtd' | 'wtd' | 'custom';

export default function ProductPerformanceReport() {
  const [loading, setLoading] = useState(true);
  const [period, setPeriod] = useState<PeriodType>('mtd');
  const [chartData, setChartData] = useState<ProductData[]>([]);
  const [stats, setStats] = useState({
    topProduct: '',
    topProductSold: 0,
    avgRevenue: 0,
    totalSold: 0,
  });
  const [customStartDate, setCustomStartDate] = useState<string>(format(startOfMonth(new Date()), 'yyyy-MM-dd'));
  const [customEndDate, setCustomEndDate] = useState<string>(format(new Date(), 'yyyy-MM-dd'));

  useEffect(() => {
    fetchProductData();
  }, [period, customStartDate, customEndDate]);

  const getDateRange = () => {
    const now = new Date();
    let startDate: Date;
    let endDate: Date;

    switch (period) {
      case 'ytd':
        startDate = startOfYear(now);
        endDate = now;
        break;
      case 'mtd':
        startDate = startOfMonth(now);
        endDate = now;
        break;
      case 'wtd':
        startDate = startOfWeek(now);
        endDate = now;
        break;
      case 'custom':
        startDate = new Date(customStartDate);
        endDate = new Date(customEndDate);
        break;
      default:
        startDate = startOfMonth(now);
        endDate = now;
    }

    return { startDate, endDate };
  };

  const fetchProductData = async () => {
    try {
      setLoading(true);
      const { startDate, endDate } = getDateRange();

      // Fetch all sale items with product info and sales data
      const { data: saleItems, error } = await supabase
        .from('sale_items')
        .select(`
          id,
          quantity,
          price,
          products (
            id,
            name
          ),
          sales (
            created_at
          )
        `)
        .gte('sales.created_at', startDate.toISOString())
        .lte('sales.created_at', endDate.toISOString());

      if (error) throw error;

      // Group by product
      const productMap: { [key: string]: { name: string; sold: number; revenue: number } } = {};

      if (saleItems) {
        for (const item of saleItems) {
          const products = Array.isArray(item.products) ? item.products[0] : item.products;
          const productName = products?.name || 'Unknown';
          const quantity = item.quantity || 0;
          const revenue = (item.price || 0) * quantity;

          if (!productMap[productName]) {
            productMap[productName] = { name: productName, sold: 0, revenue: 0 };
          }

          productMap[productName].sold += quantity;
          productMap[productName].revenue += revenue;
        }
      }

      // Convert to array and sort by revenue
      const chartArray: ProductData[] = Object.values(productMap)
        .map(p => ({
          product: p.name,
          sold: p.sold,
          revenue: p.revenue,
        }))
        .sort((a, b) => b.revenue - a.revenue)
        .slice(0, 10); // Top 10 products

      setChartData(chartArray);

      // Calculate stats
      const totalSold = chartArray.reduce((sum, p) => sum + p.sold, 0);
      const totalRevenue = chartArray.reduce((sum, p) => sum + p.revenue, 0);
      const avgRevenue = totalSold > 0 ? totalRevenue / totalSold : 0;
      const topProduct = chartArray[0];

      setStats({
        topProduct: topProduct?.product || 'N/A',
        topProductSold: topProduct?.sold || 0,
        avgRevenue,
        totalSold,
      });

    } catch (err) {
      console.error('Error fetching product data:', err);
    } finally {
      setLoading(false);
    }
  };

  const formatCurrency = (amount: number): string => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(amount);
  };

  if (loading) {
    return (
      <div className="space-y-6">
        <div className="surface-card rounded-lg shadow-md p-6">
          <p className="text-gray-600">Loading product data...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="surface-card rounded-lg shadow-md p-6">
        <h1 className="text-3xl font-bold text-[#1F4E5F] mb-2">Product Performance</h1>
        <p className="text-gray-600">Analisis performa produk dengan periode fleksibel</p>
      </div>

      {/* Period Selector */}
      <div className="surface-card rounded-lg shadow-md p-6">
        <h2 className="text-lg font-semibold mb-4">Pilih Periode</h2>
        <div className="flex gap-2 mb-4 flex-wrap">
          <button
            onClick={() => setPeriod('ytd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'ytd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Year to Date
          </button>
          <button
            onClick={() => setPeriod('mtd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'mtd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Month to Date
          </button>
          <button
            onClick={() => setPeriod('wtd')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'wtd'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Week to Date
          </button>
          <button
            onClick={() => setPeriod('custom')}
            className={`px-4 py-2 rounded-lg font-medium transition ${
              period === 'custom'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
            }`}
          >
            Custom Range
          </button>
        </div>

        {/* Custom Date Picker */}
        {period === 'custom' && (
          <div className="flex gap-4 items-end">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Dari</label>
              <input
                type="date"
                value={customStartDate}
                onChange={(e) => setCustomStartDate(e.target.value)}
                className="border border-gray-300 rounded-lg px-3 py-2"
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Sampai</label>
              <input
                type="date"
                value={customEndDate}
                onChange={(e) => setCustomEndDate(e.target.value)}
                className="border border-gray-300 rounded-lg px-3 py-2"
              />
            </div>
          </div>
        )}
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
        {chartData.length > 0 ? (
          <ResponsiveContainer width="100%" height={400}>
            <BarChart data={chartData}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="product" angle={-45} textAnchor="end" height={80} />
              <YAxis yAxisId="left" label={{ value: 'Units Sold', angle: -90, position: 'insideLeft' }} />
              <YAxis 
                yAxisId="right" 
                orientation="right" 
                label={{ value: 'Revenue (Rp)', angle: 90, position: 'insideRight' }}
              />
              <Tooltip 
                formatter={(value) => typeof value === 'number' && value > 1000 
                  ? formatCurrency(value) 
                  : value}
                labelFormatter={(label) => `Product: ${label}`}
              />
              <Legend />
              <Bar yAxisId="left" dataKey="sold" fill="#8884d8" name="Units Sold" />
              <Bar yAxisId="right" dataKey="revenue" fill="#82ca9d" name="Revenue" />
            </BarChart>
          </ResponsiveContainer>
        ) : (
          <div className="text-center py-8 text-gray-500">
            <p>Belum ada data produk untuk periode terpilih</p>
          </div>
        )}
      </div>
    </div>
  );
}
