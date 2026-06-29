/**
 * Business Day helper tests.
 * Run with: npx tsc --noEmit lib/business-day.test.ts
 */

import {
  getBusinessDayDate,
  getBusinessDayRange,
  getBusinessDayRangeLocalIso,
  parseTimestampAsJakarta,
  isInBusinessDay,
} from './helpers/business-day';

function test(name: string, fn: () => void) {
  try {
    fn();
    console.log(`✓ ${name}`);
  } catch (error) {
    console.error(`✗ ${name}`);
    console.error(error);
    process.exitCode = 1;
  }
}

function assertEquals(actual: unknown, expected: unknown) {
  if (actual !== expected) {
    throw new Error(`Expected ${JSON.stringify(expected)}, but got ${JSON.stringify(actual)}`);
  }
}

function assertTrue(value: boolean, message?: string) {
  if (!value) {
    throw new Error(message || 'Assertion failed');
  }
}

const businessDayStartHour = 4;

const previousEarlySale = '2026-06-01 03:30:00';
const onStartSale = '2026-06-01 04:00:00';
const midnightSale = '2026-06-01 00:00:00';

const previousBusinessDay = new Date(Date.UTC(2026, 4, 30, 17, 0, 0, 0)); // 2026-05-31 00:00:00 WIB
const currentBusinessDay = new Date(Date.UTC(2026, 5, 31, 17, 0, 0, 0)); // 2026-06-01 00:00:00 WIB

const rangeForJune1 = getBusinessDayRange(new Date(Date.UTC(2026, 5, 31, 17, 0, 0, 0)), businessDayStartHour);

function formatIso(date: Date) {
  return date.toISOString();
}

function formatJakartaLocalIso(iso: { since: string; until: string }) {
  return `${iso.since} / ${iso.until}`;
}

// Static assertions using helper values
assertEquals(formatIso(previousBusinessDay), '2026-05-30T17:00:00.000Z');
assertEquals(formatIso(currentBusinessDay), '2026-05-31T17:00:00.000Z');


test('getBusinessDayDate assigns 2026-06-01 03:30 local to 2026-05-31 business day', () => {
  const result = getBusinessDayDate(previousEarlySale, businessDayStartHour);
  assertEquals(formatIso(result), formatIso(previousBusinessDay));
});

test('getBusinessDayDate assigns 2026-06-01 04:00 local to 2026-06-01 business day', () => {
  const result = getBusinessDayDate(onStartSale, businessDayStartHour);
  assertEquals(formatIso(result), formatIso(currentBusinessDay));
});

test('getBusinessDayDate assigns midnight sale to prior business day', () => {
  const result = getBusinessDayDate(midnightSale, businessDayStartHour);
  assertEquals(formatIso(result), formatIso(previousBusinessDay));
});

test('getBusinessDayRange returns the expected UTC start and end for business day 2026-06-01', () => {
  assertEquals(formatIso(rangeForJune1.start), '2026-05-31T21:00:00.000Z');
  assertEquals(formatIso(rangeForJune1.end), '2026-06-01T20:59:59.999Z');
});

test('getBusinessDayRangeLocalIso returns Jakarta local ISO intervals', () => {
  const localIso = getBusinessDayRangeLocalIso(currentBusinessDay, businessDayStartHour);
  assertEquals(localIso.since, '2026-06-01T04:00:00');
  assertEquals(localIso.until, '2026-06-02T03:59:59');
});

test('parseTimestampAsJakarta converts local Jakarta time to correct UTC instant', () => {
  const parsed = parseTimestampAsJakarta('2026-06-01 05:00:00');
  assertEquals(parsed.toISOString(), '2026-05-31T22:00:00.000Z');
});

test('isInBusinessDay correctly identifies a sale before 04:00 as previous business day', () => {
  const within = isInBusinessDay(previousEarlySale, previousBusinessDay, businessDayStartHour);
  assertTrue(within, 'Sale at 03:30 should belong to the prior business day');
});

test('isInBusinessDay correctly rejects a sale after 04:00 for the prior business day', () => {
  const within = isInBusinessDay(onStartSale, previousBusinessDay, businessDayStartHour);
  assertTrue(!within, 'Sale at 04:00 should not belong to the previous business day');
});

console.log('Business day helper tests complete');
