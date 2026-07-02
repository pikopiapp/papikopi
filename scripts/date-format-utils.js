function parseCsvDateKey(value) {
  if (!value) return null;
  const trimmed = String(value).trim();

  const match = trimmed.match(/^(\d{1,2})\/(\d{1,2})\/(\d{4})/);
  if (match) {
    const [, day, month, year] = match;
    return `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`;
  }

  const isoMatch = trimmed.match(/^(\d{4})-(\d{2})-(\d{2})/);
  if (isoMatch) return isoMatch.slice(1, 4).join('-');

  return null;
}

function parseCsvTimestamp(value) {
  if (!value) return null;
  const trimmed = String(value).trim();
  const match = trimmed.match(/^(\d{1,2})\/(\d{1,2})\/(\d{4})\s+(\d{1,2})\.(\d{2})\.(\d{2})$/);
  if (!match) return null;

  const [, day, month, year, hour, minute, second] = match;
  const datePart = `${year}-${month.padStart(2, '0')}-${day.padStart(2, '0')}`;
  const timePart = `${hour.padStart(2, '0')}:${minute}:${second}`;
  return `${datePart}T${timePart}+07:00`;
}

function parseDatabaseDateKey(value) {
  if (!value) return null;
  const trimmed = String(value).trim();

  const offsetPattern = /^(\d{4}-\d{2}-\d{2})[ T](\d{2}:\d{2}:\d{2}(?:\.\d+)?)([+-]\d{2}:?\d{2}|Z)$/;
  const naivePattern = /^(\d{4}-\d{2}-\d{2})[ T](\d{2}:\d{2}:\d{2}(?:\.\d+)?)$/;

  const offsetMatch = trimmed.match(offsetPattern);
  if (offsetMatch) {
    const date = new Date(trimmed.replace(' ', 'T'));
    if (Number.isNaN(date.getTime())) return null;
    return date.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
  }

  const naiveMatch = trimmed.match(naivePattern);
  if (naiveMatch) return naiveMatch[1];

  const fallbackDate = new Date(trimmed.replace(' ', 'T'));
  if (Number.isNaN(fallbackDate.getTime())) return null;
  return fallbackDate.toLocaleDateString('en-CA', { timeZone: 'Asia/Jakarta' });
}

export { parseCsvDateKey, parseCsvTimestamp, parseDatabaseDateKey };
