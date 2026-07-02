import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { parseCsvDateKey, parseCsvTimestamp } from './date-format-utils.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const projectRoot = path.resolve(__dirname, '..');

function parseCsvRows(content) {
  const lines = content.split(/\r?\n/).filter(Boolean);
  if (lines.length === 0) return [];

  const header = lines[0].split(';').map((item) => item.trim());
  const rows = [];

  for (let i = 1; i < lines.length; i += 1) {
    const cols = lines[i].split(';');
    if (cols.length < header.length) continue;
    const entry = {};
    for (let j = 0; j < header.length; j += 1) {
      entry[header[j]] = cols[j]?.trim() ?? '';
    }
    rows.push(entry);
  }

  return rows;
}

function parseNumber(value) {
  if (value == null) return 0;
  const cleaned = String(value).replace(/[^0-9\-\.]/g, '').trim();
  if (!cleaned) return 0;
  return Number(cleaned);
}

function escapeSqlString(value) {
  return String(value ?? '').replace(/'/g, "''");
}

function normalizePaymentMethod(value) {
  const raw = String(value || '').trim();
  if (!raw) return 'GRATIS';
  const normalized = raw.toLowerCase();
  if (normalized === 'cash') return 'CASH';
  if (normalized === 'qris') return 'QRIS';
  if (normalized === 'gratis') return 'GRATIS';
  if (normalized === 'free') return 'GRATIS';
  return raw.toUpperCase();
}

function getProductLookupExpression(csvProductName) {
  const normalizedMap = new Map([
    ['Baileys 1 ltr', "'Baileys (1 L)'"],
    ['Baileys Latte (M)', "'Baileys (M)'"],
    ['Butterscotch (M)', "'Butterscotch (M)'"],
    ['Cold Brew (M)', "'Cold Brew (M)'"],
    ['Gula Aren (M)', "'Gula Aren (M)'"],
    ['Hazelnut (M)', "'Hazelnut (M)'"],
    ['Salted Caramel (M)', "'Salted Caramel (M)'"],
    ['Vanilla (M)', "'Vanilla (M)'"],
  ]);

  const dbName = normalizedMap.get(csvProductName) || `'${escapeSqlString(csvProductName)}'`;
  return `(SELECT id FROM public.products WHERE name = ${dbName} LIMIT 1)`;
}

function buildSaleInsertSql(row, index) {
  const createdAt = parseCsvTimestamp(row.created_at);
  const outletLookup = `(SELECT id FROM public.outlets WHERE name ILIKE '%${escapeSqlString(row.cl_role)}%' LIMIT 1)`;
  const productLookup = getProductLookupExpression(row.minuman_id);
  const paymentMethod = normalizePaymentMethod(row.Pembayaran || '');
  const totalAmount = parseNumber(row.omset || row.harga_jual || '0').toFixed(2);
  const hppTotal = parseNumber(row.hpp || '0').toFixed(2);
  const bonusAmount = parseNumber(row.bonus || '0').toFixed(2);
  const profit = parseNumber(row.Laba || '0').toFixed(2);
  const quantity = parseNumber(row.quantity || '1');
  const price = parseNumber(row.harga_jual || '0').toFixed(2);
  const productHpp = parseNumber(row.hpp || '0').toFixed(2);

  return `-- ${String(index).padStart(4, '0')} | ${escapeSqlString(row.minuman_id)} | ${paymentMethod} | ${createdAt}
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    ${outletLookup},
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    '${paymentMethod}',
    ${totalAmount},
    ${hppTotal},
    ${bonusAmount},
    ${profit},
    '${createdAt}'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  ${productLookup},
  ${quantity},
  ${price},
  ${productHpp}
FROM inserted_sale;`;
}

function main() {
  const csvPath = path.resolve(projectRoot, '..', 'data juni papi kopi.csv');
  if (!fs.existsSync(csvPath)) {
    throw new Error(`CSV file not found: ${csvPath}`);
  }

  const csvText = fs.readFileSync(csvPath, 'utf8');
  const rows = parseCsvRows(csvText).filter((row) => parseCsvDateKey(row.order_date) === '2026-06-30');

  const deleteSql = `DELETE FROM public.sale_items
WHERE sale_id IN (
  SELECT id
  FROM public.sales
  WHERE created_at >= '2026-06-30T00:00:00+07:00'
    AND created_at < '2026-07-01T00:00:00+07:00'
);

DELETE FROM public.sales
WHERE created_at >= '2026-06-30T00:00:00+07:00'
  AND created_at < '2026-07-01T00:00:00+07:00';

`;

  const insertSql = rows.map((row, index) => buildSaleInsertSql(row, index + 1)).join('\n\n');
  const output = `${deleteSql}${insertSql}\n`;
  const outputPath = path.join(projectRoot, 'sql', 'delete_and_insert_june_30_2026_from_csv.sql');
  fs.writeFileSync(outputPath, output, 'utf8');

  console.log(`Wrote ${rows.length} insert statements to ${outputPath}`);
}

main();
