'use client';

import { useState, useEffect, useMemo } from 'react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';
import { Plus, Edit2, Trash2, TrendingUp, DollarSign, Calendar, Search, MoreHorizontal, Eye, X } from 'lucide-react';
import { getDateBoundaryInJakarta, formatDateOnlyInJakarta, parseTimestampAssumeUTC } from '@/lib/helpers/business-day';

interface Outlet {
  id: string;
  name: string;
}

interface User {
  id: string;
  email: string;
  name: string;
}

interface InvestorAssignment {
  id: string;
  investor_id: string;
  outlet_id: string;
  investor_name: string;
  outlet_name: string;
  investment_amount: number;
  margin_percentage: number;
  start_date: string;
  status: 'active' | 'completed' | 'suspended';
  outlet_revenue?: number;
  investor_share?: number;
}

interface FormData {
  investor_id: string;
  outlet_id: string;
  investment_amount: string;
  margin_percentage: string;
  start_date: string;
}

interface AssignmentRecord {
  id: string;
  investor_id: string;
  outlet_id: string;
  investment_amount: number;
  margin_percentage: number;
  start_date: string;
  status: 'active' | 'completed' | 'suspended';
}

interface SaleRecord {
  outlet_id: string;
  profit: number | null;
  created_at: string;
}

type SortKey = 'investment_amount' | 'outlet_revenue' | 'margin_percentage' | 'investor_share' | 'start_date';

function StatusBadge({ status }: { status: InvestorAssignment['status'] }) {
  const active = status === 'active';
  return (
    <span className={`inline-flex rounded-full px-2 py-1 text-xs font-medium ${active ? 'bg-green-50 text-green-700' : 'bg-gray-100 text-gray-600'}`}>
      {active ? 'Active' : 'Inactive'}
    </span>
  );
}

function SortableHeader({
  label,
  sortKey,
  currentKey,
  direction,
  onSort,
}: {
  label: string;
  sortKey: SortKey;
  currentKey: SortKey;
  direction: 'asc' | 'desc';
  onSort: (key: SortKey) => void;
}) {
  const active = sortKey === currentKey;
  return (
    <th aria-sort={active ? (direction === 'asc' ? 'ascending' : 'descending') : 'none'} className="whitespace-nowrap px-4 py-3 text-left font-medium">
      <button onClick={() => onSort(sortKey)} className="inline-flex items-center gap-1.5 hover:text-gray-900">
        {label}
        <span aria-hidden="true" className={active ? 'text-[#1F4E5F]' : 'text-gray-300'}>
          {active ? (direction === 'asc' ? '↑' : '↓') : '↕'}
        </span>
      </button>
    </th>
  );
}

function AssignmentActions({
  assignment,
  onView,
  onEdit,
  onDelete,
}: {
  assignment: InvestorAssignment;
  onView: (assignment: InvestorAssignment) => void;
  onEdit: (assignment: InvestorAssignment) => void;
  onDelete: (id: string) => void;
}) {
  return (
    <details className="group relative inline-block text-left">
      <summary aria-label={`Actions for ${assignment.investor_name}`} className="flex h-8 w-8 cursor-pointer list-none items-center justify-center rounded-md text-gray-500 hover:bg-gray-100 hover:text-gray-900 [&::-webkit-details-marker]:hidden">
        <MoreHorizontal size={18} />
      </summary>
      <div className="absolute right-0 z-20 mt-1 w-40 rounded-md border border-gray-200 bg-white py-1 shadow-lg">
        <button onClick={(event) => {
          event.currentTarget.closest('details')?.removeAttribute('open');
          onView(assignment);
        }} className="flex w-full items-center gap-2 px-3 py-2 text-left text-sm text-gray-700 hover:bg-gray-50">
          <Eye size={15} />
          View Detail
        </button>
        <button onClick={() => onEdit(assignment)} className="flex w-full items-center gap-2 px-3 py-2 text-left text-sm text-gray-700 hover:bg-gray-50">
          <Edit2 size={15} />
          Edit Assignment
        </button>
        <button onClick={() => onDelete(assignment.id)} className="flex w-full items-center gap-2 px-3 py-2 text-left text-sm text-red-600 hover:bg-red-50">
          <Trash2 size={15} />
          Delete
        </button>
      </div>
    </details>
  );
}

