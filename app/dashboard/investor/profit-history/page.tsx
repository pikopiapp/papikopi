'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { startOfMonth, startOfYear, startOfWeek, format } from 'date-fns';
import { id as idLocale } from 'date-fns/locale';
import { Calendar } from 'lucide-react';

interface ProfitRecord {
  outlet_id: string;
  outlet_name: string;
  margin_percentage: number;
  period_date: string;
  outlet_profit: number;
  investor_share: number;
  transaction_count: number;
}

type PeriodType = 'daily' | 'weekly' | 'monthly' | 'yearly';

export default function InvestorProfitHistory() {
  const { user } = useAuthStore();
  const [profitRecords, setProfitRecords] = useState<ProfitRecord[]>([]);
  const [loading, setLoading] = useState(true);
  const [period, setPeriod] = useState<PeriodType>('monthly');
  const [customStartDate, setCustomStartDate] = useState(new Date(new Date().setDate(new Date().getDate() - 30)).toISOString().split('T')[0]);
  const [customEndDate, setCustomEndDate] = useState(new Date().toISOString().split('T')[0]);
  const [outletsList, setOutletsList] = useState<{ id: string; name: string }[]>([]);
  const [selectedOutletId, setSelectedOutletId] = useState<string | ''>('');

  useEffect(() => {
    fetchProfitHistory();
  }, [period, customStartDate, customEndDate, selectedOutletId, outletsList]);

  useEffect(() => {
    // load all outlets for dropdown
    const loadOutlets = async () => {
      try {
        const { data } = await supabase.from('outlets').select('id, name').order('name');
        setOutletsList(Array.isArray(data) ? data : []);
      } catch (e) {
        console.error('failed loading outlets', e);
      }
    };
    void loadOutlets();
  }, []);

  const getDateRange = () => {
    const now = new Date();
    switch (period) {
      case 'daily':
        return { startDate: new Date(now.setDate(now.getDate() - 7)), endDate: new Date() };
      case 'weekly':
        return { startDate: new Date(now.setDate(now.getDate() - 30)), endDate: new Date() };
      case 'monthly':
        // show months-with-data (start of year to now) for Monthly view
        return { startDate: startOfYear(now), endDate: new Date() };
      case 'yearly':
        return { startDate: new Date(now.getFullYear() - 2, 0, 1), endDate: new Date() };
      default:
        return { startDate: new Date(customStartDate), endDate: new Date(customEndDate) };
    }
  };

  const fetchProfitHistory = async () => {
    setLoading(true);

    try {
      const { startDate, endDate } = getDateRange();

      // Fetch all investor assignments (used to get margin percentages)
      const { data: assignments } = await supabase.from('investor_assignments').select('*');
      const assignmentMap: Record<string, any> = {};
      (assignments || []).forEach((a: any) => (assignmentMap[a.outlet_id] = a));

      // determine which outlets to include: selected or all
      const outletIds = selectedOutletId ? [selectedOutletId] : (outletsList.length > 0 ? outletsList.map((o) => o.id) : Object.keys(assignmentMap));

      // Fetch outlets (names) for the chosen ids
      const { data: outletData } = await supabase.from('outlets').select('id, name').in('id', outletIds);

      // Fetch sales in date range via server API (uses service-role key) to ensure real data
      let salesData: any[] = [];
      const sinceIso = startDate.toISOString().split('.')[0] + 'Z';
      const aggregatedRows: any[] = [];
      let aggregatedMode = false;
      for (const oid of outletIds) {
        try {
          const q = `/api/sales/by-outlet?outlet_id=${encodeURIComponent(oid)}&since=${encodeURIComponent(sinceIso)}${period === 'monthly' ? '&group=monthly' : ''}`;
          const resp = await fetch(q);
          const json = await resp.json();
          const rows = Array.isArray(json?.sales) ? json.sales : [];
          // if server returned aggregated rows (period + outlet_profit + transactions), collect them
          if (rows.length > 0 && (rows[0].period || rows[0].period_date)) {
            aggregatedMode = true;
            rows.forEach((r: any) => {
              aggregatedRows.push({ outlet_id: oid, period: r.period || r.period_date, outlet_profit: Number(r.outlet_profit) || 0, transactions: Number(r.transactions) || 0 });
            });
            continue;
          }

          const filtered = rows.filter((r: any) => new Date(r.created_at) <= endDate);
          // coerce numeric fields and exclude refunds / zero-amount rows to match UI expectations
          const mapped = filtered.map((r: any) => ({
            outlet_id: r.outlet_id,
            profit: Number(r.profit) || 0,
            total_amount: Number(r.total_amount) || 0,
            created_at: r.created_at,
          }));
          const positive = mapped.filter((r: any) => r.total_amount > 0 && r.profit > 0);
          salesData.push(...positive);
        } catch (e) {
          console.error('error fetching sales for outlet', oid, e);
        }
      }

      // If server returned aggregated rows, build records directly from them
      if (aggregatedMode) {
        const records: ProfitRecord[] = aggregatedRows.map((r) => {
          const assignment = (assignments || []).find((a: any) => a.outlet_id === r.outlet_id);
          const outlet = outletData?.find((o: any) => o.id === r.outlet_id) || outletsList.find((o) => o.id === r.outlet_id);
          const margin = assignment?.margin_percentage || 0;
          const outletProfitNum = Number(r.outlet_profit) || 0;
          const investorShare = (outletProfitNum * margin) / 100;
          return {
            outlet_id: r.outlet_id,
            outlet_name: outlet?.name || 'Unknown',
            margin_percentage: margin,
            period_date: r.period,
            outlet_profit: outletProfitNum,
            investor_share: investorShare,
            transaction_count: Number(r.transactions) || 0,
          };
        });

        const nonEmpty = records.filter((r) => (Number(r.transaction_count) || 0) > 0 && (Number(r.outlet_profit) || 0) !== 0);
        nonEmpty.sort((a, b) => new Date(b.period_date).getTime() - new Date(a.period_date).getTime());
        setProfitRecords(nonEmpty);
        setLoading(false);
        return;
      }

      // Group sales by period and outlet
      const groupedData: { [key: string]: any } = {};

      salesData?.forEach((sale) => {
        const saleDate = new Date(sale.created_at);
        let periodKey: string;

        switch (period) {
          case 'daily':
            periodKey = format(saleDate, 'yyyy-MM-dd');
            break;
          case 'weekly':
            const weekStart = startOfWeek(saleDate);
            periodKey = format(weekStart, 'yyyy-MM-dd');
            break;
          case 'monthly':
            periodKey = format(saleDate, 'yyyy-MM');
            break;
          case 'yearly':
            periodKey = format(saleDate, 'yyyy');
            break;
          default:
            periodKey = format(saleDate, 'yyyy-MM-dd');
        }

        const key = `${periodKey}-${sale.outlet_id}`;

        if (!groupedData[key]) {
          groupedData[key] = {
            period_date: periodKey,
            outlet_id: sale.outlet_id,
            profit: 0,
            count: 0,
          };
        }

        groupedData[key].profit += Number(sale.profit) || 0;
        groupedData[key].count += 1;
      });

      // Build profit records with investor shares
      const records: ProfitRecord[] = Object.values(groupedData).map((record) => {
        const assignment = (assignments || []).find((a: any) => a.outlet_id === record.outlet_id);
        const outlet = outletData?.find((o: any) => o.id === record.outlet_id) || outletsList.find((o) => o.id === record.outlet_id);
        const margin = assignment?.margin_percentage || 0;
        const outletProfitNum = Number(record.profit) || 0;
        const investorShare = (outletProfitNum * margin) / 100;

        return {
          outlet_id: record.outlet_id,
          outlet_name: outlet?.name || 'Unknown',
          margin_percentage: margin,
          period_date: record.period_date,
          outlet_profit: outletProfitNum,
          investor_share: investorShare,
          transaction_count: record.count,
        };
      });

      // remove periods with no transactions or zero profit so they don't show in the table
      const nonEmpty = records.filter((r) => (Number(r.transaction_count) || 0) > 0 && (Number(r.outlet_profit) || 0) !== 0);

      // Sort by period date (newest first)
      nonEmpty.sort((a, b) => new Date(b.period_date).getTime() - new Date(a.period_date).getTime());

      setProfitRecords(nonEmpty);
    } catch (error) {
      console.error('Error fetching profit history:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatPeriodDate = (dateStr: string) => {
    const date = new Date(dateStr);
    switch (period) {
      case 'daily':
        return format(date, 'dd MMMM yyyy', { locale: idLocale });
      case 'weekly':
        return `Week of ${format(date, 'dd MMMM yyyy', { locale: idLocale })}`;
      case 'monthly':
        return format(date, 'MMMM yyyy', { locale: idLocale });
      case 'yearly':
        return dateStr;
      default:
        return dateStr;
    }
  };

  const totalProfit = profitRecords.reduce((sum, record) => sum + record.outlet_profit, 0);
  const totalShare = profitRecords.reduce((sum, record) => sum + record.investor_share, 0);
  const totalTransactions = profitRecords.reduce((sum, record) => sum + record.transaction_count, 0);

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading profit history...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">Profit History</h1>
        <p className="text-gray-600 mt-2">Track your profit sharing over time</p>
      </div>

      {/* Period Selector */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <div className="flex flex-wrap gap-3 items-center">
          <div className="mr-4">
            <label className="text-sm font-medium text-gray-700 mr-2">Outlet:</label>
            <select value={selectedOutletId ?? ''} onChange={(e) => setSelectedOutletId(e.target.value)} className="border rounded-md p-2">
              <option value="">All Outlets</option>
              {outletsList.map((o) => (
                <option key={o.id} value={o.id}>{o.name}</option>
              ))}
            </select>
          </div>
          <span className="text-sm font-medium text-gray-700">View by:</span>
          {['daily', 'weekly', 'monthly', 'yearly'].map((p) => (
            <button
              key={p}
              onClick={() => setPeriod(p as PeriodType)}
              className={`px-4 py-2 rounded-lg font-medium text-sm transition-all ${
                period === p
                  ? 'bg-[#F59E0B] text-white'
                  : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
              }`}
            >
              {p.charAt(0).toUpperCase() + p.slice(1)}
            </button>
          ))}
        </div>
      </div>

      {/* Summary Cards */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <p className="text-sm text-gray-600 mb-2">Total Outlet Profit</p>
          <p className="text-3xl font-bold text-[#1F4E5F]">Rp {Math.round(totalProfit).toLocaleString('id-ID')}</p>
          <p className="text-xs text-gray-500 mt-2">{profitRecords.length} periods</p>
        </div>

        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <p className="text-sm text-gray-600 mb-2">Your Total Share</p>
          <p className="text-3xl font-bold text-green-600">Rp {Math.round(totalShare).toLocaleString('id-ID')}</p>
          <p className="text-xs text-gray-500 mt-2">
            {totalProfit > 0 ? Math.round((totalShare / totalProfit) * 100) : 0}% average margin
          </p>
        </div>

        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
          <p className="text-sm text-gray-600 mb-2">Transactions</p>
          <p className="text-3xl font-bold text-[#1F4E5F]">{totalTransactions}</p>
          <p className="text-xs text-gray-500 mt-2">Across all outlets</p>
        </div>
      </div>

      {/* Profit History Table */}
      <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-6">
        <h3 className="text-lg font-semibold text-[#1F4E5F] mb-4">Detailed History</h3>
        {profitRecords.length > 0 ? (
          <div className="overflow-x-auto">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 border-b border-gray-200">
                <tr>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Period</th>
                  <th className="px-4 py-3 text-left font-semibold text-gray-700">Outlet</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Outlet Profit</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Margin %</th>
                  <th className="px-4 py-3 text-right font-semibold text-gray-700">Your Share</th>
                  <th className="px-4 py-3 text-center font-semibold text-gray-700">Transactions</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-200">
                {profitRecords.map((record, idx) => (
                  <tr key={idx} className="hover:bg-gray-50">
                    <td className="px-4 py-3 font-medium text-gray-900">{formatPeriodDate(record.period_date)}</td>
                    <td className="px-4 py-3 text-gray-700">{record.outlet_name}</td>
                    <td className="px-4 py-3 text-right text-gray-600">
                      Rp {Math.round(record.outlet_profit).toLocaleString('id-ID')}
                    </td>
                    <td className="px-4 py-3 text-right text-gray-600">{record.margin_percentage}%</td>
                    <td className="px-4 py-3 text-right font-semibold text-green-600">
                      Rp {Math.round(record.investor_share).toLocaleString('id-ID')}
                    </td>
                    <td className="px-4 py-3 text-center text-gray-700">{record.transaction_count}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : (
          <div className="flex items-center justify-center py-12 text-gray-500">
            <Calendar size={48} className="mr-4 text-gray-300" />
            <div>
              <p className="font-medium">No profit history found</p>
              <p className="text-sm">Your profit records will appear here as transactions are made.</p>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
