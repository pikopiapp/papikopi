/**
 * Business Day Helper Functions
 * Handles date calculations based on outlet's business_day_start_hour setting
 */

/**
 * Parse a date-only value as a Jakarta wall-clock date.
 * This avoids timezone drift when the UI/API receives values like YYYY-MM-DD.
 */
export function parseDateOnlyAsJakarta(value: string | Date): Date {
  const toJakartaParts = (date: Date) => {
    const formatter = new Intl.DateTimeFormat('en-CA', {
      timeZone: 'Asia/Jakarta',
      year: 'numeric',
      month: '2-digit',
      day: '2-digit',
    });
    const parts = formatter.formatToParts(date);
    const getPart = (type: string) => parts.find((part) => part.type === type)?.value ?? '0';
    return {
      year: Number(getPart('year')),
      month: Number(getPart('month')),
      day: Number(getPart('day')),
    };
  };

  if (value instanceof Date) {
    const { year, month, day } = toJakartaParts(value);
    return new Date(Date.UTC(year, month - 1, day, 0, 0, 0, 0) - 7 * 60 * 60 * 1000);
  }

  const trimmed = String(value).trim();
  const match = trimmed.match(/^(\d{4})-(\d{2})-(\d{2})(?:[T\s].*)?$/);
  if (match) {
    const [, year, month, day] = match;
    return new Date(Date.UTC(Number(year), Number(month) - 1, Number(day), 0, 0, 0, 0) - 7 * 60 * 60 * 1000);
  }

  return new Date(trimmed);
}

/**
 * Validate a YYYY-MM-DD date-only string or Date and return boolean
 */
export function isValidDateOnly(value: string | Date): boolean {
  if (value instanceof Date) return !Number.isNaN(value.getTime());
  const trimmed = String(value).trim();
  const match = trimmed.match(/^(\d{4})-(\d{2})-(\d{2})(?:[T\s].*)?$/);
  if (!match) return false;
  const y = Number(match[1]);
  const m = Number(match[2]);
  const d = Number(match[3]);
  if (m < 1 || m > 12) return false;
  if (d < 1 || d > 31) return false;
  const dt = new Date(Date.UTC(y, m - 1, d));
  return dt.getUTCFullYear() === y && dt.getUTCMonth() === m - 1 && dt.getUTCDate() === d;
}

/**
 * Build an explicit start/end boundary for a date-only value in Asia/Jakarta.
 */
export function getDateBoundaryInJakarta(value: string | Date, endOfDay = false): Date {
  const base = parseDateOnlyAsJakarta(value);
  if (!endOfDay) return base;
  return new Date(base.getTime() + 24 * 60 * 60 * 1000 - 1);
}

/**
 * Format a Date value as YYYY-MM-DD using Asia/Jakarta wall-clock time.
 */
export function formatDateOnlyInJakarta(date: Date): string {
  const formatter = new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Jakarta',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  });
  const parts = formatter.formatToParts(date);
  const getPart = (type: string) => parts.find((part) => part.type === type)?.value ?? '';
  return `${getPart('year')}-${getPart('month')}-${getPart('day')}`;
}

/**
 * Calculate which business day a given timestamp belongs to
 * @param timestamp - ISO string or Date object (time when sale occurred)
 * @param businessDayStartHour - Hour when business day resets (0-23)
 * @returns Date object representing the business day (00:00)
 * 
 * Example:
 * - Timestamp: 2026-05-10 03:00, startHour: 4 => 2026-05-09
 * - Timestamp: 2026-05-10 05:00, startHour: 4 => 2026-05-10
 */
export function getBusinessDayDate(
  timestamp: string | Date,
  businessDayStartHour: number
): Date {
  const parseAsUtc = (t: string | Date): Date => {
    if (t instanceof Date) return new Date(t.getTime());
    let s = String(t).replace(' ', 'T');
    if (!/([zZ]|[+-]\d{2}:?\d{2})$/.test(s)) {
      s = s + '+07:00';
    }
    return new Date(s);
  };

  const instant = parseAsUtc(timestamp);
  const formatter = new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Jakarta',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    hour: '2-digit',
    hour12: false,
  });
  const parts = formatter.formatToParts(instant);
  const getPart = (type: string) => parts.find((part) => part.type === type)?.value ?? '';
  const year = Number(getPart('year'));
  const month = Number(getPart('month'));
  const day = Number(getPart('day'));
  let localDay = day;
  let localMonth = month;
  let localYear = year;
  const hour = Number(getPart('hour'));

  if (hour < businessDayStartHour) {
    const prev = new Date(Date.UTC(localYear, localMonth - 1, localDay, 0, 0, 0, 0) - 24 * 60 * 60 * 1000);
    const prevParts = formatter.formatToParts(prev);
    const prevYear = Number(prevParts.find((part) => part.type === 'year')?.value ?? '0');
    const prevMonth = Number(prevParts.find((part) => part.type === 'month')?.value ?? '0');
    const prevDay = Number(prevParts.find((part) => part.type === 'day')?.value ?? '0');
    localYear = prevYear;
    localMonth = prevMonth;
    localDay = prevDay;
  }

  return new Date(Date.UTC(localYear, localMonth - 1, localDay, 0, 0, 0, 0) - 7 * 60 * 60 * 1000);
}

