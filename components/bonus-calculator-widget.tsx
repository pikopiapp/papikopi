'use client';

import React, { useState, useMemo } from 'react';
import { Calculator, TrendingUp, AlertCircle } from 'lucide-react';
import {
  calculateDailyWage,
  MEAL_ALLOWANCE,
  DailyWageResult,
} from '@/lib/bonus-calculator';
import { useEffect } from 'react';
import formatLocalDate from '@/lib/formatLocalDate';

interface BonusCalculatorProps {
  onCalculate?: (result: DailyWageResult) => void;
  initialOmset?: number;
  showBreakdown?: boolean;
}

export default function BonusCalculator({
  onCalculate,
  initialOmset = 0,
  showBreakdown = true,
}: BonusCalculatorProps) {
  const [omset, setOmset] = useState(initialOmset);
  const [selectedDate, setSelectedDate] = useState<Date>(new Date());
  const [manualHoliday, setManualHoliday] = useState(false);
  const [customHolidays, setCustomHolidays] = useState<Map<string,string>>(new Map());
  const [nationalHolidays, setNationalHolidays] = useState<Map<string,string>>(new Map());

  useEffect(() => {
    let mounted = true;
    (async () => {
      try {
        const res = await fetch('/api/holidays');
        if (!res.ok) return;
        const json = await res.json();
        if (!mounted) return;
        if (json && json.success && Array.isArray(json.data)) {
          const custom = new Map<string,string>();
          const national = new Map<string,string>();
          for (const r of json.data as Array<{date:string;description?:string;is_national?:boolean}>) {
            const d = String(r.date);
            const desc = r.description || '';
            if (r.is_national) national.set(d, desc);
            else custom.set(d, desc);
          }
          setCustomHolidays(custom);
          setNationalHolidays(national);
        }
      } catch {
        // ignore
      }
    })();
    return () => { mounted = false; };
  }, []);

  const isoSelected = formatLocalDate(selectedDate);
  const isHolidayDate = nationalHolidays.has(isoSelected) || customHolidays.has(isoSelected) || selectedDate.getDay() === 0 || selectedDate.getDay() === 6;
  const isHolidayMode = manualHoliday || isHolidayDate;

  const result = useMemo<DailyWageResult>(() => {
    return calculateDailyWage(omset, isHolidayMode, showBreakdown);
  }, [omset, isHolidayMode, showBreakdown]);

  React.useEffect(() => {
    onCalculate?.(result);
  }, [result, onCalculate]);

  const formatCurrency = (value: number): string => {
    return new Intl.NumberFormat('id-ID', {
      style: 'currency',
      currency: 'IDR',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(value);
  };

  const formatNumber = (value: number): string => {
    if (value >= 1000000) {
      return `${(value / 1000000).toFixed(1)}jt`;
    } else if (value >= 1000) {
      return `${(value / 1000).toFixed(0)}rb`;
    }
    return value.toFixed(0);
  };

  const handleReset = () => {
    setOmset(0);
    setSelectedDate(new Date());
    setManualHoliday(false);
  };

  const dateStr = selectedDate.toLocaleDateString('id-ID', {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  });

  const tierPercentage = isHolidayMode ? '20%' : 'Bertingkat (10-12-15-20%)';

  return (
    <div className="w-full max-w-2xl mx-auto">
      {/* Header */}
      <div className="bg-linear-to-r from-blue-600 to-blue-700 text-white rounded-t-lg p-6">
        <div className="flex items-center gap-3">
          <Calculator className="w-8 h-8" />
          <div>
            <h2 className="text-2xl font-bold">Kalkulator Bonus Berjenjang</h2>
            <p className="text-blue-100 text-sm">Hitung bonus penjualan dengan metode progressive</p>
          </div>
        </div>
      </div>

      <div className="bg-white rounded-b-lg shadow-lg p-6 space-y-6">
        {/* Input Section */}
        <div className="space-y-4">
          <div>
            <label className="block text-sm font-semibold text-gray-700 mb-2">
              💰 Total Omset
            </label>
            <div className="flex gap-2">
              <input
                type="number"
                value={omset}
                onChange={(e) => setOmset(Math.max(0, Number(e.target.value)))}
                placeholder="0"
                className="flex-1 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <span className="px-4 py-2 bg-gray-100 rounded-lg text-gray-700 font-medium">IDR</span>
            </div>
          </div>

          {/* Date Picker */}
          <div>
            <label className="block text-sm font-semibold text-gray-700 mb-2">
              📅 Tanggal
            </label>
            <input
              type="date"
              value={formatLocalDate(selectedDate)}
              onChange={(e) => setSelectedDate(new Date(e.target.value))}
              className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
            />
            <p className="text-xs text-gray-600 mt-1">{dateStr}</p>
          </div>

          {/* Holiday Info Alert */}
          {isHolidayDate && (
            <div className="bg-orange-50 border-l-4 border-orange-500 p-4 rounded">
              <div className="flex items-start gap-2">
                <AlertCircle className="w-5 h-5 text-orange-600 mt-0.5 shrink-0" />
                <div className="text-sm text-orange-800">
                  <p className="font-semibold">🎉 Hari Libur Terdeteksi!</p>
                      <p>{customHolidays.get(isoSelected) ?? nationalHolidays.get(isoSelected) ?? (['Minggu','Senin','Selasa','Rabu','Kamis','Jumat','Sabtu'][selectedDate.getDay()])}</p>
                  <p className="text-xs mt-1">
                    ➜ Bonus untuk hari ini menggunakan rate 20% untuk semua tier
                  </p>
                </div>
              </div>
            </div>
          )}

          {/* Manual Holiday Toggle */}
          <div className="flex items-center gap-3 bg-gray-50 p-4 rounded-lg">
            <input
              type="checkbox"
              id="manualHoliday"
              checked={manualHoliday}
              onChange={(e) => setManualHoliday(e.target.checked)}
              disabled={isHolidayDate}
              className="w-4 h-4 text-green-600 rounded focus:ring-2 focus:ring-green-500"
            />
            <label htmlFor="manualHoliday" className="text-sm font-medium text-gray-700">
              ✓ Hitung sebagai Hari Libur (Semua Tier 20%)
            </label>
          </div>
        </div>

        {/* Results Section */}
        {omset > 0 && (
          <>
            {/* Summary Cards */}
            <div className="grid grid-cols-3 gap-4">
              <div className="bg-linear-to-br from-gray-50 to-gray-100 rounded-lg p-4 border border-gray-200">
                <p className="text-xs font-semibold text-gray-600 mb-1">OMSET</p>
                <p className="text-lg font-bold text-gray-800">{formatNumber(omset)}</p>
                <p className="text-xs text-gray-500 mt-1">{formatCurrency(omset)}</p>
              </div>

              <div className="bg-linear-to-br from-green-50 to-green-100 rounded-lg p-4 border border-green-200">
                <p className="text-xs font-semibold text-green-600 mb-1">BONUS</p>
                <p className="text-lg font-bold text-green-700">{formatNumber(result.bonus)}</p>
                <p className="text-xs text-green-600 mt-1">
                  {((result.bonus / omset) * 100).toFixed(2)}%
                </p>
              </div>

              <div className="bg-linear-to-br from-blue-50 to-blue-100 rounded-lg p-4 border border-blue-200">
                <p className="text-xs font-semibold text-blue-600 mb-1">METODE</p>
                <p className="text-xs font-bold text-blue-700">{tierPercentage}</p>
                <p className="text-xs text-blue-600 mt-1">
                  {isHolidayMode ? '🎉 Hari Libur' : 'Hari Kerja'}
                </p>
              </div>
            </div>

            {/* Daily Wage Card */}
            <div className="bg-linear-to-r from-green-500 to-green-600 text-white rounded-lg p-6">
              <h3 className="font-semibold mb-4">💰 Komponen Upah Harian</h3>

              <div className="space-y-3 mb-4">
                <div className="flex justify-between items-center">
                  <span className="text-green-100">Bonus (Bertahap)</span>
                  <span className="font-bold text-lg">{formatCurrency(result.bonus)}</span>
                </div>

                <div className="flex justify-between items-center">
                  <span className="text-green-100">Uang Makan</span>
                  <span className="font-bold text-lg text-amber-200">{formatCurrency(result.mealAllowance)}</span>
                </div>

                <div className="border-t border-green-400 pt-3 flex justify-between items-center">
                  <span className="font-semibold">Total Upah Harian</span>
                  <span className="font-bold text-2xl">{formatCurrency(result.totalWage)}</span>
                </div>
              </div>

              <p className="text-xs text-green-100">
                {omset >= MEAL_ALLOWANCE.threshold
                  ? '🔹 Omset ≥ Rp 300rb → Uang Makan Rp 34rb'
                  : '🔹 Omset < Rp 300rb → Uang Makan Rp 25rb'}
              </p>
            </div>

            {/* Tier Breakdown */}
            {showBreakdown && result.breakdown && result.breakdown.length > 0 && (
              <div className="space-y-3">
                <h3 className="font-semibold text-gray-800 flex items-center gap-2">
                  <TrendingUp className="w-5 h-5" />
                  📊 Rincian Per Tahap
                </h3>

                {isHolidayMode && (
                  <div className="bg-orange-50 border-l-4 border-orange-500 p-3 rounded text-sm text-orange-800">
                    🎉 Mode Hari Libur - Semua Tier 20%
                  </div>
                )}

                <div className="space-y-2">
                  {result.breakdown.map((tier, index) => (
                    <div
                      key={index}
                      className={`
                        p-4 rounded-lg border-2 transition
                        ${isHolidayMode
                          ? 'bg-orange-50 border-orange-300'
                          : 'bg-blue-50 border-blue-300'
                        }
                      `}
                    >
                      <div className="flex items-center justify-between mb-2">
                        <span className="font-semibold text-gray-800">{tier.label}</span>
                        <span className="text-sm font-bold text-gray-600">{tier.percentage}%</span>
                      </div>

                      <div className="text-xs text-gray-600 mb-2">
                        {formatNumber(tier.fromAmount)} → {formatNumber(tier.toAmount)}
                        <br />
                        Jumlah: {formatNumber(tier.amount)}
                      </div>

                      <div className="text-lg font-bold text-green-600">
                        = {formatCurrency(tier.bonus)}
                      </div>
                    </div>
                  ))}
                </div>

                <div className="bg-green-50 border-2 border-green-300 p-4 rounded-lg">
                  <div className="flex justify-between items-center">
                    <span className="font-semibold text-gray-800">Total Bonus</span>
                    <span className="text-2xl font-bold text-green-600">
                      {formatCurrency(result.bonus)}
                    </span>
                  </div>
                </div>
              </div>
            )}

            {/* Action Buttons */}
            <div className="flex gap-3 pt-4 border-t">
              <button
                onClick={handleReset}
                className="flex-1 px-4 py-2 border border-gray-300 text-gray-700 font-medium rounded-lg hover:bg-gray-50 transition"
              >
                Reset
              </button>
              <button
                onClick={() => {
                  const text = `
Kalkulasi Bonus Penjualan
========================
Tanggal: ${dateStr}
Omset: ${formatCurrency(omset)}
Bonus: ${formatCurrency(result.bonus)}
Uang Makan: ${formatCurrency(result.mealAllowance)}
---
Total Upah: ${formatCurrency(result.totalWage)}

Mode: ${isHolidayMode ? 'Hari Libur (20% semua tier)' : 'Hari Kerja Biasa'}
                  `;
                  navigator.clipboard.writeText(text.trim());
                  alert('Hasil kalkulasi disalin ke clipboard!');
                }}
                className="flex-1 px-4 py-2 bg-blue-600 text-white font-medium rounded-lg hover:bg-blue-700 transition"
              >
                Salin Hasil
              </button>
            </div>
          </>
        )}

        {/* Tier Reference */}
        <div className="bg-gray-50 rounded-lg p-4 space-y-3">
          <h3 className="font-semibold text-gray-800">ℹ️ Struktur Tier Bonus</h3>
          <div className="grid grid-cols-2 gap-3 text-xs">
            <div className="bg-white p-3 rounded border border-gray-200">
              <p className="font-bold text-blue-600">Hari Kerja</p>
              <p className="text-gray-600 mt-1">
                • Rp 0-200rb: 10%<br />
                • Rp 200-350rb: 12%<br />
                • Rp 350-500rb: 15%<br />
                • Rp 500rb+: 20%
              </p>
            </div>
            <div className="bg-white p-3 rounded border border-orange-200">
              <p className="font-bold text-orange-600">Hari Libur 🎉</p>
              <p className="text-gray-600 mt-1">
                • Semua Range: <strong>20%</strong><br />
                <br />
                (Weekend & Hari Libur Nasional)
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
