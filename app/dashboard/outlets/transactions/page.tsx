'use client';

import { useEffect, useState } from 'react';
import { AlertCircle, Loader2, Trophy } from 'lucide-react';
import { parseTimestampAsJakarta, formatTimestampInJakarta, formatTimestampFromUTC, getBusinessDayRange, getBusinessDayDate } from '@/lib/helpers/business-day';
import { useRouter } from 'next/navigation';
import { DatePicker } from '@/app/components/DatePicker';

interface SalesItem {
  id: string;
  product_id: string;
  product_name: string;
  quantity: number;
  price: number;
  hpp: number;
}

interface Sale {
  id: string;
  outlet_id: string;
  outlet_name: string;
  barista_name: string;
  barista_id: string;
  total_amount: number;
  payment_method: string;
  hpp_total: number;
  bonus_amount: number;
  profit: number;
  created_at: string;
  items?: SalesItem[];
}

export default function TransactionsPage() {
  const router = useRouter();
  const [sales, setSales] = useState<Sale[]>([]);
  const [outlets, setOutlets] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedDate, setSelectedDate] = useState<Date>(new Date());
  const [sortOrder, setSortOrder] = useState<'default' | 'highest' | 'lowest'>('default');
  const [sortPeriod, setSortPeriod] = useState<'harian' | 'mingguan' | 'bulanan'>('harian');

  const fetchSales = async () => {
    try {
      setLoading(true);
      setError(null);

      // Fetch all outlets
      const outletsRes = await fetch('/api/outlets');
      if (outletsRes.ok) {
        const outletsData = await outletsRes.json();
        setOutlets(Array.isArray(outletsData) ? outletsData : []);
      }

      // Fetch sales
      const res = await fetch('/api/sales/by-outlet');
      if (!res.ok) throw new Error('Failed to fetch sales');

      const data = await res.json();
      const salesData = Array.isArray(data) ? data : [];
      
      if (salesData.length === 0) {
        try {
          await fetch('/api/sales/seed', { method: 'POST' });
          const resAfterSeed = await fetch('/api/sales/by-outlet');
          const seedData = await resAfterSeed.json();
          setSales(Array.isArray(seedData) ? seedData : []);
        } catch (seedErr) {
          console.log('Seed attempt - may already have data:', seedErr);
          setSales(salesData);
        }
      } else {
        setSales(salesData);
      }
    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'Error fetching sales';
      setError(errorMessage);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const init = async () => {
      await fetchSales();
    };
    void init();
  }, []);

  // Match `daily-summary` behaviour: filter by calendar day (server groups by yyyy-MM-dd)
  // Use local date string comparison to avoid business-day offset differences.
  // Fallback: use simple date part comparison
  const pad = (n: number) => String(n).padStart(2, '0');
  const formatLocalKey = (d: Date | string) => {
    const dt = typeof d === 'string' ? new Date(d) : d;
    return `${dt.getFullYear()}-${pad(dt.getMonth() + 1)}-${pad(dt.getDate())}`;
  };

  const selectedDateKey = formatLocalKey(selectedDate);

  const filteredSales = sales.filter((sale) => {
    const saleKey = formatLocalKey(sale.created_at);
    return saleKey === selectedDateKey;
  });

  // Group by outlet - initialize ALL outlets first
  interface OutletGroup {
    outlet_id: string;
    outlet_name: string;
    barista_name: string;
    transactions: Sale[];
    total_sales: number;
    total_hpp: number;
    total_bonus: number;
    total_profit: number;
    transaction_count: number;
    omset_today?: number;
    omset_week?: number;
    omset_month?: number;
  }

  const outletGroups: Record<string, OutletGroup> = {};
  
  // Initialize all outlets first (even if no sales)
  outlets.forEach((outlet) => {
    outletGroups[outlet.id] = {
      outlet_id: outlet.id,
      outlet_name: outlet.name,
      barista_name: '', // will be filled from sales data if available
      transactions: [],
      total_sales: 0,
      total_hpp: 0,
      total_bonus: 0,
      total_profit: 0,
      transaction_count: 0,
    };
  });

  // Add sales data to outlets
  filteredSales.forEach((sale) => {
    if (!outletGroups[sale.outlet_id]) {
      outletGroups[sale.outlet_id] = {
        outlet_id: sale.outlet_id,
        outlet_name: sale.outlet_name,
        barista_name: sale.barista_name,
        transactions: [],
        total_sales: 0,
        total_hpp: 0,
        total_bonus: 0,
        total_profit: 0,
        transaction_count: 0,
      };
    }
    // Update barista name from latest sale
    if (sale.barista_name) {
      outletGroups[sale.outlet_id].barista_name = sale.barista_name;
    }
    outletGroups[sale.outlet_id].transactions.push(sale);
    outletGroups[sale.outlet_id].total_sales += sale.total_amount;
    outletGroups[sale.outlet_id].total_hpp += sale.hpp_total;
    outletGroups[sale.outlet_id].total_bonus += sale.bonus_amount;
    outletGroups[sale.outlet_id].total_profit += sale.profit;
    outletGroups[sale.outlet_id].transaction_count += 1;
  });

  // Compute omset (totals) per outlet for selected day/week/month using ALL sales (not just filtered)
  const totalsMap: Record<string, { today: number; week: number; month: number }> = {};
  Object.keys(outletGroups).forEach((id) => {
    totalsMap[id] = { today: 0, week: 0, month: 0 };
  });

  // Compute local calendar ranges (start/end of day, week(Mon-Sun), month) based on selectedDate
  const ref = new Date(selectedDate.getFullYear(), selectedDate.getMonth(), selectedDate.getDate());
  const startOfDay = new Date(ref);
  startOfDay.setHours(0, 0, 0, 0);
  const endOfDay = new Date(ref);
  endOfDay.setHours(23, 59, 59, 999);

  // week start = Monday
  const day = ref.getDay(); // 0 (Sun) - 6 (Sat)
  const diffToMonday = (day + 6) % 7; // days to subtract to get Monday
  const monday = new Date(ref);
  monday.setDate(ref.getDate() - diffToMonday);
  const startOfWeek = new Date(monday);
  startOfWeek.setHours(0, 0, 0, 0);
  const endOfWeek = new Date(monday);
  endOfWeek.setDate(monday.getDate() + 6);
  endOfWeek.setHours(23, 59, 59, 999);

  // month: first day to last day
  const startOfMonth = new Date(ref.getFullYear(), ref.getMonth(), 1);
  startOfMonth.setHours(0, 0, 0, 0);
  const endOfMonth = new Date(ref.getFullYear(), ref.getMonth() + 1, 0);
  endOfMonth.setHours(23, 59, 59, 999);

  // Use ALL sales, not just filtered
  sales.forEach((sale) => {
    // Parse sale timestamp as Jakarta instant (handles naive strings and microseconds)
    const sDate = parseTimestampAsJakarta(sale.created_at);
    const oid = sale.outlet_id;
    if (!totalsMap[oid]) totalsMap[oid] = { today: 0, week: 0, month: 0 }; // Initialize if outlet not in map
    if (sDate.getTime() >= startOfDay.getTime() && sDate.getTime() <= endOfDay.getTime()) totalsMap[oid].today += Number(sale.total_amount || 0);
    if (sDate.getTime() >= startOfWeek.getTime() && sDate.getTime() <= endOfWeek.getTime()) totalsMap[oid].week += Number(sale.total_amount || 0);
    if (sDate.getTime() >= startOfMonth.getTime() && sDate.getTime() <= endOfMonth.getTime()) totalsMap[oid].month += Number(sale.total_amount || 0);
  });

  // Attach totals to outlet groups
  Object.values(outletGroups).forEach((og) => {
    const t = totalsMap[og.outlet_id] || { today: 0, week: 0, month: 0 };
    og.omset_today = t.today;
    og.omset_week = t.week;
    og.omset_month = t.month;
  });

  // Get omset value based on selected period
  const getOmsetByPeriod = (outlet: any): number => {
    if (sortPeriod === 'harian') return outlet.omset_today || 0;
    if (sortPeriod === 'mingguan') return outlet.omset_week || 0;
    if (sortPeriod === 'bulanan') return outlet.omset_month || 0;
    return outlet.omset_today || 0;
  };

  const sortedOutlets = Object.values(outletGroups).sort((a, b) => {
    if (sortOrder === 'highest') {
      return getOmsetByPeriod(b) - getOmsetByPeriod(a);
    } else if (sortOrder === 'lowest') {
      return getOmsetByPeriod(a) - getOmsetByPeriod(b);
    } else {
      // default: sort by outlet number (001, 002, 003...)
      const outletNumA = parseInt(a.outlet_name.match(/\d+$/)?.[0] || '0');
      const outletNumB = parseInt(b.outlet_name.match(/\d+$/)?.[0] || '0');
      return outletNumA - outletNumB;
    }
  });

  // Get top 3 outlets by omset based on selected period
  const top3Ids = new Set(
    Object.values(outletGroups)
      .sort((a, b) => getOmsetByPeriod(b) - getOmsetByPeriod(a))
      .slice(0, 3)
      .map(o => o.outlet_id)
  );

  const getTopBadge = (outletId: string, index: number) => {
    if (!top3Ids.has(outletId)) return null;
    const badges = ['🥇', '🥈', '🥉'];
    const topIndex = Array.from(top3Ids).indexOf(outletId);
    return badges[topIndex] || null;
  };

  // Create ranking map for gradient coloring
  const rankedByOmset = Object.values(outletGroups)
    .sort((a, b) => getOmsetByPeriod(b) - getOmsetByPeriod(a))
    .map((outlet, index) => ({ ...outlet, rank: index }));

  const rankMap = new Map(rankedByOmset.map(o => [o.outlet_id, o.rank]));
  const totalOutlets = Object.keys(outletGroups).length;

  // Function to get gradient background based on rank
  const getGradientStyle = (outletId: string): React.CSSProperties => {
    const rank = rankMap.get(outletId) ?? totalOutlets - 1;
    const percentile = totalOutlets > 1 ? rank / (totalOutlets - 1) : 0; // 0 = highest, 1 = lowest

    let bgColor = '';
    if (percentile <= 0.2) {
      // Top 20%: Dark blue
      bgColor = '#1e3a8a';
    } else if (percentile <= 0.4) {
      // 20-40%: Medium blue
      bgColor = '#3b82f6';
    } else if (percentile <= 0.6) {
      // 40-60%: Light blue to yellow
      const localPercentile = (percentile - 0.4) / 0.2;
      const r = Math.round(255 * localPercentile);
      const g = 200;
      const b = Math.round(50 * (1 - localPercentile));
      bgColor = `rgb(${r}, ${g}, ${b})`;
    } else if (percentile <= 0.8) {
      // 60-80%: Yellow to orange-red
      const localPercentile = (percentile - 0.6) / 0.2;
      const r = Math.round(255);
      const g = Math.round(200 * (1 - localPercentile));
      const b = 0;
      bgColor = `rgb(${r}, ${g}, ${b})`;
    } else {
      // 80-100%: Dark red
      bgColor = '#7f1d1d';
    }

    return {
      background: bgColor,
    };
  };

  // Calculate min/max for heatmap coloring (based on omset_today)
  const omsetTodayValues = sortedOutlets.map(o => o.omset_today || 0).filter(v => v > 0);
  const minOmset = Math.min(...omsetTodayValues, 0);
  const maxOmset = Math.max(...omsetTodayValues, 1);
  
  // Function to get heatmap color based on omset value
  const getHeatmapColor = (omset: number) => {
    if (maxOmset === minOmset) return 'bg-blue-900'; // all same
    
    const normalized = (omset - minOmset) / (maxOmset - minOmset); // 0 to 1
    
    if (normalized >= 0.66) {
      // High: dark blue
      return 'bg-blue-900';
    } else if (normalized >= 0.33) {
      // Medium: orange
      return 'bg-orange-500';
    } else {
      // Low: dark red
      return 'bg-red-900';
    }
  };

  if (loading) {
    return (
      <div className="flex justify-center py-12">
        <Loader2 className="animate-spin h-8 w-8" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Penjualan Per Outlet</h1>
        <p className="text-gray-600">Laporan penjualan harian outlet</p>
      </div>

      {/* Date Picker at Top */}
      <div className="flex items-center gap-3 flex-wrap">
        <div className="max-w-xs">
          <DatePicker onDateChange={setSelectedDate} />
        </div>

        {/* Sort Buttons */}
        <div className="flex gap-2">
          <button
            onClick={() => setSortOrder('default')}
            className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
              sortOrder === 'default'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
            }`}
          >
            Default
          </button>
          <button
            onClick={() => setSortOrder('highest')}
            className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
              sortOrder === 'highest'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
            }`}
          >
            Tertinggi
          </button>
          <button
            onClick={() => setSortOrder('lowest')}
            className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
              sortOrder === 'lowest'
                ? 'bg-blue-600 text-white'
                : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
            }`}
          >
            Terendah
          </button>
        </div>

        {/* Period Dropdown */}
        <select
          value={sortPeriod}
          onChange={(e) => setSortPeriod(e.target.value as 'harian' | 'mingguan' | 'bulanan')}
          className="px-3 py-2 rounded text-sm font-medium bg-white border border-gray-300 text-gray-700 hover:bg-gray-50 cursor-pointer"
        >
          <option value="harian">Harian</option>
          <option value="mingguan">Mingguan</option>
          <option value="bulanan">Bulanan</option>
        </select>
      </div>

      {/* Error Alert */}
      {error && (
        <div className="p-4 bg-red-100 border border-red-400 text-red-800 rounded flex items-center gap-2">
          <AlertCircle size={20} />
          {error}
        </div>
      )}

      {/* Sales Data */}
      {sortedOutlets.length === 0 ? (
        <div className="text-center py-12 text-gray-500">
          Belum ada outlet yang terdaftar
        </div>
      ) : (
        <div className="space-y-3">
          <p className="text-sm font-medium text-gray-600">
            {sortedOutlets.length} outlet {sortedOutlets.filter(o => (o.omset_today || 0) > 0).length > 0 ? `(${sortedOutlets.filter(o => (o.omset_today || 0) > 0).length} dengan penjualan)` : '(belum ada penjualan)'}
          </p>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {sortedOutlets.map((outlet) => (
              <div
                key={outlet.outlet_id}
                className="bg-white rounded-lg shadow border border-gray-200 overflow-hidden hover:shadow-md transition-all"
              >
                {/* Colored Header - Outlet Name & Barista */}
                <div
                  style={getGradientStyle(outlet.outlet_id)}
                  className="p-4 text-white relative"
                >
                  {/* Trophy Badge */}
                  {getTopBadge(outlet.outlet_id, 0) && (
                    <div className="absolute top-1 right-2 text-5xl">
                      {getTopBadge(outlet.outlet_id, 0)}
                    </div>
                  )}
                  <p className="font-bold text-lg truncate">
                    {outlet.outlet_name}
                  </p>
                  <p className="text-sm opacity-90">
                    {outlet.barista_name || '-'}
                  </p>
                </div>

                {/* Table-like Section - Transaction & Omset Data */}
                <div className="bg-white">
                  <div className="border-b border-gray-200 p-3 text-sm">
                    <span className="text-gray-600">Transaksi:</span>
                    <span className="float-right font-semibold text-gray-800">{outlet.transaction_count}</span>
                  </div>
                  <div className="border-b border-gray-200 p-3 text-sm">
                    <span className="text-gray-600">Omset hari ini:</span>
                    <span className="float-right font-semibold text-gray-800">Rp{Math.round(outlet.omset_today || 0).toLocaleString('id-ID')},-</span>
                  </div>
                  <div className="border-b border-gray-200 p-3 text-sm">
                    <span className="text-gray-600">Omset minggu ini:</span>
                    <span className="float-right font-semibold text-gray-800">Rp{Math.round(outlet.omset_week || 0).toLocaleString('id-ID')},-</span>
                  </div>
                  <div className="p-3 text-sm">
                    <span className="text-gray-600">Omset bulan ini:</span>
                    <span className="float-right font-semibold text-gray-800">Rp{Math.round(outlet.omset_month || 0).toLocaleString('id-ID')},-</span>
                  </div>
                </div>

                {/* Stats */}
                <div className="p-4 bg-gray-50 border-b border-gray-200">
                  <div className="space-y-2 text-sm">
                    <p className="text-gray-600">Total Produk Terjual</p>
                    <p className="text-2xl font-bold text-gray-800">
                      {outlet.transaction_count === 0 ? '-' : outlet.transactions.reduce((sum, t) => sum + (t.items?.length || 0), 0)} item
                    </p>
                  </div>
                </div>

                {/* Detail Button */}
                <div className="p-4">
                  <button
                    onClick={() => outlet.transaction_count > 0 && router.push(`/dashboard/outlets/transactions/${outlet.outlet_id}?date=${selectedDate.getTime()}`)}
                    disabled={outlet.transaction_count === 0}
                    className={`w-full font-medium py-2 rounded transition-colors ${
                      outlet.transaction_count === 0
                        ? 'bg-gray-300 text-gray-500 cursor-not-allowed'
                        : 'bg-blue-600 hover:bg-blue-700 text-white'
                    }`}
                  >
                    {outlet.transaction_count === 0 ? 'Belum ada data' : 'Lihat Detail'}
                  </button>
                </div>
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}
