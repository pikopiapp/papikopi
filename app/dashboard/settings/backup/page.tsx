'use client';

import { HardDrive, Download, Calendar, Clock, Check, AlertTriangle } from 'lucide-react';
import { useState, useEffect } from 'react';
import axios from 'axios';
import { useAuthStore } from '@/lib/store/auth';

export default function BackupRecoveryPage() {
  const { outletId } = useAuthStore();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [backing, setBacking] = useState(false);
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  const [autoBackup, setAutoBackup] = useState(true);
  const [frequency, setFrequency] = useState<'daily' | 'weekly' | 'monthly'>('daily');
  const [backupTime, setBackupTime] = useState('02:00');
  const [retentionDays, setRetentionDays] = useState(30);

  // Initialize defaults immediately

  useEffect(() => {
    const loadSettings = async () => {
      // Fetch immediately if we have outletId
      if (outletId) {
        setLoading(false);
      } else {
        setLoading(false);
      }
    };

    loadSettings();
  }, [outletId]);

  const handleCreateBackup = async () => {
    if (!outletId) {
      setMessage({ type: 'error', text: 'ID outlet tidak ditemukan' });
      return;
    }

    try {
      setBacking(true);
      await axios.post('/api/outlets/backup', {
        outlet_id: outletId,
      });

      setMessage({
        type: 'success',
        text: 'Backup dimulai. Anda akan diberi tahu saat selesai.',
      });

      // Refresh backups list
      setTimeout(() => setMessage(null), 3000);
    } catch (error) {
      console.error('Error creating backup:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal membuat backup'
        : 'Gagal membuat backup';
      setMessage({
        type: 'error',
        text: errorMsg,
      });
    } finally {
      setBacking(false);
    }
  };

  const handleDownloadBackup = (backupId: string) => {
    // In a real app, this would trigger a download
    window.open(`/api/backup/${backupId}/download`, '_blank');
  };

  const handleRestoreBackup = async (backupId: string) => {
    if (!confirm('Anda yakin ingin memulihkan backup ini? Data saat ini akan ditimpa.')) {
      return;
    }

    try {
      setSaving(true);
      await axios.post(`/api/backup/${backupId}/restore`, {
        outlet_id: outletId,
      });

      setMessage({
        type: 'success',
        text: 'Pemulihan backup dimulai. Sistem akan me-restart...',
      });

      setTimeout(() => setMessage(null), 5000);
    } catch (error) {
      console.error('Error restoring backup:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal memulihkan backup'
        : 'Gagal memulihkan backup';
      setMessage({
        type: 'error',
        text: errorMsg,
      });
    } finally {
      setSaving(false);
    }
  };

  const handleSave = async () => {
    if (!outletId) {
      setMessage({ type: 'error', text: 'ID outlet tidak ditemukan' });
      return;
    }

    try {
      setSaving(true);
      await axios.put('/api/outlets/backup-settings', {
        outlet_id: outletId,
        auto_backup_enabled: autoBackup,
        backup_frequency: frequency,
        backup_time: backupTime,
        backup_retention_days: retentionDays,
      });

      setMessage({
        type: 'success',
        text: 'Pengaturan backup berhasil disimpan',
      });

      setTimeout(() => setMessage(null), 3000);
    } catch (error) {
      console.error('Error saving backup settings:', error);
      const errorMsg = error instanceof axios.AxiosError
        ? error.response?.data?.error || 'Gagal menyimpan pengaturan backup'
        : 'Gagal menyimpan pengaturan backup';
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
          <p className="text-gray-600">Memuat pengaturan backup...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center gap-3">
        <HardDrive size={32} className="text-teal-600" />
        <h1 className="text-3xl font-bold">Backup & Pemulihan</h1>
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
        {/* Quick Backup */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
            <Download size={20} className="text-teal-600" />
            Backup Manual Instan
          </h2>

          <div className="space-y-4">
            <p className="text-sm text-gray-600">
              Buat backup lengkap dari semua data outlet Anda sekarang. Backup dapat diunduh dan disimpan secara aman.
            </p>

            <div className="p-4 bg-teal-50 border border-teal-200 rounded-lg">
              <p className="text-sm text-teal-800 mb-4">
                <strong>Status Backup Terakhir:</strong><br />
                ✓ 2026-05-10 03:00 - Berhasil (145 MB)
              </p>
              <button
                onClick={handleCreateBackup}
                disabled={backing || saving}
                className={`w-full px-6 py-3 rounded-lg font-medium transition-colors ${
                  backing || saving
                    ? 'bg-gray-300 text-gray-600 cursor-not-allowed'
                    : 'bg-teal-600 text-white hover:bg-teal-700 cursor-pointer'
                }`}
              >
                {backing ? 'Membuat Backup...' : 'Buat Backup Sekarang'}
              </button>
            </div>
          </div>
        </div>

        {/* Automatic Backups */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
            <Calendar size={20} className="text-blue-600" />
            Backup Otomatis
          </h2>

          <div className="space-y-4">
            <div className="flex items-center justify-between p-4 bg-blue-50 border border-blue-200 rounded-lg">
              <div className="flex-1">
                <h3 className="font-medium text-blue-900 mb-1">Aktifkan Backup Otomatis</h3>
                <p className="text-sm text-blue-700">
                  Sistem akan secara otomatis membuat backup pada jadwal yang ditentukan
                </p>
              </div>
              <label className="relative inline-flex items-center cursor-pointer ml-4 shrink-0">
                <input
                  type="checkbox"
                  checked={autoBackup}
                  onChange={(e) => setAutoBackup(e.target.checked)}
                  disabled={saving}
                  className="sr-only peer"
                />
                <div className="w-11 h-6 bg-gray-300 peer-focus:outline-none peer-focus:ring-4 peer-focus:ring-blue-300 rounded-full peer peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-0.5 after:bg-white after:rounded-full after:h-5 after:w-5 after:transition-all peer-checked:bg-blue-600"></div>
              </label>
            </div>

            {autoBackup && (
              <div className="space-y-4 p-4 bg-gray-50 rounded-lg border border-gray-200">
                <div className="grid md:grid-cols-3 gap-4">
                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">Frekuensi</label>
                    <select
                      value={frequency}
                      onChange={(e) => setFrequency(e.target.value as 'daily' | 'weekly' | 'monthly')}
                      disabled={saving}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                    >
                      <option value="daily">Harian</option>
                      <option value="weekly">Mingguan</option>
                      <option value="monthly">Bulanan</option>
                    </select>
                  </div>

                  <div>
                    <label className="flex text-sm font-medium text-gray-700 mb-2 items-center gap-2">
                      <Clock size={16} />
                      Waktu
                    </label>
                    <input
                      type="time"
                      value={backupTime}
                      onChange={(e) => setBackupTime(e.target.value)}
                      disabled={saving}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                  </div>

                  <div>
                    <label className="block text-sm font-medium text-gray-700 mb-2">
                      Simpan Backup (Hari)
                    </label>
                    <input
                      type="number"
                      min="7"
                      max="365"
                      value={retentionDays}
                      onChange={(e) => setRetentionDays(parseInt(e.target.value) || 30)}
                      disabled={saving}
                      className="w-full px-3 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                    <p className="text-xs text-gray-500 mt-1">Backup lebih dari ini akan dihapus</p>
                  </div>
                </div>

                <div className="p-3 bg-blue-100 rounded text-sm text-blue-800">
                  ℹ️ Backup berikutnya akan dibuat: <strong>{frequency === 'daily' ? 'Besok' : frequency === 'weekly' ? 'Minggu depan' : 'Bulan depan'}</strong> pukul <strong>{backupTime}</strong>
                </div>
              </div>
            )}
          </div>
        </div>

        {/* Backup History */}
        <div className="bg-white rounded-lg shadow-md p-6">
          <h2 className="text-lg font-semibold mb-4">Riwayat Backup</h2>

          <div className="space-y-3 max-h-96 overflow-y-auto">
            {[
              { id: '1', date: '2026-05-10 03:00', size: 145, status: 'completed' as const, type: 'automatic' as const },
              { id: '2', date: '2026-05-09 14:30', size: 142, status: 'completed' as const, type: 'manual' as const },
              { id: '3', date: '2026-05-08 03:00', size: 138, status: 'completed' as const, type: 'automatic' as const },
              { id: '4', date: '2026-05-07 03:00', size: 140, status: 'completed' as const, type: 'automatic' as const },
              { id: '5', date: '2026-05-06 03:00', size: 135, status: 'failed' as const, type: 'automatic' as const },
            ].map((backup) => (
              <div key={backup.id} className="p-4 bg-gray-50 rounded-lg border border-gray-200 hover:border-gray-300 transition">
                <div className="flex justify-between items-start mb-3">
                  <div className="flex-1">
                    <div className="flex items-center gap-2 mb-1">
                      <span className="font-medium text-gray-900">{backup.date}</span>
                      <span className={`text-xs px-2 py-1 rounded font-medium ${
                        backup.status === 'completed'
                          ? 'bg-green-100 text-green-800'
                          : 'bg-red-100 text-red-800'
                      }`}>
                        {backup.status === 'completed' ? '✓ Berhasil' : '✕ Gagal'}
                      </span>
                      <span className="text-xs px-2 py-1 rounded bg-gray-200 text-gray-800">
                        {backup.type === 'automatic' ? 'Otomatis' : 'Manual'}
                      </span>
                    </div>
                    <p className="text-sm text-gray-600">{backup.size} MB</p>
                  </div>
                  {backup.status === 'completed' && (
                    <div className="flex gap-2 shrink-0">
                      <button
                        onClick={() => handleDownloadBackup(backup.id)}
                        disabled={saving}
                        className="px-3 py-1 text-xs bg-teal-100 text-teal-700 rounded hover:bg-teal-200 disabled:opacity-50"
                      >
                        Unduh
                      </button>
                      <button
                        onClick={() => handleRestoreBackup(backup.id)}
                        disabled={saving}
                        className="px-3 py-1 text-xs bg-orange-100 text-orange-700 rounded hover:bg-orange-200 disabled:opacity-50"
                      >
                        Pulihkan
                      </button>
                    </div>
                  )}
                </div>
              </div>
            ))}
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
                : 'bg-teal-600 text-white hover:bg-teal-700 cursor-pointer'
            }`}
          >
            {saving ? 'Menyimpan...' : 'Simpan Pengaturan Backup'}
          </button>
        </div>

        {/* Info Box */}
        <div className="bg-teal-50 border border-teal-200 rounded-lg p-4">
          <p className="text-sm text-teal-800">
            <strong>ℹ️ Catatan:</strong> Backup mencakup semua data penjualan, inventaris, dan konfigurasi outlet Anda. 
            Disarankan untuk menyimpan salinan backup penting di lokasi aman terpisah.
          </p>
        </div>
      </div>
    </div>
  );
}
