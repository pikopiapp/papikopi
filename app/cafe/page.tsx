"use client";

import { useEffect, useState } from "react";
import Link from "next/link";

interface Cafe {
  id: string;
  name: string;
  address: string | null;
  created_at: string;
  outlets?: Array<{ id: string; name: string; type: string }>;
}

export default function CafeListPage() {
  const [cafes, setCafes] = useState<Cafe[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showForm, setShowForm] = useState(false);
  const [name, setName] = useState("");
  const [address, setAddress] = useState("");

  useEffect(() => {
    let mounted = true;

    async function load() {
      setLoading(true);
      try {
        const res = await fetch("/api/cafes");
        if (!res.ok) throw new Error("Gagal memuat data");
        const data = await res.json();
        if (mounted) setCafes(data);
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
  }, []);

  const refreshCafes = async () => {
    setLoading(true);
    try {
      const res = await fetch("/api/cafes");
      if (!res.ok) throw new Error("Gagal memuat data");
      const data = await res.json();
      setCafes(data);
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    } finally {
      setLoading(false);
    }
  };

  const handleCreate = async () => {
    if (!name.trim()) {
      setError("Nama cafe wajib diisi");
      return;
    }
    try {
      const res = await fetch("/api/cafes", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name, address }),
      });
      if (!res.ok) throw new Error("Gagal membuat cafe");
      setName("");
      setAddress("");
      setShowForm(false);
      setError(null);
      await refreshCafes();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  const handleDelete = async (id: string) => {
    if (!confirm("Yakin ingin menghapus cafe ini?")) return;
    try {
      const res = await fetch(`/api/cafes?id=${id}`, { method: "DELETE" });
      if (!res.ok) throw new Error("Gagal menghapus cafe");
      await refreshCafes();
    } catch (e) {
      setError(e instanceof Error ? e.message : "Terjadi kesalahan");
    }
  };

  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <div>
          <h2 className="text-2xl font-bold text-gray-900">Daftar Cafe / Foodcourt</h2>
          <p className="text-sm text-gray-600">Kelola cafe dan tenant yang tergabung</p>
        </div>
        <button
          onClick={() => setShowForm(!showForm)}
          className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700"
        >
          {showForm ? "Batal" : "+ Buat Cafe"}
        </button>
      </div>

      {error && (
        <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-700 rounded-md text-sm">
          {error}
        </div>
      )}

      {showForm && (
        <div className="mb-6 p-4 bg-white border rounded-lg shadow-sm">
          <h3 className="font-semibold mb-3">Buat Cafe Baru</h3>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Nama Cafe *</label>
              <input
                type="text"
                value={name}
                onChange={(e) => setName(e.target.value)}
                className="w-full px-3 py-2 border rounded-md"
                placeholder="Contoh: Papi Kopi Foodcourt"
              />
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 mb-1">Alamat</label>
              <input
                type="text"
                value={address}
                onChange={(e) => setAddress(e.target.value)}
                className="w-full px-3 py-2 border rounded-md"
                placeholder="Alamat cafe (opsional)"
              />
            </div>
          </div>
          <div className="mt-4 flex gap-2">
            <button
              onClick={handleCreate}
              className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700"
            >
              Simpan
            </button>
            <button
              onClick={() => setShowForm(false)}
              className="px-4 py-2 bg-gray-200 text-gray-700 rounded-md hover:bg-gray-300"
            >
              Batal
            </button>
          </div>
        </div>
      )}

      {loading ? (
        <div className="text-center py-10 text-gray-500">Memuat data...</div>
      ) : cafes.length === 0 ? (
        <div className="text-center py-10 text-gray-500 bg-white border rounded-lg">
          <p className="text-4xl mb-2">🏪</p>
          <p>Belum ada cafe. Buat cafe pertama Anda.</p>
        </div>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {cafes.map((cafe) => (
            <div key={cafe.id} className="bg-white border rounded-lg shadow-sm p-4">
              <div className="flex items-start justify-between">
                <div>
                  <h3 className="font-semibold text-gray-900">{cafe.name}</h3>
                  {cafe.address && (
                    <p className="text-sm text-gray-500 mt-1">{cafe.address}</p>
                  )}
                </div>
                <button
                  onClick={() => handleDelete(cafe.id)}
                  className="text-red-500 hover:text-red-700 text-sm"
                  title="Hapus cafe"
                >
                  🗑️
                </button>
              </div>
              <div className="mt-3">
                <p className="text-sm text-gray-600">
                  Tenant: <span className="font-semibold">{cafe.outlets?.length ?? 0}</span>
                </p>
              </div>
              <div className="mt-4 flex gap-2">
                <Link
                  href={`/cafe/${cafe.id}`}
                  className="flex-1 text-center px-3 py-2 bg-blue-50 text-blue-700 rounded-md hover:bg-blue-100 text-sm"
                >
                  Detail Cafe
                </Link>
                <Link
                  href={`/cafe/laporan?id=${cafe.id}`}
                  className="flex-1 text-center px-3 py-2 bg-gray-100 text-gray-700 rounded-md hover:bg-gray-200 text-sm"
                >
                  Laporan
                </Link>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}