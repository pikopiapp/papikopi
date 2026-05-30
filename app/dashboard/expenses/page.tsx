"use client";

import React, { useEffect, useState } from "react";
import { Calendar, Edit2, Plus, Trash2 } from "lucide-react";

interface Expense {
  id: string;
  category: string;
  description: string;
  amount: number;
}

interface InventoryPurchase {
  id: string;
  ingredient_id: string;
  ingredient_name?: string;
  quantity: number;
  unit?: string;
  unit_price: number;
  total_price: number;
  supplier?: string;
  notes?: string;
  purchase_date: string;
}

interface BaristaBonus {
  id: string;
  outlet_id: string;
  outlet_name?: string;
  barista_id: string;
  barista_name?: string;
  total_amount: number;
  bonus_amount: number;
  created_at: string;
}

const categories = ["Bahan Baku", "Listrik/Air", "Gaji", "Sewa", "Lainnya"];

export default function ExpensesPage() {
  const [tab, setTab] = useState<"expense" | "inventory" | "bonus">("expense");

  const [selectedDate, setSelectedDate] = useState(() => {
    const today = new Date();
    return today.toISOString().slice(0, 10);
  });

  const [expenses, setExpenses] = useState<Expense[]>([]);
  const [loading, setLoading] = useState(false);

  const [showForm, setShowForm] = useState(false);
  const [editing, setEditing] = useState<Expense | null>(null);
  const [formData, setFormData] = useState<{ category: string; description: string; amount: string }>(
    { category: categories[0], description: "", amount: "" },
  );

  const [inventoryPurchases, setInventoryPurchases] = useState<InventoryPurchase[]>([]);
  const [loadingInventory, setLoadingInventory] = useState(false);

  const [baristaBonuses, setBaristaBonuses] = useState<BaristaBonus[]>([]);
  const [loadingBonus, setLoadingBonus] = useState(false);

  useEffect(() => {
    // functions are declared below; this avoids the parser error from the previous corrupted file
    // eslint-disable-next-line
    fetchExpenses();
    // eslint-disable-next-line
    fetchInventoryPurchases();
    // eslint-disable-next-line
    fetchBaristaBonuses();
  }, [selectedDate]);

  function handleInput(e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>) {

    setFormData((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  }

  function handleEdit(exp: Expense) {
    setEditing(exp);
    setFormData({ category: exp.category, description: exp.description, amount: exp.amount.toString() });
    setShowForm(true);
  }

  async function handleDelete(id: string) {
    if (!confirm("Hapus pengeluaran ini?")) return;
    await fetch(`/api/expenses?id=${id}`, { method: "DELETE" });
    fetchExpenses();
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const body = {
      ...formData,
      amount: Number(formData.amount),
      date: selectedDate,
      id: editing?.id,
    };

    await fetch("/api/expenses", {
      method: editing ? "PUT" : "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    });

    setShowForm(false);
    setEditing(null);
    setFormData({ category: categories[0], description: "", amount: "" });
    fetchExpenses();
  }

  async function fetchExpenses() {
    setLoading(true);
    try {
      const res = await fetch(`/api/expenses?date=${selectedDate}`);
      const data = await res.json();
      setExpenses(Array.isArray(data) ? data : []);
    } catch {
      setExpenses([]);
    } finally {
      setLoading(false);
    }
  }

  async function fetchInventoryPurchases() {
    setLoadingInventory(true);
    try {
      const res = await fetch(`/api/inventory-purchases?date=${selectedDate}`);
      const data = await res.json();
      setInventoryPurchases(Array.isArray(data) ? data : []);
    } catch {
      setInventoryPurchases([]);
    } finally {
      setLoadingInventory(false);
    }
  }

  async function fetchBaristaBonuses() {
    setLoadingBonus(true);
    try {
      const res = await fetch(`/api/barista-bonus?date=${selectedDate}`);
      const data = await res.json();
      setBaristaBonuses(Array.isArray(data) ? data : []);
    } catch {
      setBaristaBonuses([]);
    } finally {
      setLoadingBonus(false);
    }
  }

  return (
    <div className="max-w-3xl mx-auto p-4">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-2xl font-bold">Pencatatan Pengeluaran</h1>
      </div>

      <div className="flex items-center gap-2 mb-4">
        <label className="flex items-center gap-1">
          <Calendar size={16} />
          <input
            type="date"
            value={selectedDate}
            onChange={(e) => setSelectedDate(e.target.value)}
            className="border rounded px-2 py-1"
          />
        </label>
      </div>

      <div className="flex gap-2 mb-4">
        <button
          className={`px-4 py-2 rounded-t ${tab === "expense" ? "bg-orange-500 text-white" : "bg-gray-200 text-gray-700"}`}
          onClick={() => setTab("expense")}
        >
          Pengeluaran Umum
        </button>
        <button
          className={`px-4 py-2 rounded-t ${tab === "inventory" ? "bg-orange-500 text-white" : "bg-gray-200 text-gray-700"}`}
          onClick={() => setTab("inventory")}
        >
          Pengeluaran Inventory
        </button>
        <button
          className={`px-4 py-2 rounded-t ${tab === "bonus" ? "bg-orange-500 text-white" : "bg-gray-200 text-gray-700"}`}
          onClick={() => setTab("bonus")}
        >
          Bonus Barista
        </button>
      </div>

      {tab === "expense" && (
        <div>
          <div className="flex justify-end mb-2">
            <button
              className="flex items-center gap-2 bg-orange-500 hover:bg-orange-600 text-white px-4 py-2 rounded"
              onClick={() => {
                setShowForm(true);
                setEditing(null);
                setFormData({ category: categories[0], description: "", amount: "" });
              }}
            >
              <Plus size={18} /> Tambah
            </button>
          </div>

          {loading ? (
            <div className="text-center py-8">Loading...</div>
          ) : (
            <div className="bg-white rounded shadow p-4">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b">
                    <th className="text-left py-2">Kategori</th>
                    <th className="text-left py-2">Deskripsi</th>
                    <th className="text-right py-2">Jumlah</th>
                    <th className="text-center py-2">Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  {expenses.length === 0 ? (
                    <tr>
                      <td colSpan={4} className="text-center py-8 text-gray-400">
                        Belum ada pengeluaran
                      </td>
                    </tr>
                  ) : (
                    expenses.map((exp) => (
                      <tr key={exp.id} className="border-b hover:bg-gray-50">
                        <td>{exp.category}</td>
                        <td>{exp.description}</td>
                        <td className="text-right">Rp {exp.amount.toLocaleString("id-ID")}</td>
                        <td className="text-center">
                          <button
                            className="text-blue-500 hover:underline mr-2"
                            onClick={() => handleEdit(exp)}
                            title="Edit"
                          >
                            <Edit2 size={16} />
                          </button>
                          <button
                            className="text-red-500 hover:underline"
                            onClick={() => handleDelete(exp.id)}
                            title="Hapus"
                          >
                            <Trash2 size={16} />
                          </button>
                        </td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          )}
        </div>
      )}

      {tab === "inventory" && (
        <div>
          {loadingInventory ? (
            <div className="text-center py-8">Loading...</div>
          ) : (
            <div className="bg-white rounded shadow p-4">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b">
                    <th className="text-left py-2">Bahan Baku</th>
                    <th className="text-right py-2">Jumlah</th>
                    <th className="text-right py-2">Harga Satuan</th>
                    <th className="text-right py-2">Total</th>
                    <th className="text-left py-2">Supplier</th>
                    <th className="text-left py-2">Catatan</th>
                    <th className="text-center py-2">Tanggal</th>
                  </tr>
                </thead>
                <tbody>
                  {inventoryPurchases.length === 0 ? (
                    <tr>
                      <td colSpan={7} className="text-center py-8 text-gray-400">
                        Tidak ada pembelian inventory
                      </td>
                    </tr>
                  ) : (
                    inventoryPurchases.map((p) => (
                      <tr key={p.id} className="border-b hover:bg-gray-50">
                        <td>{p.ingredient_name || p.ingredient_id}</td>
                        <td className="text-right">
                          {p.quantity} {p.unit || ""}
                        </td>
                        <td className="text-right">Rp {Number(p.unit_price).toLocaleString("id-ID")}</td>
                        <td className="text-right">Rp {Number(p.total_price).toLocaleString("id-ID")}</td>
                        <td>{p.supplier || "-"}</td>
                        <td>{p.notes || "-"}</td>
                        <td className="text-center">{new Date(p.purchase_date).toLocaleDateString("id-ID")}</td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          )}
        </div>
      )}

      {tab === "bonus" && (
        <div>
          {loadingBonus ? (
            <div className="text-center py-8">Loading...</div>
          ) : (
            <div className="bg-white rounded shadow p-4">
              <table className="w-full text-sm">
                <thead>
                  <tr className="border-b">
                    <th className="text-left py-2">Outlet</th>
                    <th className="text-left py-2">Barista</th>
                    <th className="text-right py-2">Omzet</th>
                    <th className="text-right py-2">Bonus</th>
                    <th className="text-center py-2">Tanggal</th>
                  </tr>
                </thead>
                <tbody>
                  {baristaBonuses.length === 0 ? (
                    <tr>
                      <td colSpan={5} className="text-center py-8 text-gray-400">
                        Tidak ada data bonus barista
                      </td>
                    </tr>
                  ) : (
                    baristaBonuses.map((b) => (
                      <tr key={b.id} className="border-b hover:bg-gray-50">
                        <td>{b.outlet_name || b.outlet_id}</td>
                        <td>{b.barista_name || b.barista_id}</td>
                        <td className="text-right">Rp {Number(b.total_amount).toLocaleString("id-ID")}</td>
                        <td className="text-right">Rp {Number(b.bonus_amount).toLocaleString("id-ID")}</td>
                        <td className="text-center">{new Date(b.created_at).toLocaleDateString("id-ID")}</td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
          )}
        </div>
      )}

      {showForm && (
        <div className="fixed inset-0 bg-black bg-opacity-30 flex items-center justify-center z-50">
          <div className="bg-white rounded shadow-lg p-6 w-full max-w-md relative">
            <button
              className="absolute top-2 right-2 text-gray-400 hover:text-gray-600"
              onClick={() => {
                setShowForm(false);
                setEditing(null);
              }}
            >
              ×
            </button>
            <h2 className="text-lg font-bold mb-4">{editing ? "Edit" : "Tambah"} Pengeluaran</h2>

            <form onSubmit={handleSubmit} className="space-y-4">
              <div>
                <label className="block mb-1">Kategori</label>
                <select
                  name="category"
                  value={formData.category}
                  onChange={handleInput}
                  className="border rounded px-2 py-1 w-full"
                >
                  {categories.map((cat) => (
                    <option key={cat} value={cat}>
                      {cat}
                    </option>
                  ))}
                </select>
              </div>

              <div>
                <label className="block mb-1">Deskripsi</label>
                <input
                  name="description"
                  value={formData.description}
                  onChange={handleInput}
                  className="border rounded px-2 py-1 w-full"
                  placeholder="Misal: Beli biji kopi, bayar listrik, dll"
                />
              </div>

              <div>
                <label className="block mb-1">Jumlah (Rp)</label>
                <input
                  name="amount"
                  type="number"
                  value={formData.amount}
                  onChange={handleInput}
                  className="border rounded px-2 py-1 w-full"
                  min="0"
                  step="0.01"
                  placeholder="0"
                />
              </div>

              <div className="flex justify-end gap-2 mt-4">
                <button
                  type="button"
                  className="bg-gray-200 hover:bg-gray-300 text-gray-700 px-4 py-2 rounded"
                  onClick={() => {
                    setShowForm(false);
                    setEditing(null);
                  }}
                >
                  Batal
                </button>
                <button type="submit" className="bg-orange-500 hover:bg-orange-600 text-white px-4 py-2 rounded">
                  Simpan
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}

