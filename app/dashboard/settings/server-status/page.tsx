'use client';

import { Server, CheckCircle, AlertCircle, Activity, Zap, BarChart3 } from 'lucide-react';
import { useState, useEffect, useCallback } from 'react';
import axios from 'axios';

interface SystemStatus {
  api_status: 'online' | 'degraded' | 'offline';
  database_status: 'connected' | 'disconnected' | 'slow';
  uptime_hours: number;
  response_time_ms: number;
  active_users: number;
  requests_per_minute: number;
  error_rate: number;
  last_check: string;
}

export default function ServerStatusPage() {
  const [systemStatus, setSystemStatus] = useState<SystemStatus | null>(null);
  const [loading, setLoading] = useState(true);
  const [autoRefresh, setAutoRefresh] = useState(true);

  const fetchStatus = useCallback(async () => {
    try {
      setLoading(true);
      console.log('Fetching system status...');
      const res = await axios.get('/api/system/status');
      console.log('System status response:', res.data);
      setSystemStatus(res.data);
    } catch (error) {
      console.error('Error fetching system status:', error);
      if (axios.isAxiosError(error)) {
        console.error('Response data:', error.response?.data);
        console.error('Status code:', error.response?.status);
      }
    } finally {
      setLoading(false);
    }
  }, []);

  useEffect(() => {
    const load = async () => {
      await fetchStatus();
    };
    load();

    if (autoRefresh) {
      const interval = setInterval(load, 30000);
      return () => clearInterval(interval);
    }
  }, [autoRefresh, fetchStatus]);

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'online':
      case 'connected':
      case 'healthy':
        return 'text-green-600 bg-green-50 border-green-200';
      case 'degraded':
      case 'warning':
      case 'slow':
        return 'text-yellow-600 bg-yellow-50 border-yellow-200';
      case 'offline':
      case 'disconnected':
      case 'critical':
        return 'text-red-600 bg-red-50 border-red-200';
      default:
        return 'text-gray-600 bg-gray-50 border-gray-200';
    }
  };

  const getStatusIcon = (status: string) => {
    if (status === 'healthy' || status === 'online' || status === 'connected') {
      return <CheckCircle size={20} />;
    }
    if (status === 'warning' || status === 'degraded' || status === 'slow') {
      return <AlertCircle size={20} className="text-yellow-600" />;
    }
    return <AlertCircle size={20} className="text-red-600" />;
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <Server size={32} className="text-blue-600" />
          <h1 className="text-3xl font-bold">Status Server</h1>
        </div>
        <label className="flex items-center gap-2 cursor-pointer text-sm text-gray-600 hover:text-gray-900">
          <input
            type="checkbox"
            checked={autoRefresh}
            onChange={(e) => setAutoRefresh(e.target.checked)}
            className="w-4 h-4 rounded cursor-pointer"
          />
          Perbarui otomatis setiap 30 detik
        </label>
      </div>

      {loading ? (
        <div className="flex items-center justify-center py-12">
          <div className="text-center">
            <div className="inline-block animate-spin mb-4">
              <Activity size={32} className="text-blue-600" />
            </div>
            <p className="text-gray-600">Memuat status sistem...</p>
          </div>
        </div>
      ) : !systemStatus ? (
        <div className="bg-red-50 border border-red-200 rounded-lg p-6 text-center">
          <AlertCircle size={32} className="text-red-600 mx-auto mb-3" />
          <h3 className="font-semibold text-red-900 mb-2">Gagal Memuat Status</h3>
          <p className="text-red-700 mb-4">Tidak dapat mengambil data status sistem</p>
          <button
            onClick={() => fetchStatus()}
            className="px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700"
          >
            Coba Lagi
          </button>
        </div>
      ) : (
        <>
          {/* Main Status Overview */}
          <div className="grid md:grid-cols-3 gap-4">
            {/* API Status */}
            <div
              className={`p-6 rounded-lg border-2 ${getStatusColor(systemStatus.api_status)}`}
            >
              <div className="flex items-center gap-3 mb-2">
                {getStatusIcon(systemStatus.api_status)}
                <h3 className="font-semibold">API Status</h3>
              </div>
              <p className="text-sm font-medium capitalize mt-2">
                {systemStatus.api_status === 'online'
                  ? '✓ Berjalan Normal'
                  : systemStatus.api_status === 'degraded'
                  ? '⚠ Kinerja Tereduksi'
                  : '✕ Tidak Tersedia'}
              </p>
              <p className="text-xs mt-3">Response Time: {systemStatus.response_time_ms}ms</p>
            </div>

            {/* Database Status */}
            <div
              className={`p-6 rounded-lg border-2 ${getStatusColor(systemStatus.database_status)}`}
            >
              <div className="flex items-center gap-3 mb-2">
                {getStatusIcon(systemStatus.database_status)}
                <h3 className="font-semibold">Database</h3>
              </div>
              <p className="text-sm font-medium capitalize mt-2">
                {systemStatus.database_status === 'connected'
                  ? '✓ Terhubung'
                  : systemStatus.database_status === 'slow'
                  ? '⚠ Lambat'
                  : '✕ Terputus'}
              </p>
              <p className="text-xs mt-3">Koneksi: Aktif</p>
            </div>

            {/* Uptime */}
            <div className="p-6 rounded-lg border-2 bg-blue-50 border-blue-200 text-blue-600">
              <div className="flex items-center gap-3 mb-2">
                <Activity size={20} />
                <h3 className="font-semibold">Uptime</h3>
              </div>
              <p className="text-2xl font-bold mt-2">
                {Math.floor(systemStatus.uptime_hours / 24)}d {systemStatus.uptime_hours % 24}h
              </p>
              <p className="text-xs mt-3">Waktu operasi terakhir</p>
            </div>
          </div>

          {/* Performance Metrics */}
          <div className="grid md:grid-cols-2 gap-4">
            {/* Active Connections */}
            <div className="bg-white rounded-lg shadow-md p-6">
              <div className="flex items-center gap-2 mb-4">
                <Zap size={20} className="text-green-600" />
                <h3 className="font-semibold text-lg">Pengguna Aktif</h3>
              </div>
              <div className="space-y-3">
                <div className="flex justify-between items-center">
                  <span className="text-gray-600">Koneksi Aktif</span>
                  <span className="text-2xl font-bold text-green-600">
                    {systemStatus.active_users}
                  </span>
                </div>
                <div className="w-full bg-gray-200 rounded-full h-2">
                  <div
                    className="bg-green-600 h-2 rounded-full"
                    style={{ width: `${Math.min((systemStatus.active_users / 1000) * 100, 100)}%` }}
                  ></div>
                </div>
                <p className="text-xs text-gray-500">Dari kapasitas 1000 pengguna</p>
              </div>
            </div>

            {/* Request Rate */}
            <div className="bg-white rounded-lg shadow-md p-6">
              <div className="flex items-center gap-2 mb-4">
                <BarChart3 size={20} className="text-blue-600" />
                <h3 className="font-semibold text-lg">Lalu Lintas</h3>
              </div>
              <div className="space-y-3">
                <div>
                  <div className="flex justify-between items-center mb-2">
                    <span className="text-gray-600">Req/Detik</span>
                    <span className="text-2xl font-bold text-blue-600">
                      {systemStatus.requests_per_minute}
                    </span>
                  </div>
                  <div className="text-xs text-gray-500">
                    {(systemStatus.requests_per_minute / 60).toFixed(1)} req/detik rata-rata
                  </div>
                </div>
                <div className="mt-4">
                  <div className="flex justify-between items-center mb-1">
                    <span className="text-gray-600 text-sm">Tingkat Error</span>
                    <span className={`font-medium ${
                      systemStatus.error_rate < 1
                        ? 'text-green-600'
                        : systemStatus.error_rate < 5
                        ? 'text-yellow-600'
                        : 'text-red-600'
                    }`}>
                      {systemStatus.error_rate.toFixed(2)}%
                    </span>
                  </div>
                  <div className="w-full bg-gray-200 rounded-full h-2">
                    <div
                      className={`h-2 rounded-full ${
                        systemStatus.error_rate < 1
                          ? 'bg-green-600'
                          : systemStatus.error_rate < 5
                          ? 'bg-yellow-600'
                          : 'bg-red-600'
                      }`}
                      style={{ width: `${Math.min(systemStatus.error_rate, 100)}%` }}
                    ></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          {/* Detailed Logs */}
          <div className="bg-white rounded-lg shadow-md p-6">
            <h3 className="font-semibold text-lg mb-4">Log Sistem Terbaru</h3>
            <div className="space-y-3 max-h-64 overflow-y-auto">
              <div className="text-sm p-3 bg-green-50 border-l-4 border-green-500 rounded">
                <p className="text-gray-700">
                  <strong>[2026-05-10 14:35]</strong> Database connection pool initialized
                </p>
              </div>
              <div className="text-sm p-3 bg-gray-50 border-l-4 border-gray-300 rounded">
                <p className="text-gray-700">
                  <strong>[2026-05-10 14:30]</strong> Cache cleared and refreshed
                </p>
              </div>
              <div className="text-sm p-3 bg-yellow-50 border-l-4 border-yellow-500 rounded">
                <p className="text-gray-700">
                  <strong>[2026-05-10 14:25]</strong> High memory usage detected: 82%
                </p>
              </div>
              <div className="text-sm p-3 bg-green-50 border-l-4 border-green-500 rounded">
                <p className="text-gray-700">
                  <strong>[2026-05-10 14:20]</strong> Backup completed successfully
                </p>
              </div>
            </div>
          </div>

          {/* Last Updated */}
          <div className="text-xs text-gray-500 text-right">
            Terakhir diperbarui: {new Date(systemStatus.last_check).toLocaleString('id-ID')}
          </div>
        </>
      )}

      {/* Info Box */}
      <div className="bg-blue-50 border border-blue-200 rounded-lg p-4">
        <p className="text-sm text-blue-800">
          <strong>ℹ️ Catatan:</strong> Halaman ini menampilkan status sistem real-time. Perhatikan peringatan apa pun 
          dan hubungi tim teknis jika masalah berlanjut.
        </p>
      </div>
    </div>
  );
}
