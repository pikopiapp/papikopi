'use client';

import { useCallback, useEffect, useMemo, useState } from 'react';
import { AlertCircle, Loader2 } from 'lucide-react';
import { parseTimestampAsJakarta, parseDateOnlyAsJakarta, formatDateOnlyInJakarta, getDateBoundaryInJakarta } from '@/lib/helpers/business-day';
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
  sale_items?: SalesItem[];
}

interface Outlet {
  id: string;
  name: string;
}

interface Barista {
  id: string;
  name: string;
  outlet_id: string;
}

const getSaleItems = (sale: Sale) => sale.items || sale.sale_items || [];

export default function TransactionsPage() {
  const router = useRouter();
  const [sales, setSales] = useState<Sale[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [baristaMap, setBaristaMap] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedDate, setSelectedDate] = useState<Date>(new Date());
  const [sortOrder, setSortOrder] = useState<'default' | 'highest' | 'lowest'>('default');
  const [sortPeriod, setSortPeriod] = useState<'harian' | 'mingguan' | 'bulanan'>('harian');

  const selectedBusinessDayLabel = useMemo(() => formatDateOnlyInJakarta(selectedDate), [selectedDate]);
  const selectedBusinessDay = useMemo(() => parseDateOnlyAsJakarta(selectedBusinessDayLabel), [selectedBusinessDayLabel]);
  const selectedDateRangeStart = useMemo(() => getDateBoundaryInJakarta(selectedBusinessDayLabel, false), [selectedBusinessDayLabel]);
  const selectedDateRangeEnd = useMemo(() => getDateBoundaryInJakarta(selectedBusinessDayLabel, true), [selectedBusinessDayLabel]);
  const selectedMonthStartLabel = useMemo(() => {
    const monthStart = new Date(selectedBusinessDay.getFullYear(), selectedBusinessDay.getMonth(), 1);
    return formatDateOnlyInJakarta(monthStart);
  }, [selectedBusinessDay]);
  const selectedMonthRangeStart = useMemo(() => getDateBoundaryInJakarta(selectedMonthStartLabel, false), [selectedMonthStartLabel]);
  const selectedWeekStartLabel = useMemo(() => {
    const weekStart = new Date(selectedBusinessDay);
    const day = weekStart.getDay();
    const diffToMonday = (day + 6) % 7;
    weekStart.setDate(weekStart.getDate() - diffToMonday);
    return formatDateOnlyInJakarta(weekStart);
  }, [selectedBusinessDay]);
  const selectedWeekRangeStart = useMemo(() => getDateBoundaryInJakarta(selectedWeekStartLabel, false), [selectedWeekStartLabel]);

  const fetchSales = useCallback(async () => {
    try {
      setLoading(true);
      setError(null);

      // Fetch all outlets
      const outletsRes = await fetch('/api/outlets');
      if (outletsRes.ok) {
        const outletsData = await outletsRes.json();
        setOutlets(Array.isArray(outletsData) ? outletsData : []);
      }

      // Fetch baristas (to map outlet_id -> barista name)
      try {
        const baristasRes = await fetch('/api/staff?role=barista');
        if (baristasRes.ok) {
          const baristasData = await baristasRes.json();
          const map: Record<string, string> = {};
          (Array.isArray(baristasData) ? baristasData : []).forEach((b: Barista) => {
            if (b.outlet_id) map[b.outlet_id] = b.name;
          });
          setBaristaMap(map);
        }
      } catch (e) {
        console.error('Failed to fetch baristas for transactions page', e);
      }

      const res = await fetch(
        `/api/sales/by-outlet?since=${encodeURIComponent(selectedMonthRangeStart.toISOString())}&until=${encodeURIComponent(selectedDateRangeEnd.toISOString())}&include_items=1`
      );
      if (!res.ok) throw new Error('Failed to fetch sales');

      const responseData = await res.json();
      const salesData = Array.isArray(responseData)
        ? responseData
        : Array.isArray((responseData as { sales?: Sale[] })?.sales)
          ? (responseData as { sales?: Sale[] }).sales!
          : [];

      setSales(salesData);
    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'Error fetching sales';
      setError(errorMessage);
    } finally {
      setLoading(false);
    }
  }, [selectedMonthRangeStart, selectedDateRangeEnd]);

  useEffect(() => {
    void fetchSales();
  }, [fetchSales]);

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
    units_today?: number;
    units_week?: number;
    units_month?: number;
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
  sales.forEach((sale) => {
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
    // Update barista name from latest sale (or from joined users)
    if (sale.barista_name) {
      outletGroups[sale.outlet_id].barista_name = sale.barista_name;
    } else if (sale.barista_id) {
      // fallback: show barista_id when name not available
      outletGroups[sale.outlet_id].barista_name = sale.barista_id;
    }
    outletGroups[sale.outlet_id].transactions.push(sale);
    outletGroups[sale.outlet_id].total_sales += sale.total_amount;
    outletGroups[sale.outlet_id].total_hpp += sale.hpp_total;
    outletGroups[sale.outlet_id].total_bonus += sale.bonus_amount;
    outletGroups[sale.outlet_id].total_profit += sale.profit;
    outletGroups[sale.outlet_id].transaction_count += 1;
  });

  // Compute omset and unit totals per outlet for selected business day/week/month using business-day boundaries
  const totalsMap: Record<string, { today: number; week: number; month: number; units_today: number; units_week: number; units_month: number }> = {};
  Object.keys(outletGroups).forEach((id) => {
    totalsMap[id] = { today: 0, week: 0, month: 0, units_today: 0, units_week: 0, units_month: 0 };
  });

  const businessWeekEndRange = selectedDateRangeEnd;
  const businessMonthEndRange = selectedDateRangeEnd;

  // Use ALL sales, not just filtered
  sales.forEach((sale) => {
    // Parse sale timestamp as Jakarta instant (handles naive strings and microseconds)
    const sDate = parseTimestampAsJakarta(sale.created_at);
    const oid = sale.outlet_id;
    const saleItems = getSaleItems(sale);
    const unitCount = saleItems.reduce((sum, item) => sum + (Number(item.quantity) || 0), 0);

    if (!totalsMap[oid]) {
      totalsMap[oid] = { today: 0, week: 0, month: 0, units_today: 0, units_week: 0, units_month: 0 };
    }

    if (sDate.getTime() >= selectedDateRangeStart.getTime() && sDate.getTime() <= selectedDateRangeEnd.getTime()) {
      totalsMap[oid].today += Number(sale.total_amount || 0);
      totalsMap[oid].units_today += unitCount;
    }
    if (sDate.getTime() >= selectedWeekRangeStart.getTime() && sDate.getTime() <= businessWeekEndRange.getTime()) {
      totalsMap[oid].week += Number(sale.total_amount || 0);
      totalsMap[oid].units_week += unitCount;
    }
    if (sDate.getTime() >= selectedMonthRangeStart.getTime() && sDate.getTime() <= businessMonthEndRange.getTime()) {
      totalsMap[oid].month += Number(sale.total_amount || 0);
      totalsMap[oid].units_month += unitCount;
    }
  });

  // Attach totals to outlet groups
  Object.values(outletGroups).forEach((og) => {
    const t = totalsMap[og.outlet_id] || { today: 0, week: 0, month: 0, units_today: 0, units_week: 0, units_month: 0 };
    og.omset_today = t.today;
    og.omset_week = t.week;
    og.omset_month = t.month;
    og.units_today = t.units_today;
    og.units_week = t.units_week;
    og.units_month = t.units_month;
    // attach barista name if available from baristaMap
    if (!og.barista_name) og.barista_name = baristaMap[og.outlet_id] || '';
  });

  // Get omset value based on selected period
  const getOmsetByPeriod = (outlet: any): number => {
    if (sortPeriod === 'harian') return outlet.omset_today || 0;
    if (sortPeriod === 'mingguan') return outlet.omset_week || 0;
    if (sortPeriod === 'bulanan') return outlet.omset_month || 0;
    return outlet.omset_today || 0;
  };

  // Show all outlets (including those with zero transactions) per user request
  const visibleOutletGroups = Object.values(outletGroups);
  const outletOrderIndex = new Map(outlets.map((outlet, index) => [outlet.id, index]));

  // Rank outlets by daily omset on the selected date so badge 1/2/3 always follows the highest-performing outlets.
  const rankedByOmset = [...visibleOutletGroups]
    .map((outlet) => ({
      outletId: outlet.outlet_id,
      value: outlet.omset_today || 0,
      transactionCount: outlet.transaction_count || 0,
      outletName: outlet.outlet_name || '',
    }))
    .sort((a, b) => {
      if (b.value !== a.value) return b.value - a.value;
      if (b.transactionCount !== a.transactionCount) return b.transactionCount - a.transactionCount;
      return a.outletName.localeCompare(b.outletName);
    })
    .map((item, index) => ({ ...item, rank: index }));

  const rankMap = new Map(rankedByOmset.map((item) => [item.outletId, item.rank]));

  const getTopBadge = (outletId: string) => {
    const rank = rankMap.get(outletId);
    if (rank == null || rank >= 3) return null;
    return String(rank + 1);
  };
  const totalOutlets = visibleOutletGroups.length;

  // Function to get header background and text color based on rank
  const getGradientStyle = (outletId: string): { background: string; textClass: string } => {
    const rank = rankMap.get(outletId) ?? totalOutlets - 1;
    const darkGreen = '#065f46';

    // Map top 3 to green shades and ensure readable text:
    // rank 0..2 -> white text (high contrast)
    // others -> gray text in light mode, medium gray in dark mode
    if (rank === 0) {
      return { background: `linear-gradient(90deg, ${darkGreen} 0%, ${darkGreen} 100%)`, textClass: 'text-white' };
    }
    if (rank === 1) {
      return { background: `linear-gradient(90deg, rgba(6,95,70,0.6) 0%, rgba(6,95,70,0.2) 100%)`, textClass: 'text-white' };
    }
    if (rank === 2) {
      return { background: `linear-gradient(90deg, rgba(6,95,70,0.3) 0%, rgba(6,95,70,0.1) 100%)`, textClass: 'text-white' };
    }

    // Force white text for non-top3 as well to guarantee readability against dark bg
    return { background: '#374151', textClass: 'text-white' };
  };

  // Calculate min/max for heatmap coloring (based on omset_today)
  const sortedOutlets = [...visibleOutletGroups].sort((a, b) => {
    if (sortOrder === 'highest') {
      const order = getOmsetByPeriod(b) - getOmsetByPeriod(a);
      if (order !== 0) return order;
      const countOrder = b.transaction_count - a.transaction_count;
      if (countOrder !== 0) return countOrder;
      return a.outlet_name.localeCompare(b.outlet_name);
    } else if (sortOrder === 'lowest') {
      const order = getOmsetByPeriod(a) - getOmsetByPeriod(b);
      if (order !== 0) return order;
      const countOrder = a.transaction_count - b.transaction_count;
      if (countOrder !== 0) return countOrder;
      return a.outlet_name.localeCompare(b.outlet_name);
    } else {
      return outletOrderIndex.get(a.outlet_id)! - outletOrderIndex.get(b.outlet_id)!;
    }
  });

  const omsetTodayValues = sortedOutlets.map(o => o.omset_today || 0).filter(v => v > 0);
  const minOmset = Math.min(...omsetTodayValues, 0);
  const maxOmset = Math.max(...omsetTodayValues, 1);

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
      <div className="flex flex-col gap-2">
        <div className="max-w-xs">
          <DatePicker selectedDate={selectedDate} onDateChange={setSelectedDate} />
        </div>
        <p className="text-xs text-gray-500">
          Omset hari ini dihitung berdasarkan tanggal yang dipilih: 00:00&nbsp;sampai&nbsp;23:59 WIB.
        </p>
      </div>

      <div className="flex items-center gap-3 flex-wrap">
        {/* Sort Buttons */}
        <div className="flex flex-col gap-2">
          <div className="flex gap-2">
            <button
              type="button"
              onClick={() => setSortOrder('default')}
              aria-pressed={sortOrder === 'default'}
              className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
                sortOrder === 'default'
                  ? 'bg-blue-600 text-white'
                  : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
              }`}
            >
              Default
            </button>
            <button
              type="button"
              onClick={() => setSortOrder('highest')}
              aria-pressed={sortOrder === 'highest'}
              className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
                sortOrder === 'highest'
                  ? 'bg-blue-600 text-white'
                  : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
              }`}
            >
              Tertinggi
            </button>
            <button
              type="button"
              onClick={() => setSortOrder('lowest')}
              aria-pressed={sortOrder === 'lowest'}
              className={`px-3 py-2 rounded text-sm font-medium transition-colors ${
                sortOrder === 'lowest'
                  ? 'bg-blue-600 text-white'
                  : 'bg-gray-200 text-gray-700 hover:bg-gray-300'
              }`}
            >
              Terendah
            </button>
          </div>
          <p className="text-xs text-gray-500">
            Sort aktif: <span className="font-semibold text-gray-900">{sortOrder}</span>, periode: <span className="font-semibold text-gray-900">{sortPeriod}</span>
          </p>
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
            {sortedOutlets.map((outlet) => {
              const headerStyle = getGradientStyle(outlet.outlet_id);
              return (
              <div
                key={outlet.outlet_id}
                className="bg-white rounded-lg shadow border border-gray-200 overflow-hidden hover:shadow-md transition-all"
              >
                {/* Colored Header - Outlet Name & Barista */}
                <div
                  style={{ background: headerStyle.background }}
                  className={`p-4 ${headerStyle.textClass} relative`}
                >
                  {/* Trophy Badge */}
                  {getTopBadge(outlet.outlet_id) && (
                    <div className="absolute top-1 right-2 text-5xl font-bold text-white">
                      {getTopBadge(outlet.outlet_id)}
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
                    <span className="text-gray-600">Unit (cup) hari ini:</span>
                    <span className="float-right font-semibold text-gray-800">{(outlet.units_today || 0).toLocaleString('id-ID')} unit</span>
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
                    <p className="text-gray-600">Unit (cup) hari ini</p>
                    <p className="text-2xl font-bold text-gray-800">
                      {(outlet.units_today || 0).toLocaleString('id-ID')}
                      {' '}
                      unit (cup)
                    </p>
                  </div>
                </div>

                {/* Detail Button */}
                <div className="p-4">
                  <button
                    type="button"
                    onClick={() => outlet.transaction_count > 0 && router.push(`/dashboard/outlets/transactions/${outlet.outlet_id}?date=${selectedDate.getTime()}`)}
                    disabled={outlet.transaction_count === 0}
                    className={`w-full font-medium py-2 rounded transition-colors ${
                      outlet.transaction_count === 0
                        ? 'bg-gray-300 text-gray-500 cursor-not-allowed'
                        : 'bg-sky-200 text-sky-800 hover:bg-sky-300'
                    }`}
                  >
                    {outlet.transaction_count === 0 ? 'Belum ada data' : 'Lihat Detail'}
                  </button>
                </div>
              </div>
            );
          })}
          </div>
        </div>
      )}
    </div>
  );
}
