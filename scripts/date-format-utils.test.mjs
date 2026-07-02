import test from 'node:test';
import assert from 'node:assert/strict';
import { parseCsvDateKey, parseCsvTimestamp, parseDatabaseDateKey } from './date-format-utils.js';

test('parseCsvDateKey handles d/m/yyyy values', () => {
  assert.equal(parseCsvDateKey('1/6/2026'), '2026-06-01');
  assert.equal(parseCsvDateKey('30/06/2026'), '2026-06-30');
});

test('parseCsvTimestamp builds Jakarta timestamp for CSV values', () => {
  assert.equal(parseCsvTimestamp('01/06/2026 10.30.14'), '2026-06-01T10:30:14+07:00');
  assert.equal(parseCsvTimestamp('30/6/2026 20.49.16'), '2026-06-30T20:49:16+07:00');
});

test('parseDatabaseDateKey extracts the Jakarta calendar date from DB timestamps', () => {
  assert.equal(parseDatabaseDateKey('2026-06-30T20:49:16+07:00'), '2026-06-30');
  assert.equal(parseDatabaseDateKey('2026-06-30 20:49:16.000+00:00'), '2026-07-01');
});
