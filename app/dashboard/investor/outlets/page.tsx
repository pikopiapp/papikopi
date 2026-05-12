'use client';

import { useEffect, useState } from 'react';
import { supabase } from '@/lib/supabase';
import { useAuthStore } from '@/lib/store/auth';
import { TrendingUp, DollarSign, Users2 } from 'lucide-react';

interface OutletDetail {
  outlet_id: string;
  outlet_name: string;
  investment_amount: number;
  margin_percentage: number;
  start_date: string;
  status: 'active' | 'completed' | 'suspended';
  outlet_revenue: number;
  outlet_profit: number;
  investor_share: number;
  transaction_count: number;
}

export default function InvestorOutlets() {
  const { user } = useAuthStore();
  const [outlets, setOutlets] = useState<OutletDetail[]>([]);
  const [loading, setLoading] = useState(true);
  const [filter, setFilter] = useState<'all' | 'active' | 'completed' | 'suspended'>('all');

  useEffect(() => {
    fetchOutlets();
  }, []);

  const fetchOutlets = async () => {
    setLoading(true);

    try {
      // Fetch all investor assignments
      const { data: assignments } = await supabase
        .from('investor_assignments')
        .select('*');

      if (!assignments || assignments.length === 0) {
        setOutlets([]);
        setLoading(false);
        return;
      }

      const outletIds = assignments.map((a) => a.outlet_id);

      // Fetch outlets
      const { data: outletData } = await supabase
        .from('outlets')
        .select('id, name')
        .in('id', outletIds);

      // Fetch sales data for each outlet
      const { data: salesData } = await supabase
        .from('sales')
        .select('outlet_id, total_amount, hpp_total, profit')
        .in('outlet_id', outletIds);

      // Calculate metrics per outlet
      const outletMetrics: { [key: string]: any } = {};
      salesData?.forEach((sale) => {
        if (!outletMetrics[sale.outlet_id]) {
          outletMetrics[sale.outlet_id] = {
            revenue: 0,
            profit: 0,
            count: 0,
          };
        }
        outletMetrics[sale.outlet_id].revenue += sale.total_amount || 0;
        outletMetrics[sale.outlet_id].profit += sale.profit || 0;
        outletMetrics[sale.outlet_id].count += 1;
      });

      // Build outlet details
      const enhancedOutlets: OutletDetail[] = assignments.map((assignment) => {
        const outlet = outletData?.find((o) => o.id === assignment.outlet_id);
        const metrics = outletMetrics[assignment.outlet_id] || { revenue: 0, profit: 0, count: 0 };
        const investorShare = (metrics.profit * assignment.margin_percentage) / 100;

        return {
          outlet_id: assignment.outlet_id,
          outlet_name: outlet?.name || 'Unknown',
          investment_amount: assignment.investment_amount,
          margin_percentage: assignment.margin_percentage,
          start_date: assignment.start_date,
          status: assignment.status,
          outlet_revenue: metrics.revenue,
          outlet_profit: metrics.profit,
          investor_share: investorShare,
          transaction_count: metrics.count,
        };
      });

      // Sort by status (active first)
      enhancedOutlets.sort((a, b) => {
        const statusOrder = { active: 0, completed: 1, suspended: 2 };
        return statusOrder[a.status] - statusOrder[b.status];
      });

      setOutlets(enhancedOutlets);
    } catch (error) {
      console.error('Error fetching outlets:', error);
    } finally {
      setLoading(false);
    }
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'active':
        return 'bg-green-100 text-green-800';
      case 'completed':
        return 'bg-blue-100 text-blue-800';
      case 'suspended':
        return 'bg-red-100 text-red-800';
      default:
        return 'bg-gray-100 text-gray-800';
    }
  };

  const filteredOutlets = outlets.filter((outlet) => (filter === 'all' ? true : outlet.status === filter));

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-[#F59E0B] mx-auto mb-4"></div>
          <p className="text-gray-600">Loading outlets...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div>
        <h1 className="text-3xl font-bold text-[#1F4E5F]">My Investment Outlets</h1>
        <p className="text-gray-600 mt-2">View performance of outlets you invested in</p>
      </div>

      {/* Filter Tabs */}
      <div className="flex gap-3 flex-wrap">
        {['all', 'active', 'completed', 'suspended'].map((status) => (
          <button
            key={status}
            onClick={() => setFilter(status as any)}
            className={`px-4 py-2 rounded-lg font-medium transition-all ${
              filter === status
                ? 'bg-[#F59E0B] text-white'
                : 'bg-white text-gray-700 border border-gray-200 hover:border-gray-300'
            }`}
          >
            {status.charAt(0).toUpperCase() + status.slice(1)} ({outlets.filter((o) => o.status === status).length})
          </button>
        ))}
      </div>

      {/* Outlets Grid */}
      {filteredOutlets.length > 0 ? (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredOutlets.map((outlet) => (
            <div key={outlet.outlet_id} className="bg-white rounded-xl shadow-sm border border-gray-100 p-6 hover:shadow-md transition-shadow">
              {/* Header with name and status */}
              <div className="flex items-start justify-between mb-4">
                <div>
                  <h3 className="text-lg font-semibold text-[#1F4E5F]">{outlet.outlet_name}</h3>
                  <p className="text-sm text-gray-500 mt-1">
                    Since {new Date(outlet.start_date).toLocaleDateString('id-ID', { year: 'numeric', month: 'long', day: 'numeric' })}
                  </p>
                </div>
                <span className={`px-3 py-1 rounded-full text-xs font-medium ${getStatusColor(outlet.status)}`}>
                  {outlet.status.charAt(0).toUpperCase() + outlet.status.slice(1)}
                </span>
              </div>

              {/* Investment Info */}
              <div className="space-y-3 mb-4 pb-4 border-b border-gray-100">
                <div className="flex items-center justify-between">
                  <p className="text-sm text-gray-600">Investment</p>
                  <p className="font-semibold text-gray-900">Rp {outlet.investment_amount.toLocaleString('id-ID')}</p>
                </div>
                <div className="flex items-center justify-between">
                  <p className="text-sm text-gray-600">Margin %</p>
                  <p className="font-semibold text-gray-900">{outlet.margin_percentage}%</p>
                </div>
              </div>

              {/* Performance Metrics */}
              <div className="space-y-3">
                <div>
                  <p className="text-xs text-gray-500 uppercase tracking-wide">Outlet Revenue</p>
                  <p className="text-xl font-bold text-[#1F4E5F] mt-1">
                    Rp {Math.round(outlet.outlet_revenue).toLocaleString('id-ID')}
                  </p>
                </div>

                <div>
                  <p className="text-xs text-gray-500 uppercase tracking-wide">Outlet Profit</p>
                  <p className="text-lg font-semibold text-gray-700 mt-1">
                    Rp {Math.round(outlet.outlet_profit).toLocaleString('id-ID')}
                  </p>
                </div>

                <div className="bg-green-50 rounded-lg p-3">
                  <p className="text-xs text-gray-600">Your Profit Share</p>
                  <p className="text-2xl font-bold text-green-600 mt-1">
                    Rp {Math.round(outlet.investor_share).toLocaleString('id-ID')}
                  </p>
                </div>

                <div className="flex items-center gap-2 text-sm text-gray-600">
                  <Users2 size={16} />
                  <span>{outlet.transaction_count} transactions</span>
                </div>
              </div>
            </div>
          ))}
        </div>
      ) : (
        <div className="bg-white rounded-xl shadow-sm border border-gray-100 p-12 text-center">
          <DollarSign size={48} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-lg font-semibold text-gray-900 mb-2">No {filter !== 'all' ? filter : ''} outlets found</h3>
          <p className="text-gray-600">You don't have any investments yet. Contact the admin to set up investments.</p>
        </div>
      )}
    </div>
  );
}
