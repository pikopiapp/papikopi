export function getDefaultMonthValue(date = new Date()): string {
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, '0');
  return `${year}-${month}`;
}

export function getMonthRange(monthValue: string): { start: Date; end: Date; label: string } {
  const [yearString, monthString] = monthValue.split('-');
  const year = Number(yearString);
  const month = Number(monthString) - 1;

  const start = new Date(year, month, 1);
  const end = new Date(year, month + 1, 0);
  const label = start.toLocaleDateString('id-ID', {
    month: 'long',
    year: 'numeric',
  });

  return { start, end, label };
}