/**
 * Parse a timestamp (which may be timezone-naive) as an instant assuming Asia/Jakarta.
 * Returns a JS Date representing the instant.
 */
export function parseTimestampAsJakarta(timestamp: string | Date): Date {
  if (timestamp instanceof Date) return new Date(timestamp.getTime());
  let s = String(timestamp).replace(' ', 'T');
  // Truncate microseconds to milliseconds (JS Date supports up to 3 fractional digits)
  // e.g. 2026-06-15T04:31:55.359315 -> 2026-06-15T04:31:55.359
  s = s.replace(/(\.\d{3})\d+/, '$1');
  // If fractional part has more than 0 but less than 3 digits, pad to 3
  s = s.replace(/\.(\d{1,2})(?=[^\d]|$)/, (m, p1) => '.' + p1.padEnd(3, '0'));
  if (!/([zZ]|[+-]\d{2}:?\d{2})$/.test(s)) {
    s = s + '+07:00';
  }
  return new Date(s);
}

/**
 * Parse a timestamp assuming the stored value is UTC when timezone is missing.
 * This is useful when DB stores timezone-naive ISO strings that are actually UTC instants.
 */
export function parseTimestampAssumeUTC(timestamp: string | Date): Date {
  if (timestamp instanceof Date) return new Date(timestamp.getTime());
  let s = String(timestamp).replace(' ', 'T');
  // Truncate/pad fractional seconds to milliseconds
  s = s.replace(/(\.\d{3})\d+/, '$1');
  s = s.replace(/\.(\d{1,2})(?=[^\d]|$)/, (m, p1) => '.' + p1.padEnd(3, '0'));
  if (!/([zZ]|[+-]\d{2}:?\d{2})$/.test(s)) {
    s = s + 'Z';
  }
  return new Date(s);
}

/**
 * Format a timestamp that should be interpreted as UTC into Asia/Jakarta local string.
 */
export function formatTimestampFromUTC(
  timestamp: string | Date,
  options?: Intl.DateTimeFormatOptions
): string {
  const date = parseTimestampAssumeUTC(timestamp);
  return date.toLocaleString('id-ID', { timeZone: 'Asia/Jakarta', ...(options || {}) });
}

/**
 * Format a timestamp for UI in Indonesian locale and Asia/Jakarta timezone.
 * Options follow Intl.DateTimeFormat options.
 */
export function formatTimestampInJakarta(
  timestamp: string | Date,
  options?: Intl.DateTimeFormatOptions
): string {
  const date = parseTimestampAsJakarta(timestamp);
  return date.toLocaleString('id-ID', { timeZone: 'Asia/Jakarta', ...(options || {}) });
}

/**
 * Format a Date or timestamp as an ISO string in Asia/Jakarta local time.
 * This is useful for querying database rows that store timezone-naive Jakarta timestamps.
 */
export function formatAsJakartaLocalIso(timestamp: string | Date): string {
  const date = timestamp instanceof Date ? new Date(timestamp.getTime()) : parseTimestampAsJakarta(timestamp);
  const formatter = new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Jakarta',
    hour12: false,
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit',
  });
  const parts = formatter.formatToParts(date);
  const getPart = (type: string) => parts.find((part) => part.type === type)?.value ?? '';
  return `${getPart('year')}-${getPart('month')}-${getPart('day')}T${getPart('hour')}:${getPart('minute')}:${getPart('second')}`;
}

export function getBusinessDayRangeLocalIso(
  businessDay: Date,
  businessDayStartHour: number
): { since: string; until: string } {
  const { start, end } = getBusinessDayRange(businessDay, businessDayStartHour);
  return {
    since: formatAsJakartaLocalIso(start),
    until: formatAsJakartaLocalIso(end),
  };
}

/**
 * Format business day for display
 * @param businessDay - Date object representing business day
 * @returns Formatted string: "10 May 2026"
 */