export default function InvestorManagementPage() {
  const [assignments, setAssignments] = useState<InvestorAssignment[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [investors, setInvestors] = useState<User[]>([]);
  const [loading, setLoading] = useState(true);
  const [loadError, setLoadError] = useState(false);
  const [monthlyProfit, setMonthlyProfit] = useState(0);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [detailAssignment, setDetailAssignment] = useState<InvestorAssignment | null>(null);
  const [selectedMonth, setSelectedMonth] = useState(() => formatDateOnlyInJakarta(new Date()).slice(0, 7));
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState('all');
  const [investorFilter, setInvestorFilter] = useState('all');
  const [outletFilter, setOutletFilter] = useState('all');
  const [sortKey, setSortKey] = useState<SortKey>('investor_share');
  const [sortDirection, setSortDirection] = useState<'asc' | 'desc'>('desc');
  const [formData, setFormData] = useState<FormData>({
    investor_id: '',
    outlet_id: '',
    investment_amount: '',
    margin_percentage: '30',
    start_date: format(new Date(), 'yyyy-MM-dd'),
  });

  useEffect(() => {
    void fetchData(selectedMonth);
  }, [selectedMonth]);

  async function fetchData(monthValue: string) {
    try {
      setLoading(true);
      setLoadError(false);

      // Fetch outlets
      const { data: outletData, error: outletError } = await supabase.from('outlets').select('id, name');
      if (outletError) throw outletError;
      setOutlets(outletData || []);

      // Fetch investors (users with role='investor')
      const { data: investorData, error: investorError } = await supabase
        .from('users')
        .select('id, email, name')
        .eq('role', 'investor');
      if (investorError) throw investorError;
      setInvestors(investorData || []);

      // Fetch investor assignments
      const { data: assignmentData, error: assignmentError } = await supabase
        .from('investor_assignments')
        .select('*')
        .order('created_at', { ascending: false });
      if (assignmentError) throw assignmentError;

      const enhanced: InvestorAssignment[] = ((assignmentData || []) as AssignmentRecord[]).map(assignment => {
        const investor = investorData?.find(i => i.id === assignment.investor_id);
        const outlet = outletData?.find(o => o.id === assignment.outlet_id);
        return {
          ...assignment,
          investor_name: investor?.name || 'Unknown',
          outlet_name: outlet?.name || 'Unknown',
        };
      });

      const monthStart = getDateBoundaryInJakarta(`${monthValue}-01`);
      const [year, month] = monthValue.split('-').map(Number);
      const nextMonthStart = getDateBoundaryInJakarta(
        formatDateOnlyInJakarta(new Date(Date.UTC(year, month, 1)))
      );

      const outletIds = Array.from(new Set(enhanced.map(assignment => assignment.outlet_id)));
      const salesData: SaleRecord[] = [];
      const pageSize = 1000;
      for (let offset = 0; outletIds.length > 0; offset += pageSize) {
        const { data: salesPage, error: salesError } = await supabase
          .from('sales')
          .select('outlet_id, profit, created_at')
          .in('outlet_id', outletIds)
          .gte('created_at', monthStart.toISOString())
          .lt('created_at', nextMonthStart.toISOString())
          .order('created_at', { ascending: true })
          .range(offset, offset + pageSize - 1);
        if (salesError) throw salesError;
        salesData.push(...((salesPage || []) as SaleRecord[]));
        if (!salesPage || salesPage.length < pageSize) break;
      }

      const profitByOutlet = new Map<string, number>();
      salesData.forEach((sale) => {
        profitByOutlet.set(
          sale.outlet_id,
          (profitByOutlet.get(sale.outlet_id) || 0) + (Number(sale.profit) || 0)
        );
      });
      setMonthlyProfit(Array.from(profitByOutlet.values()).reduce((sum, profit) => sum + profit, 0));

      const updatedAssignments = enhanced.map(assignment => {
        const assignmentStart = getDateBoundaryInJakarta(assignment.start_date).getTime();
        const monthlyProfit = salesData
          .filter(sale => (
            sale.outlet_id === assignment.outlet_id
            && parseTimestampAssumeUTC(sale.created_at).getTime() >= assignmentStart
          ))
          .reduce((sum, sale) => sum + (Number(sale.profit) || 0), 0);
        return {
          ...assignment,
          outlet_revenue: monthlyProfit,
          investor_share: (monthlyProfit * Number(assignment.margin_percentage || 0)) / 100,
        };
      });
      setAssignments(updatedAssignments);
    } catch (error) {
      console.error('Error fetching data:', error);
      setLoadError(true);
      setAssignments([]);
      setMonthlyProfit(0);
    } finally {
      setLoading(false);
    }
  }

  const handleAddAssignment = async () => {
    if (!formData.investor_id || !formData.outlet_id || !formData.investment_amount || !formData.margin_percentage) {
      alert('Please fill in all fields');
      return;
    }

    try {
      if (editingId) {
        // Update existing
        const { error } = await supabase
          .from('investor_assignments')
          .update({
            investor_id: formData.investor_id,
            outlet_id: formData.outlet_id,
            investment_amount: parseFloat(formData.investment_amount),
            margin_percentage: parseFloat(formData.margin_percentage),
            start_date: formData.start_date,
          })
          .eq('id', editingId);

        if (error) throw error;
      } else {
        // Create new
        const { error } = await supabase.from('investor_assignments').insert({
          investor_id: formData.investor_id,
          outlet_id: formData.outlet_id,
          investment_amount: parseFloat(formData.investment_amount),
          margin_percentage: parseFloat(formData.margin_percentage),
          start_date: formData.start_date,
          status: 'active',
        });

        if (error) throw error;
      }

      // Reset form and refresh
      setShowForm(false);
      setEditingId(null);
      setFormData({
        investor_id: '',
        outlet_id: '',
        investment_amount: '',
        margin_percentage: '30',
        start_date: format(new Date(), 'yyyy-MM-dd'),
      });
      await fetchData(selectedMonth);
    } catch (error) {
      console.error('Error saving assignment:', error);
      alert('Error saving assignment');
    }
  };

  const handleEditAssignment = (assignment: InvestorAssignment) => {
    setFormData({
      investor_id: assignment.investor_id,
      outlet_id: assignment.outlet_id,
      investment_amount: assignment.investment_amount.toString(),
      margin_percentage: assignment.margin_percentage.toString(),
      start_date: assignment.start_date,
    });
    setEditingId(assignment.id);
    setShowForm(true);
  };

  const handleDeleteAssignment = async (id: string) => {
    if (!confirm('Are you sure?')) return;
    try {
      const { error } = await supabase.from('investor_assignments').delete().eq('id', id);
      if (error) throw error;
      await fetchData(selectedMonth);
    } catch (error) {
      console.error('Error deleting assignment:', error);
      alert('Error deleting assignment');
    }
  };

  const formatCurrency = (value: number) => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
    }).format(value);
  };

  const totalInvestorShare = assignments.reduce((sum, assignment) => sum + (assignment.investor_share || 0), 0);
  const activeAssignments = assignments.filter((assignment) => assignment.status === 'active').length;
  const investorSharePercentage = monthlyProfit > 0 ? (totalInvestorShare / monthlyProfit) * 100 : 0;
  const monthLabel = new Date(`${selectedMonth}-01T00:00:00`).toLocaleDateString('id-ID', {
    month: 'long',
    year: 'numeric',
    timeZone: 'UTC',
  });

  const filteredAssignments = useMemo(() => {
    const query = searchQuery.trim().toLocaleLowerCase();
    const filtered = assignments.filter((assignment) => {
      const matchesSearch = !query
        || assignment.investor_name.toLocaleLowerCase().includes(query)
        || assignment.outlet_name.toLocaleLowerCase().includes(query)
        || assignment.outlet_id.toLocaleLowerCase().includes(query);
      const matchesStatus = statusFilter === 'all'
        || (statusFilter === 'active' ? assignment.status === 'active' : assignment.status !== 'active');
      return matchesSearch
        && matchesStatus
        && (investorFilter === 'all' || assignment.investor_id === investorFilter)
        && (outletFilter === 'all' || assignment.outlet_id === outletFilter);
    });

    return filtered.sort((first, second) => {
      const firstValue = sortKey === 'start_date'
        ? new Date(first.start_date).getTime()
        : Number(first[sortKey] || 0);
      const secondValue = sortKey === 'start_date'
        ? new Date(second.start_date).getTime()
        : Number(second[sortKey] || 0);
      return (firstValue - secondValue) * (sortDirection === 'asc' ? 1 : -1);
    });
  }, [assignments, investorFilter, outletFilter, searchQuery, sortDirection, sortKey, statusFilter]);

  const topPerformers = [...assignments]
    .sort((first, second) => (second.investor_share || 0) - (first.investor_share || 0))
    .filter((assignment) => (assignment.investor_share || 0) > 0)
    .slice(0, 5);

  const handleSort = (key: SortKey) => {
    if (sortKey === key) {
      setSortDirection((direction) => direction === 'asc' ? 'desc' : 'asc');
      return;
    }
    setSortKey(key);
    setSortDirection('desc');
  };
  return (
    <div className="space-y-6 pb-6">
      {/* Header */}
      <div className="rounded-lg border border-gray-200 bg-white p-5 md:p-6">
        <div className="flex flex-col gap-4 md:flex-row md:items-center md:justify-between">
          <div>
            <h1 className="mb-1 text-2xl font-semibold text-[#1F4E5F] md:text-3xl">Investor Management</h1>
            <p className="text-sm text-gray-600">Kelola investasi, pembagian profit, dan assignment investor</p>
          </div>
          <label className="flex flex-col gap-1 text-sm font-medium text-gray-700">
            Periode laporan
            <input
              type="month"
              value={selectedMonth}
              max={formatDateOnlyInJakarta(new Date()).slice(0, 7)}
              onChange={(event) => setSelectedMonth(event.target.value)}
              className="rounded-lg border border-gray-300 px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </label>
        </div>
        <p className="mt-4 border-t border-gray-100 pt-3 text-sm font-medium text-[#1F4E5F]">
          Ringkasan dan profit share untuk {monthLabel}
        </p>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 gap-3 sm:grid-cols-2 xl:grid-cols-4">
        <div className="rounded-lg border border-gray-200 bg-white p-4 md:p-5">
          <div className="flex items-center gap-2 text-sm font-medium text-gray-600">
            <DollarSign size={17} className="text-blue-600" />
            Total Investment
          </div>
          <p className="mt-3 text-xl font-semibold tracking-tight text-blue-700 md:text-2xl">
            {formatCurrency(assignments.reduce((sum, assignment) => sum + assignment.investment_amount, 0))}
          </p>
          <p className="mt-1 text-xs text-gray-500">{assignments.length} assignments</p>
        </div>

        <div className="rounded-lg border border-gray-200 bg-white p-4 md:p-5">
          <div className="flex items-center gap-2 text-sm font-medium text-gray-600">
            <TrendingUp size={17} className="text-green-700" />
            Monthly Profit
          </div>
          <p className="mt-3 text-xl font-semibold tracking-tight text-gray-900 md:text-2xl">
            {formatCurrency(monthlyProfit)}
          </p>
          <p className="mt-1 text-xs text-gray-500">Total profit outlet pada {monthLabel}</p>
        </div>

        <div className="rounded-lg border border-gray-200 bg-white p-4 md:p-5">
          <div className="flex items-center gap-2 text-sm font-medium text-gray-600">
            <TrendingUp size={17} className="text-green-700" />
            Investor Share
          </div>
          <p className="mt-3 text-xl font-semibold tracking-tight text-green-700 md:text-2xl">
            {formatCurrency(totalInvestorShare)}
          </p>
          <p className="mt-1 text-xs text-gray-500">{investorSharePercentage.toLocaleString('id-ID', { maximumFractionDigits: 1 })}% of total profit</p>
        </div>

        <div className="rounded-lg border border-gray-200 bg-white p-4 md:p-5">
          <div className="flex items-center gap-2 text-sm font-medium text-gray-600">
            <Calendar size={17} className="text-gray-500" />
            Active Assignments
          </div>
          <p className="mt-3 text-xl font-semibold tracking-tight text-gray-900 md:text-2xl">
            {activeAssignments} <span className="text-base font-normal text-gray-500">/ {assignments.length}</span>
          </p>
          <p className="mt-1 text-xs text-gray-500">{activeAssignments} aktif dari {assignments.length} assignments</p>
        </div>
      </div>

      {topPerformers.length > 0 && (
        <section className="rounded-lg border border-gray-200 bg-white p-4 md:p-5">
          <div className="mb-4 flex items-baseline justify-between gap-3">
            <div>
              <h2 className="font-semibold text-gray-900">Investor Performance</h2>
              <p className="mt-1 text-xs text-gray-500">{monthLabel} · berdasarkan Investor Share</p>
            </div>
          </div>
          <div className="grid gap-x-8 gap-y-3 md:grid-cols-2">
            {topPerformers.map((assignment, index) => {
              const maxShare = Math.max(...topPerformers.map((item) => item.investor_share || 0), 1);
              const share = assignment.investor_share || 0;
              return (
                <div key={assignment.id} className="min-w-0">
                  <div className="mb-1 flex items-center justify-between gap-3 text-sm">
                    <span className="truncate text-gray-700">
                      <span className="mr-2 text-xs text-gray-400">{String(index + 1).padStart(2, '0')}</span>
                      {assignment.investor_name} <span className="text-gray-400">· {assignment.outlet_name}</span>
                    </span>
                    <span className="shrink-0 font-semibold text-gray-900">{formatCurrency(share)}</span>
                  </div>
                  <div className="h-1.5 overflow-hidden rounded-full bg-gray-100">
                    <div className="h-full rounded-full bg-[#1F4E5F]" style={{ width: `${(share / maxShare) * 100}%` }} />
                  </div>
                </div>
              );
            })}
          </div>
        </section>
      )}

      {/* Form */}
      {showForm && (
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">{editingId ? 'Edit' : 'Add'} Investor Assignment</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <select
              value={formData.investor_id}
              onChange={(e) => setFormData({ ...formData, investor_id: e.target.value })}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="">Select Investor</option>
              {investors.map(inv => (
                <option key={inv.id} value={inv.id}>{inv.name} ({inv.email})</option>
              ))}
            </select>

            <select
              value={formData.outlet_id}
              onChange={(e) => setFormData({ ...formData, outlet_id: e.target.value })}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            >
              <option value="">Select Outlet</option>
              {outlets.map(outlet => (
                <option key={outlet.id} value={outlet.id}>{outlet.name}</option>
              ))}
            </select>

            <input
              type="number"
              placeholder="Investment Amount (Rp)"
              value={formData.investment_amount}
              onChange={(e) => setFormData({ ...formData, investment_amount: e.target.value })}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />

            <input
              type="number"
              placeholder="Profit Share % (default 30%)"
              value={formData.margin_percentage}
              onChange={(e) => setFormData({ ...formData, margin_percentage: e.target.value })}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              min="0"
              max="100"
            />

            <input
              type="date"
              value={formData.start_date}
              onChange={(e) => setFormData({ ...formData, start_date: e.target.value })}
              className="px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>

          <div className="flex gap-2 mt-4">
            <button
              onClick={handleAddAssignment}
              className="px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition font-semibold"
            >
              {editingId ? 'Update' : 'Save'}
            </button>
            <button
              onClick={() => {
                setShowForm(false);
                setEditingId(null);
                setFormData({
                  investor_id: '',
                  outlet_id: '',
                  investment_amount: '',
                  margin_percentage: '30',
                  start_date: format(new Date(), 'yyyy-MM-dd'),
                });
              }}
              className="px-6 py-2 bg-gray-300 text-gray-700 rounded-lg hover:bg-gray-400 transition font-semibold"
            >
              Cancel
            </button>
          </div>
        </div>
      )}

      <section className="overflow-hidden rounded-lg border border-gray-200 bg-white">
        <div className="flex flex-col gap-3 border-b border-gray-200 p-4 lg:flex-row lg:items-center">
          <div className="relative min-w-0 flex-1">
            <Search size={17} className="pointer-events-none absolute left-3 top-1/2 -translate-y-1/2 text-gray-400" />
            <input
              type="search"
              value={searchQuery}
              onChange={(event) => setSearchQuery(event.target.value)}
              placeholder="Search investor / outlet..."
              aria-label="Search investor or outlet"
              className="w-full rounded-md border border-gray-300 py-2 pl-9 pr-3 text-sm text-gray-900 outline-none focus:border-[#1F4E5F] focus:ring-1 focus:ring-[#1F4E5F]"
            />
          </div>
          <div className="grid grid-cols-1 gap-2 sm:grid-cols-3 lg:flex">
            <select value={statusFilter} onChange={(event) => setStatusFilter(event.target.value)} aria-label="Filter by status" className="rounded-md border border-gray-300 bg-white px-3 py-2 text-sm text-gray-700">
              <option value="all">All Status</option>
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
            </select>
            <select value={investorFilter} onChange={(event) => setInvestorFilter(event.target.value)} aria-label="Filter by investor" className="rounded-md border border-gray-300 bg-white px-3 py-2 text-sm text-gray-700">
              <option value="all">All Investors</option>
              {investors.map((investor) => <option key={investor.id} value={investor.id}>{investor.name}</option>)}
            </select>
            <select value={outletFilter} onChange={(event) => setOutletFilter(event.target.value)} aria-label="Filter by outlet" className="rounded-md border border-gray-300 bg-white px-3 py-2 text-sm text-gray-700">
              <option value="all">All Outlets</option>
              {outlets.map((outlet) => <option key={outlet.id} value={outlet.id}>{outlet.name}</option>)}
            </select>
          </div>
          <button
            onClick={() => setShowForm(true)}
            className="inline-flex shrink-0 items-center justify-center gap-2 rounded-md bg-[#1F4E5F] px-4 py-2 text-sm font-medium text-white hover:bg-[#173d4b]"
          >
            <Plus size={17} />
            Assign Investor
          </button>
        </div>

        {loadError ? (
          <div className="px-4 py-12 text-center">
            <p className="font-medium text-gray-900">Unable to load investor assignments.</p>
            <button onClick={() => void fetchData(selectedMonth)} className="mt-3 text-sm font-medium text-[#1F4E5F] hover:underline">
              Try Again
            </button>
          </div>
        ) : loading ? (
          <div className="space-y-3 p-4" aria-label="Loading investor assignments">
            {Array.from({ length: 5 }, (_, index) => (
              <div key={index} className="h-12 animate-pulse rounded-md bg-gray-100" />
            ))}
          </div>
        ) : assignments.length === 0 ? (
          <div className="px-4 py-12 text-center">
            <p className="font-medium text-gray-900">No investor assignments for {monthLabel}.</p>
            <button onClick={() => setShowForm(true)} className="mt-3 inline-flex items-center gap-2 text-sm font-medium text-[#1F4E5F] hover:underline">
              <Plus size={16} />
              Assign Investor
            </button>
          </div>
        ) : filteredAssignments.length === 0 ? (
          <div className="px-4 py-12 text-center text-sm text-gray-500">No assignments match these filters.</div>
        ) : (
          <>
            <div className="divide-y divide-gray-200 md:hidden">
              {filteredAssignments.map((assignment) => (
                <article key={assignment.id} className="space-y-3 p-4">
                  <div className="flex items-start justify-between gap-3">
                    <div className="min-w-0">
                      <p className="truncate font-semibold text-gray-900">{assignment.investor_name}</p>
                      <p className="mt-0.5 truncate text-sm text-gray-500">{assignment.outlet_name}</p>
                    </div>
                    <div className="flex items-center gap-2">
                      <StatusBadge status={assignment.status} />
                      <AssignmentActions assignment={assignment} onView={setDetailAssignment} onEdit={handleEditAssignment} onDelete={handleDeleteAssignment} />
                    </div>
                  </div>
                  <div className="grid grid-cols-2 gap-3 text-sm">
                    <div>
                      <p className="text-xs text-gray-500">Investment</p>
                      <p className="mt-1 font-medium text-blue-700">{formatCurrency(assignment.investment_amount)}</p>
                    </div>
                    <div>
                      <p className="text-xs text-gray-500">Investor Share</p>
                      <p className="mt-1 font-semibold text-green-700">{formatCurrency(assignment.investor_share || 0)}</p>
                    </div>
                  </div>
                  <details className="group border-t border-gray-100 pt-2">
                    <summary className="cursor-pointer list-none text-xs font-medium text-[#1F4E5F]">More details</summary>
                    <div className="mt-3 grid grid-cols-2 gap-3 text-sm">
                      <div><p className="text-xs text-gray-500">Profit</p><p className="mt-1 text-gray-800">{formatCurrency(assignment.outlet_revenue || 0)}</p></div>
                      <div><p className="text-xs text-gray-500">Profit Share</p><p className="mt-1 text-gray-800">{assignment.margin_percentage}%</p></div>
                      <div><p className="text-xs text-gray-500">Start Date</p><p className="mt-1 text-gray-800">{format(new Date(assignment.start_date), 'dd MMM yyyy')}</p></div>
                    </div>
                  </details>
                </article>
              ))}
            </div>

            <div className="hidden overflow-x-auto md:block">
              <table className="w-full min-w-[980px] text-sm">
                <thead className="border-b border-gray-200 bg-gray-50 text-xs uppercase tracking-wide text-gray-500">
                  <tr>
                    <th className="px-4 py-3 text-left font-medium">Investor</th>
                    <th className="px-4 py-3 text-left font-medium">Outlet</th>
                    <SortableHeader label="Investment" sortKey="investment_amount" currentKey={sortKey} direction={sortDirection} onSort={handleSort} />
                    <SortableHeader label="Profit" sortKey="outlet_revenue" currentKey={sortKey} direction={sortDirection} onSort={handleSort} />
                    <SortableHeader label="Profit Share" sortKey="margin_percentage" currentKey={sortKey} direction={sortDirection} onSort={handleSort} />
                    <SortableHeader label="Investor Share" sortKey="investor_share" currentKey={sortKey} direction={sortDirection} onSort={handleSort} />
                    <SortableHeader label="Start Date" sortKey="start_date" currentKey={sortKey} direction={sortDirection} onSort={handleSort} />
                    <th className="px-4 py-3 text-left font-medium">Status</th>
                    <th className="px-4 py-3 text-right font-medium">Actions</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-gray-100">
                  {filteredAssignments.map((assignment) => (
                    <tr key={assignment.id} className="hover:bg-gray-50/70">
                      <td className="whitespace-nowrap px-4 py-3 font-medium text-gray-900">{assignment.investor_name}</td>
                      <td className="whitespace-nowrap px-4 py-3 text-gray-600">{assignment.outlet_name}</td>
                      <td className="whitespace-nowrap px-4 py-3 text-gray-700">{formatCurrency(assignment.investment_amount)}</td>
                      <td className="whitespace-nowrap px-4 py-3 text-gray-700">{formatCurrency(assignment.outlet_revenue || 0)}</td>
                      <td className="whitespace-nowrap px-4 py-3 text-gray-700">{assignment.margin_percentage}%</td>
                      <td className="whitespace-nowrap px-4 py-3 font-semibold text-green-700">{formatCurrency(assignment.investor_share || 0)}</td>
                      <td className="whitespace-nowrap px-4 py-3 text-gray-500">{format(new Date(assignment.start_date), 'dd MMM yyyy')}</td>
                      <td className="whitespace-nowrap px-4 py-3"><StatusBadge status={assignment.status} /></td>
                      <td className="whitespace-nowrap px-4 py-2 text-right">
                        <AssignmentActions assignment={assignment} onView={setDetailAssignment} onEdit={handleEditAssignment} onDelete={handleDeleteAssignment} />
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </>
        )}
        {!loading && !loadError && assignments.length > 0 && (
          <div className="border-t border-gray-100 px-4 py-3 text-xs text-gray-500">
            Showing {filteredAssignments.length} of {assignments.length} assignments
          </div>
        )}
      </section>

      {detailAssignment && (
        <div
          className="fixed inset-0 z-50 flex items-end justify-center bg-gray-950/40 p-0 sm:items-center sm:p-4"
          onClick={() => setDetailAssignment(null)}
          onKeyDown={(event) => {
            if (event.key === 'Escape') setDetailAssignment(null);
          }}
          role="presentation"
        >
          <section
            role="dialog"
            aria-modal="true"
            aria-labelledby="assignment-detail-title"
            className="w-full max-w-lg rounded-t-xl bg-white p-5 shadow-xl sm:rounded-lg sm:p-6"
            onClick={(event) => event.stopPropagation()}
          >
            <div className="flex items-start justify-between gap-4 border-b border-gray-100 pb-4">
              <div>
                <p className="text-sm text-gray-500">Investor Assignment</p>
                <h2 id="assignment-detail-title" className="mt-1 text-xl font-semibold text-[#1F4E5F]">
                  {detailAssignment.investor_name}
                </h2>
                <p className="mt-1 text-sm text-gray-600">{detailAssignment.outlet_name}</p>
              </div>
              <button
                onClick={() => setDetailAssignment(null)}
                aria-label="Close assignment details"
                className="rounded-md p-2 text-gray-500 hover:bg-gray-100 hover:text-gray-900"
              >
                <X size={18} />
              </button>
            </div>
            <p className="mt-4 text-xs font-medium uppercase tracking-wide text-gray-500">
              Profit detail · {monthLabel}
            </p>
            <dl className="mt-3 divide-y divide-gray-100">
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm text-gray-600">Investment</dt>
                <dd className="text-right text-sm font-medium text-blue-700">{formatCurrency(detailAssignment.investment_amount)}</dd>
              </div>
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm text-gray-600">Profit</dt>
                <dd className="text-right text-sm font-medium text-gray-900">{formatCurrency(detailAssignment.outlet_revenue || 0)}</dd>
              </div>
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm text-gray-600">Profit Share</dt>
                <dd className="text-right text-sm font-medium text-gray-900">{detailAssignment.margin_percentage}%</dd>
              </div>
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm font-medium text-gray-900">Investor Share</dt>
                <dd className="text-right text-base font-semibold text-green-700">{formatCurrency(detailAssignment.investor_share || 0)}</dd>
              </div>
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm text-gray-600">Start Date</dt>
                <dd className="text-right text-sm text-gray-800">{format(new Date(detailAssignment.start_date), 'dd MMM yyyy')}</dd>
              </div>
              <div className="flex items-center justify-between gap-4 py-3">
                <dt className="text-sm text-gray-600">Status</dt>
                <dd><StatusBadge status={detailAssignment.status} /></dd>
              </div>
            </dl>
            <div className="mt-4 flex justify-end border-t border-gray-100 pt-4">
              <button
                onClick={() => {
                  setDetailAssignment(null);
                  handleEditAssignment(detailAssignment);
                }}
                className="rounded-md bg-[#1F4E5F] px-4 py-2 text-sm font-medium text-white hover:bg-[#173d4b]"
              >
                Edit Assignment
              </button>
            </div>
          </section>
        </div>
      )}
    </div>
  );
}
