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

  useEffect(() => {
    fetchProfitHistory();
  }, [period, customStartDate, customEndDate]);

  const getDateRange = () => {
    const now = new Date();
    switch (period) {
      case 'daily':
        return { startDate: new Date(now.setDate(now.getDate() - 7)), endDate: new Date() };
      case 'weekly':
        return { startDate: new Date(now.setDate(now.getDate() - 30)), endDate: new Date() };
      case 'monthly':
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

      // Fetch all investor assignments
      const { data: assignments } = await supabase
        .from('investor_assignments')
        .select('*');

      if (!assignments || assignments.length === 0) {
        setProfitRecords([]);
        setLoading(false);
        return;
      }

      const outletIds = assignments.map((a) => a.outlet_id);

      // Fetch outlets
      const { data: outletData } = await supabase
        .from('outlets')
        .select('id, name')
        .in('id', outletIds);

      // Fetch sales in date range
      const { data: salesData } = await supabase
        .from('sales')
        .select('outlet_id, profit, created_at')
        .in('outlet_id', outletIds)
        .gte('created_at', startDate.toISOString())
        .lte('created_at', endDate.toISOString());

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

        groupedData[key].profit += sale.profit || 0;
        groupedData[key].count += 1;
      });

      // Build profit records with investor shares
      const records: ProfitRecord[] = Object.values(groupedData).map((record) => {
        const assignment = assignments.find((a) => a.outlet_id === record.outlet_id);
        const outlet = outletData?.find((o) => o.id === record.outlet_id);
        const investorShare = (record.profit * assignment!.margin_percentage) / 100;

        return {
          outlet_id: record.outlet_id,
          outlet_name: outlet?.name || 'Unknown',
          margin_percentage: assignment?.margin_percentage || 0,
          period_date: record.period_date,
          outlet_profit: record.profit,
          investor_share: investorShare,
          transaction_count: record.count,
        };
      });

      // Sort by period date (newest first)
      records.sort((a, b) => new Date(b.period_date).getTime() - new Date(a.period_date).getTime());

      setProfitRecords(records);
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
