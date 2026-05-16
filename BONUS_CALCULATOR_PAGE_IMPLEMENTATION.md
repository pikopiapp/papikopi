/**
 * Dashboard Route untuk Bonus Calculator dengan Holiday Calendar
 * Terapkan di: app/dashboard/bonus-calculator/page.tsx
 */

'use client';

import { useState } from 'react';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Card } from '@/components/ui/card';
import BonusCalculator from '@/components/bonus-calculator-widget';
import HolidayCalendar from '@/components/holiday-calendar';
import { Calculator, Calendar } from 'lucide-react';
import { DailyWageResult } from '@/lib/bonus-calculator';

export default function BonusCalculatorPage() {
  const [lastResult, setLastResult] = useState<DailyWageResult | null>(null);
  const [selectedHolidayDate, setSelectedHolidayDate] = useState<Date | null>(null);

  const handleHolidaySelect = (date: Date) => {
    setSelectedHolidayDate(date);
  };

  return (
    <div className="container mx-auto py-8 px-4">
      {/* Header */}
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-gray-900 mb-2">📊 Kalkulator Bonus & Kalender Libur</h1>
        <p className="text-gray-600">
          Hitung bonus penjualan dengan metode progressive, dengan dukungan perhitungan otomatis untuk hari libur nasional Indonesia
        </p>
      </div>

      {/* Main Tabs */}
      <Tabs defaultValue="calculator" className="w-full">
        <TabsList className="grid w-full grid-cols-2 mb-6">
          <TabsTrigger value="calculator" className="flex items-center gap-2">
            <Calculator className="w-4 h-4" />
            Kalkulator Bonus
          </TabsTrigger>
          <TabsTrigger value="calendar" className="flex items-center gap-2">
            <Calendar className="w-4 h-4" />
            Kalender Hari Libur
          </TabsTrigger>
        </TabsList>

        {/* Calculator Tab */}
        <TabsContent value="calculator" className="space-y-6">
          <BonusCalculator onCalculate={setLastResult} showBreakdown={true} />

          {/* Quick Info Card */}
          <Card className="bg-gradient-to-r from-blue-50 to-blue-100 border-blue-200 p-6">
            <h3 className="font-semibold text-gray-800 mb-3">💡 Cara Kerja Kalkulator</h3>
            <ul className="space-y-2 text-sm text-gray-700">
              <li>✓ Masukkan omset penjualan di kolom input</li>
              <li>✓ Pilih tanggal untuk otomatis deteksi hari libur</li>
              <li>✓ Atau toggle manual "Hitung sebagai Hari Libur" untuk simulasi</li>
              <li>✓ Lihat rincian bonus per tier dan total upah harian</li>
              <li>✓ Salin hasil kalkulasi ke clipboard</li>
            </ul>
          </Card>

          {/* Last Result Summary */}
          {lastResult && (
            <Card className="bg-gradient-to-r from-green-50 to-green-100 border-green-200 p-6">
              <h3 className="font-semibold text-gray-800 mb-3">📋 Ringkasan Hasil Terakhir</h3>
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div>
                  <p className="text-xs text-gray-600 mb-1">Omset</p>
                  <p className="font-bold text-lg text-gray-800">
                    {(lastResult.omset / 1000).toFixed(0)}rb
                  </p>
                </div>
                <div>
                  <p className="text-xs text-gray-600 mb-1">Bonus</p>
                  <p className="font-bold text-lg text-green-600">
                    {(lastResult.bonus / 1000).toFixed(0)}rb
                  </p>
                </div>
                <div>
                  <p className="text-xs text-gray-600 mb-1">Uang Makan</p>
                  <p className="font-bold text-lg text-amber-600">
                    {(lastResult.mealAllowance / 1000).toFixed(0)}rb
                  </p>
                </div>
                <div>
                  <p className="text-xs text-gray-600 mb-1">Total Upah</p>
                  <p className="font-bold text-lg text-blue-600">
                    {(lastResult.totalWage / 1000).toFixed(0)}rb
                  </p>
                </div>
              </div>
            </Card>
          )}
        </TabsContent>

        {/* Calendar Tab */}
        <TabsContent value="calendar" className="space-y-6">
          <HolidayCalendar onHolidaySelect={handleHolidaySelect} />

          {/* Selected Date Info */}
          {selectedHolidayDate && (
            <Card className="bg-gradient-to-r from-orange-50 to-orange-100 border-orange-200 p-6">
              <h3 className="font-semibold text-gray-800 mb-3">📌 Tanggal yang Dipilih</h3>
              <p className="text-gray-700 mb-2">
                {selectedHolidayDate.toLocaleDateString('id-ID', {
                  weekday: 'long',
                  year: 'numeric',
                  month: 'long',
                  day: 'numeric',
                })}
              </p>
              <p className="text-sm text-gray-600">
                💡 Gunakan tombol "Kalkulator Bonus" untuk menghitung bonus pada tanggal ini dengan rate 20%
              </p>
            </Card>
          )}

          {/* Holiday Info */}
          <Card className="bg-gradient-to-r from-purple-50 to-purple-100 border-purple-200 p-6">
            <h3 className="font-semibold text-gray-800 mb-3">ℹ️ Informasi Hari Libur</h3>
            <div className="space-y-2 text-sm text-gray-700">
              <p>
                🎉 <strong>Hari Libur</strong> adalah hari di mana bonus barista dihitung dengan rate{' '}
                <strong>20% untuk semua range omset</strong>, bukan struktur bertingkat biasa.
              </p>
              <p>
                📅 <strong>Hari Libur mencakup:</strong>
              </p>
              <ul className="ml-6 space-y-1 list-disc">
                <li>Sabtu & Minggu (Weekend)</li>
                <li>Hari libur nasional Indonesia (Tahun Baru, Lebaran, Hari Kemerdekaan, dll)</li>
              </ul>
              <p className="mt-3">
                💰 <strong>Contoh:</strong> Omset Rp 450.000 di hari kerja = Bonus Rp 53.000. Omset yang
                sama di hari libur = Bonus Rp 90.000 (70% lebih tinggi!)
              </p>
            </div>
          </Card>
        </TabsContent>
      </Tabs>

      {/* Tier Reference Card */}
      <Card className="mt-8 p-6 bg-gray-50 border-gray-200">
        <h2 className="text-xl font-bold text-gray-900 mb-4">📊 Referensi Struktur Bonus</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Weekday Tiers */}
          <div className="space-y-2">
            <h3 className="font-semibold text-gray-800 mb-3">Hari Kerja Biasa</h3>
            <div className="space-y-2">
              {[
                { range: 'Rp 0 - Rp 200rb', rate: '10%' },
                { range: 'Rp 200rb - Rp 350rb', rate: '12%' },
                { range: 'Rp 350rb - Rp 500rb', rate: '15%' },
                { range: 'Rp 500rb+', rate: '20%' },
              ].map((tier, idx) => (
                <div
                  key={idx}
                  className="flex justify-between items-center p-3 bg-white rounded border border-gray-200"
                >
                  <span className="text-gray-700">{tier.range}</span>
                  <span className="font-bold text-blue-600">{tier.rate}</span>
                </div>
              ))}
            </div>
          </div>

          {/* Holiday Tiers */}
          <div className="space-y-2">
            <h3 className="font-semibold text-gray-800 mb-3">🎉 Hari Libur (Sabtu/Minggu/Nasional)</h3>
            <div className="space-y-2">
              {[
                { range: 'Rp 0 - Rp 200rb', rate: '20%' },
                { range: 'Rp 200rb - Rp 350rb', rate: '20%' },
                { range: 'Rp 350rb - Rp 500rb', rate: '20%' },
                { range: 'Rp 500rb+', rate: '20%' },
              ].map((tier, idx) => (
                <div
                  key={idx}
                  className="flex justify-between items-center p-3 bg-white rounded border-2 border-orange-300 bg-orange-50"
                >
                  <span className="text-gray-700">{tier.range}</span>
                  <span className="font-bold text-orange-600">{tier.rate}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      </Card>
    </div>
  );
}
