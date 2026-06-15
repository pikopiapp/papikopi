/**
 * Holiday Detection Utility for Indonesia
 * Detects weekends (Sabtu/Minggu) and Indonesian national holidays
 */

/**
 * Indonesian national holidays for 2025-2026
 * Format: [month, day]
 */
const INDONESIAN_HOLIDAYS_2025: [number, number][] = [
  // 2025
  [1, 1],   // Tahun Baru (New Year)
  [2, 19],  // Isra dan Mi'raj
  [3, 31],  // Hari Raya Idul Fitri (estimated)
  [4, 1],   // Hari Raya Idul Fitri (estimated)
  [4, 2],   // Hari Raya Idul Fitri (estimated)
  [4, 3],   // Hari Raya Idul Fitri (estimated)
  [4, 14],  // Hari Raya Idul Adha (estimated)
  [5, 1],   // Hari Buruh
  [5, 14],  // Kenaikan Isa Almasih
  [5, 19],  // Hari Vesak
  [6, 1],   // Lebaran (Tahun Baru Hijriah)
  [6, 1],   // Lebaran (Tahun Baru Hijriah)
  [8, 17],  // Hari Kemerdekaan
  [9, 16],  // Maulid Nabi Muhammad
  [12, 25], // Hari Raya Kristen
  [12, 26], // Hari Libur Bersama
];

const INDONESIAN_HOLIDAYS_2026: [number, number][] = [
  // 2026
  [1, 1],   // Tahun Baru (New Year)
  [2, 8],   // Isra dan Mi'raj
  [3, 20],  // Hari Raya Idul Fitri (estimated)
  [3, 21],  // Hari Raya Idul Fitri (estimated)
  [3, 22],  // Hari Raya Idul Fitri (estimated)
  [3, 23],  // Hari Raya Idul Fitri (estimated)
  [4, 3],   // Hari Raya Idul Adha (estimated)
  [4, 23],  // Tahun Baru Hijriah
  [5, 1],   // Hari Buruh
  [5, 14],  // Kenaikan Isa Almasih
  [5, 4],   // Hari Vesak
  [6, 1],   // Pancasila Day (optional)
  [6, 16],  //Tahun Baru Hijriah
  [8, 17],  // Hari Kemerdekaan
  [9, 5],   // Maulid Nabi Muhammad
  [12, 25], // Hari Raya Kristen
  [12, 26], // Hari Libur Bersama
];

const INDONESIAN_HOLIDAYS_2027: [number, number][] = [
  // 2027 (fixed-date and estimated common holidays)
  [1, 1],   // Tahun Baru
  [2, 17],  // Isra dan Mi'raj (estimated)
  [4, 10],  // Hari Raya Idul Fitri (estimated)
  [4, 11],  // Hari Raya Idul Fitri (estimated)
  [4, 12],  // Hari Raya Idul Fitri (estimated)
  [6, 1],   // Hari Lahir Pancasila
  [8, 17],  // Hari Kemerdekaan
  [12, 25], // Hari Raya Kristen (Natal)
  [12, 26], // Hari Libur Bersama
  [5, 1],   // Hari Buruh
];

/**
 * Get all holidays for a specific year
 * @param year - Year to get holidays for (2025 or 2026)
 * @returns Array of [month, day] tuples
 */
export function getHolidaysForYear(year: number): [number, number][] {
  if (year === 2025) return INDONESIAN_HOLIDAYS_2025;
  if (year === 2026) return INDONESIAN_HOLIDAYS_2026;
  if (year === 2027) return INDONESIAN_HOLIDAYS_2027;
  // Fallback: return closest known year set (2026)
  return INDONESIAN_HOLIDAYS_2026;
}

/**
 * Check if a date is a weekend (Saturday or Sunday)
 * @param date - Date to check
 * @returns true if Saturday or Sunday
 */
export function isWeekend(date: Date): boolean {
  const day = date.getDay();
  return day === 0 || day === 6; // 0 = Sunday, 6 = Saturday
}

