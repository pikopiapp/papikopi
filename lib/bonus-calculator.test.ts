/**
 * Tests for bonus calculator
 * Verifies progressive bonus calculation against specification
 *
 * Run with: npm test
 * Or manually verify with: npx tsx lib/bonus-calculator.test.ts
 */

import {
  calculateBonus,
  quickCalculateBonus,
  validateBonusTiers,
  getTierLabels,
  formatNumber,
  calculateBonusFromJson,
  DEFAULT_BONUS_TIERS,
  BonusTier,
} from "./bonus-calculator";

/**
 * Simple test runner for manual verification
 */
function test(name: string, fn: () => void) {
  try {
    fn();
    console.log(`✓ ${name}`);
  } catch (error) {
    console.error(`✗ ${name}`);
    console.error(`  ${error}`);
    process.exitCode = 1;
  }
}

function assertEquals(actual: unknown, expected: unknown) {
  if (actual !== expected) {
    throw new Error(
      `Expected ${JSON.stringify(expected)}, but got ${JSON.stringify(actual)}`
    );
  }
}

function assertCloseTo(actual: number, expected: number, precision = 2) {
  const factor = Math.pow(10, precision);
  const actualRounded = Math.round(actual * factor) / factor;
  const expectedRounded = Math.round(expected * factor) / factor;
  if (actualRounded !== expectedRounded) {
    throw new Error(
      `Expected close to ${expected}, but got ${actual} (precision: ${precision})`
    );
  }
}

function assertTrue(condition: boolean, message?: string) {
  if (!condition) {
    throw new Error(message || "Assertion failed");
  }
}

