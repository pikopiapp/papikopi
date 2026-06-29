import { getBusinessDayDate } from './helpers/business-day';

/**
 * Progressive Bonus Calculator
 * Calculates bonus based on tiered/graduated rates (like progressive tax)
 *
 * Tier Structure:
 * | Tahap   | Omset Minimal | Bonus |
 * |---------|--------------|-------|
 * | Tahap 1 | 0            | 10%   |
 * | Tahap 2 | 200.000      | 12%   |
 * | Tahap 3 | 350.000      | 15%   |
 * | Tahap 4 | 500.000      | 20%   |
 *
 * Example: omset = 450.000
 * - Tier 1: 200.000 × 10% = 20.000
 * - Tier 2: 150.000 × 12% = 18.000
 * - Tier 3: 100.000 × 15% = 15.000
 * Total = 53.000
 */

/**
 * Bonus tier configuration
 */
export interface BonusTier {
  min: number;
  max: number | null;
  percentage: number;
}

/**
 * Breakdown per tier
 */
export interface TierBreakdown {
  tierNumber: number;
  label: string;
  fromAmount: number;
  toAmount: number;
  amount: number;
  percentage: number;
  bonus: number;
}

/**
 * Result of bonus calculation
 */
export interface BonusCalculationResult {
  omset: number;
  totalBonus: number;
  breakdown: TierBreakdown[];
  effectivePercentage: number;
  isSpecial: boolean;
}

/**
 * Meal allowance configuration
 */
export interface MealAllowance {
  belowThreshold: number;  // Amount for omset < 300rb
  aboveThreshold: number;  // Amount for omset >= 300rb
  threshold: number;       // Threshold amount (300rb)
}

/**
 * Daily wage result (Bonus + Meal Allowance)
 */
export interface DailyWageResult {
  omset: number;
  bonus: number;
  mealAllowance: number;
  totalWage: number;
  breakdown?: TierBreakdown[];
  isHoliday?: boolean;
}

/**
 * Default tier structure from specification
 */
export const DEFAULT_BONUS_TIERS: BonusTier[] = [
  { min: 0, max: 200000, percentage: 10 },
  { min: 200000, max: 350000, percentage: 12 },
  { min: 350000, max: 500000, percentage: 15 },
  { min: 500000, max: null, percentage: 20 },
];

/**
 * Holiday tier structure (all tiers get 20%)
 * Used for weekend and national holidays
 */
export const HOLIDAY_BONUS_TIERS: BonusTier[] = [
  { min: 0, max: 200000, percentage: 20 },
  { min: 200000, max: 350000, percentage: 20 },
  { min: 350000, max: 500000, percentage: 20 },
  { min: 500000, max: null, percentage: 20 },
];

/**
 * Meal allowance configuration
 * Omset < 300rb: Rp 25,000
 * Omset >= 300rb: Rp 34,000
 */
export const MEAL_ALLOWANCE: MealAllowance = {
  belowThreshold: 25000,
  aboveThreshold: 34000,
  threshold: 300000,
};

/**
 * Calculate progressive bonus
 *
 * @param omset - Total omset/sales amount
 * @param isHoliday - If true, apply 20% to all tiers (weekend or national holiday)
 * @param customTiers - Optional custom tier configuration
 * @returns BonusCalculationResult
 */
