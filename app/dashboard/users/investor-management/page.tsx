'use client';

import { useState, useEffect } from 'react';
import { supabase } from '@/lib/supabase';
import { format } from 'date-fns';
import { Plus, Edit2, Trash2, TrendingUp, DollarSign, Calendar } from 'lucide-react';

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

export default function InvestorManagementPage() {
  const [assignments, setAssignments] = useState<InvestorAssignment[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [investors, setInvestors] = useState<User[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
  const [formData, setFormData] = useState<FormData>({
    investor_id: '',
    outlet_id: '',
    investment_amount: '',
    margin_percentage: '30',
    start_date: format(new Date(), 'yyyy-MM-dd'),
  });

  useEffect(() => {
    fetchData();
  }, []);

  async function fetchData() {
    try {
      setLoading(true);

      // Fetch outlets
      const { data: outletData } = await supabase.from('outlets').select('id, name');
      if (outletData) setOutlets(outletData);

      // Fetch investors (users with role='investor')
      const { data: investorData } = await supabase
        .from('users')
        .select('id, email, name')
        .eq('role', 'investor');
      if (investorData) setInvestors(investorData);

      // Fetch investor assignments
      const { data: assignmentData } = await supabase
        .from('investor_assignments')
        .select('*')
        .order('created_at', { ascending: false });

      let enhanced: any[] = [];
      if (assignmentData) {
        // Enhance with investor and outlet names
        enhanced = assignmentData.map(assignment => {
          const investor = investorData?.find(i => i.id === assignment.investor_id);
          const outlet = outletData?.find(o => o.id === assignment.outlet_id);
          return {
            ...assignment,
            investor_name: investor?.name || 'Unknown',
            outlet_name: outlet?.name || 'Unknown',
          };
        });
      }

      // Fetch sales data for revenue calculation
      const { data: salesData } = await supabase
        .from('sales')
        .select('outlet_id, profit');

      // Calculate outlet revenues
      if (salesData && enhanced.length > 0) {
        const revenueMap: { [key: string]: number } = {};
        for (const sale of salesData) {
          revenueMap[sale.outlet_id] = (revenueMap[sale.outlet_id] || 0) + (sale.profit || 0);
        }

        // Update assignments with revenue and investor share
        const updatedAssignments = enhanced.map((assignment: any) => ({
          ...assignment,
          outlet_revenue: revenueMap[assignment.outlet_id] || 0,
          investor_share: ((revenueMap[assignment.outlet_id] || 0) * assignment.margin_percentage) / 100,
        }));
        setAssignments(updatedAssignments);
      } else if (enhanced.length > 0) {
        setAssignments(enhanced);
      }
    } catch (error) {
      console.error('Error fetching data:', error);
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
      await fetchData();
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
      await fetchData();
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
  return (
    <div className="space-y-6 pb-6">
      {/* Header */}
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-4xl font-bold text-[#1F4E5F] mb-2">Investor Management</h1>
        <p className="text-gray-600">Kelola investor, outlet assignment, dan profit sharing (default 30%)</p>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total Investment</p>
              <p className="text-3xl font-bold text-blue-600 mt-2">
                {formatCurrency(assignments.reduce((sum, a) => sum + a.investment_amount, 0))}
              </p>
            </div>
            <DollarSign size={40} className="text-blue-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total Profit Share</p>
              <p className="text-3xl font-bold text-green-600 mt-2">
                {formatCurrency(assignments.reduce((sum, a) => sum + (a.investor_share || 0), 0))}
              </p>
            </div>
            <TrendingUp size={40} className="text-green-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Active Investors</p>
              <p className="text-3xl font-bold text-orange-600 mt-2">
                {assignments.filter(a => a.status === 'active').length}
              </p>
            </div>
            <Calendar size={40} className="text-orange-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total Assignments</p>
              <p className="text-3xl font-bold text-purple-600 mt-2">{assignments.length}</p>
            </div>
            <DollarSign size={40} className="text-purple-200" />
          </div>
        </div>
      </div>

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
              placeholder="Margin % (default 30%)"
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

      {/* Actions */}
      {!showForm && (
        <div className="flex justify-between items-center">
          <h2 className="text-2xl font-bold text-gray-900">Investor Assignments</h2>
          <button
            onClick={() => setShowForm(true)}
            className="flex items-center gap-2 px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition font-semibold"
          >
            <Plus size={20} />
            Assign Investor
          </button>
        </div>
      )}

      {/* Assignments Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-8 text-center text-gray-500">Loading investor data...</div>
        ) : assignments.length === 0 ? (
          <div className="p-8 text-center text-gray-500">No investor assignments yet</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Investor</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Investment</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Margin %</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet Profit</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Investor Share</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Start Date</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Status</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {assignments.map((assignment) => (
                <tr key={assignment.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{assignment.investor_name}</td>
                  <td className="px-6 py-4 text-gray-700">{assignment.outlet_name}</td>
                  <td className="px-6 py-4 text-gray-700">{formatCurrency(assignment.investment_amount)}</td>
                  <td className="px-6 py-4 text-gray-700 font-semibold">{assignment.margin_percentage}%</td>
                  <td className="px-6 py-4 text-gray-700">{formatCurrency(assignment.outlet_revenue || 0)}</td>
                  <td className="px-6 py-4 text-green-600 font-bold">{formatCurrency(assignment.investor_share || 0)}</td>
                  <td className="px-6 py-4 text-sm text-gray-600">{format(new Date(assignment.start_date), 'dd MMM yyyy')}</td>
                  <td className="px-6 py-4">
                    <span className={`px-3 py-1 rounded-full text-xs font-semibold ${
                      assignment.status === 'active'
                        ? 'bg-green-100 text-green-800'
                        : assignment.status === 'suspended'
                        ? 'bg-yellow-100 text-yellow-800'
                        : 'bg-gray-100 text-gray-800'
                    }`}>
                      {assignment.status}
                    </span>
                  </td>
                  <td className="px-6 py-4 flex gap-2">
                    <button
                      onClick={() => handleEditAssignment(assignment)}
                      className="p-2 hover:bg-blue-100 rounded text-blue-600 transition"
                    >
                      <Edit2 size={18} />
                    </button>
                    <button
                      onClick={() => handleDeleteAssignment(assignment.id)}
                      className="p-2 hover:bg-red-100 rounded text-red-600 transition"
                    >
                      <Trash2 size={18} />
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </div>
  );
}
