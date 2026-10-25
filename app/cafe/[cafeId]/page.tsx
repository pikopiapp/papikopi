"use client";

import { useEffect, useState, useMemo, useRef } from "react";
import { useParams } from "next/navigation";
import Link from "next/link";

interface Cafe {
  id: string;
  name: string;
  address: string | null;
  description?: string | null;
  logo_url?: string | null;
  cover_url?: string | null;
  theme_primary_color?: string | null;
  theme_accent_color?: string | null;
  outlets?: Array<{ id: string; name: string; type: string; cafe_id: string | null; bonus_percentage: number | null; description?: string | null; logo_url?: string | null; cover_url?: string | null; theme_primary_color?: string | null; theme_accent_color?: string | null }>;
  users?: Array<{ id: string; name: string; email: string; role: string }>;
}

interface Outlet {
  id: string;
  name: string;
  type: string;
  cafe_id: string | null;
  bonus_percentage: number | null;
  description?: string | null;
  logo_url?: string | null;
  cover_url?: string | null;
  theme_primary_color?: string | null;
  theme_accent_color?: string | null;
}

interface StaffUser {
  id: string;
  name: string;
  email: string;
  role: string;
  outlet_id: string | null;
  cafe_id: string | null;
  is_active: boolean | null;
}

export default function CafeDetailPage() {
  const params = useParams<{ cafeId: string }>();
  const cafeId = params.cafeId;

  const [cafe, setCafe] = useState<Cafe | null>(null);
  const [allOutlets, setAllOutlets] = useState<Outlet[]>([]);
  const [allStaff, setAllStaff] = useState<StaffUser[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // Search states
  const [outletSearch, setOutletSearch] = useState("");
  const [userSearch, setUserSearch] = useState("");

  // Edit states
  const [editing, setEditing] = useState(false);
  const [name, setName] = useState("");
  const [address, setAddress] = useState("");
  const [description, setDescription] = useState("");
  const [themePrimary, setThemePrimary] = useState("#000000");
  const [themeAccent, setThemeAccent] = useState("#F59E0B");
  const [logoFile, setLogoFile] = useState<File | null>(null);
  const [coverFile, setCoverFile] = useState<File | null>(null);
  const [saving, setSaving] = useState(false);
  const logoInputRef = useRef<HTMLInputElement>(null);
  const coverInputRef = useRef<HTMLInputElement>(null);

  // Outlet edit modal states
  const [editingOutlet, setEditingOutlet] = useState<Outlet | null>(null);
  const [outletName, setOutletName] = useState("");
  const [outletDescription, setOutletDescription] = useState("");
  const [outletThemePrimary, setOutletThemePrimary] = useState("#000000");
  const [outletThemeAccent, setOutletThemeAccent] = useState("#F59E0B");
  const [outletLogoFile, setOutletLogoFile] = useState<File | null>(null);
  const [outletCoverFile, setOutletCoverFile] = useState<File | null>(null);
  const [savingOutlet, setSavingOutlet] = useState(false);

  useEffect(() => {
    let mounted = true;

    async function load() {
      setLoading(true);
      try {
        const [cafeRes, outletRes, staffRes] = await Promise.all([
          fetch(`/api/cafes?id=${cafeId}`),
          fetch("/api/outlets"),
          fetch("/api/staff"),
        ]);
        if (!cafeRes.ok || !outletRes.ok || !staffRes.ok) throw new Error("Gagal memuat data");
        const cafeData = await cafeRes.json();
        const outletData = await outletRes.json();
        const staffData = await staffRes.json();
        if (mounted) {
          setCafe(cafeData);
          setAllOutlets(outletData);
          setAllStaff(staffData);
          if (cafeData) {
            setName(cafeData.name || "");
            setAddress(cafeData.address || "");
            setDescription(cafeData.description || "");
            setThemePrimary(cafeData.theme_primary_color || "#000000");
            setThemeAccent(cafeData.theme_accent_color || "#F59E0B");
          }
        }
      } catch (e) {
        if (mounted) setError(e instanceof Error ? e.message : "Terjadi kesalahan");
      } finally {
        if (mounted) setLoading(false);
      }
    }

    load();
    return () => {
      mounted = false;
    };
  }, [cafeId]);

  const refreshCafe = async () => {
    try {
      const cafeRes = await fetch(`/api/cafes?id=${cafeId}`);
      if (!cafeRes.ok) throw new Error("Gagal memuat ulang data");
      const cafeData = await cafeRes.json();
      setCafe(cafeData);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  const assignTenant = async (outletId: string, cafeIdValue: string | null) => {
    try {
      const res = await fetch("/api/cafes/assign-tenant", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ outlet_id: outletId, cafe_id: cafeIdValue }),
      });
      if (!res.ok) throw new Error("Gagal mengupdate tenant");
      await refreshCafe();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  const openEditOutlet = (outlet: Outlet) => {
    setEditingOutlet(outlet);
    setOutletName(outlet.name);
    setOutletDescription(outlet.description || "");
    setOutletThemePrimary(outlet.theme_primary_color || "#000000");
    setOutletThemeAccent(outlet.theme_accent_color || "#F59E0B");
    setOutletLogoFile(null);
    setOutletCoverFile(null);
  };

  const saveOutletInfo = async () => {
    if (!editingOutlet) return;
    setSavingOutlet(true);
    try {
      let logoUrl = editingOutlet.logo_url || null;
      let coverUrl = editingOutlet.cover_url || null;

      if (outletLogoFile) {
        logoUrl = await uploadToStorage(outletLogoFile, `outlet/${editingOutlet.id}/logo${outletLogoFile.name.substring(outletLogoFile.name.lastIndexOf('.'))}`);
      }
      if (outletCoverFile) {
        coverUrl = await uploadToStorage(outletCoverFile, `outlet/${editingOutlet.id}/cover${outletCoverFile.name.substring(outletCoverFile.name.lastIndexOf('.'))}`);
      }

      const res = await fetch("/api/outlets/update-info", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          outlet_id: editingOutlet.id,
          name: outletName,
          description: outletDescription,
          logo_url: logoUrl,
          cover_url: coverUrl,
          theme_primary_color: outletThemePrimary,
          theme_accent_color: outletThemeAccent,
        }),
      });

      if (!res.ok) throw new Error("Gagal menyimpan info tenant");
      setEditingOutlet(null);
      await refreshCafe();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    } finally {
      setSavingOutlet(false);
    }
  };

  const updateBonus = async (outletId: string, bonus: string) => {
    try {
      const res = await fetch("/api/cafes/assign-tenant", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          outlet_id: outletId,
          cafe_id: cafeId,
          bonus_percentage: bonus ? Number(bonus) : null,
        }),
      });
      if (!res.ok) throw new Error("Gagal mengupdate bonus");
      await refreshCafe();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  const assignUser = async (userId: string, cafeIdValue: string | null) => {
    try {
      const res = await fetch("/api/cafes/assign-user", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ user_id: userId, cafe_id: cafeIdValue }),
      });
      if (!res.ok) throw new Error("Gagal mengupdate user cafe");
      await refreshCafe();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  const uploadToStorage = async (file: File, path: string) => {
    const formData = new FormData();
    formData.append("file", file);
    formData.append("path", path);

    const res = await fetch("/api/upload", {
      method: "POST",
      body: formData,
    });

    if (!res.ok) throw new Error("Gagal upload");
    const data = await res.json();
    return data.url as string;
  };

  const handleSave = async () => {
    setSaving(true);
    try {
      let logoUrl = cafe?.logo_url || null;
      let coverUrl = cafe?.cover_url || null;

      if (logoFile) {
        logoUrl = await uploadToStorage(logoFile, `cafe/${cafeId}/logo${logoFile.name.substring(logoFile.name.lastIndexOf('.'))}`);
      }
      if (coverFile) {
        coverUrl = await uploadToStorage(coverFile, `cafe/${cafeId}/cover${coverFile.name.substring(coverFile.name.lastIndexOf('.'))}`);
      }

      const res = await fetch("/api/cafes/update-info", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          cafe_id: cafeId,
          name,
          address,
          description,
          logo_url: logoUrl,
          cover_url: coverUrl,
          theme_primary_color: themePrimary,
          theme_accent_color: themeAccent,
        }),
      });

      if (!res.ok) throw new Error("Gagal menyimpan info cafe");
      await refreshCafe();
      setEditing(false);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    } finally {
      setSaving(false);
    }
  };

  const tenantIds = useMemo(() => new Set((cafe?.outlets ?? []).map((o) => o.id)), [cafe?.outlets]);
  const cafeUserIds = useMemo(() => new Set((cafe?.users ?? []).map((u) => u.id)), [cafe?.users]);
  const assignedUsers = cafe?.users ?? [];

  const availableOutlets = useMemo(() => {
    const q = outletSearch.toLowerCase().trim();
    const base = allOutlets.filter((o) => !tenantIds.has(o.id));
    if (!q) return base;
    return base.filter(
      (o) =>
        o.name.toLowerCase().includes(q) ||
        o.type.toLowerCase().includes(q)
    );
  }, [allOutlets, outletSearch, tenantIds]);

  const availableStaff = useMemo(() => {
    const q = userSearch.toLowerCase().trim();
    const base = allStaff.filter((u) => !cafeUserIds.has(u.id) && u.is_active !== false);
    if (!q) return base;
    return base.filter(
      (u) =>
        (u.name || '').toLowerCase().includes(q) ||
        u.email.toLowerCase().includes(q) ||
        u.role.toLowerCase().includes(q)
    );
  }, [allStaff, userSearch, cafeUserIds]);

  if (loading) return <div className="text-center py-10 text-gray-500">Memuat data...</div>;

  if (!cafe) return <div className="text-center py-10 text-gray-500">Cafe tidak ditemukan</div>;

  return (
    <div>
      <div className="mb-6">
        <Link href="/cafe" className="text-sm text-blue-600 hover:underline">← Kembali ke Daftar Cafe</Link>
        <h2 className="text-2xl font-bold text-gray-900 mt-2">{cafe.name}</h2>
        {cafe.address && <p className="text-sm text-gray-600">{cafe.address}</p>}
      </div>

      {error && (
        <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-700 rounded-md text-sm">
          {error}
        </div>
      )}

      {/* Info Cafe + Edit */}
      <div className="bg-white border rounded-lg shadow-sm p-4 mb-6">
        <div className="flex items-center justify-between mb-4">
          <h3 className="font-semibold">Info Cafe</h3>
          {!editing && (
            <button onClick={() => setEditing(true)} className="px-3 py-1 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-sm">
              Edit Info
            </button>
          )}
        </div>

        {!editing ? (
          <div className="flex flex-col md:flex-row gap-4">
            {cafe.logo_url && (
              <img src={cafe.logo_url} alt="Logo" className="w-24 h-24 object-contain border rounded-md" />
            )}
            {cafe.cover_url && (
              <img src={cafe.cover_url} alt="Cover" className="w-full md:w-96 h-32 object-cover border rounded-md" />
            )}
            <div className="flex-1">
              <p className="text-sm text-gray-600"><strong>Deskripsi:</strong> {cafe.description || "-"}</p>
              <div className="mt-2 flex gap-2">
                <span className="inline-block w-6 h-6 rounded border" style={{ backgroundColor: cafe.theme_primary_color || '#000000' }} title="Primary" />
                <span className="inline-block w-6 h-6 rounded border" style={{ backgroundColor: cafe.theme_accent_color || '#F59E0B' }} title="Accent" />
              </div>
            </div>
          </div>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Nama Cafe</label>
              <input type="text" value={name} onChange={(e) => setName(e.target.value)} className="w-full px-3 py-2 border rounded-md" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Alamat</label>
              <input type="text" value={address} onChange={(e) => setAddress(e.target.value)} className="w-full px-3 py-2 border rounded-md" />
            </div>
            <div className="md:col-span-2">
              <label className="block text-sm font-medium text-gray-700 mb-1">Deskripsi</label>
              <textarea value={description} onChange={(e) => setDescription(e.target.value)} className="w-full px-3 py-2 border rounded-md" rows={3} />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Theme Primary</label>
              <input type="color" value={themePrimary} onChange={(e) => setThemePrimary(e.target.value)} className="w-full h-10 px-1 py-1 border rounded-md" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Theme Accent</label>
              <input type="color" value={themeAccent} onChange={(e) => setThemeAccent(e.target.value)} className="w-full h-10 px-1 py-1 border rounded-md" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Logo</label>
              <input ref={logoInputRef} type="file" accept="image/*" onChange={(e) => setLogoFile(e.target.files?.[0] || null)} className="w-full text-sm" />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Cover</label>
              <input ref={coverInputRef} type="file" accept="image/*" onChange={(e) => setCoverFile(e.target.files?.[0] || null)} className="w-full text-sm" />
            </div>
            <div className="md:col-span-2 flex gap-2">
              <button onClick={handleSave} disabled={saving} className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-sm">
                {saving ? "Menyimpan..." : "Simpan"}
              </button>
              <button onClick={() => setEditing(false)} className="px-4 py-2 bg-gray-200 text-gray-700 rounded-md hover:bg-gray-300 text-sm">
                Batal
              </button>
            </div>
          </div>
        )}
      </div>

      {/* Pengelola & Kasir Cafe */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
        <div className="bg-white border rounded-lg shadow-sm p-4">
          <h3 className="font-semibold mb-3">Pengelola & Kasir Cafe ({assignedUsers.length})</h3>
          {assignedUsers.length > 0 ? (
            <div className="space-y-3">
              {assignedUsers.map((user) => (
                <div key={user.id} className="border rounded-md p-3">
                  <div className="flex items-center justify-between">
                    <div>
                      <p className="font-medium">{user.name || user.email}</p>
                      <p className="text-xs text-gray-500">
                        {user.email} • <span className="capitalize">{user.role}</span>
                      </p>
                    </div>
                    <button onClick={() => assignUser(user.id, null)} className="text-red-500 hover:text-red-700 text-sm">Lepas</button>
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-sm text-gray-500">Belum ada pengelola/kasir di cafe ini.</p>
          )}
        </div>

        <div className="bg-white border rounded-lg shadow-sm p-4">
          <h3 className="font-semibold mb-3">User Tersedia ({availableStaff.length})</h3>
          <input type="text" value={userSearch} onChange={(e) => setUserSearch(e.target.value)} className="w-full px-3 py-2 border rounded-md mb-3" placeholder="Cari user (nama/email/role)..." />
          {availableStaff.length > 0 ? (
            <div className="space-y-2 max-h-80 overflow-y-auto">
              {availableStaff.map((user) => (
                <div key={user.id} className="flex items-center justify-between border rounded-md p-3">
                  <div>
                    <p className="font-medium">{user.name || user.email}</p>
                    <p className="text-xs text-gray-500">{user.email} • <span className="capitalize">{user.role}</span></p>
                  </div>
                  <button onClick={() => assignUser(user.id, cafeId)} className="px-3 py-1 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-sm">Jadikan Pengelola</button>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-sm text-gray-500">Semua user sudah menjadi pengelola cafe lain.</p>
          )}
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Tenant saat ini */}
        <div className="bg-white border rounded-lg shadow-sm p-4">
          <h3 className="font-semibold mb-3">Tenant dalam Cafe ({cafe.outlets?.length ?? 0})</h3>
          {cafe.outlets && cafe.outlets.length > 0 ? (
            <div className="space-y-3">
              {cafe.outlets.map((outlet) => (
                <div key={outlet.id} className="border rounded-md p-3">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-3">
                      {outlet.logo_url && <img src={outlet.logo_url} alt="Logo" className="w-10 h-10 object-contain border rounded" />}
                      <div>
                        <p className="font-medium">{outlet.name}</p>
                        <p className="text-xs text-gray-500">{outlet.type}</p>
                      </div>
                    </div>
                    <div className="flex gap-2">
                      <button onClick={() => openEditOutlet(outlet)} className="text-blue-500 hover:text-blue-700 text-sm">Edit</button>
                      <button onClick={() => assignTenant(outlet.id, null)} className="text-red-500 hover:text-red-700 text-sm">Lepas</button>
                    </div>
                  </div>
                  <div className="mt-2">
                    <label className="block text-xs text-gray-600 mb-1">Bonus % (opsional)</label>
                    <input type="number" defaultValue={outlet.bonus_percentage ?? ""} onBlur={(e) => updateBonus(outlet.id, e.target.value)} className="w-24 px-2 py-1 border rounded-md text-sm" placeholder="0" />
                  </div>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-sm text-gray-500">Belum ada tenant dalam cafe ini.</p>
          )}
        </div>

        {/* Outlet yang tersedia */}
        <div className="bg-white border rounded-lg shadow-sm p-4">
          <h3 className="font-semibold mb-3">Outlet Tersedia ({availableOutlets.length})</h3>
          <input type="text" value={outletSearch} onChange={(e) => setOutletSearch(e.target.value)} className="w-full px-3 py-2 border rounded-md mb-3" placeholder="Cari outlet (nama/tipe)..." />
          {availableOutlets.length > 0 ? (
            <div className="space-y-2 max-h-80 overflow-y-auto">
              {availableOutlets.map((outlet) => (
                <div key={outlet.id} className="flex items-center justify-between border rounded-md p-3">
                  <div>
                    <p className="font-medium">{outlet.name}</p>
                    <p className="text-xs text-gray-500">{outlet.type}</p>
                  </div>
                  <button onClick={() => assignTenant(outlet.id, cafeId)} className="px-3 py-1 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-sm">Jadikan Tenant</button>
                </div>
              ))}
            </div>
          ) : (
            <p className="text-sm text-gray-500">Semua outlet sudah menjadi tenant.</p>
          )}
        </div>
      </div>

      {/* Modal Edit Outlet */}
      {editingOutlet && (
        <div className="fixed inset-0 bg-black/50 z-50 flex items-center justify-center p-4">
          <div className="bg-white rounded-lg shadow-lg w-full max-w-2xl max-h-[90vh] overflow-y-auto">
            <div className="p-4 border-b flex items-center justify-between">
              <h3 className="font-semibold">Edit Info Tenant</h3>
              <button onClick={() => setEditingOutlet(null)} className="text-gray-500 hover:text-gray-700">✕</button>
            </div>
            <div className="p-4 grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Nama Outlet</label>
                <input type="text" value={outletName} onChange={(e) => setOutletName(e.target.value)} className="w-full px-3 py-2 border rounded-md" />
              </div>
              <div className="md:col-span-2">
                <label className="block text-sm font-medium text-gray-700 mb-1">Deskripsi</label>
                <textarea value={outletDescription} onChange={(e) => setOutletDescription(e.target.value)} className="w-full px-3 py-2 border rounded-md" rows={3} />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Theme Primary</label>
                <input type="color" value={outletThemePrimary} onChange={(e) => setOutletThemePrimary(e.target.value)} className="w-full h-10 px-1 py-1 border rounded-md" />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Theme Accent</label>
                <input type="color" value={outletThemeAccent} onChange={(e) => setOutletThemeAccent(e.target.value)} className="w-full h-10 px-1 py-1 border rounded-md" />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Logo</label>
                <input type="file" accept="image/*" onChange={(e) => setOutletLogoFile(e.target.files?.[0] || null)} className="w-full text-sm" />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Cover</label>
                <input type="file" accept="image/*" onChange={(e) => setOutletCoverFile(e.target.files?.[0] || null)} className="w-full text-sm" />
              </div>
              <div className="md:col-span-2 flex gap-2">
                <button onClick={saveOutletInfo} disabled={savingOutlet} className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 text-sm">
                  {savingOutlet ? "Menyimpan..." : "Simpan"}
                </button>
                <button onClick={() => setEditingOutlet(null)} className="px-4 py-2 bg-gray-200 text-gray-700 rounded-md hover:bg-gray-300 text-sm">Batal</button>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
