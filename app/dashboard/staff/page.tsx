'use client';

import { useEffect, useState, useCallback } from 'react';
import { useAuthStore } from '@/lib/store/auth';
import { Users, Plus, Edit2, Trash2, Check, X, AlertCircle } from 'lucide-react';

interface StaffMember {
  id: string;
  name: string;
  email: string;
  phone?: string;
  role: string;
  is_active: boolean;
  outlet_id?: string | null;
}

interface Outlet {
  id: string;
  name: string;
}

export default function StaffPage() {
  const { outletId, setOutletId, user } = useAuthStore();
  const [staff, setStaff] = useState<StaffMember[]>([]);
  const [outlets, setOutlets] = useState<Outlet[]>([]);
  const [loading, setLoading] = useState(true);
  const [showForm, setShowForm] = useState(false);
  const [editingId, setEditingId] = useState<string | null>(null);
const [formData, setFormData] = useState({ name: '', email: '', phone: '', role: 'barista' });
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  // Initialize outlet from localStorage or URL
  useEffect(() => {
    const savedOutletId = localStorage.getItem('selectedOutletId');
    if (savedOutletId && !outletId) {
      setOutletId(savedOutletId);
    }
  }, [outletId, setOutletId]);

const fetchStaff = useCallback(async () => {
    try {
      setLoading(true);
      
      // Fetch only barista staff
      const res = await fetch('/api/users?role=barista');
      if (!res.ok) {
        throw new Error(`HTTP error! status: ${res.status}`);
      }
      
      const data = await res.json();
      setStaff(Array.isArray(data) ? data : []);
      console.log('Barista staff fetched:', data);
    } catch (error) {
      console.error('Failed to fetch staff:', error);
      setStaff([]);
      setError('Failed to load staff members');
    } finally {
      setLoading(false);
    }
  }, []);

  const fetchOutlets = useCallback(async () => {
    try {
      const res = await fetch('/api/outlets');
      if (!res.ok) throw new Error('Failed to fetch outlets');
      const data = await res.json();
      setOutlets(Array.isArray(data) ? data : []);
    } catch (error) {
      console.error('Failed to fetch outlets:', error);
      setOutlets([]);
    }
  }, []);

useEffect(() => {
    fetchStaff();
    fetchOutlets();
  }, [fetchStaff, fetchOutlets]);

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setError(null);
      setSuccess(null);
      
      // It's OK if `outletId` is not present when creating a staff member.
      // Staff can be created unassigned and assigned to an outlet later.

      // Validate form data
      if (!formData.name || !formData.email || !formData.role) {
        setError('Please fill in all required fields');
        return;
      }

const method = editingId ? 'PUT' : 'POST';
      const body = editingId
        ? { id: editingId, name: formData.name, email: formData.email, phone: formData.phone, role: formData.role }
        : { name: formData.name, email: formData.email, phone: formData.phone, role: formData.role, outlet_id: outletId };

      console.log('Submitting staff form:', { method, body });

      const res = await fetch('/api/staff', {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(body)
      });

      if (!res.ok) {
        const errorData = await res.json();
        throw new Error(errorData.error || `HTTP ${res.status}`);
      }

if (res.ok) {
        await fetchStaff();
        setFormData({ name: '', email: '', phone: '', role: 'barista' });
        setEditingId(null);
        setShowForm(false);
        setSuccess(editingId ? 'Staff updated successfully!' : 'Staff added successfully!');
        setTimeout(() => setSuccess(null), 3000);
      }
    } catch (error) {
      const errorMsg = error instanceof Error ? error.message : 'Unknown error';
      console.error('Failed to save staff:', errorMsg);
      setError(`Failed to save: ${errorMsg}`);
    }
  };

  const handleDelete = async (id: string) => {
    if (!confirm('Are you sure?')) return;
    try {
      const res = await fetch(`/api/staff?id=${id}`, { method: 'DELETE' });
      if (res.ok) {
        await fetchStaff();
      }
    } catch (error) {
      console.error('Failed to delete staff:', error);
    }
  };

