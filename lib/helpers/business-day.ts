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
  const date = new Date(timestamp);
  const hour = date.getHours();

  // If current hour is before business day start hour,
  // this sale belongs to the previous business day
  if (hour < businessDayStartHour) {
    date.setDate(date.getDate() - 1);
  }

  // Set time to 00:00 to get business day date
  date.setHours(0, 0, 0, 0);

  return date;
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
  const start = new Date(businessDay);
  start.setHours(businessDayStartHour, 0, 0, 0);

  const end = new Date(start);
  end.setDate(end.getDate() + 1);
  end.setMilliseconds(-1);

  return { start, end };
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
