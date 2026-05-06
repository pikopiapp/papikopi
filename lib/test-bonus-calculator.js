#!/usr/bin/env node

/**
 * Bonus Calculator Test Runner
 * Standalone test verifier for the progressive bonus calculation
 *
 * Run with: node lib/test-bonus-calculator.mjs
 */

import {
  calculateBonus,
  quickCalculateBonus,
  validateBonusTiers,
  getTierLabels,
  formatNumber,
  calculateBonusFromJson,
  DEFAULT_BONUS_TIERS,
} from "./bonus-calculator.ts";

/**
 * Simple test runner
 */
let testsPassed = 0;
let testsFailed = 0;

function test(name, fn) {
  try {
    fn();
    console.log(`  ✓ ${name}`);
    testsPassed++;
  } catch (error) {
    console.error(`  ✗ ${name}`);
    console.error(`    ${error.message}`);
    testsFailed++;
  }
}

function assertEquals(actual, expected, message = "") {
  if (actual !== expected) {
    throw new Error(
      `Expected ${JSON.stringify(expected)}, got ${JSON.stringify(
        actual
      )} ${message}`
    );
  }
}

function assertCloseTo(actual, expected, precision = 2) {
  const factor = Math.pow(10, precision);
  const actualRounded = Math.round(actual * factor) / factor;
  const expectedRounded = Math.round(expected * factor) / factor;
  if (actualRounded !== expectedRounded) {
    throw new Error(
      `Expected ~${expected}, got ${actual} (precision: ${precision})`
    );
  }
}

function assertTrue(condition, message = "") {
  if (!condition) {
    throw new Error(`Expected true: ${message}`);
  }
}

function assertFalse(condition, message = "") {
  if (condition) {
    throw new Error(`Expected false: ${message}`);
  }
}

// ============================================================================
// TESTS
// ============================================================================

console.log("\n📊 Bonus Calculator Tests\n");
console.log("==========================================\n");

console.log("✓ Progressive Calculation Tests:");
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
  assertEquals(result.totalBonus, 5000);
  assertEquals(result.breakdown.length, 1);
  assertEquals(result.breakdown[0].percentage, 10);
  assertEquals(result.breakdown[0].bonus, 5000);
});

test("should calculate bonus for omset at Tier 1 max (200.000)", () => {
  const result = calculateBonus(200000);
  assertEquals(result.omset, 200000);
  assertEquals(result.totalBonus, 20000);
  assertEquals(result.breakdown.length, 1);
  assertCloseTo(result.effectivePercentage, 10);
});

test("should calculate bonus for omset in Tier 2 (300.000)", () => {
  const result = calculateBonus(300000);
  assertEquals(result.omset, 300000);
  assertEquals(result.totalBonus, 32000);
  assertEquals(result.breakdown.length, 2);
  assertEquals(result.breakdown[0].bonus, 20000);
  assertEquals(result.breakdown[1].bonus, 12000);
});

test("should calculate bonus for example in spec (450.000)", () => {
  const result = calculateBonus(450000);
  assertEquals(result.omset, 450000);
  assertEquals(result.totalBonus, 53000);
  assertEquals(result.breakdown.length, 3);
  assertEquals(result.breakdown[0].bonus, 20000);
  assertEquals(result.breakdown[1].bonus, 18000);
  assertEquals(result.breakdown[2].bonus, 15000);
});

test("should calculate bonus for omset in Tier 4 (600.000)", () => {
  const result = calculateBonus(600000);
  assertEquals(result.omset, 600000);
  assertEquals(result.totalBonus, 80500);
  assertEquals(result.breakdown.length, 4);
  assertEquals(result.breakdown[3].bonus, 20000);
});

test("should calculate effective percentage correctly", () => {
  const result = calculateBonus(450000);
  assertCloseTo(result.effectivePercentage, 11.777, 2);
});

test("should handle negative omset gracefully", () => {
  const result = calculateBonus(-100000);
  assertEquals(result.omset, 0);
  assertEquals(result.totalBonus, 0);
  assertFalse(result.isSpecial);
});

console.log("\n✓ Special Override Tests:");
test("should apply 20% flat bonus when isSpecial is true", () => {
  const result = calculateBonus(100000, true);
  assertEquals(result.omset, 100000);
  assertEquals(result.totalBonus, 20000);
  assertTrue(result.isSpecial);
  assertEquals(result.effectivePercentage, 20);
  assertEquals(result.breakdown.length, 1);
  assertEquals(result.breakdown[0].label, "Special Override");
});

test("should apply 20% for large omset with special override", () => {
  const result = calculateBonus(1000000, true);
  assertEquals(result.omset, 1000000);
  assertEquals(result.totalBonus, 200000);
  assertTrue(result.isSpecial);
});

console.log("\n✓ Quick Calculate Tests:");
test("quickCalculateBonus should return total bonus amount", () => {
  const bonus = quickCalculateBonus(450000);
  assertEquals(bonus, 53000);
});

test("quickCalculateBonus should work with special override", () => {
  const bonus = quickCalculateBonus(100000, true);
  assertEquals(bonus, 20000);
});

console.log("\n✓ Validation Tests:");
test("validateBonusTiers should validate default tiers as correct", () => {
  assertTrue(validateBonusTiers(DEFAULT_BONUS_TIERS));
});

test("validateBonusTiers should reject empty tier list", () => {
  assertFalse(validateBonusTiers([]));
});

test("validateBonusTiers should reject tiers that don't start at 0", () => {
  const invalidTiers = [{ min: 100000, max: 200000, percentage: 10 }];
  assertFalse(validateBonusTiers(invalidTiers));
});

test("validateBonusTiers should reject tiers with max <= min", () => {
  const invalidTiers = [{ min: 0, max: 0, percentage: 10 }];
  assertFalse(validateBonusTiers(invalidTiers));
});

test("validateBonusTiers should reject non-consecutive tiers", () => {
  const invalidTiers = [
    { min: 0, max: 100000, percentage: 10 },
    { min: 200000, max: 300000, percentage: 12 },
  ];
  assertFalse(validateBonusTiers(invalidTiers));
});

console.log("\n✓ Label and Format Tests:");
test("getTierLabels should return formatted labels for tiers", () => {
  const labels = getTierLabels(DEFAULT_BONUS_TIERS);
  assertEquals(labels.length, 4);
  assertTrue(labels[0].includes("10%"));
  assertTrue(labels[0].includes("0"));
  assertTrue(labels[0].includes("200rb"));
});

test("getTierLabels should handle null max as infinity", () => {
  const labels = getTierLabels(DEFAULT_BONUS_TIERS);
  assertTrue(labels[3].includes("∞"));
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

console.log("\n✓ JSON Calculation Tests:");
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

test("calculateBonusFromJson should work with special override", () => {
  const tiersJson = [{ min: 0, max: 200000, percentage: 10 }];
  const result = calculateBonusFromJson(100000, tiersJson, true);
  assertEquals(result.totalBonus, 20000);
  assertTrue(result.isSpecial);
});

console.log("\n✓ Breakdown Tests:");
test("should provide correct breakdown for tier transitions", () => {
  const result = calculateBonus(350000);
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

// ============================================================================
// SUMMARY
// ============================================================================

console.log("\n==========================================");
console.log(`\n✅ Tests Passed: ${testsPassed}`);
if (testsFailed > 0) {
  console.log(`❌ Tests Failed: ${testsFailed}\n`);
  process.exit(1);
} else {
  console.log("\n🎉 All tests passed successfully!\n");
  process.exit(0);
}
