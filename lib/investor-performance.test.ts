import assert from 'node:assert/strict';
import { buildOutletPerformanceBreakdown } from './investor-performance';

const summary = [
  {
    date: '2026-06-01',
    revenue: 100000,
    hpp: 20000,
    bonus: 10000,
    meal: 5000,
    orders: 2,
    profit: 65000,
  },
  {
    date: '2026-06-02',
    revenue: 200000,
    hpp: 40000,
    bonus: 20000,
    meal: 5000,
    orders: 3,
    profit: 130000,
  },
  {
    date: '2026-06-08',
    revenue: 300000,
    hpp: 60000,
    bonus: 30000,
    meal: 5000,
    orders: 4,
    profit: 200000,
  },
];

const breakdown = buildOutletPerformanceBreakdown(summary as any, 20);
assert.equal(breakdown.daily.length, 3);
assert.equal(breakdown.daily[0].shareInvestor, 13000);
assert.equal(breakdown.weekly.length, 2);
assert.equal(breakdown.weekly[0].revenue, 300000);
assert.equal(breakdown.weekly[1].revenue, 300000);

console.log('investor performance breakdown test passed');
