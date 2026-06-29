import assert from 'node:assert/strict';
import { aggregateDailyOutletSummary } from './bonus-calculator';

const rows = [
  {
    date: '2026-06-29',
    outlet_id: 'outlet-a',
    total_amount: 300000,
    profit: 0,
    hpp_total: 80000,
    bonus_amount: 32000,
    meal_amount: 34000,
  },
  {
    date: '2026-06-29',
    outlet_id: 'outlet-b',
    total_amount: 250000,
    profit: 0,
    hpp_total: 50000,
    bonus_amount: 0,
    meal_amount: 0,
  },
];

const result = aggregateDailyOutletSummary(rows as any);
assert.equal(result.length, 2);

const outletA = result.find((row) => row.outlet_id === 'outlet-a');
assert.ok(outletA);
assert.equal(outletA?.revenue, 300000);
assert.equal(outletA?.bonus, 32000);
assert.equal(outletA?.meal, 34000);
assert.equal(outletA?.profit, 300000 - 80000 - 32000 - 34000);

const outletB = result.find((row) => row.outlet_id === 'outlet-b');
assert.ok(outletB);
assert.equal(outletB?.revenue, 250000);
assert.equal(outletB?.bonus, 26000);
assert.equal(outletB?.meal, 25000);
assert.equal(outletB?.profit, 250000 - 50000 - 26000 - 25000);

const businessDayRows = [
  {
    created_at: '2026-06-29 03:30:00',
    outlet_id: 'outlet-a',
    total_amount: 100000,
    profit: 0,
    hpp_total: 20000,
    bonus_amount: 0,
    meal_amount: 0,
  },
  {
    created_at: '2026-06-29 05:00:00',
    outlet_id: 'outlet-a',
    total_amount: 200000,
    profit: 0,
    hpp_total: 40000,
    bonus_amount: 0,
    meal_amount: 0,
  },
];

const businessDayResult = aggregateDailyOutletSummary(businessDayRows as any, { 'outlet-a': 4 });
assert.equal(businessDayResult.length, 2);
assert.equal(businessDayResult[0]?.date, '2026-06-28');
assert.equal(businessDayResult[0]?.revenue, 100000);
assert.equal(businessDayResult[1]?.date, '2026-06-29');
assert.equal(businessDayResult[1]?.revenue, 200000);

console.log('aggregateDailyOutletSummary test passed');
