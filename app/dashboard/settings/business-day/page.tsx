'use client';

import { Settings, Clock, Check, AlertCircle } from 'lucide-react';
import { useState, useEffect } from 'react';
import axios from 'axios';
import { useAuthStore } from '@/lib/store/auth';

interface OutletSettings {
  outlet_id: string;
  outlet_name: string;
  business_day_start_hour: number;
}

export default function SettingsPage() {
  const { outletId, role, loading: authLoading } = useAuthStore();
  const [settings, setSettings] = useState<OutletSettings | null>(null);
  const [businessDayHour, setBusinessDayHour] = useState(4);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const fetchSettings = async (id: string) => {
    try {
      setLoading(true);
      const res = await axios.get(`/api/outlets/business-day?outlet_id=${id}`);
      setSettings(res.data);
      setBusinessDayHour(res.data.business_day_start_hour);
      setMessage(null);
    } catch (error) {
      console.error('Error fetching settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal memuat pengaturan'
        : 'Gagal memuat pengaturan';
      setMessage({ type: 'error', text: errorMsg });
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    // Fetch immediately if we have outletId
    if (outletId) {
      fetchSettings(outletId);
    } else {
      // No need to check authLoading for superadmin, just load
      setLoading(false);
    }
  }, [outletId]);

  const handleSaveBusinessDay = async () => {
    if (!outletId) {
      setMessage({ type: 'error', text: 'Pilih outlet terlebih dahulu untuk mengatur hari bisnis' });
      return;
    }

    try {
      setSaving(true);
      const res = await axios.put('/api/outlets/business-day', {
        outlet_id: outletId,
        business_day_start_hour: businessDayHour,
      });

      setSettings(res.data);
      setMessage({
        type: 'success',
        text: `Hari bisnis diperbarui ke ${businessDayHour}:00 (${businessDayHour}:00)`,
      });

      // Auto-hide success message after 3 seconds
      setTimeout(() => setMessage(null), 3000);
    } catch (error) {
      console.error('Error saving settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal menyimpan pengaturan'
        : 'Gagal menyimpan pengaturan';
      setMessage({
        type: 'error',
        text: errorMsg,
      });
    } finally {
      setSaving(false);
    }
  };

  const getBusinessDayDescription = (hour: number) => {
    const hourStr = String(hour).padStart(2, '0');
    if (hour === 0) return '00:00 (Tengah Malam - Hari Kalender)';
    if (hour === 4) return '04:00 Pagi (Termasuk Penjualan Shift Malam)';
    return `${hourStr}:00 (${hour > 12 ? hour - 12 : hour}:00 ${hour >= 12 ? 'Sore' : 'Pagi'})`;
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <Clock size={32} className="text-blue-600" />
        <h1 className="text-3xl font-bold">Hari Bisnis</h1>
      </div>

      {/* Messages */}
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

      <div className="bg-white rounded-lg shadow-md p-6 space-y-6">
        <h2 className="text-lg font-semibold">Konfigurasi Bisnis</h2>

        {loading ? (
          <div className="text-center py-8">
            <p className="text-gray-600">Memuat pengaturan...</p>
          </div>
        ) : (
          <div className="space-y-6 max-w-2xl">
            {/* Business Day Start Hour */}
            <div className="border border-gray-200 rounded-lg p-6 bg-gray-50">
              <div className="flex items-start gap-4">
                <Clock className="text-blue-600 shrink-0 mt-1" size={24} />
                <div className="flex-1 space-y-4">
                  <div>
                    <h3 className="font-semibold text-lg text-gray-900 mb-2">
                      Jam Mulai Hari Bisnis
                    </h3>
                    <p className="text-sm text-gray-600 mb-4">
                      Jam ketika hari bisnis baru dimulai. Penjualan sebelum jam ini dihitung sebagai hari bisnis sebelumnya.
                    </p>
                    {settings && (
                      <p className="text-sm font-medium text-blue-700 bg-blue-50 p-3 rounded mb-4">
                        📍 Outlet: <strong>{settings.outlet_name}</strong>
                      </p>
                    )}
                  </div>

                  {/* Hour Selector */}
                  <div className="space-y-3">
                    <label className="block text-sm font-medium text-gray-700">
                      Pilih Jam Mulai (0-23):
                    </label>
                    <div className="flex gap-3">
                      <input
                        type="number"
                        min="0"
                        max="23"
                        value={businessDayHour}
                        onChange={(e) => setBusinessDayHour(Math.min(23, Math.max(0, parseInt(e.target.value) || 0)))}
                        className="w-20 px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-amber-500 text-center font-bold"
                        disabled={saving}
                      />
                      <div className="flex-1">
                        <input
                          type="range"
                          min="0"
                          max="23"
                          value={businessDayHour}
                          onChange={(e) => setBusinessDayHour(parseInt(e.target.value))}
                          className="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointer accent-amber-600"
                          disabled={saving}
                        />
                      </div>
                    </div>

                    {/* Hour Description */}
                    <div className="mt-4 p-3 bg-white rounded border-l-4 border-amber-500">
                      <p className="text-sm font-medium text-amber-900">
                        {getBusinessDayDescription(businessDayHour)}
                      </p>
                      <p className="text-xs text-amber-700 mt-2">
                        • Penjualan dari <strong>
                          {businessDayHour === 0 ? '00:00' : `${String(businessDayHour).padStart(2, '0')}:00`}
                        </strong>{' '}
                        hingga{' '}
                        <strong>
                          {businessDayHour === 0
                            ? '23:59'
                            : `${String((businessDayHour - 1 + 24) % 24).padStart(2, '0')}:59`}
                        </strong>{' '}
                        dihitung sebagai hari bisnis sebelumnya
                        <br />• Gunakan <strong>4</strong> (04:00 Pagi) untuk memasukkan penjualan shift malam ke hari sebelumnya
                      </p>
                    </div>

                    {/* Example Scenarios */}
                    <div className="mt-4 space-y-2 text-xs text-gray-600">
                      <p className="font-medium text-gray-700">Contoh dengan jam = {businessDayHour}:</p>
                      {businessDayHour === 4 ? (
                        <>
                          <p>✓ Penjualan jam 01:00 Pagi → Dihitung hari sebelumnya (shift malam)</p>
                          <p>✓ Penjualan jam 05:00 Pagi → Dihitung hari ini</p>
                        </>
                      ) : businessDayHour === 0 ? (
                        <>
                          <p>✓ Penjualan jam 01:00 Pagi → Dihitung hari ini (hari kalender)</p>
                          <p>✓ Penjualan jam 05:00 Pagi → Dihitung hari ini</p>
                        </>
                      ) : (
                        <>
                          <p>✓ Penjualan sebelum {String(businessDayHour).padStart(2, '0')}:00 → Hari sebelumnya</p>
                          <p>✓ Penjualan jam {String(businessDayHour).padStart(2, '0')}:00 atau lebih → Hari ini</p>
                        </>
                      )}
                    </div>
                  </div>

                  {/* Save Button */}
                  <div className="pt-4">
                    <button
                      onClick={handleSaveBusinessDay}
                      disabled={saving || !settings || businessDayHour === settings.business_day_start_hour}
                      className={`px-6 py-2 rounded-lg font-medium transition-colors ${
                        saving || (settings && businessDayHour === settings.business_day_start_hour)
                          ? 'bg-gray-300 text-gray-600 cursor-not-allowed'
                          : 'bg-amber-600 text-white hover:bg-amber-700 cursor-pointer'
                      }`}
                    >
                      {saving ? 'Menyimpan...' : 'Simpan Pengaturan Hari Bisnis'}
                    </button>
                    {settings && businessDayHour === settings.business_day_start_hour && (
                      <p className="text-xs text-gray-600 mt-2">Tidak ada perubahan untuk disimpan</p>
                    )}
                  </div>
                </div>
              </div>
            </div>

            {/* Information Cards */}
            <div className="grid md:grid-cols-2 gap-4 mt-6">
              <div className="p-4 bg-blue-50 rounded-lg border border-blue-200">
                <h4 className="font-semibold text-blue-900 mb-2">📋 Apa itu Hari Bisnis?</h4>
                <p className="text-sm text-blue-800">
                  Hari bisnis berjalan dari jam mulai (misalnya 04:00 Pagi) pada Hari 1 hingga 03:59:59 Pagi pada Hari 2. 
                  Ini menghitung penjualan malam hari yang harus diatribusikan ke hari bisnis tempat mereka terjadi.
                </p>
              </div>

              <div className="p-4 bg-green-50 rounded-lg border border-green-200">
                <h4 className="font-semibold text-green-900 mb-2">💡 Pengaturan Direkomendasikan</h4>
                <p className="text-sm text-green-800">
                  <strong>Default: 04:00 Pagi</strong> - Sempurna untuk outlet dengan shift malam atau penjualan malam hari 
                  (misalnya operasi akhir pekan).
                </p>
              </div>
            </div>
          </div>
        )}
      </div>

      {/* Footer Info */}
      <div className="bg-amber-50 border border-amber-200 rounded-lg p-4">
        <p className="text-sm text-amber-800">
          <strong>ℹ️ Catatan:</strong> Mengubah jam mulai hari bisnis akan mempengaruhi semua laporan pendapatan dan 
          perhitungan keuangan di masa depan untuk outlet ini. Data historis akan dihitung ulang berdasarkan pengaturan baru.
        </p>
      </div>
    </div>
  );
}