export function formatBusinessDay(businessDay: Date): string {
  const options: Intl.DateTimeFormatOptions = {
    weekday: 'long',
    year: 'numeric',
    month: 'long',
    day: 'numeric',
  };
  return businessDay.toLocaleDateString('id-ID', options);
}

/**
 * Get business day range (start and end times)
 * @param businessDay - Date object representing business day
 * @param businessDayStartHour - Hour when business day resets (0-23)
 * @returns Object with start and end timestamps
 */
function getJakartaLocalDateParts(date: Date): { year: number; month: number; day: number } {
  const formatter = new Intl.DateTimeFormat('en-CA', {
    timeZone: 'Asia/Jakarta',
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  });
  const parts = formatter.formatToParts(date);
  const getPart = (type: string) => parts.find((part) => part.type === type)?.value ?? '0';

  return {
    year: Number(getPart('year')),
    month: Number(getPart('month')),
    day: Number(getPart('day')),
  };
}

export function getBusinessDayRange(
  businessDay: Date,
  businessDayStartHour: number
): { start: Date; end: Date } {
  // Return start/end as UTC instants that correspond to the business day in Asia/Jakarta
  const JAKARTA_OFFSET = 7; // hours ahead of UTC

  const { year, month, day } = getJakartaLocalDateParts(businessDay);

  // Business day start in Jakarta local -> convert to UTC by subtracting offset
  const startUtc = new Date(Date.UTC(year, month - 1, day, businessDayStartHour - JAKARTA_OFFSET, 0, 0, 0));
  const endUtc = new Date(startUtc.getTime() + 24 * 60 * 60 * 1000 - 1);

  return { start: startUtc, end: endUtc };
}

/**
 * Check if timestamp is within business day
 * @param timestamp - ISO string or Date object
 * @param businessDay - Date object representing business day
 * @param businessDayStartHour - Hour when business day resets (0-23)
 * @returns true if timestamp is within the business day period
 */
export function isInBusinessDay(
  timestamp: string | Date,
  businessDay: Date,
  businessDayStartHour: number
): boolean {
  const calculatedBusinessDay = getBusinessDayDate(timestamp, businessDayStartHour);
  return calculatedBusinessDay.getTime() === businessDay.getTime();
}

/**
 * Get description of business day start hour
 * @param hour - Hour (0-23)
 * @returns Human-readable description in Indonesian
 */
export function getBusinessDayDescription(hour: number): string {
  if (hour === 0) {
    return '00:00 (Tengah Malam - Hari Kalender)';
  }
  if (hour === 4) {
    return '04:00 Pagi (Termasuk Penjualan Shift Malam)';
  }

  const hourStr = String(hour).padStart(2, '0');
  const ampm = hour >= 12 ? 'Sore' : 'Pagi';
  const displayHour = hour > 12 ? hour - 12 : hour;

  return `${hourStr}:00 (${displayHour}:00 ${ampm})`;
}

/**
 * Get example scenarios for business day calculation
 * @param hour - Hour (0-23)
 * @returns Array of example scenarios
 */
export function getBusinessDayExamples(
  hour: number
): Array<{ time: string; businessDay: string }> {
  const examples = [];

  // Example 1: One hour before
  const before = new Date();
  before.setHours(hour - 1);
  const beforeBusinessDay = getBusinessDayDate(before, hour);
  examples.push({
    time: `${String(hour - 1).padStart(2, '0')}:00`,
    businessDay: formatBusinessDay(beforeBusinessDay),
  });

  // Example 2: Start hour
  const atStart = new Date();
  atStart.setHours(hour);
  const atStartBusinessDay = getBusinessDayDate(atStart, hour);
  examples.push({
    time: `${String(hour).padStart(2, '0')}:00`,
    businessDay: formatBusinessDay(atStartBusinessDay),
  });

  // Example 3: One hour after
  const after = new Date();
  after.setHours(hour + 1);
  const afterBusinessDay = getBusinessDayDate(after, hour);
  examples.push({
    time: `${String((hour + 1) % 24).padStart(2, '0')}:00`,
    businessDay: formatBusinessDay(afterBusinessDay),
  });

  return examples;
}

/**
 * SQL WHERE clause for filtering by business day
 * Use in Supabase queries
 * @param businessDay - Date object
 * @param businessDayStartHour - Hour when business day resets (0-23)
 * @returns Object with gte and lt conditions for timestamp columns
 */
export function getBusinessDayWhereClause(
  businessDay: Date,
  businessDayStartHour: number
): {
  gte: string;
  lt: string;
} {
  const range = getBusinessDayRange(businessDay, businessDayStartHour);

  return {
    gte: range.start.toISOString(),
    lt: range.end.toISOString(),
  };
}
