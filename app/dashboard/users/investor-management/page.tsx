'use client';

import { useState, useEffect } from 'react';
import { Plus, Edit2, Trash2, TrendingUp, DollarSign, Calendar } from 'lucide-react';

interface InvestorAssignment {
  id: string;
  investor_name: string;
  outlet_name: string;
  investment_amount: number;
  margin_percentage: number;
  start_date: string;
  status: 'active' | 'completed' | 'suspended';
  total_revenue_paid: number;
}

export default function InvestorManagementPage() {
  const [assignments, setAssignments] = useState<InvestorAssignment[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);

  useEffect(() => {
    // Mock data
    const mockAssignments: InvestorAssignment[] = [
      {
        id: '1',
        investor_name: 'Bapak Joko',
        outlet_name: 'Pusat',
        investment_amount: 100000000,
        margin_percentage: 10,
        start_date: '2025-01-15',
        status: 'active',
        total_revenue_paid: 15000000,
      },
      {
        id: '2',
        investor_name: 'Ibu Siti',
        outlet_name: 'Bandung',
        investment_amount: 80000000,
        margin_percentage: 12,
        start_date: '2025-02-01',
        status: 'active',
        total_revenue_paid: 8000000,
      },
      {
        id: '3',
        investor_name: 'Pak Ahmad',
        outlet_name: 'Jakarta',
        investment_amount: 150000000,
        margin_percentage: 8,
        start_date: '2025-01-20',
        status: 'active',
        total_revenue_paid: 25000000,
      },
    ];
    setAssignments(mockAssignments);
    setLoading(false);
  }, []);

  const totalInvestment = assignments.reduce((sum, a) => sum + a.investment_amount, 0);
  const totalRevenuePaid = assignments.reduce((sum, a) => sum + a.total_revenue_paid, 0);
  const activeInvestors = assignments.filter(a => a.status === 'active').length;

  return (
    <div className="space-y-6 pb-6">
      {/* Header */}
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-4xl font-bold text-[#1F4E5F] mb-2">Investor Management</h1>
        <p className="text-gray-600">Kelola investor dan revenue sharing</p>
      </div>

      {/* KPI Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total Investment</p>
              <p className="text-3xl font-bold text-blue-600 mt-2">Rp {(totalInvestment / 1000000).toFixed(0)}M</p>
            </div>
            <DollarSign size={40} className="text-blue-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Revenue Paid</p>
              <p className="text-3xl font-bold text-green-600 mt-2">Rp {(totalRevenuePaid / 1000000).toFixed(0)}M</p>
            </div>
            <TrendingUp size={40} className="text-green-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Active Investors</p>
              <p className="text-3xl font-bold text-orange-600 mt-2">{activeInvestors}</p>
            </div>
            <Calendar size={40} className="text-orange-200" />
          </div>
        </div>

        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="flex items-center justify-between">
            <div>
              <p className="text-sm text-gray-600">Total Investors</p>
              <p className="text-3xl font-bold text-purple-600 mt-2">{assignments.length}</p>
            </div>
            <DollarSign size={40} className="text-purple-200" />
          </div>
        </div>
      </div>

      {/* Actions */}
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

      {/* Assignments Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-8 text-center text-gray-500">Loading...</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Investor</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Outlet</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Investment</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Margin %</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Start Date</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Revenue Paid</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Status</th>
                <th className="px-6 py-3 text-center text-sm font-semibold text-gray-800">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {assignments.map((assignment) => (
                <tr key={assignment.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-900">{assignment.investor_name}</td>
                  <td className="px-6 py-4 text-gray-700">{assignment.outlet_name}</td>
                  <td className="px-6 py-4 text-gray-700">Rp {(assignment.investment_amount / 1000000).toFixed(0)}M</td>
                  <td className="px-6 py-4 text-gray-700 font-semibold">{assignment.margin_percentage}%</td>
                  <td className="px-6 py-4 text-gray-700">{assignment.start_date}</td>
                  <td className="px-6 py-4 text-green-600 font-semibold">Rp {(assignment.total_revenue_paid / 1000000).toFixed(0)}M</td>
                  <td className="px-6 py-4">
                    <span className={`px-3 py-1 rounded-full text-sm font-semibold ${
                      assignment.status === 'active' ? 'bg-green-100 text-green-800' :
                      assignment.status === 'completed' ? 'bg-blue-100 text-blue-800' :
                      'bg-red-100 text-red-800'
                    }`}>
                      {assignment.status.charAt(0).toUpperCase() + assignment.status.slice(1)}
                    </span>
                  </td>
                  <td className="px-6 py-4">
                    <div className="flex items-center justify-center gap-2">
                      <button className="p-2 text-blue-600 hover:bg-blue-50 rounded-lg transition">
                        <Edit2 size={18} />
                      </button>
                      <button className="p-2 text-red-600 hover:bg-red-50 rounded-lg transition">
                        <Trash2 size={18} />
                      </button>
                    </div>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>

      {/* Revenue Sharing History */}
      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-2xl font-bold text-gray-900 mb-4">Revenue Sharing Summary</h2>
        <div className="space-y-3">
          {assignments.map((assignment) => (
            <div key={assignment.id} className="flex items-center justify-between p-4 bg-gray-50 rounded-lg">
              <div>
                <p className="font-semibold text-gray-900">{assignment.investor_name} - {assignment.outlet_name}</p>
                <p className="text-sm text-gray-600">Margin: {assignment.margin_percentage}% | Investment: Rp {(assignment.investment_amount / 1000000).toFixed(0)}M</p>
              </div>
              <div className="text-right">
                <p className="text-2xl font-bold text-green-600">Rp {(assignment.total_revenue_paid / 1000000).toFixed(0)}M</p>
                <p className="text-sm text-gray-600">Total Revenue Paid</p>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Form Modal */}
      {showForm && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-lg p-8 max-w-2xl w-full mx-4 max-h-[90vh] overflow-y-auto">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Assign Investor to Outlet</h2>
            <div className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">Investor</label>
                  <select className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                    <option>Pilih Investor</option>
                    <option>Bapak Joko</option>
                    <option>Ibu Siti</option>
                  </select>
                </div>
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">Outlet</label>
                  <select className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
                    <option>Pilih Outlet</option>
                    <option>Pusat</option>
                    <option>Bandung</option>
                    <option>Jakarta</option>
                  </select>
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">Investment Amount (Rp)</label>
                  <input
                    type="number"
                    placeholder="100000000"
                    className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">Margin Percentage (%)</label>
                  <input
                    type="number"
                    placeholder="10"
                    step="0.1"
                    className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">Start Date</label>
                  <input
                    type="date"
                    className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
                <div>
                  <label className="block text-sm font-semibold text-gray-700 mb-2">End Date (Optional)</label>
                  <input
                    type="date"
                    className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
              </div>

              <div>
                <label className="block text-sm font-semibold text-gray-700 mb-2">Notes</label>
                <textarea
                  placeholder="Catatan tambahan..."
                  rows={3}
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>
            </div>

            <div className="flex gap-3 mt-6">
              <button
                onClick={() => setShowForm(false)}
                className="flex-1 px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 font-semibold transition"
              >
                Cancel
              </button>
              <button
                onClick={() => setShowForm(false)}
                className="flex-1 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 font-semibold transition"
              >
                Save Assignment
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
