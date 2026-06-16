'use client';

import { useState, useEffect } from 'react';
import { Plus, Edit2, Trash2, Search, Filter } from 'lucide-react';

type UserRole = 'superadmin' | 'admin' | 'manager' | 'barista' | 'investor';

interface User {
  id: string;
  name: string;
  email: string;
  role: UserRole;
  phone?: string;
  outlet_id?: string;
  is_active: boolean;
  created_at: string;
}

const roleColors: Record<UserRole, string> = {
  superadmin: 'bg-purple-100 text-purple-800',
  admin: 'bg-red-100 text-red-800',
  manager: 'bg-blue-100 text-blue-800',
  barista: 'bg-green-100 text-green-800',
  investor: 'bg-yellow-100 text-yellow-800',
};

const roleLabels: Record<UserRole, string> = {
  superadmin: 'Super Admin',
  admin: 'Admin',
  manager: 'Manager',
  barista: 'Barista',
  investor: 'Investor',
};

// Format date helper
const formatDate = (dateString: string) => {
  try {
    const date = new Date(dateString);
    return date.toLocaleDateString('id-ID', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    });
  } catch {
    return dateString;
  }
};

export default function ManageUsersPage() {
  const [users, setUsers] = useState<User[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [roleFilter, setRoleFilter] = useState<UserRole | 'all'>('all');
  const [showForm, setShowForm] = useState(false);
  const [editingUser, setEditingUser] = useState<User | null>(null);
  const [formData, setFormData] = useState({ name: '', email: '', phone: '', role: 'barista' as UserRole });
  const [formLoading, setFormLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  // Fetch users from database
  useEffect(() => {
    fetchUsers();
  }, []);

  async function fetchUsers() {
    try {
      setLoading(true);
      const response = await fetch('/api/users');
      if (!response.ok) {
        throw new Error('Failed to fetch users');
      }
      const data = await response.json();
      setUsers(data);
    } catch (error) {
      console.error('Error fetching users:', error);
      setError('Gagal mengambil data user');
    } finally {
      setLoading(false);
    }
  }

  const filteredUsers = users.filter(user => {
    const matchesSearch = user.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
                         user.email.toLowerCase().includes(searchTerm.toLowerCase());
    const matchesRole = roleFilter === 'all' || user.role === roleFilter;
    return matchesSearch && matchesRole;
  });

  const handleDelete = async (id: string) => {
    if (!confirm('Apakah Anda yakin ingin menghapus user ini?')) return;
    
    try {
      const response = await fetch(`/api/users/${id}`, { method: 'DELETE' });
      if (!response.ok) {
        throw new Error('Failed to delete user');
      }
      setUsers(users.filter(u => u.id !== id));
      setSuccess('User berhasil dihapus');
      setTimeout(() => setSuccess(null), 3000);
    } catch (error) {
      console.error('Error deleting user:', error);
      setError('Gagal menghapus user');
    }
  };

  const handleEdit = (user: User) => {
    setEditingUser(user);
    setFormData({ name: user.name, email: user.email, phone: user.phone || '', role: user.role });
    setShowForm(true);
  };

  const handleOpenAddForm = () => {
    setEditingUser(null);
    setFormData({ name: '', email: '', phone: '', role: 'barista' });
    setShowForm(true);
  };

  const handleCloseForm = () => {
    setShowForm(false);
    setEditingUser(null);
    setFormData({ name: '', email: '', phone: '', role: 'barista' });
    setError(null);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!formData.name || !formData.email || !formData.role) {
      setError('Nama, email, dan role harus diisi');
      return;
    }

    try {
      setFormLoading(true);
      setError(null);

      if (editingUser) {
        // Update user
        const response = await fetch(`/api/users/${editingUser.id}`, {
          method: 'PUT',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            name: formData.name,
            email: formData.email,
            phone: formData.phone || null,
            role: formData.role
          })
        });

        if (!response.ok) {
          try {
            const errorData = await response.json();
            throw new Error(errorData.error || 'Failed to update user');
          } catch {
            throw new Error(`Failed to update user (Status ${response.status})`);
          }
        }

        const data = await response.json();
        setSuccess('User berhasil diperbarui');
      } else {
        // Create new user
        const response = await fetch('/api/users', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({
            name: formData.name,
            email: formData.email,
            phone: formData.phone || null,
            role: formData.role
          })
        });

        if (!response.ok) {
          try {
            const errorData = await response.json();
            throw new Error(errorData.error || 'Failed to create user');
          } catch {
            throw new Error(`Failed to create user (Status ${response.status})`);
          }
        }

        await response.json();
        setSuccess('User berhasil ditambahkan');
        await fetchUsers();
      }

      handleCloseForm();
      setTimeout(() => setSuccess(null), 3000);
    } catch (error) {
      const errorMsg = error instanceof Error ? error.message : 'Terjadi kesalahan';
      console.error('Error saving user:', errorMsg);
      setError(errorMsg);
    } finally {
      setFormLoading(false);
    }
  };

  return (
    <div className="space-y-6 pb-6">
      {/* Header */}
      <div className="bg-white rounded-lg shadow-md p-6">
        <h1 className="text-4xl font-bold text-[#1F4E5F] mb-2">Manage Users</h1>
        <p className="text-gray-600">Kelola user dan role assignment</p>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 md:grid-cols-5 gap-4">
        <div className="bg-white rounded-lg shadow-md p-4">
          <p className="text-sm text-gray-600">Total Users</p>
          <p className="text-3xl font-bold text-blue-600 mt-2">{users.length}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-4">
          <p className="text-sm text-gray-600">Admins</p>
          <p className="text-3xl font-bold text-red-600 mt-2">{users.filter(u => u.role === 'admin').length}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-4">
          <p className="text-sm text-gray-600">Managers</p>
          <p className="text-3xl font-bold text-blue-600 mt-2">{users.filter(u => u.role === 'manager').length}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-4">
          <p className="text-sm text-gray-600">Barista</p>
          <p className="text-3xl font-bold text-green-600 mt-2">{users.filter(u => u.role === 'barista').length}</p>
        </div>
        <div className="bg-white rounded-lg shadow-md p-4">
          <p className="text-sm text-gray-600">Investors</p>
          <p className="text-3xl font-bold text-yellow-600 mt-2">{users.filter(u => u.role === 'investor').length}</p>
        </div>
      </div>

      {/* Messages */}
      {error && (
        <div className="bg-red-50 border border-red-200 rounded-lg p-4 text-red-800">
          {error}
        </div>
      )}
      {success && (
        <div className="bg-green-50 border border-green-200 rounded-lg p-4 text-green-800">
          {success}
        </div>
      )}

      {/* Filters and Actions */}
      <div className="bg-white rounded-lg shadow-md p-6 space-y-4">
        <div className="flex flex-col md:flex-row gap-4">
          {/* Search */}
          <div className="flex-1 relative">
            <Search size={20} className="absolute left-3 top-3 text-gray-400" />
            <input
              type="text"
              placeholder="Cari nama atau email..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              className="w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
          </div>

          {/* Role Filter */}
          <select
            value={roleFilter}
            onChange={(e) => setRoleFilter(e.target.value as UserRole | 'all')}
            className="px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
          >
            <option value="all">Semua Role</option>
            <option value="superadmin">Super Admin</option>
            <option value="admin">Admin</option>
            <option value="manager">Manager</option>
            <option value="barista">Barista</option>
            <option value="investor">Investor</option>
          </select>

          {/* Add Button */}
          <button
            onClick={handleOpenAddForm}
            className="flex items-center gap-2 px-6 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition font-semibold"
          >
            <Plus size={20} />
            Tambah User
          </button>
        </div>
      </div>

      {/* Users Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        {loading ? (
          <div className="p-8 text-center text-gray-500">Loading...</div>
        ) : filteredUsers.length === 0 ? (
          <div className="p-8 text-center text-gray-500">Tidak ada user ditemukan</div>
        ) : (
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">No.</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Name</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Email</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Role</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Phone</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Status</th>
                <th className="px-6 py-3 text-left text-sm font-semibold text-gray-800">Joined</th>
                <th className="px-6 py-3 text-center text-sm font-semibold text-gray-800">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y">
              {filteredUsers.map((user, index) => (
                <tr key={user.id} className="hover:bg-gray-50">
                  <td className="px-6 py-4 font-semibold text-gray-600">{index + 1}</td>
                  <td className="px-6 py-4 font-semibold text-gray-900">{user.name}</td>
                  <td className="px-6 py-4 text-gray-700">{user.email}</td>
                  <td className="px-6 py-4">
                    <span className={`px-3 py-1 rounded-full text-sm font-semibold ${roleColors[user.role]}`}>
                      {roleLabels[user.role]}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-gray-700">{user.phone || '-'}</td>
                  <td className="px-6 py-4">
                    <span className={`px-3 py-1 rounded-full text-sm font-semibold ${
                      user.is_active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'
                    }`}>
                      {user.is_active ? 'Active' : 'Inactive'}
                    </span>
                  </td>
                  <td className="px-6 py-4 text-sm text-gray-600">{formatDate(user.created_at)}</td>
                  <td className="px-6 py-4">
                    <div className="flex items-center justify-center gap-2">
                      <button
                        onClick={() => handleEdit(user)}
                        className="p-2 text-blue-600 hover:bg-blue-50 rounded-lg transition"
                        title="Edit user"
                      >
                        <Edit2 size={18} />
                      </button>
                      <button
                        onClick={() => handleDelete(user.id)}
                        className="p-2 text-red-600 hover:bg-red-50 rounded-lg transition"
                        title="Delete user"
                      >
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

      {/* Modal Form */}
      {showForm && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-lg p-8 max-w-md w-full mx-4">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">
              {editingUser ? 'Edit User' : 'Tambah User Baru'}
            </h2>
            
            {error && (
              <div className="mb-4 bg-red-50 border border-red-200 rounded p-3 text-red-800 text-sm">
                {error}
              </div>
            )}

            <form onSubmit={handleSubmit} className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Nama</label>
                <input
                  type="text"
                  value={formData.name}
                  onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                  placeholder="Nama lengkap"
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Email</label>
                <input
                  type="email"
                  value={formData.email}
                  onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                  placeholder="email@example.com"
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Telepon</label>
                <input
                  type="tel"
                  value={formData.phone}
                  onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                  placeholder="08XX XXXX XXXX"
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Role</label>
                <select
                  value={formData.role}
                  onChange={(e) => setFormData({ ...formData, role: e.target.value as UserRole })}
                  required
                  className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                >
                  <option value="">Pilih Role</option>
                  <option value="superadmin">Super Admin</option>
                  <option value="admin">Admin</option>
                  <option value="manager">Manager</option>
                  <option value="barista">Barista</option>
                  <option value="investor">Investor</option>
                </select>
              </div>

              <div className="flex gap-3 mt-6 pt-4 border-t">
                <button
                  type="button"
                  onClick={handleCloseForm}
                  className="flex-1 px-4 py-2 border border-gray-300 rounded-lg hover:bg-gray-50 font-semibold transition"
                >
                  Batal
                </button>
                <button
                  type="submit"
                  disabled={formLoading}
                  className="flex-1 px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 font-semibold transition disabled:opacity-50 disabled:cursor-not-allowed"
                >
                  {formLoading ? 'Menyimpan...' : 'Simpan'}
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
