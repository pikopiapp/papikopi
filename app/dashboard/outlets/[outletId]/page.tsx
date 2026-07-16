
'use client';

import { useEffect, useState, useCallback } from 'react';
import { parseTimestampAsJakarta, formatTimestampInJakarta, formatTimestampFromUTC } from '@/lib/helpers/business-day';
import { useParams, useRouter, useSearchParams } from 'next/navigation';
import { typeLabel } from '@/lib/utils/outletTypes';
import { Building2, ArrowLeft, DollarSign, TrendingUp, Package, Calendar, User, CreditCard, Flame } from 'lucide-react';

interface Outlet {
  id: string;
  name: string;
  type: string;
  address: string | null;
  created_at: string;
}

interface Barista {
  id: string;
  name: string;
  email: string;
}

interface OutletDetails {
  outlet: Outlet;
  assigned_barista: Barista | null;
  sales_summary: {
    total_revenue: number;
    total_profit: number;
    total_bonus: number;
    total_hpp: number;
    total_transactions: number;
    today_revenue: number;
    today_transactions: number;
    total_cups_sold: number;
    cash_revenue: number;
    qris_revenue: number;
  };
  product_sales: Array<{
    product_id: string;
    product_name: string;
    quantity: number;
    revenue: number;
  }>;
  product_batches: Array<{
    product_id: string;
    product_name: string;
    quantity: number;
    batch_code: string;
    production_date: string;
    expired_date: string;
  }>;
  recent_sales: Array<{
    id: string;
    total_amount: number;
    payment_method: string;
    created_at: string;
  }>;
}