export function calculateBonus(
  omset: number,
  isHoliday = false,
  customTiers?: BonusTier[]
): BonusCalculationResult {
  // Special override: treat `isHoliday` as a single flat 20% override
  const tiers = customTiers ?? (isHoliday ? HOLIDAY_BONUS_TIERS : DEFAULT_BONUS_TIERS);

  // Validate input
  if (omset < 0) {
    return {
      omset: 0,
      totalBonus: 0,
      breakdown: [],
      effectivePercentage: 0,
      isSpecial: false,
    };
  }

  // If special override (holiday/special), apply a single flat tier of 20%
  if (isHoliday) {
    const totalBonus = omset * 0.2;
    const breakdown: TierBreakdown[] = [];
    if (omset > 0) {
      breakdown.push({
        tierNumber: 1,
        label: "Special Override",
        fromAmount: 0,
        toAmount: omset,
        amount: omset,
        percentage: 20,
        bonus: totalBonus,
      });
    }

    return {
      omset,
      totalBonus,
      breakdown,
      effectivePercentage: omset > 0 ? 20 : 0,
      isSpecial: true,
    };
  }

  // Progressive tiered calculation
  const breakdown: TierBreakdown[] = [];
  let totalBonus = 0;

  for (let i = 0; i < tiers.length; i++) {
    const tier = tiers[i];
    const tierNum = i + 1;

    // Calculate amount in this tier
    let amountInTier: number;
    let fromAmount: number;
    let toAmount: number;

    if (i === 0) {
      // Tier 1: 0 to first max
      amountInTier = Math.min(omset, tier.max ?? 200000);
      fromAmount = 0;
      toAmount = tier.max ?? 200000;
    } else {
      // Other tiers
      const prevMax = tiers[i - 1].max ?? 0;
      const tierMax = tier.max ?? omset + 1;
      const range = tierMax - prevMax;

      if (omset <= prevMax) {
        // No amount in this tier
        continue;
      }

      amountInTier = Math.min(omset - prevMax, range);
      fromAmount = prevMax;
      toAmount = prevMax + amountInTier;
    }

    if (amountInTier > 0) {
      const bonus = amountInTier * (tier.percentage / 100);
      totalBonus += bonus;

      breakdown.push({
        tierNumber: tierNum,
        label: isHoliday ? `Tahap ${tierNum} (Hari Libur)` : `Tahap ${tierNum}`,
        fromAmount,
        toAmount,
        amount: amountInTier,
        percentage: tier.percentage,
        bonus,
      });
    }
  }

  // Calculate effective percentage
  const effectivePercentage =
    omset > 0 ? (totalBonus / omset) * 100 : 0;

  return {
    omset,
    totalBonus,
    breakdown,
    effectivePercentage,
    isSpecial: isHoliday,
  };
}

/**
 * Quick calculation - just returns total bonus amount
 *
 * @param omset - Total omset/sales amount
 * @param isHoliday - If true, apply 20% to all tiers (holiday bonus)
 * @returns Total bonus amount
 */
export function quickCalculateBonus(
  omset: number,
  isHoliday = false
): number {
  return calculateBonus(omset, isHoliday).totalBonus;
}

/**
 * Validate bonus tiers configuration
 *
 * @param tiers - Tier configuration to validate
 * @returns true if valid, false otherwise
 */
export function validateBonusTiers(tiers: BonusTier[]): boolean {
  if (tiers.length === 0) return false;

  // Check tiers are in order and consecutive
  let expectedMin = 0;
  for (const tier of tiers) {
    if (tier.min !== expectedMin) return false;
    if (tier.max !== null && tier.max <= tier.min) return false;
    expectedMin = tier.max ?? expectedMin + 1;
  }

  return true;
}

/**
 * Get tier labels for display
 *
 * @param tiers - Tier configuration
 * @returns Array of formatted labels
 */
export function getTierLabels(tiers: BonusTier[]): string[] {
  return tiers.map((tier) => {
    const minStr = formatNumber(tier.min);
    const maxStr = tier.max !== null ? formatNumber(tier.max) : "∞";
    return `${tier.percentage.toFixed(0)}% (${minStr} - ${maxStr})`;
  });
}

/**
 * Format number to Indonesian notation (jt = juta, rb = ribu)
 *
 * @param num - Number to format
 * @returns Formatted string
 */
export function formatNumber(num: number): string {
  if (num >= 1000000) {
    return `${(num / 1000000).toFixed(1)}jt`;
  } else if (num >= 1000) {
    return `${(num / 1000).toFixed(0)}rb`;
  }
  return num.toFixed(0);
}

/**
 * Calculate meal allowance (uang makan)
 *
 * @param omset - Total omset/sales amount
 * @param allowanceConfig - Meal allowance configuration (default: MEAL_ALLOWANCE)
 * @returns Meal allowance amount
 */
export function calculateMealAllowance(
  omset: number,
  allowanceConfig: MealAllowance = MEAL_ALLOWANCE
): number {
  // If no sales, no meal allowance
  if (!omset || omset === 0) return 0;

  return omset >= allowanceConfig.threshold
    ? allowanceConfig.aboveThreshold
    : allowanceConfig.belowThreshold;
}

/**
 * Calculate daily wage (Upah Harian = Bonus + Uang Makan)
 *
 * @param omset - Total omset/sales amount
 * @param isHoliday - If true, apply holiday bonus (20% for all tiers)
 * @param includeBreakdown - If true, include bonus breakdown in result
 * @returns DailyWageResult with bonus, meal allowance, and total wage
 */
