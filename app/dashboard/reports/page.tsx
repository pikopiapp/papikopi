'use client';

import { useState } from 'react';
import { Download, Filter } from 'lucide-react';
import { BonusCalculator, BonusSummary } from '@/app/components/BonusCalculator';

export default function ReportsPage() {
  const [reportType, setReportType] = useState('daily');
  const [activeTab, setActiveTab] = useState('sales');

  return (
    <div className="p-6 space-y-6">
      <div className="flex justify-between items-center">
        <h1 className="text-3xl font-bold">Laporan Keuangan</h1>
        <button className="bg-amber-600 hover:bg-amber-700 text-white px-4 py-2 rounded-lg flex items-center gap-2">
          <Download size={20} />
          Export PDF
        </button>
      </div>

      {/* Tab Navigation */}
      <div className="bg-white rounded-lg shadow-md border-b">
        <div className="flex gap-0">
          <button
            onClick={() => setActiveTab('sales')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'sales'
                ? 'border-amber-600 text-amber-600'
                : 'border-transparent text-gray-600 hover:text-amber-600'
            }`}
          >
            Laporan Penjualan
          </button>
          <button
            onClick={() => setActiveTab('bonus')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'bonus'
                ? 'border-green-600 text-green-600'
                : 'border-transparent text-gray-600 hover:text-green-600'
            }`}
          >
            📊 Kalkulator Bonus
          </button>
        </div>
      </div>

      {/* Tab Navigation */}
      <div className="bg-white rounded-lg shadow-md border-b">
        <div className="flex gap-0">
          <button
            onClick={() => setActiveTab('sales')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'sales'
                ? 'border-amber-600 text-amber-600'
                : 'border-transparent text-gray-600 hover:text-amber-600'
            }`}
          >
            Laporan Penjualan
          </button>
          <button
            onClick={() => setActiveTab('bonus')}
            className={`px-6 py-4 font-semibold border-b-2 transition ${
              activeTab === 'bonus'
                ? 'border-green-600 text-green-600'
                : 'border-transparent text-gray-600 hover:text-green-600'
            }`}
          >
            📊 Kalkulator Bonus
          </button>
        </div>
      </div>

      {/* SALES TAB */}
      {activeTab === 'sales' && (
        <>
      {/* Report Type Selection */}
      <div className="bg-white p-6 rounded-lg shadow-md">
        <h2 className="text-lg font-semibold mb-4 flex items-center gap-2">
          <Filter size={20} />
          Tipe Laporan
        </h2>
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
          {[
            { id: 'daily', label: 'Laporan Harian' },
            { id: 'weekly', label: 'Laporan Mingguan' },
            { id: 'monthly', label: 'Laporan Bulanan' },
            { id: 'custom', label: 'Rentang Kustom' }
          ].map(option => (
            <button
              key={option.id}
              onClick={() => setReportType(option.id)}
              className={`p-4 rounded-lg border-2 transition ${
                reportType === option.id
                  ? 'border-amber-600 bg-amber-50'
                  : 'border-gray-200 hover:border-amber-200'
              }`}
            >
              {option.label}
            </button>
          ))}
        </div>
      </div>

      {/* Report Content */}
      <div className="bg-white p-6 rounded-lg shadow-md">
        <h3 className="text-lg font-semibold mb-4">Ringkasan Penjualan</h3>
        <div className="space-y-4">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div className="border rounded-lg p-4">
              <p className="text-gray-600 text-sm">Total Penjualan</p>
              <p className="text-2xl font-bold">Rp 0</p>
            </div>
            <div className="border rounded-lg p-4">
              <p className="text-gray-600 text-sm">Total Keuntungan</p>
              <p className="text-2xl font-bold">Rp 0</p>
            </div>
            <div className="border rounded-lg p-4">
              <p className="text-gray-600 text-sm">Transaksi</p>
              <p className="text-2xl font-bold">0</p>
            </div>
          </div>
        </div>
      </div>

      {/* Sample Data Table */}
      <div className="bg-white rounded-lg shadow-md overflow-hidden">
        <div className="p-6 border-b">
          <h3 className="text-lg font-semibold">Penjualan Detail</h3>
        </div>
        <div className="overflow-x-auto">
          <table className="w-full">
            <thead className="bg-gray-100 border-b">
              <tr>
                <th className="px-6 py-3 text-left text-sm font-semibold">Tanggal</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Barista</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Pendapatan</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Keuntungan</th>
                <th className="px-6 py-3 text-left text-sm font-semibold">Pembayaran</th>
              </tr>
            </thead>
            <tbody>
              <tr className="border-b hover:bg-gray-50">
                <td colSpan={5} className="px-6 py-4 text-center text-gray-500">Tidak ada data penjualan</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
        </>
      )}

      {/* BONUS TAB */}
      {activeTab === 'bonus' && (
        <div className="space-y-6">
          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-2xl font-bold mb-2 text-green-700">📊 Sistem Perhitungan Bonus Berjenjang</h2>
            <p className="text-gray-600 mb-6">
              Hitung bonus penjualan berdasarkan metode berjenjang (progressive). Semakin besar omset, semakin banyak layer bonus yang didapat.
            </p>
            
            {/* Tier Structure Reference */}
            <div className="mb-8 p-4 bg-green-50 rounded-lg border border-green-200">
              <h3 className="font-semibold text-lg mb-3">📋 Struktur Tier Bonus</h3>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                <div className="bg-white p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 1</p>
                  <p className="font-bold text-green-600">10%</p>
                  <p className="text-xs text-gray-500">0 - 200rb</p>
                </div>
                <div className="bg-white p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 2</p>
                  <p className="font-bold text-green-600">12%</p>
                  <p className="text-xs text-gray-500">200rb - 350rb</p>
                </div>
                <div className="bg-white p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 3</p>
                  <p className="font-bold text-green-600">15%</p>
                  <p className="text-xs text-gray-500">350rb - 500rb</p>
                </div>
                <div className="bg-white p-3 rounded border border-green-300">
                  <p className="text-xs text-gray-600">Tier 4</p>
                  <p className="font-bold text-green-600">20%</p>
                  <p className="text-xs text-gray-500">500rb+</p>
                </div>
              </div>
            </div>
          </div>

          {/* Bonus Calculator Component */}
          <BonusCalculator showBreakdown={true} />
        </div>
      )}
    </div>
  );
}
