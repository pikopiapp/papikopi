'use client';

import { Wrench, AlertCircle, Check, Calendar, Clock, Bell } from 'lucide-react';
import { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import { useAuthStore } from '@/lib/store/auth';

export default function MaintenancePage() {
  const { outletId } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const [maintenanceMode, setMaintenanceMode] = useState(false);
  const [startTime, setStartTime] = useState('');
  const [endTime, setEndTime] = useState('');
  const [maintenanceMsg, setMaintenanceMsg] = useState('Sistem sedang dalam pemeliharaan. Kami akan kembali segera.');
  const [notifyUsers, setNotifyUsers] = useState(true);

  const fetchSettings = useCallback(async (id: string) => {
    try {
      setLoading(true);
      const res = await axios.get(`/api/outlets/maintenance?outlet_id=${id}`);
      setMaintenanceMode(res.data.is_maintenance_mode);
      setMaintenanceMsg(res.data.maintenance_message);
      setNotifyUsers(res.data.notify_users);
      if (res.data.maintenance_start) setStartTime(res.data.maintenance_start);
      if (res.data.maintenance_end) setEndTime(res.data.maintenance_end);
      setMessage(null);
    } catch (error) {
      console.error('Error fetching maintenance settings:', error);
      // Endpoint mungkin belum ada, tapi ini tidak fatal
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    const loadSettings = async () => {
      // Fetch immediately if we have outletId
      if (outletId) {
        await fetchSettings(outletId);
      } else {
        setLoading(false);
      }
    };

    loadSettings();
  }, [outletId, fetchSettings]);

  const handleSave = async () => {
    if (!outletId) {
      setMessage({ type: 'error', text: 'ID outlet tidak ditemukan' });
      return;
    }

    try {
      setSaving(true);
      await axios.put('/api/outlets/maintenance', {
        outlet_id: outletId,
        is_maintenance_mode: maintenanceMode,
        maintenance_start: startTime || null,
        maintenance_end: endTime || null,
        maintenance_message: maintenanceMsg,
        notify_users: notifyUsers,
      });

      setMessage({
        type: 'success',
        text: maintenanceMode ? 'Mode pemeliharaan diaktifkan' : 'Mode pemeliharaan dinonaktifkan',
      });

      setTimeout(() => setMessage(null), 3000);
    } catch (error) {
      console.error('Error saving maintenance settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal menyimpan pengaturan pemeliharaan'
        : 'Gagal menyimpan pengaturan pemeliharaan';
      setMessage({
        type: 'error',
        text: errorMsg,
      });
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return (
      <div className="p-6">
        <div className="text-center py-12">
          <p className="text-gray-600">Memuat pengaturan pemeliharaan...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <Wrench size={32} className="text-orange-600" />
        <h1 className="text-3xl font-bold">Pemeliharaan Sistem</h1>
      </div>

      {message && (
        <div
          className={`p-4 rounded-lg flex items-center gap-3 ${
            message.type === 'success'
              ? 'bg-green-50 border border-green-200 text-green-800'
              : 'bg-red-50 border border-red-200 text-red-800'
          }`}
        >
          {message.type === 'success' ? (
            <Check size={20} className="shrink-0" />
          ) : (
            <AlertCircle size={20} className="shrink-0" />
          )}
          <p className="text-sm">{message.text}</p>
        </div>
      )}

      <div className="space-y-6">
        {/* Maintenance Mode Toggle */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
            <Wrench size={20} className="text-orange-600" />
            Mode Pemeliharaan
          </h2>

          <div className="space-y-4">
            <div className="flex items-center justify-between p-4 bg-orange-50 border border-orange-200 rounded-lg">
              <div className="flex-1">
                <h3 className="font-medium text-orange-900 mb-1">Aktifkan Mode Pemeliharaan</h3>
                <p className="text-sm text-orange-700">
                  Menutup akses ke sistem untuk semua pengguna. Hanya admin yang dapat mengakses.
                </p>
              </div>
              <label className="relative inline-flex items-center cursor-pointer ml-4 shrink-0">
                <input
                  type="checkbox"
                  checked={maintenanceMode}
                  onChange={(e) => setMaintenanceMode(e.target.checked)}
                  disabled={saving}
                  className="sr-only peer"
                />
                <div className="w-11 h-6 bg-gray-300 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-orange-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-0.5 after:bg-white after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-orange-600\"></div>
              </label>
            </div>

            {maintenanceMode && (
              <div className="space-y-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    <Clock size={16} className="inline mr-2" />
                    Waktu Mulai Pemeliharaan
                  </label>
                  <input
                    type="datetime-local"
                    value={startTime}
                    onChange={(e) => setStartTime(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500"
                  />
                  <p className="text-xs text-gray-500 mt-1">Kosongkan untuk tidak menentukan waktu</p>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    <Calendar size={16} className="inline mr-2" />
                    Waktu Selesai Pemeliharaan
                  </label>
                  <input
                    type="datetime-local"
                    value={endTime}
                    onChange={(e) => setEndTime(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500"
                  />
                  <p className="text-xs text-gray-500 mt-1">Kosongkan untuk tidak menentukan waktu</p>
                </div>

                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">
                    Pesan Pemeliharaan
                  </label>
                  <textarea
                    value={maintenanceMsg}
                    onChange={(e) => setMaintenanceMsg(e.target.value)}
                    disabled={saving}
                    rows={4}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-orange-500"
                    placeholder="Pesan yang akan ditampilkan kepada pengguna..."
                  />
                </div>

                <div className="flex items-center gap-3 p-3 bg-blue-50 rounded border border-blue-200">
                  <Bell size={16} className="text-blue-600 shrink-0" />
                  <label className="flex items-center gap-2 cursor-pointer flex-1">
                    <input
                      type="checkbox"
                      checked={notifyUsers}
                      onChange={(e) => setNotifyUsers(e.target.checked)}
                      disabled={saving}
                      className="w-4 h-4 rounded cursor-pointer"
                    />
                    <span className="text-sm text-blue-700">
                      Kirim notifikasi kepada semua pengguna saat mode pemeliharaan dimulai
                    </span>
                  </label>
                </div>
              </div>
            )}
          </div>
        </div>

        {/* Scheduled Maintenance */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
            <Calendar size={20} className="text-blue-600" />
            Pemeliharaan Terjadwal
          </h2>

          <div className="space-y-3">
            <p className="text-sm text-gray-600">
              Atur jendela pemeliharaan rutin saat traffic rendah untuk meminimalkan dampak pengguna.
            </p>

            <div className="p-4 bg-blue-50 rounded-lg border border-blue-200">
              <h3 className="font-medium text-blue-900 mb-3">Hari & Jam Pemeliharaan Rutin</h3>
              <div className="grid md:grid-cols-2 gap-4">
                {['Senin', 'Rabu', 'Jumat'].map((day) => (
                  <label key={day} className="flex items-center gap-3 cursor-pointer">
                    <input type="checkbox" className="w-4 h-4 rounded" disabled={saving} />
                    <span className="text-sm text-blue-700">{day} pukul 02:00 - 04:00</span>
                  </label>
                ))}
              </div>
            </div>
          </div>
        </div>

        {/* Maintenance History */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4">Riwayat Pemeliharaan</h2>
          <div className="space-y-3">
            <div className="p-4 bg-gray-50 rounded-lg border border-gray-200">
              <div className="flex justify-between items-start mb-2">
                <h3 className="font-medium text-gray-900">Pemeliharaan Terakhir</h3>
                <span className="text-xs bg-green-100 text-green-800 px-2 py-1 rounded">Selesai</span>
              </div>
              <p className="text-sm text-gray-600">
                <strong>Tanggal:</strong> 2026-05-08 02:30 - 03:45 (1 jam 15 menit)
              </p>
              <p className="text-sm text-gray-600">
                <strong>Alasan:</strong> Pembaruan keamanan database
              </p>
            </div>

            <div className="text-center py-6 text-gray-500">
              <p className="text-sm">Tidak ada pemeliharaan yang dijadwalkan berikutnya</p>
            </div>
          </div>
        </div>

        {/* Save Button */}
        <div className="flex gap-3">
          <button
            onClick={handleSave}
            disabled={saving}
            className={`px-6 py-2 rounded-lg font-medium transition-colors ${
              saving
                ? 'bg-gray-300 text-gray-600 cursor-not-allowed'
                : 'bg-orange-600 text-white hover:bg-orange-700 cursor-pointer'
            }`}
          >
            {saving ? 'Menyimpan...' : 'Simpan Pengaturan Pemeliharaan'}
          </button>
        </div>

        {/* Info Box */}
        <div className="bg-amber-50 border border-amber-200 rounded-lg p-4">
          <p className="text-sm text-amber-800">
            <strong>ℹ️ Catatan:</strong> Mode pemeliharaan akan menampilkan halaman khusus kepada pengguna reguler. 
            Admin dapat terus mengakses sistem untuk menyelesaikan pemeliharaan yang diperlukan.
          </p>
        </div>
      </div>
    </div>
  );
}