export function calculateDailyWage(
  omset: number,
  isHoliday = false,
  includeBreakdown = true
): DailyWageResult {
  const bonusResult = calculateBonus(omset, isHoliday);
  const mealAllowance = calculateMealAllowance(omset);

  return {
    omset,
    bonus: bonusResult.totalBonus,
    mealAllowance,
    totalWage: bonusResult.totalBonus + mealAllowance,
    ...(includeBreakdown && { breakdown: bonusResult.breakdown }),
    isHoliday,
  };
}

/**
 * Calculate bonus from JSON/API response
 * Parses tiers from database and calculates bonus
 *
 * @param omset - Total omset/sales amount
 * @param tiersJson - Array of tier objects from database
 * @param isSpecial - If true, apply 20% flat bonus (override)
 * @returns BonusCalculationResult
 */
export function calculateBonusFromJson(
  omset: number,
  tiersJson: Array<{
    min: number;
    max: number | null;
    percentage: number;
  }>,
  isSpecial = false
): BonusCalculationResult {
  const tiers: BonusTier[] = tiersJson.map((t) => ({
    min: t.min,
    max: t.max,
    percentage: t.percentage,
  }));
  return calculateBonus(omset, isSpecial, tiers);
}

export interface DailyOutletSummaryRow {
  date: string;
  outlet_id: string;
  revenue: number;
  profit: number;
  orders: number;
  hpp: number;
  bonus: number;
  meal: number;
}

import { parseTimestampAsJakarta } from './helpers/business-day';

export function aggregateDailyOutletSummary(
  rows: Array<{
    date?: string;
    created_at?: string;
    outlet_id?: string | null;
    total_amount?: number | null;
    profit?: number | null;
    hpp_total?: number | null;
    bonus_amount?: number | null;
    meal_amount?: number | null;
  }>,
  outletBusinessDayHours?: Record<string, number>
): DailyOutletSummaryRow[] {
  const buckets = new Map<string, DailyOutletSummaryRow>();

  for (const row of rows) {
    const created = row.date || row.created_at || '';
    const outletId = row.outlet_id ? String(row.outlet_id) : 'unknown';
    const businessDayStartHour = outletBusinessDayHours?.[outletId] ?? 4;
    let businessDay: Date;
    if (created) {
      try {
        businessDay = getBusinessDayDate(created, businessDayStartHour);
      } catch (e) {
        try {
          const parsed = parseTimestampAsJakarta(created);
          businessDay = getBusinessDayDate(parsed, businessDayStartHour);
        } catch (e2) {
          businessDay = new Date();
        }
      }
    } else {
      businessDay = new Date();
    }
    const date = Number.isNaN(businessDay.getTime()) ? new Date().toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' }) : businessDay.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
    const key = `${date}::${outletId}`;

    if (!buckets.has(key)) {
      buckets.set(key, {
        date,
        outlet_id: outletId,
        revenue: 0,
        profit: 0,
        orders: 0,
        hpp: 0,
        bonus: 0,
        meal: 0,
      });
    }

    const bucket = buckets.get(key)!;
    bucket.revenue += Number(row.total_amount || 0);
    bucket.profit += Number(row.profit || 0);
    bucket.orders += 1;
    bucket.hpp += Number(row.hpp_total || 0);
    bucket.bonus += Number(row.bonus_amount || 0);
    bucket.meal += Number(row.meal_amount || 0);
  }

  return Array.from(buckets.values()).map((bucket) => {
    const storedBonus = Math.round(bucket.bonus || 0);
    const storedMeal = Math.round(bucket.meal || 0);
    const bonus = storedBonus > 0
      ? storedBonus
      : Math.round((calculateBonusFromJson(bucket.revenue, DEFAULT_BONUS_TIERS)?.totalBonus) || 0);
    const meal = storedMeal > 0 ? storedMeal : Math.round(calculateMealAllowance(bucket.revenue));
    const profit = Math.round(bucket.revenue - bucket.hpp - bonus - meal);

    return {
      ...bucket,
      bonus,
      meal,
      profit,
    };
  }).sort((a, b) => {
    if (a.date === b.date) return a.outlet_id.localeCompare(b.outlet_id);
    return a.date.localeCompare(b.date);
  });
}