/**
 * Check if a date is an Indonesian national holiday
 * @param date - Date to check
 * @returns true if date is a national holiday
 */
export function isIndonesianHoliday(date: Date): boolean {
  const holidays = getHolidaysForYear(date.getFullYear());
  const month = date.getMonth() + 1; // getMonth() returns 0-11
  const day = date.getDate();

  return holidays.some(([h_month, h_day]) => h_month === month && h_day === day);
}

/**
 * Check if a date is a holiday (weekend or national holiday)
 * @param date - Date to check
 * @returns true if date is a holiday
 */
export function isHoliday(date: Date): boolean {
  return isWeekend(date) || isIndonesianHoliday(date);
}

/**
 * Get holiday description/name
 * @param date - Date to get description for
 * @returns Holiday name or description
 */
export function getHolidayDescription(date: Date): string {
  const day = date.getDay();
  const month = date.getMonth() + 1;
  const dateNum = date.getDate();

  // Indonesian weekday names
  const weekdayNames = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];

  // Weekends -> return weekday name in Indonesian
  if (day === 6 || day === 0) return weekdayNames[day];

  // Check for specific national holidays (Indonesian names)
  if (month === 1 && dateNum === 1) return 'Tahun Baru';
  if (month === 5 && dateNum === 1) return 'Hari Buruh';
  if (month === 8 && dateNum === 17) return 'Hari Kemerdekaan';
  if (month === 12 && dateNum === 25) return 'Natal';
  if (month === 6 && dateNum === 16) return 'Tahun Baru Hijriah';
  if (month === 2 && dateNum === 19) return 'Isra dan Mi\'raj';
  if (month === 5 && dateNum === 19) return 'Hari Vesak';
  if (month === 12 && dateNum === 26) return 'Hari Libur Bersama';

  // If it's a national holiday listed in the holiday arrays but not matched above,
  // return a generic national holiday label in Indonesian.
  if (isIndonesianHoliday(date)) return 'Hari Libur Nasional';

  // Default: return weekday name in Indonesian
  return weekdayNames[day];
}

/**
 * Get all holidays in a specific month
 * @param year - Year
 * @param month - Month (1-12)
 * @returns Array of day numbers that are holidays
 */
export function getHolidaysInMonth(year: number, month: number): number[] {
  const holidays = getHolidaysForYear(year);
  return holidays
    .filter(([h_month]) => h_month === month)
    .map(([, day]) => day);
}

/**
 * Check if a specific date string is a holiday
 * @param dateString - ISO date string (YYYY-MM-DD)
 * @returns true if date is a holiday
 */
export function isHolidayString(dateString: string): boolean {
  try {
    const date = new Date(dateString);
    return isHoliday(date);
  } catch {
    return false;
  }
}

/**
 * Get next holiday from a given date
 * @param fromDate - Date to start searching from
 * @param maxDays - Maximum days to search (default: 365)
 * @returns Next holiday date or null if not found
 */
export function getNextHoliday(
  fromDate: Date = new Date(),
  maxDays: number = 365
): Date | null {
  const startDate = new Date(fromDate);
  startDate.setHours(0, 0, 0, 0);

  for (let i = 0; i < maxDays; i++) {
    const checkDate = new Date(startDate);
    checkDate.setDate(checkDate.getDate() + i);

    if (isHoliday(checkDate)) {
      return checkDate;
    }
  }

  return null;
}

/**
 * Get holiday info object
 */
export interface HolidayInfo {
  date: Date;
  name: string;
  isWeekend: boolean;
  isNationalHoliday: boolean;
}

/**
 * Get detailed holiday information
 * @param date - Date to get info for
 * @returns Holiday information object or null if not a holiday
 */
export function getHolidayInfo(date: Date): HolidayInfo | null {
  if (!isHoliday(date)) return null;

  return {
    date,
    name: getHolidayDescription(date),
    isWeekend: isWeekend(date),
    isNationalHoliday: isIndonesianHoliday(date),
  };
}
