'use client';

import { useMemo } from 'react';
import { calculateBonus, formatNumber } from '@/lib/bonus-calculator';

interface DailyBonusProps {
  omset?: number;
  isLoading?: boolean;
}

export function DailyBonusCard({ omset = 0, isLoading = false }: DailyBonusProps) {
  const wageData = useMemo(() => {
    if (omset && omset > 0) {
      const bonusData = calculateBonus(omset);
      const mealAllowance = omset >= 300000 ? 34000 : 25000;
      const totalWage = bonusData.totalBonus + mealAllowance;
      return {
        bonus: bonusData,
        mealAllowance,
        totalWage,
      };
    }
    return null;
  }, [omset]);

  if (isLoading) {
    return (
      <div className="surface-card rounded-lg shadow-md p-6 animate-pulse">
        <p className="text-sm font-medium opacity-80">Upah Harian</p>
        <div className="h-8 bg-white/20 rounded mt-2 w-32"></div>
      </div>
    );
  }

  if (!wageData || omset === 0) {
    return (
      <div className="surface-card rounded-lg shadow-md p-6">
        <p className="text-sm font-medium opacity-80">Upah Harian</p>
        <p className="text-3xl font-bold mt-2">Rp 0</p>
        <p className="text-xs opacity-70 mt-1">Belum ada penjualan</p>
      </div>
    );
  }

  return (
    <div className="surface-card rounded-lg shadow-md p-6">
      <p className="text-sm font-medium opacity-90">💰 Upah Harian</p>
      <p className="text-4xl font-bold mt-2">Rp {formatNumber(wageData.totalWage)}</p>
      <div className="mt-4 pt-4 border-t border-white/30 space-y-2 text-xs opacity-90">
        <div className="flex justify-between">
          <span>Bonus (Bertahap):</span>
          <span className="font-semibold">Rp {formatNumber(wageData.bonus.totalBonus)}</span>
        </div>
        <div className="flex justify-between">
          <span>Uang Makan:</span>
          <span className="font-semibold text-amber-200">Rp {formatNumber(wageData.mealAllowance)}</span>
        </div>
        <div className="border-t border-white/20 pt-2 mt-2 flex justify-between">
          <span className="text-xs opacity-70">Omset Hari Ini:</span>
          <span className="font-semibold text-xs opacity-70">Rp {formatNumber(omset)}</span>
        </div>
        <div className="flex justify-between">
          <span className="text-xs opacity-70">Metode:</span>
          <span className="font-semibold text-xs opacity-70">Progressive {wageData.bonus.breakdown?.length ?? 4} Tier</span>
        </div>
        <p className="text-xs opacity-70 italic pt-1">
          🔹 {omset >= 300000 
            ? 'Omset ≥ Rp 300rb → Uang Makan Rp 34rb' 
            : 'Omset < Rp 300rb → Uang Makan Rp 25rb'}
        </p>
      </div>
    </div>
  );
}

// Compact version for summary displays
export function BonusSummaryCard({ omset = 0 }: { omset?: number }) {
  const bonus = useMemo(() => {
    if (omset > 0) {
      const result = calculateBonus(omset);
      return result.totalBonus;
    }
    return 0;
  }, [omset]);

  return (
    <div className="surface-card border-2 rounded-lg p-4" style={{ borderColor: 'var(--accent)' }}>
      <p className="text-accent font-semibold text-sm">Bonus Otomatis</p>
      <p className="text-2xl font-bold text-accent mt-1">Rp {formatNumber(bonus)}</p>
    </div>
  );
}
