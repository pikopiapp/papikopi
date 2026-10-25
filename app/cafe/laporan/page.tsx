"use client";

import { Suspense, useEffect, useState } from "react";
import { useSearchParams } from "next/navigation";

interface Cafe {
  id: string;
  name: string;
}

interface ReportData {
  type: string;
  total_revenue: number;
  total_orders: number;
  days?: Array<{ date: string; order_count: number; revenue: number }>;
  months?: Array<{ month: string; order_count: number; revenue: number }>;
  tenants?: Array<{ tenant_id: string; tenant_name: string; order_count: number; revenue: number }>;
}

function CafeReportContent() {
  const searchParams = useSearchParams();
  const cafeId = searchParams.get("id") || "";

  const [cafes, setCafes] = useState<Cafe[]>([]);
  const [selectedCafe, setSelectedCafe] = useState(cafeId);
  const [reportType, setReportType] = useState("daily");
  const [report, setReport] = useState<ReportData | null>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let mounted = true;
    async function loadCafes() {
      try {
        const res = await fetch("/api/cafes");
        if (!res.ok) throw new Error("Gagal memuat cafe");
        const data = await res.json();
        if (mounted) setCafes(data);
      } catch (e) {
        if (mounted) setError(e instanceof Error ? e.message : "Terjadi kesalahan");
      }
    }
    loadCafes();
    return () => { mounted = false; };
  }, []);

  useEffect(() => {
    if (!selectedCafe) return;
    let mounted = true;

    async function loadReport() {
      setLoading(true);
      setError(null);
      try {
        const res = await fetch(`/api/cafes/${selectedCafe}/reports?type=${reportType}`);
        if (!res.ok) throw new Error("Gagal memuat laporan");
        const data = await res.json();
        if (mounted) setReport(data);
      } catch (e) {
        if (mounted) setError(e instanceof Error ? e.message : "Terjadi kesalahan");
      } finally {
        if (mounted) setLoading(false);
      }
    }

    loadReport();
    return () => { mounted = false; };
  }, [selectedCafe, reportType]);

  const formatRupiah = (value: number) =>
    new Intl.NumberFormat("id-ID", { style: "currency", currency: "IDR", maximumFractionDigits: 0 }).format(value);

  return (
    <div>
      <h2 className="text-2xl font-bold text-gray-900 mb-6">Laporan Cafe / Foodcourt</h2>

      <div className="mb-6 flex flex-wrap gap-4 items-end">
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Pilih Cafe</label>
          <select
            value={selectedCafe}
            onChange={(e) => setSelectedCafe(e.target.value)}
            className="px-3 py-2 border rounded-md bg-white"
          >
            <option value="">-- Pilih Cafe --</option>
            {cafes.map((cafe) => (
              <option key={cafe.id} value={cafe.id}>{cafe.name}</option>
            ))}
          </select>
        </div>
        <div>
          <label className="block text-sm font-medium text-gray-700 mb-1">Jenis Laporan</label>
          <select
            value={reportType}
            onChange={(e) => setReportType(e.target.value)}
            className="px-3 py-2 border rounded-md bg-white"
          >
            <option value="daily">Harian</option>
            <option value="monthly">Bulanan</option>
            <option value="tenant">Per Tenant</option>
          </select>
        </div>
      </div>

      {error && (
        <div className="mb-4 p-3 bg-red-50 border border-red-200 text-red-700 rounded-md text-sm">
          {error}
        </div>
      )}

      {!selectedCafe ? (
        <div className="text-center py-10 text-gray-500 bg-white border rounded-lg">
          Pilih cafe untuk melihat laporan
        </div>
      ) : loading ? (
        <div className="text-center py-10 text-gray-500">Memuat laporan...</div>
      ) : report ? (
        <div>
          {/* Ringkasan */}
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
            <div className="bg-white border rounded-lg shadow-sm p-4">
              <p className="text-sm text-gray-600">Total Revenue</p>
              <p className="text-2xl font-bold text-gray-900">{formatRupiah(report.total_revenue)}</p>
            </div>
            <div className="bg-white border rounded-lg shadow-sm p-4">
              <p className="text-sm text-gray-600">Total Order</p>
              <p className="text-2xl font-bold text-gray-900">{report.total_orders}</p>
            </div>
          </div>

          {/* Tabel */}
          <div className="bg-white border rounded-lg shadow-sm overflow-hidden">
            <table className="w-full text-sm">
              <thead className="bg-gray-50 border-b">
                <tr>
                  {report.type === "daily" && (
                    <>
                      <th className="text-left px-4 py-3 font-medium text-gray-700">Tanggal</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Order</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Revenue</th>
                    </>
                  )}
                  {report.type === "monthly" && (
                    <>
                      <th className="text-left px-4 py-3 font-medium text-gray-700">Bulan</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Order</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Revenue</th>
                    </>
                  )}
                  {report.type === "tenant" && (
                    <>
                      <th className="text-left px-4 py-3 font-medium text-gray-700">Tenant</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Order</th>
                      <th className="text-right px-4 py-3 font-medium text-gray-700">Revenue</th>
                    </>
                  )}
                </tr>
              </thead>
              <tbody className="divide-y">
                {report.type === "daily" && report.days?.map((row) => (
                  <tr key={row.date}>
                    <td className="px-4 py-2">{row.date}</td>
                    <td className="px-4 py-2 text-right">{row.order_count}</td>
                    <td className="px-4 py-2 text-right">{formatRupiah(row.revenue)}</td>
                  </tr>
                ))}
                {report.type === "monthly" && report.months?.map((row) => (
                  <tr key={row.month}>
                    <td className="px-4 py-2">{row.month}</td>
                    <td className="px-4 py-2 text-right">{row.order_count}</td>
                    <td className="px-4 py-2 text-right">{formatRupiah(row.revenue)}</td>
                  </tr>
                ))}
                {report.type === "tenant" && report.tenants?.map((row) => (
                  <tr key={row.tenant_id}>
                    <td className="px-4 py-2">{row.tenant_name}</td>
                    <td className="px-4 py-2 text-right">{row.order_count}</td>
                    <td className="px-4 py-2 text-right">{formatRupiah(row.revenue)}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      ) : null}
    </div>
  );
}

export default function CafeReportPage() {
  return (
    <Suspense fallback={<div className="text-center py-10 text-gray-500">Memuat...</div>}>
      <CafeReportContent />
    </Suspense>
  );
}