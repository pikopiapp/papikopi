"use client";

import React, { useState } from "react";
import { calculateBonus, calculateMealAllowance, calculateDailyWage, formatNumber, DEFAULT_BONUS_TIERS } from "@/lib/bonus-calculator";
import type { BonusCalculationResult, DailyWageResult } from "@/lib/bonus-calculator";

interface BonusCalculatorProps {
  omset?: number;
  onCalculate?: (result: BonusCalculationResult) => void;
  showBreakdown?: boolean;
}

/**
 * Bonus Calculator Component
 * Displays progressive bonus calculation with tier breakdown
 */
export function BonusCalculator({
  omset = 0,
  onCalculate,
  showBreakdown = true,
}: BonusCalculatorProps) {
  const [inputOmset, setInputOmset] = useState<number>(omset);
  const [isHoliday, setIsHoliday] = useState(false);
  const [result, setResult] = useState<BonusCalculationResult | null>(null);

  const handleCalculate = () => {
    const calculationResult = calculateBonus(inputOmset, isHoliday);
    setResult(calculationResult);
    onCalculate?.(calculationResult);
  };

  const handleReset = () => {
    setInputOmset(0);
    setIsHoliday(false);
    setResult(null);
  };

  const handleOmsetChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const value = parseFloat(e.target.value) || 0;
    setInputOmset(value);
  };

  return (
    <div className="w-full max-w-2xl mx-auto p-4">
      <div className="bg-white rounded-lg shadow-md p-6">
        <h2 className="text-2xl font-bold text-gray-800 mb-6">
          📊 Kalkulator Bonus Berjenjang
        </h2>

        {/* Input Section */}
        <div className="space-y-4 mb-6">
          <div>
            <label className="block text-sm font-semibold text-gray-700 mb-2">
              Total Omset
            </label>
            <div className="flex items-center gap-2">
              <input
                type="number"
                value={inputOmset}
                onChange={handleOmsetChange}
                placeholder="0"
                className="flex-1 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500"
              />
              <span className="text-gray-600 font-medium">IDR</span>
            </div>
            <p className="text-xs text-gray-500 mt-1">
              Masukkan total omset untuk menghitung bonus
            </p>
          </div>

          <div className="flex items-center gap-3">
            <input
              type="checkbox"
              id="holiday-bonus"
              checked={isHoliday}
              onChange={(e) => setIsHoliday(e.target.checked)}
              className="w-4 h-4 accent-blue-500"
            />
            <label
              htmlFor="holiday-bonus"
              className="text-sm font-medium text-gray-700"
            >
              Bonus Hari Libur (Semua Tier 20%)
            </label>
          </div>

          {isHoliday && (
            <div className="bg-green-50 border border-green-200 rounded p-3 text-sm text-green-800">
              🎉 Mode hari libur aktif: Semua tier mendapatkan bonus 20% (weekend atau hari libur nasional)
            </div>
          )}
        </div>

        {/* Action Buttons */}
        <div className="flex gap-3 mb-6">
          <button
            onClick={handleCalculate}
            className="flex-1 bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg transition"
          >
            Hitung Bonus
          </button>
          <button
            onClick={handleReset}
            className="flex-1 bg-gray-300 hover:bg-gray-400 text-gray-800 font-semibold py-2 px-4 rounded-lg transition"
          >
            Reset
          </button>
        </div>

        {/* Result Section */}
        {result && (
          <div className="space-y-4">
            {/* Calculate values */}
            {(() => {
              const mealAllowance = calculateMealAllowance(result.omset);
              const totalWage = result.totalBonus + mealAllowance;
              
              return (
                <>
                  {/* Summary Cards */}
                  <div className="grid grid-cols-2 gap-3">
                    <div className="bg-gray-50 rounded-lg p-4 border border-gray-200">
                      <p className="text-xs text-gray-600 font-medium">OMSET</p>
                      <p className="text-lg font-bold text-gray-800">
                        {formatNumber(result.omset)}
                      </p>
                    </div>
                    <div className="bg-blue-50 rounded-lg p-4 border border-blue-200">
                      <p className="text-xs text-blue-600 font-medium">
                        PERSENTASE EFEKTIF
                      </p>
                      <p className="text-lg font-bold text-blue-700">
                        {result.effectivePercentage.toFixed(2)}%
                      </p>
                    </div>
                  </div>

                  {/* Wage Components */}
                  <div className="bg-green-50 rounded-lg p-4 border border-green-200">
                    <h3 className="font-semibold text-gray-800 mb-3">💰 Komponen Upah Harian</h3>
                    <div className="space-y-2">
                      <div className="flex justify-between items-center">
                        <span className="text-gray-700">Bonus (Bertahap)</span>
                        <span className="font-bold text-green-700">{formatNumber(result.totalBonus)}</span>
                      </div>
                      <div className="flex justify-between items-center">
                        <span className="text-gray-700">Uang Makan</span>
                        <span className="font-bold text-amber-700">{formatNumber(mealAllowance)}</span>
                      </div>
                      <div className="border-t border-green-300 pt-2 mt-2 flex justify-between items-center">
                        <span className="font-semibold text-gray-800">Total Upah</span>
                        <span className="font-bold text-lg text-green-800">{formatNumber(totalWage)}</span>
                      </div>
                      <p className="text-xs text-gray-600 mt-2">
                        {result.omset < 300000
                          ? "🔹 Omset < Rp 300rb → Uang Makan Rp 25rb"
                          : "🔹 Omset ≥ Rp 300rb → Uang Makan Rp 34rb"}
                      </p>
                    </div>
                  </div>

                  {/* Tier Breakdown */}
                  {showBreakdown && result.breakdown.length > 0 && (
                    <div className="mt-6">
                      <h3 className="text-lg font-semibold text-gray-800 mb-3">
                        📈 Rincian Per Tahap
                      </h3>

                      {result.isSpecial ? (
                        <div className="bg-green-50 border border-green-200 rounded-lg p-4">
                          <div className="flex items-start gap-3">
                            <span className="bg-green-600 text-white rounded-full w-8 h-8 flex items-center justify-center shrink-0 text-sm font-bold">
                              ✓
                            </span>
                            <div className="flex-1">
                              <p className="font-semibold text-gray-800">
                                Holiday Mode
                              </p>
                              <p className="text-sm text-gray-600 mt-1">
                                All tiers at 20% bonus
                              </p>
                            </div>
                          </div>
                        </div>
                      ) : (
                        <div className="space-y-3">
                          {result.breakdown.map((tier, index) => (
                            <div
                              key={index}
                              className="bg-gray-50 border border-gray-200 rounded-lg p-4"
                            >
                              <div className="flex items-start justify-between mb-2">
                                <div>
                                  <span className="flex bg-gray-600 text-white rounded-full w-7 h-7 items-center justify-center text-sm font-bold mr-2">
                                    {tier.tierNumber}
                                  </span>
                                  <span className="font-semibold text-gray-800">
                                    {tier.label}
                                  </span>
                                </div>
                                <span className="text-sm font-bold text-green-600">
                                  +{formatNumber(tier.bonus)}
                                </span>
                              </div>

                              <div className="ml-9 space-y-1 text-sm text-gray-600">
                                <p>
                                  <span className="font-medium">Range:</span>{" "}
                                  {formatNumber(tier.fromAmount)} -{" "}
                                  {formatNumber(tier.toAmount)}
                                </p>
                                <p>
                                  <span className="font-medium">Amount:</span>{" "}
                                  {formatNumber(tier.amount)}
                                </p>
                                <p>
                                  <span className="font-medium">Rate:</span>{" "}
                                  {tier.percentage}%
                                </p>
                                <p className="text-xs text-gray-500">
                                  {formatNumber(tier.amount)} × {tier.percentage}% ={" "}
                                  <span className="font-semibold">
                                    {formatNumber(tier.bonus)}
                                  </span>
                                </p>
                              </div>
                            </div>
                          ))}
                        </div>
                      )}
                    </div>
                  )}

                  {/* Tier Reference */}
                  <div className="mt-6">
                    <h3 className="text-lg font-semibold text-gray-800 mb-3">
                      ℹ️ Struktur Tier
                    </h3>
                    <div className="overflow-x-auto">
                      <table className="w-full text-sm border-collapse">
                        <thead>
                          <tr className="bg-gray-200 border border-gray-300">
                            <th className="px-3 py-2 text-left font-semibold">
                              Tahap
                            </th>
                            <th className="px-3 py-2 text-left font-semibold">
                              Range
                            </th>
                            <th className="px-3 py-2 text-right font-semibold">
                              Bonus %
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          {DEFAULT_BONUS_TIERS.map((tier, index) => (
                            <tr
                              key={index}
                              className="border border-gray-300 hover:bg-gray-50"
                            >
                              <td className="px-3 py-2 font-medium">Tahap {index + 1}</td>
                              <td className="px-3 py-2">
                                {formatNumber(tier.min)} -{" "}
                                {tier.max ? formatNumber(tier.max) : "∞"}
                              </td>
                              <td className="px-3 py-2 text-right font-semibold text-green-600">
                                {tier.percentage}%
                              </td>
                            </tr>
                          ))}
                        </tbody>
                      </table>
                    </div>
                  </div>
                </>
              );
            })()}
          </div>
        )}
      </div>
    </div>
  );
}

/**
 * Bonus Summary Component
 * Compact display of bonus calculation
 */
export function BonusSummary({
  omset,
  isHoliday = false,
}: {
  omset: number;
  isHoliday?: boolean;
}) {
  const result = calculateBonus(omset, isHoliday);

  return (
    <div className="bg-linear-to-r from-green-50 to-blue-50 border border-green-200 rounded-lg p-4">
      <div className="flex items-center justify-between">
        <div>
          <p className="text-sm text-gray-600">Total Bonus</p>
          <p className="text-2xl font-bold text-green-600">
            {formatNumber(result.totalBonus)}
          </p>
        </div>
        <div className="text-right">
          <p className="text-sm text-gray-600">Persentase Efektif</p>
          <p className="text-xl font-bold text-blue-600">
            {result.effectivePercentage.toFixed(2)}%
          </p>
        </div>
      </div>
      {isHoliday && (
        <p className="text-xs text-green-600 mt-2">🎉 Bonus Hari Libur (Semua Tier 20%)</p>
      )}
    </div>
  );
}
