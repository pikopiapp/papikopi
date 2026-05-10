'use client';

import { Bell, Mail, MessageSquare, AlertTriangle, Check } from 'lucide-react';
import { useState, useEffect, useCallback } from 'react';
import axios from 'axios';
import { useAuthStore } from '@/lib/store/auth';

export default function NotificationsPage() {
  const { outletId } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const [emailNotif, setEmailNotif] = useState(true);
  const [smsNotif, setSmsNotif] = useState(false);
  const [pushNotif, setPushNotif] = useState(true);
  const [email, setEmail] = useState('');
  const [phone, setPhone] = useState('');
  const [alertAnomaly, setAlertAnomaly] = useState(true);
  const [alertStock, setAlertStock] = useState(true);
  const [alertErrors, setAlertErrors] = useState(true);
  const [alertActivity, setAlertActivity] = useState(false);
  const [quietHours, setQuietHours] = useState(false);
  const [quietStart, setQuietStart] = useState('22:00');
  const [quietEnd, setQuietEnd] = useState('08:00');

  const fetchSettings = useCallback(async (id: string) => {
    try {
      setLoading(true);
      const res = await axios.get(`/api/outlets/notifications?outlet_id=${id}`);
      setEmailNotif(res.data.email_notifications);
      setSmsNotif(res.data.sms_notifications);
      setPushNotif(res.data.push_notifications);
      setEmail(res.data.email_address);
      setPhone(res.data.phone_number);
      setAlertAnomaly(res.data.alert_sales_anomaly);
      setAlertStock(res.data.alert_low_stock);
      setAlertErrors(res.data.alert_system_errors);
      setAlertActivity(res.data.alert_user_activity);
      setQuietHours(res.data.quiet_hours_enabled);
      setQuietStart(res.data.quiet_hours_start);
      setQuietEnd(res.data.quiet_hours_end);
      setMessage(null);
    } catch (error) {
      console.error('Error fetching notification settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal memuat pengaturan notifikasi'
        : 'Gagal memuat pengaturan notifikasi';
      setMessage({ type: 'error', text: errorMsg });
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
      await axios.put('/api/outlets/notifications', {
        outlet_id: outletId,
        email_notifications: emailNotif,
        sms_notifications: smsNotif,
        push_notifications: pushNotif,
        email_address: email,
        phone_number: phone,
        alert_sales_anomaly: alertAnomaly,
        alert_low_stock: alertStock,
        alert_system_errors: alertErrors,
        alert_user_activity: alertActivity,
        quiet_hours_enabled: quietHours,
        quiet_hours_start: quietStart,
        quiet_hours_end: quietEnd,
      });

      setMessage({
        type: 'success',
        text: 'Pengaturan notifikasi berhasil disimpan',
      });

      setTimeout(() => setMessage(null), 3000);
    } catch (error) {
      console.error('Error saving notification settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal menyimpan pengaturan notifikasi'
        : 'Gagal menyimpan pengaturan notifikasi';
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
          <p className="text-gray-600">Memuat pengaturan notifikasi...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <Bell size={32} className="text-purple-600" />
        <h1 className="text-3xl font-bold">Pengaturan Notifikasi</h1>
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
            <AlertTriangle size={20} className="shrink-0" />
          )}
          <p className="text-sm">{message.text}</p>
        </div>
      )}

      <div className="space-y-6">
        {/* Notification Channels */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4">Saluran Notifikasi</h2>
          <div className="space-y-4">
            {/* Email */}
            <div className="flex items-start gap-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
              <Mail size={20} className="text-blue-600 mt-1 shrink-0" />
              <div className="flex-1">
                <div className="flex justify-between items-center mb-2">
                  <h3 className="font-medium text-gray-900">Email</h3>
                  <label className="relative inline-flex items-center cursor-pointer">
                    <input
                      type="checkbox"
                      checked={emailNotif}
                      onChange={(e) => setEmailNotif(e.target.checked)}
                      disabled={saving}
                      className="sr-only peer"
                    />
                    <div className="w-9 h-5 bg-gray-300 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-0.5 after:bg-white after:rounded-full after:h-4 after:w-4 after:transition-all peer-checked:bg-blue-600"></div>
                  </label>
                </div>
                {emailNotif && (
                  <input
                    type="email"
                    placeholder="Email untuk notifikasi"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 text-sm"
                  />
                )}
              </div>
            </div>

            {/* SMS */}
            <div className="flex items-start gap-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
              <MessageSquare size={20} className="text-green-600 mt-1 shrink-0" />
              <div className="flex-1">
                <div className="flex justify-between items-center mb-2">
                  <h3 className="font-medium text-gray-900">SMS</h3>
                  <label className="relative inline-flex items-center cursor-pointer">
                    <input
                      type="checkbox"
                      checked={smsNotif}
                      onChange={(e) => setSmsNotif(e.target.checked)}
                      disabled={saving}
                      className="sr-only peer"
                    />
                    <div className="w-9 h-5 bg-gray-300 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-green-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-0.5 after:bg-white after:rounded-full after:h-4 after:w-4 after:transition-all peer-checked:bg-green-600\"></div>
                  </label>
                </div>
                {smsNotif && (
                  <input
                    type="tel"
                    placeholder="Nomor telepon untuk SMS (contoh: +62812345678)"
                    value={phone}
                    onChange={(e) => setPhone(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 text-sm"
                  />
                )}
              </div>
            </div>

            {/* Push Notifications */}
            <div className="flex items-start gap-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
              <Bell size={20} className="text-purple-600 mt-1 shrink-0" />
              <div className="flex-1">
                <div className="flex justify-between items-center">
                  <h3 className="font-medium text-gray-900">Notifikasi Browser</h3>
                  <label className="relative inline-flex items-center cursor-pointer">
                    <input
                      type="checkbox"
                      checked={pushNotif}
                      onChange={(e) => setPushNotif(e.target.checked)}
                      disabled={saving}
                      className="sr-only peer"
                    />
                    <div className="w-9 h-5 bg-gray-300 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-purple-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-0.5 after:bg-white after:rounded-full after:h-4 after:w-4 after:transition-all peer-checked:bg-purple-600\"></div>
                  </label>
                </div>
                <p className="text-xs text-gray-600 mt-1">
                  Menerima notifikasi langsung di browser saat Anda online
                </p>
              </div>
            </div>
          </div>
        </div>

        {/* Alert Types */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4">Jenis Peringatan</h2>
          <div className="space-y-3">
            <label className="flex items-center gap-3 p-3 bg-gray-50 rounded-lg border border-gray-200 cursor-pointer hover:bg-gray-100">
              <input
                type="checkbox"
                checked={alertAnomaly}
                onChange={(e) => setAlertAnomaly(e.target.checked)}
                disabled={saving}
                className="w-4 h-4 rounded cursor-pointer"
              />
              <div className="flex-1">
                <p className="font-medium text-gray-900">Anomali Penjualan</p>
                <p className="text-xs text-gray-600">Diperingatkan ketika penjualan tidak normal atau mencurigakan</p>
              </div>
            </label>

            <label className="flex items-center gap-3 p-3 bg-gray-50 rounded-lg border border-gray-200 cursor-pointer hover:bg-gray-100">
              <input
                type="checkbox"
                checked={alertStock}
                onChange={(e) => setAlertStock(e.target.checked)}
                disabled={saving}
                className="w-4 h-4 rounded cursor-pointer"
              />
              <div className="flex-1">
                <p className="font-medium text-gray-900">Stok Rendah</p>
                <p className="text-xs text-gray-600">Diperingatkan ketika persediaan produk di bawah ambang batas</p>
              </div>
            </label>

            <label className="flex items-center gap-3 p-3 bg-gray-50 rounded-lg border border-gray-200 cursor-pointer hover:bg-gray-100">
              <input
                type="checkbox"
                checked={alertErrors}
                onChange={(e) => setAlertErrors(e.target.checked)}
                disabled={saving}
                className="w-4 h-4 rounded cursor-pointer"
              />
              <div className="flex-1">
                <p className="font-medium text-gray-900">Kesalahan Sistem</p>
                <p className="text-xs text-gray-600">Diperingatkan tentang kesalahan sistem atau downtime</p>
              </div>
            </label>

            <label className="flex items-center gap-3 p-3 bg-gray-50 rounded-lg border border-gray-200 cursor-pointer hover:bg-gray-100">
              <input
                type="checkbox"
                checked={alertActivity}
                onChange={(e) => setAlertActivity(e.target.checked)}
                disabled={saving}
                className="w-4 h-4 rounded cursor-pointer"
              />
              <div className="flex-1">
                <p className="font-medium text-gray-900">Aktivitas Pengguna</p>
                <p className="text-xs text-gray-600">Diperingatkan tentang login baru atau aktivitas mencurigakan</p>
              </div>
            </label>
          </div>
        </div>

        {/* Quiet Hours */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4">Jam Senyap</h2>
          <p className="text-sm text-gray-600 mb-4">
            Tidak mengirim notifikasi selama jam-jam tertentu. Berguna untuk menghindari gangguan di malam hari.
          </p>

          <div className="space-y-4">
            <div className="flex items-center gap-4">
              <label className="flex items-center gap-2 cursor-pointer">
                <input
                  type="checkbox"
                  checked={quietHours}
                  onChange={(e) => setQuietHours(e.target.checked)}
                  disabled={saving}
                  className="w-4 h-4 rounded cursor-pointer"
                />
                <span className="font-medium text-gray-900">Aktifkan Jam Senyap</span>
              </label>
            </div>

            {quietHours && (
              <div className="grid md:grid-cols-2 gap-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Jam Mulai</label>
                  <input
                    type="time"
                    value={quietStart}
                    onChange={(e) => setQuietStart(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-500"
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-2">Jam Berakhir</label>
                  <input
                    type="time"
                    value={quietEnd}
                    onChange={(e) => setQuietEnd(e.target.value)}
                    disabled={saving}
                    className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-500"
                  />
                </div>
              </div>
            )}
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
                : 'bg-purple-600 text-white hover:bg-purple-700 cursor-pointer'
            }`}
          >
            {saving ? 'Menyimpan...' : 'Simpan Pengaturan Notifikasi'}
          </button>
        </div>

        {/* Info Box */}
        <div className="bg-purple-50 border border-purple-200 rounded-lg p-4">
          <p className="text-sm text-purple-800">
            <strong>ℹ️ Catatan:</strong> Anda akan menerima notifikasi penting bahkan selama jam senyap. 
            Hanya notifikasi informasi yang akan ditahan.
          </p>
        </div>
      </div>
    </div>
  );
}