export default function OutletDetailPage() {
  const params = useParams();
  const router = useRouter();
  const searchParams = useSearchParams();
  const outletId = params.outletId as string;
  const [details, setDetails] = useState<OutletDetails | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchDetails = useCallback(async () => {
    try {
      setLoading(true);
      setError(null);
      const selectedDate = searchParams.get('date') || new Date().toISOString();
      const res = await fetch(`/api/outlets/${outletId}/details?limit=100&date=${encodeURIComponent(selectedDate)}`);
      if (!res.ok) throw new Error('Failed to fetch details');
      const data = await res.json();
      setDetails(data);
    } catch (err) {
      console.error('Failed to fetch details:', err);
      setError('Failed to load outlet details');
    } finally {
      setLoading(false);
    }
  }, [outletId]);

  useEffect(() => {
    if (outletId) {
      const t = setTimeout(() => void fetchDetails(), 0);
      return () => clearTimeout(t);
    }
  }, [outletId, fetchDetails]);

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center min-h-[60vh]">
        <div className="text-center">
          <div className="relative">
            <Building2 size={64} className="text-amber-600 opacity-20 animate-pulse" />
            <div className="absolute inset-0 flex items-center justify-center">
              <div className="w-8 h-8 border-4 border-amber-600 border-t-transparent rounded-full animate-spin" />
            </div>
          </div>
          <p className="text-gray-500 mt-6">Loading details...</p>
        </div>
      </div>
    );
  }

  if (error || !details) {
    return (
      <div className="p-6">
        <div className="bg-red-50 border border-red-200 text-red-700 px-6 py-4 rounded-2xl mb-4">
          <p>{error || 'Failed to load details'}</p>
        </div>
        <button
          onClick={() => router.push('/dashboard/outlets')}
          className="flex items-center gap-2 text-amber-600 hover:text-amber-700 font-medium"
        >
          <ArrowLeft size={20} />
          Back to Outlets
        </button>
      </div>
    );
  }

  const totalCupsSold = Number(details.sales_summary.total_cups_sold || 0);

  return (
    <div className="p-6 space-y-6 max-w-6xl mx-auto">
      {/* Header Card */}
<div className="bg-linear-to-r from-[#1F4E5F] via-[#2C6E7F] to-[#1F4E5F] rounded-3xl p-6 text-white shadow-xl">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-4">
            <button
              onClick={() => router.push('/dashboard/outlets')}
              className="p-3 bg-white/20 hover:bg-white/30 rounded-xl transition-colors"
            >
              <ArrowLeft size={24} className="text-white" />
            </button>
            <div>
              <div className="flex items-center gap-4">
                <div className="flex h-11 w-11 items-center justify-center rounded-2xl bg-white/15">
                  <Building2 size={20} className="text-white" />
                </div>
                <div>
                  <div className="flex flex-wrap items-center gap-3">
                    <h1 className="text-3xl font-bold">{details.outlet.name}</h1>
                    <span className="rounded-full bg-white/15 px-3 py-1 text-xs uppercase tracking-[0.22em] text-white/90">
                      {typeLabel(details.outlet.type)}
                    </span>
                  </div>
                  <div className="mt-2 flex gap-2 text-sm text-white/80 max-w-2xl">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" className="lucide lucide-map-pin text-amber-200 shrink-0 mt-0.5" aria-hidden="true">
                      <path d="M20 10c0 4.993-5.539 10.193-7.399 11.799a1 1 0 0 1-1.202 0C9.539 20.193 4 14.993 4 10a8 8 0 0 1 16 0"></path>
                      <circle cx="12" cy="10" r="3"></circle>
                    </svg>
                    <p className="line-clamp-2">{details.outlet.address || 'Alamat belum ditambahkan'}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          {details.assigned_barista && (
            <div className="bg-white/20 backdrop-blur px-5 py-3 rounded-xl flex items-center gap-3">
              <User size={20} className="text-white/80" />
              <div>
                <p className="text-xs text-white/60">Barista</p>
                <p className="font-semibold">{details.assigned_barista.name}</p>
              </div>
            </div>
          )}
        </div>
      </div>

      {/* Sales Summary Cards */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
<div className="bg-linear-to-br from-[#1F4E5F] to-[#2C6E7F] rounded-2xl p-5 text-white shadow-lg hover:shadow-xl transition-shadow">
          <DollarSign size={24} className="text-white/80 mb-2" />
          <p className="text-white/60 text-sm">Total Revenue</p>
          <p className="text-2xl font-bold">{details.sales_summary.total_revenue.toLocaleString('id-ID')}</p>
        </div>
        <div className="bg-linear-to-br from-[#2C6E7F] to-[#1F4E5F] rounded-2xl p-5 text-white shadow-lg hover:shadow-xl transition-shadow">
          <Flame size={24} className="text-white/80 mb-2" />
          <p className="text-white/60 text-sm">Today&apos;s Revenue</p>
          <p className="text-2xl font-bold">{details.sales_summary.today_revenue.toLocaleString('id-ID')}</p>
        </div>
        <div className="bg-linear-to-br from-[#163944] to-[#1F4E5F] rounded-2xl p-5 text-white shadow-lg hover:shadow-xl transition-shadow">
          <TrendingUp size={24} className="text-white/80 mb-2" />
          <p className="text-white/60 text-sm">Total Profit</p>
          <p className="text-2xl font-bold">{details.sales_summary.total_profit.toLocaleString('id-ID')}</p>
        </div>
        <div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] rounded-2xl p-5 text-white shadow-lg hover:shadow-xl transition-shadow">
          <DollarSign size={24} className="text-white/80 mb-2" />
          <p className="text-white/60 text-sm">Total Bonus</p>
          <p className="text-2xl font-bold">{details.sales_summary.total_bonus.toLocaleString('id-ID')}</p>
        </div>
      </div>

      <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-2xl p-5 shadow-lg">
          <p className="text-gray-500 text-sm">Transactions</p>
          <p className="text-3xl font-bold text-gray-800">{details.sales_summary.total_transactions}</p>
        </div>
        <div className="bg-white rounded-2xl p-5 shadow-lg">
          <p className="text-gray-500 text-sm">Today&apos;s Transactions</p>
          <p className="text-3xl font-bold text-gray-800">{details.sales_summary.today_transactions}</p>
        </div>
        <div className="bg-white rounded-2xl p-5 shadow-lg">
          <p className="text-gray-500 text-sm">Cups Sold</p>
          <p className="text-3xl font-bold text-gray-800">{totalCupsSold.toLocaleString('id-ID')}</p>
        </div>
        <div className="bg-white rounded-2xl p-5 shadow-lg">
          <p className="text-gray-500 text-sm">Avg per Transaction</p>
          <p className="text-xl font-bold text-gray-800">
            {details.sales_summary.total_transactions > 0 
              ? (details.sales_summary.total_revenue / details.sales_summary.total_transactions).toLocaleString('id-ID')
              : 0}
          </p>
        </div>
      </div>

      {/* Available Products */}
      {details.product_batches && details.product_batches.length > 0 && (
        <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
<div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] px-6 py-4">
            <h2 className="text-lg font-semibold text-white flex items-center gap-2">
              <Package size={20} />
              Available Products
            </h2>
          </div>
          <div className="p-6">
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
              {details.product_batches.map((batch, idx) => (
                <div key={idx} className="bg-blue-50 hover:bg-blue-100 p-4 rounded-xl transition-colors">
                  <div className="flex justify-between items-start">
                    <div>
                      <p className="font-semibold text-gray-800">{batch.product_name}</p>
                      <p className="text-xs text-gray-500">Batch: {batch.batch_code}</p>
                      {batch.production_date && (
                        <p className="text-xs text-gray-400">
                          Prod: {new Date(batch.production_date).toLocaleDateString('id-ID')}
                        </p>
                      )}
                    </div>
                    <div className="text-right bg-white px-3 py-2 rounded-lg">
                      <p className="text-2xl font-bold text-amber-600">{batch.quantity}</p>
                      <p className="text-xs text-gray-500">units</p>
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* Top Selling Products */}
      {details.product_sales && details.product_sales.length > 0 && (
        <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
<div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] px-6 py-4">
            <h2 className="text-lg font-semibold text-white flex items-center gap-2">
              <TrendingUp size={20} />
              Top Selling Products
            </h2>
          </div>
          <div className="p-6 space-y-3">
            {details.product_sales.slice(0, 10).map((sale, idx) => (
              <div key={idx} className="flex items-center justify-between p-4 bg-gray-50 hover:bg-gray-100 rounded-xl transition-colors">
                <div className="flex items-center gap-4">
                  <div className={`w-10 h-10 rounded-full flex items-center justify-center font-bold ${
                    idx === 0 ? 'bg-yellow-400 text-yellow-800' :
                    idx === 1 ? 'bg-gray-300 text-gray-700' :
                    idx === 2 ? 'bg-amber-600 text-white' :
                    'bg-gray-200 text-gray-600'
                  }`}>
                    {idx + 1}
                  </div>
                  <div>
                    <p className="font-semibold text-gray-800">{sale.product_name}</p>
                    <p className="text-sm text-gray-500">{sale.quantity} cups sold</p>
                  </div>
                </div>
                <p className="text-xl font-bold text-green-600">
                  Rp {sale.revenue.toLocaleString('id-ID')}
                </p>
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Payment Methods */}
      <div className="grid grid-cols-2 gap-4">
        <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
<div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] px-6 py-4">
            <h2 className="text-lg font-semibold text-white flex items-center gap-2">
              <CreditCard size={20} />
              Cash
            </h2>
          </div>
          <div className="p-6">
            <p className="text-3xl font-bold text-gray-800">
              Rp {details.sales_summary.cash_revenue.toLocaleString('id-ID')}
            </p>
          </div>
        </div>
        <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
          <div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] px-6 py-4">
            <h2 className="text-lg font-semibold text-white flex items-center gap-2">
              <CreditCard size={20} />
              QRIS
            </h2>
          </div>
          <div className="p-6">
            <p className="text-3xl font-bold text-gray-800">
              Rp {details.sales_summary.qris_revenue.toLocaleString('id-ID')}
            </p>
          </div>
        </div>
      </div>

      {/* Recent Transactions */}
      {details.recent_sales && details.recent_sales.length > 0 && (
        <div className="bg-white rounded-2xl shadow-lg overflow-hidden">
<div className="bg-linear-to-r from-[#F59E0B] to-[#FFB703] px-6 py-4">
            <h2 className="text-lg font-semibold text-white flex items-center gap-2">
              <Calendar size={20} />
              Recent Transactions
            </h2>
          </div>
          <div className="p-6 space-y-3">
            {details.recent_sales.slice(0, 10).map((sale, idx) => {
              // Interpret stored timestamps as UTC and display in Asia/Jakarta
              const formatted = formatTimestampFromUTC(sale.created_at, { dateStyle: 'short', timeStyle: 'short' });

              return (
                <div key={idx} className="flex items-center justify-between p-4 bg-gray-50 rounded-xl">
                  <div>
                    <p className="text-xl font-bold text-gray-800">
                      Rp {Number(sale.total_amount).toLocaleString('id-ID')}
                    </p>
                    <p className="text-sm text-gray-500">{formatted}</p>
                  </div>
                  <span className={`px-4 py-2 rounded-xl text-sm font-medium ${
                    sale.payment_method === 'cash' 
                      ? 'bg-green-100 text-green-700' 
                      : 'bg-blue-100 text-blue-700'
                  }`}>
                    {sale.payment_method.toUpperCase()}
                  </span>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Empty State */}
      {(!details.product_batches || details.product_batches.length === 0) && 
       (!details.product_sales || details.product_sales.length === 0) && (
        <div className="bg-white rounded-2xl shadow-lg p-12 text-center">
          <Package size={64} className="mx-auto text-gray-300 mb-4" />
          <h3 className="text-xl font-semibold text-gray-600 mb-2">No Data Yet</h3>
          <p className="text-gray-500">Products and sales will appear here once transactions are made.</p>
        </div>
      )}
    </div>
  );
}