const handleEdit = (member: StaffMember) => {
    setEditingId(member.id);
    setFormData({ name: member.name, email: member.email, phone: member.phone || '', role: member.role });
    setShowForm(true);
  };

const handleToggleStatus = async (member: StaffMember) => {
    try {
      setError(null);
      const res = await fetch('/api/staff', {
        method: 'PUT',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          id: member.id,
          name: member.name,
          email: member.email,
          phone: member.phone,
          role: member.role,
          is_active: !member.is_active,
        }),
      });

      if (!res.ok) throw new Error('Failed to update status');
      
      await fetchStaff();
      setSuccess(`Staff ${member.is_active ? 'deactivated' : 'activated'} successfully!`);
      setTimeout(() => setSuccess(null), 3000);
    } catch (error) {
      setError('Failed to update status');
      console.error(error);
    }
  };

  if (loading) return (
    <div className="p-6 flex items-center justify-center h-96">
      <div className="text-center">
        <div className="text-gray-400 mb-2">
          <Users size={48} className="mx-auto opacity-30" />
        </div>
        <p className="text-gray-500">Loading staff members...</p>
        <p className="text-xs text-gray-400 mt-2">Outlet ID: {outletId || 'Loading...'}</p>
      </div>
    </div>
  );

  return (
    <div className="p-6 space-y-6">
      {/* Header */}
      <div className="flex justify-between items-center">
        <div className="flex items-center gap-3">
          <Users size={32} className="text-amber-600" />
          <div>
            <h1 className="text-3xl font-bold">Manajemen Barista</h1>
            <p className="text-gray-500 text-sm">Kelola anggota barista dan tugaskan ke outlet</p>
          </div>
        </div>
        <button
          onClick={() => {
            setEditingId(null);
setFormData({ name: '', email: '', phone: '', role: 'barista' });
            setError(null);
            setShowForm(!showForm);
          }}
          className="bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg flex items-center gap-2 transition"
        >
          <Plus size={20} />
          Tambah Barista
        </button>
      </div>

      {/* Messages */}
      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 flex gap-3 items-start">
          <AlertCircle size={20} className="text-red-600 shrink-0 mt-0.5" />
          <div>
            <p className="text-red-800 font-medium">Error</p>
            <p className="text-red-700 text-sm">{error}</p>
          </div>
        </div>
      )}
      
      {success && (
        <div className="bg-green-50 border border-green-200 rounded-lg p-4">
          <p className="text-green-800 font-medium">{success}</p>
        </div>
      )}

      {/* Form */}
      {showForm && (
        <div className="bg-white p-6 rounded-lg shadow-md border border-amber-100">
          <h2 className="text-lg font-semibold mb-4">{editingId ? 'Edit Staff Member' : 'Add New Staff Member'}</h2>
          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <input
                type="text"
                placeholder="Full Name"
                value={formData.name}
                onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                required
                className="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
              />
<input
                type="email"
                placeholder="Email Address"
                value={formData.email}
                onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                required
                className="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
              />
              <input
                type="tel"
                placeholder="Phone Number (optional)"
                value={formData.phone}
                onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                className="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
              />
              <select
                value={formData.role}
                onChange={(e) => setFormData({ ...formData, role: e.target.value })}
                className="px-4 py-2 border rounded-lg focus:ring-2 focus:ring-amber-500 focus:border-transparent"
              >
                <option value="barista">☕ Barista</option>
                <option value="cashier">💳 Cashier</option>
                <option value="investor">💰 Investor</option>
                <option value="manager">👨‍💼 Manager</option>
                <option value="admin">🔐 Admin</option>
              </select>
            </div>
            <div className="flex gap-2 justify-end">
              <button
                type="button"
                onClick={() => {
                  setShowForm(false);
                  setEditingId(null);
                }}
                className="bg-gray-200 hover:bg-gray-300 text-gray-800 px-6 py-2 rounded-lg flex items-center gap-2 transition"
              >
                <X size={18} />
                Cancel
              </button>
              <button type="submit" className="bg-green-600 hover:bg-green-700 text-white px-6 py-2 rounded-lg flex items-center gap-2 transition">
                <Check size={18} />
                Save
              </button>
            </div>
          </form>
        </div>
      )}

      {/* Staff Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="p-6 border-b border-gray-200 bg-gray-50">
          <h3 className="text-lg font-semibold flex items-center gap-2">
            <Users size={20} className="text-amber-600" />
            Daftar Barista ({staff.length})
          </h3>
          <p className="text-xs text-gray-500 mt-1">Total: {staff.length} barista</p>
        </div>
        <div className="overflow-x-auto">
          {staff.length === 0 ? (
            <div className="p-8 text-center">
              <Users size={48} className="mx-auto text-gray-300 mb-4" />
              <p className="text-gray-500 font-medium">Belum ada barista</p>
              <p className="text-gray-400 text-sm">Tambahkan barista pertama Anda untuk memulai</p>
            </div>
          ) : (
            <table className="w-full">
              <thead className="bg-gray-100 border-b">
<tr>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Name</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Email</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Phone</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Outlet</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Role</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Status</th>
                  <th className="px-6 py-3 text-left text-sm font-semibold text-gray-700">Actions</th>
                </tr>
              </thead>
              <tbody>
                {staff.map((member) => {
                  const outletName = outlets.find(o => o.id === member.outlet_id)?.name;
                  return (
<tr key={member.id} className="border-b hover:bg-amber-50 transition">
                    <td className="px-6 py-4 font-medium text-gray-900">{member.name}</td>
                    <td className="px-6 py-4 text-gray-600">{member.email}</td>
                    <td className="px-6 py-4 text-gray-600">{member.phone || '-'}</td>
                    <td className="px-6 py-4 text-gray-600">
                      <span className={`${outletName ? 'text-amber-700 font-medium' : 'text-gray-400'}`}>
                        {outletName || 'Unassigned'}
                      </span>
                    </td>
                    <td className="px-6 py-4">
                      <span className="px-3 py-1 rounded-full text-xs font-semibold bg-amber-100 text-amber-800">
                        {member.role === 'barista' && '☕ Barista'}
                        {member.role === 'cashier' && '💳 Cashier'}
                        {member.role === 'investor' && '💰 Investor'}
                        {member.role === 'manager' && '👨‍💼 Manager'}
                        {member.role === 'admin' && '🔐 Admin'}
                      </span>
                    </td>
                    <td className="px-6 py-4">
                      <button
                        onClick={() => handleToggleStatus(member)}
                        className={`px-3 py-1 rounded-full text-xs font-semibold transition ${
                          member.is_active
                            ? 'bg-green-100 text-green-800 hover:bg-green-200'
                            : 'bg-red-100 text-red-800 hover:bg-red-200'
                        }`}
                        title={`Click to ${member.is_active ? 'deactivate' : 'activate'}`}
                      >
                        {member.is_active ? '✓ Active' : '✕ Inactive'}
                      </button>
                    </td>
                    <td className="px-6 py-4 flex gap-2">
                      <button
                        onClick={() => handleEdit(member)}
                        className="text-blue-600 hover:text-blue-800 hover:bg-blue-50 p-2 rounded transition"
                        title="Edit"
                      >
                        <Edit2 size={18} />
                      </button>
                      <button
                        onClick={() => handleDelete(member.id)}
                        className="text-red-600 hover:text-red-800 hover:bg-red-50 p-2 rounded transition"
                        title="Delete"
                      >
                        <Trash2 size={18} />
                      </button>
                    </td>
                  </tr>
                  );
                })}
              </tbody>
            </table>
          )}
        </div>
      </div>
    </div>
  );
}
