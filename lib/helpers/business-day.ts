/**
 * Business Day Helper Functions
 * Handles date calculations based on outlet's business_day_start_hour setting
 */

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
  // Interpret incoming timestamp as an instant. Many DB timestamps are timezone-naive
  // and appear to be stored as local Jakarta wall-clock times. For timezone-naive
  // strings we will parse them as Asia/Jakarta (+07:00) so business-day grouping
  // matches the wall-clock values shown in the UI.
  const JAKARTA_OFFSET = 7; // hours ahead of UTC

  const parseAsUtc = (t: string | Date): Date => {
    if (t instanceof Date) return new Date(t.getTime());
    // Normalize common formats: replace space with 'T' then if the string does
    // not include a timezone offset, treat it as Jakarta local by appending
    // '+07:00'. If a timezone or 'Z' is present, leave it intact.
    let s = t.replace(' ', 'T');
    if (!/([zZ]|[+-]\d{2}:?\d{2})$/.test(s)) {
      s = s + '+07:00';
    }
    return new Date(s);
  };

  const utc = parseAsUtc(timestamp);
  // `parseAsUtc` already treats timezone-naive timestamps as Asia/Jakarta (+07:00)
  // so `utc` already represents the correct instant. Do NOT add the offset
  // again (that caused dates to be shifted incorrectly and produced empty
  // business-day groups). Use the parsed instant directly as Jakarta time
  // for computing the business-day boundary.
  const jakarta = new Date(utc.getTime());

  const hour = jakarta.getHours();
  if (hour < businessDayStartHour) jakarta.setDate(jakarta.getDate() - 1);

  // Return a Date representing midnight in Jakarta for the business day
  const bizDate = new Date(Date.UTC(jakarta.getFullYear(), jakarta.getMonth(), jakarta.getDate()));
  return bizDate;
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
export function getBusinessDayRange(
  businessDay: Date,
  businessDayStartHour: number
): { start: Date; end: Date } {
  // Return start/end as UTC instants that correspond to the business day in Asia/Jakarta
  const JAKARTA_OFFSET = 7; // hours ahead of UTC

  const year = businessDay.getFullYear();
  const month = businessDay.getMonth();
  const date = businessDay.getDate();

  // Business day start in Jakarta local -> convert to UTC by subtracting offset
  const startUtc = new Date(Date.UTC(year, month, date, businessDayStartHour - JAKARTA_OFFSET, 0, 0, 0));
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
