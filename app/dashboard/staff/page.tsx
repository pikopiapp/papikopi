'use client';

import { useEffect, useState, useCallback } from 'react';
import { useAuthStore } from '@/lib/store/auth';
import { Users, Plus, Edit2, Trash2, Check, X, AlertCircle, Coffee, Phone, Store, BadgeCheck } from 'lucide-react';

interface StaffMember {
  id: string;
  name: string;
  email: string;
  phone?: string;
  role: string;
  is_active: boolean;
  outlet_id?: string | null;
  avatar_url?: string | null;
  photo_url?: string | null;
  profile_image_url?: string | null;
  image_url?: string | null;
  avatar?: string | null;
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
  const [photoFile, setPhotoFile] = useState<File | null>(null);
  const [photoPreview, setPhotoPreview] = useState<string | null>(null);
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
    // defer to avoid synchronous setState inside effect
    const t = setTimeout(() => {
      fetchStaff();
      fetchOutlets();
    }, 0);
    return () => clearTimeout(t);
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

      let res: Response;
      if (photoFile) {
        const fd = new FormData();
        if (editingId) fd.append('id', editingId);
        fd.append('name', formData.name);
        fd.append('email', formData.email);
        fd.append('phone', formData.phone);
        fd.append('role', formData.role);
        if (!editingId) fd.append('outlet_id', outletId || '');
        fd.append('photo', photoFile);

        console.log('Submitting staff form with photo:', { method, formData: fd });

        res = await fetch('/api/staff', {
          method,
          body: fd,
        });
      } else {
        const body = editingId
          ? { id: editingId, name: formData.name, email: formData.email, phone: formData.phone, role: formData.role }
          : { name: formData.name, email: formData.email, phone: formData.phone, role: formData.role, outlet_id: outletId };

        console.log('Submitting staff form:', { method, body });

        res = await fetch('/api/staff', {
          method,
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(body)
        });
      }

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
    <div className="flex h-96 items-center justify-center p-6">
      <div className="text-center">
        <div className="mb-2 text-gray-400">
          <Users size={48} className="mx-auto opacity-30" />
        </div>
        <p className="text-gray-500">Loading staff members...</p>
        <p className="mt-2 text-xs text-gray-400">Outlet ID: {outletId || 'Loading...'}</p>
      </div>
    </div>
  );

  const getRoleLabel = (role: string) => {
    switch (role) {
      case 'barista': return '☕ Barista';
      case 'cashier': return '💳 Cashier';
      case 'investor': return '💰 Investor';
      case 'manager': return '👨‍💼 Manager';
      case 'admin': return '🔐 Admin';
      default: return role;
    }
  };

  const getInitials = (name: string) =>
    name
      .split(' ')
      .filter(Boolean)
      .slice(0, 2)
      .map(part => part[0]?.toUpperCase() || '')
      .join('');

  return (
    <div className="space-y-6 p-6">
      <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
        <div className="flex items-center gap-3">
          <div className="rounded-2xl bg-amber-100 p-3 text-amber-700">
            <Users size={28} />
          </div>
          <div>
            <h1 className="text-3xl font-bold text-gray-900">Manajemen Barista</h1>
            <p className="text-sm text-gray-500">Kelola anggota barista dan tugaskan ke outlet</p>
          </div>
        </div>
        <button
          onClick={() => {
            setEditingId(null);
            setFormData({ name: '', email: '', phone: '', role: 'barista' });
            setError(null);
            setShowForm(!showForm);
          }}
          className="flex items-center gap-2 rounded-lg bg-amber-600 px-4 py-2 text-white transition hover:bg-amber-700"
        >
          <Plus size={20} />
          Tambah Barista
        </button>
      </div>

      {error && (
        <div className="flex items-start gap-3 rounded-lg border border-red-200 bg-red-50 p-4">
          <AlertCircle size={20} className="mt-0.5 shrink-0 text-red-600" />
          <div>
            <p className="font-medium text-red-800">Error</p>
            <p className="text-sm text-red-700">{error}</p>
          </div>
        </div>
      )}

      {success && (
        <div className="rounded-lg border border-green-200 bg-green-50 p-4">
          <p className="font-medium text-green-800">{success}</p>
        </div>
      )}

      {showForm && (
        <div className="rounded-2xl border border-amber-100 bg-white p-6 shadow-sm">
          <h2 className="mb-4 text-lg font-semibold">{editingId ? 'Edit Staff Member' : 'Add New Staff Member'}</h2>
          <form onSubmit={handleSubmit} className="space-y-4">
            <div className="grid grid-cols-1 gap-4 md:grid-cols-3">
              <input
                type="text"
                placeholder="Full Name"
                value={formData.name}
                onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                required
                className="rounded-lg border px-4 py-2 focus:border-transparent focus:ring-2 focus:ring-amber-500"
              />
              <input
                type="email"
                placeholder="Email Address"
                value={formData.email}
                onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                required
                className="rounded-lg border px-4 py-2 focus:border-transparent focus:ring-2 focus:ring-amber-500"
              />
              <input
                type="tel"
                placeholder="Phone Number (optional)"
                value={formData.phone}
                onChange={(e) => setFormData({ ...formData, phone: e.target.value })}
                className="rounded-lg border px-4 py-2 focus:border-transparent focus:ring-2 focus:ring-amber-500"
              />
              <div className="col-span-1 md:col-span-3">
                <label className="mb-2 inline-block text-sm text-gray-600">Photo</label>
                <div className="mt-1 flex items-center gap-3">
                  <div className="h-14 w-14 overflow-hidden rounded-lg bg-gray-100">
                    {photoPreview ? (
                      // eslint-disable-next-line @next/next/no-img-element
                      <img src={photoPreview} alt="preview" className="h-full w-full object-cover" />
                    ) : (
                      <div className="flex h-full w-full items-center justify-center text-sm text-gray-400">No photo</div>
                    )}
                  </div>
                  <input
                    type="file"
                    accept="image/*"
                    onChange={(e) => {
                      const f = e.currentTarget.files?.[0] || null;
                      setPhotoFile(f);
                      if (f) setPhotoPreview(URL.createObjectURL(f));
                    }}
                    className="text-sm text-gray-600"
                  />
                </div>
              </div>
              <select
                value={formData.role}
                onChange={(e) => setFormData({ ...formData, role: e.target.value })}
                className="rounded-lg border px-4 py-2 focus:border-transparent focus:ring-2 focus:ring-amber-500"
              >
                <option value="barista">☕ Barista</option>
                <option value="cashier">💳 Cashier</option>
                <option value="investor">💰 Investor</option>
                <option value="manager">👨‍💼 Manager</option>
                <option value="admin">🔐 Admin</option>
              </select>
            </div>
            <div className="flex justify-end gap-2">
              <button
                type="button"
                onClick={() => {
                  setShowForm(false);
                  setEditingId(null);
                }}
                className="flex items-center gap-2 rounded-lg bg-gray-200 px-6 py-2 text-gray-800 transition hover:bg-gray-300"
              >
                <X size={18} />
                Cancel
              </button>
              <button type="submit" className="flex items-center gap-2 rounded-lg bg-green-600 px-6 py-2 text-white transition hover:bg-green-700">
                <Check size={18} />
                Save
              </button>
            </div>
          </form>
        </div>
      )}

      <div className="rounded-2xl border border-gray-200 bg-white shadow-sm">
        <div className="border-b border-gray-200 bg-gray-50 p-6">
          <div className="flex flex-wrap items-center justify-between gap-3">
            <div>
              <h3 className="text-lg font-semibold text-gray-900">Daftar Barista ({staff.length})</h3>
              <p className="mt-1 text-xs text-gray-500">Total: {staff.length} barista</p>
            </div>
            <div className="rounded-full bg-amber-100 px-3 py-1 text-sm font-medium text-amber-700">
              {staff.filter(member => member.is_active).length} aktif
            </div>
          </div>
        </div>

        {staff.length === 0 ? (
          <div className="p-8 text-center">
            <Users size={48} className="mx-auto mb-4 text-gray-300" />
            <p className="font-medium text-gray-500">Belum ada barista</p>
            <p className="text-sm text-gray-400">Tambahkan barista pertama Anda untuk memulai</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 gap-6 p-6 md:grid-cols-2 xl:grid-cols-4">
            {staff.map((member) => {
              const outletName = outlets.find(o => o.id === member.outlet_id)?.name;
              const avatarSrc = member.avatar_url || member.photo_url || member.profile_image_url || member.image_url || member.avatar;
              const initials = getInitials(member.name);

              return (
                <div key={member.id} className="group overflow-hidden rounded-2xl border border-gray-200 bg-white shadow-sm transition duration-200 hover:-translate-y-1 hover:shadow-lg">
                  <div className="relative">
                    <div className="h-72 w-full overflow-hidden rounded-t-2xl bg-gray-100">
                      {avatarSrc ? (
                        <img
                          src={avatarSrc}
                          alt={member.name}
                          className="h-full w-full object-cover"
                          onError={(e) => {
                            e.currentTarget.style.display = 'none';
                            const parent = e.currentTarget.parentElement;
                            if (parent) parent.textContent = initials;
                          }}
                        />
                      ) : (
                        <div className="flex h-full w-full items-center justify-center bg-amber-100 text-4xl font-bold text-amber-800">{initials}</div>
                      )}

                      <div className="absolute inset-x-0 bottom-0 rounded-b-2xl bg-linear-to-t from-black/60 to-transparent px-4 py-3 text-white">
                        <div className="text-center">
                          <div className="flex items-center justify-center gap-2 text-lg font-semibold">
                            <span>{member.name}</span>
                            <span className="inline-flex items-center justify-center rounded-full bg-white/20 px-2 py-0.5 text-sm">✓</span>
                          </div>
                          <div className="mt-1 text-sm text-white/90">{getRoleLabel(member.role)}</div>
                        </div>
                      </div>

                      <div className="absolute top-3 right-3 flex gap-2">
                        <button
                          onClick={() => handleEdit(member)}
                          className="rounded-lg bg-white p-2 text-blue-600 shadow-sm transition hover:bg-blue-50"
                          title="Edit"
                        >
                          <Edit2 size={16} />
                        </button>
                        <button
                          onClick={() => handleDelete(member.id)}
                          className="rounded-lg bg-white p-2 text-red-600 shadow-sm transition hover:bg-red-50"
                          title="Delete"
                        >
                          <Trash2 size={16} />
                        </button>
                      </div>
                    </div>
                  </div>

                  <div className="px-5 -mt-8 mb-3 text-center">
                    <span className="inline-flex items-center justify-center rounded-full bg-amber-100 px-3 py-1 text-sm font-semibold text-amber-800">{getRoleLabel(member.role)}</span>
                  </div>

                  <div className="space-y-3 px-5 pb-6 text-sm text-gray-700">
                    <div className="flex items-center justify-between">
                      <div className="text-xs text-gray-500">Email</div>
                      <div className="font-medium text-gray-800">{member.email || '-'}</div>
                    </div>

                    <div className="flex items-center justify-between">
                      <div className="text-xs text-gray-500">Phone</div>
                      <div className="font-medium text-gray-800">{member.phone || '-'}</div>
                    </div>

                    <div className="flex items-center justify-between">
                      <div className="text-xs text-gray-500">Outlet</div>
                      <div className="font-medium text-gray-800">{outletName || 'Unassigned'}</div>
                    </div>

                    <div className="flex items-center justify-between">
                      <div className="text-xs text-gray-500">Status</div>
                      <div>
                        <button
                          onClick={() => handleToggleStatus(member)}
                          className={`rounded-full px-3 py-1 text-xs font-semibold ${member.is_active ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800'}`}
                        >
                          {member.is_active ? '✓ Active' : '✕ Inactive'}
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
