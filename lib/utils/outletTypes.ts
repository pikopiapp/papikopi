export const outletTypes = [
  { value: 'e-trike', label: 'E-trike' },
  { value: 'coffee_stand', label: 'Coffee Stand' },
];

export function typeLabel(typeValue?: string) {
  if (!typeValue) return '';
  const v = typeValue.toLowerCase();
  // direct canonical match
  const found = outletTypes.find((t) => t.value === v);
  if (found) return found.label;

  // legacy aliases
  const aliasMap: Record<string, string> = {
    gerobak: 'E-trike',
    becak_listrik: 'E-trike',
    toko: 'Coffee Stand',
    warung: 'Coffee Stand',
    cafe: 'Coffee Stand',
    retail: 'Coffee Stand',
  };

  if (aliasMap[v]) return aliasMap[v];

  // fallback: prettify
  return typeValue.replace(/_/g, ' ').replace(/(^|\s)\S/g, (s) => s.toUpperCase());
}

export default typeLabel;