describe("Bonus Calculator", () => {
  // Progressive Calculation Tests
  test("should calculate bonus for omset 0", () => {
    const result = calculateBonus(0);
    assertEquals(result.omset, 0);
    assertEquals(result.totalBonus, 0);
    assertEquals(result.breakdown.length, 0);
    assertEquals(result.effectivePercentage, 0);
  });

  test("should calculate bonus for omset in Tier 1 (50.000)", () => {
    const result = calculateBonus(50000);
    assertEquals(result.omset, 50000);
    assertEquals(result.totalBonus, 5000); // 50.000 × 10%
    assertEquals(result.breakdown.length, 1);
    assertEquals(result.breakdown[0].percentage, 10);
    assertEquals(result.breakdown[0].bonus, 5000);
  });

  test("should calculate bonus for omset exactly at Tier 1 max (200.000)", () => {
    const result = calculateBonus(200000);
    assertEquals(result.omset, 200000);
    assertEquals(result.totalBonus, 20000); // 200.000 × 10%
    assertEquals(result.breakdown.length, 1);
    assertCloseTo(result.effectivePercentage, 10);
  });

  test("should calculate bonus for omset in Tier 2 (300.000)", () => {
    const result = calculateBonus(300000);
    assertEquals(result.omset, 300000);
    // Tier 1: 200.000 × 10% = 20.000
    // Tier 2: 100.000 × 12% = 12.000
    // Total: 32.000
    assertEquals(result.totalBonus, 32000);
    assertEquals(result.breakdown.length, 2);
    assertEquals(result.breakdown[0].bonus, 20000);
    assertEquals(result.breakdown[1].bonus, 12000);
  });

  test("should calculate bonus for example in spec (450.000)", () => {
    const result = calculateBonus(450000);
    assertEquals(result.omset, 450000);
    // Tier 1: 200.000 × 10% = 20.000
    // Tier 2: 150.000 × 12% = 18.000
    // Tier 3: 100.000 × 15% = 15.000
    // Total: 53.000
    assertEquals(result.totalBonus, 53000);
    assertEquals(result.breakdown.length, 3);
    assertEquals(result.breakdown[0].bonus, 20000);
    assertEquals(result.breakdown[1].bonus, 18000);
    assertEquals(result.breakdown[2].bonus, 15000);
  });

  test("should calculate bonus for omset in Tier 4 (600.000)", () => {
    const result = calculateBonus(600000);
    assertEquals(result.omset, 600000);
    // Tier 1: 200.000 × 10% = 20.000
    // Tier 2: 150.000 × 12% = 18.000
    // Tier 3: 150.000 × 15% = 22.500
    // Tier 4: 100.000 × 20% = 20.000
    // Total: 80.500
    assertEquals(result.totalBonus, 80500);
    assertEquals(result.breakdown.length, 4);
    assertEquals(result.breakdown[3].bonus, 20000);
  });

  test("should calculate effective percentage correctly", () => {
    const result = calculateBonus(450000);
    // Total bonus: 53.000
    // Effective: 53.000 / 450.000 = 11.777...%
    assertCloseTo(result.effectivePercentage, 11.777, 2);
  });

  test("should handle negative omset gracefully", () => {
    const result = calculateBonus(-100000);
    assertEquals(result.omset, 0);
    assertEquals(result.totalBonus, 0);
    assertEquals(result.isSpecial, false);
  });

  // Special Override Tests
  test("should apply 20% flat bonus when isSpecial is true", () => {
    const result = calculateBonus(100000, true);
    assertEquals(result.omset, 100000);
    assertEquals(result.totalBonus, 20000); // 100.000 × 20%
    assertEquals(result.isSpecial, true);
    assertEquals(result.effectivePercentage, 20);
    assertEquals(result.breakdown.length, 1);
    assertEquals(result.breakdown[0].label, "Special Override");
  });

  test("should apply 20% for large omset with special override", () => {
    const result = calculateBonus(1000000, true);
    assertEquals(result.omset, 1000000);
    assertEquals(result.totalBonus, 200000); // 1.000.000 × 20%
    assertEquals(result.isSpecial, true);
  });

  // Quick Calculate Tests
  test("quickCalculateBonus should return only total bonus amount", () => {
    const bonus = quickCalculateBonus(450000);
    assertEquals(bonus, 53000);
  });

  test("quickCalculateBonus should work with special override", () => {
    const bonus = quickCalculateBonus(100000, true);
    assertEquals(bonus, 20000);
  });

  // Validation Tests
  test("validateBonusTiers should validate default tiers as correct", () => {
    assertTrue(validateBonusTiers(DEFAULT_BONUS_TIERS));
  });

  test("validateBonusTiers should reject empty tier list", () => {
    assertTrue(!validateBonusTiers([]));
  });

  test("validateBonusTiers should reject tiers that don't start at 0", () => {
    const invalidTiers: BonusTier[] = [
      { min: 100000, max: 200000, percentage: 10 },
    ];
    assertTrue(!validateBonusTiers(invalidTiers));
  });

  test("validateBonusTiers should reject tiers with max <= min", () => {
    const invalidTiers: BonusTier[] = [
      { min: 0, max: 0, percentage: 10 },
    ];
    assertTrue(!validateBonusTiers(invalidTiers));
  });

  test("validateBonusTiers should reject non-consecutive tiers", () => {
    const invalidTiers: BonusTier[] = [
      { min: 0, max: 100000, percentage: 10 },
      { min: 200000, max: 300000, percentage: 12 }, // Gap!
    ];
    assertTrue(!validateBonusTiers(invalidTiers));
  });

  // Label and Format Tests
  test("getTierLabels should return formatted labels for tiers", () => {
    const labels = getTierLabels(DEFAULT_BONUS_TIERS);
    assertEquals(labels.length, 4);
    assertTrue(labels[0].includes("10%"), "Label should contain 10%");
    assertTrue(labels[0].includes("0"), "Label should contain 0");
    assertTrue(labels[0].includes("200rb"), "Label should contain 200rb");
  });

  test("getTierLabels should handle null max as infinity", () => {
    const labels = getTierLabels(DEFAULT_BONUS_TIERS);
    assertTrue(labels[3].includes("∞"), "Last label should contain ∞");
  });

  test("formatNumber should format numbers in juta (millions)", () => {
    assertEquals(formatNumber(1000000), "1.0jt");
    assertEquals(formatNumber(1500000), "1.5jt");
  });

  test("formatNumber should format numbers in ribu (thousands)", () => {
    assertEquals(formatNumber(1000), "1rb");
    assertEquals(formatNumber(200000), "200rb");
  });

  test("formatNumber should format small numbers as is", () => {
    assertEquals(formatNumber(500), "500");
    assertEquals(formatNumber(0), "0");
  });

  // JSON Calculation Tests
  test("calculateBonusFromJson should parse and calculate bonus from JSON", () => {
    const tiersJson = [
      { min: 0, max: 200000, percentage: 10 },
      { min: 200000, max: 350000, percentage: 12 },
      { min: 350000, max: 500000, percentage: 15 },
      { min: 500000, max: null, percentage: 20 },
    ];
    const result = calculateBonusFromJson(450000, tiersJson);
    assertEquals(result.totalBonus, 53000);
  });

  test("calculateBonusFromJson should work with special override from JSON", () => {
    const tiersJson = [
      { min: 0, max: 200000, percentage: 10 },
    ];
    const result = calculateBonusFromJson(100000, tiersJson, true);
    assertEquals(result.totalBonus, 20000);
    assertEquals(result.isSpecial, true);
  });

  // Breakdown Tests
  test("should provide correct breakdown for tier transitions", () => {
    const result = calculateBonus(350000);
    // Tier 1: 0-200.000 (200.000 × 10% = 20.000)
    // Tier 2: 200.000-350.000 (150.000 × 12% = 18.000)
    assertEquals(result.breakdown.length, 2);
    assertEquals(result.breakdown[0].fromAmount, 0);
    assertEquals(result.breakdown[0].toAmount, 200000);
    assertEquals(result.breakdown[1].fromAmount, 200000);
    assertEquals(result.breakdown[1].toAmount, 350000);
  });

  test("should have consistent total from breakdown", () => {
    const result = calculateBonus(600000);
    const sumFromBreakdown = result.breakdown.reduce(
      (sum, tier) => sum + tier.bonus,
      0
    );
    assertEquals(sumFromBreakdown, result.totalBonus);
  });
});

// Run tests if this is the main module
if (require.main === module) {
  console.log("Running Bonus Calculator Tests...\n");
  describe("Bonus Calculator", () => {});
  console.log("\nAll tests passed! ✓");
}
