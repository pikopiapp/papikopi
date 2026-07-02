import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { createClient } from '@supabase/supabase-js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const projectRoot = path.resolve(__dirname, '..');
const envPath = path.join(projectRoot, '.env.local');

function loadEnv(filePath) {
  if (!fs.existsSync(filePath)) return;
  const envFile = fs.readFileSync(filePath, 'utf8');
  envFile.split(/\r?\n/).forEach((line) => {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith('#')) return;
    const idx = trimmed.indexOf('=');
    if (idx === -1) return;
    const key = trimmed.slice(0, idx).trim();
    const value = trimmed.slice(idx + 1).trim();
    if (!process.env[key]) process.env[key] = value;
  });
}

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

function parseTimestamp(value) {
  if (!value) return null;
  const trimmed = String(value).trim();
  const match = trimmed.match(/^(\d{1,2})\/(\d{1,2})\/(\d{4})\s+(\d{1,2})\.(\d{2})\.(\d{2})$/);
  if (!match) return null;
  const [, d, m, y, hh, mm, ss] = match;
  const datePart = `${y}-${m.padStart(2, '0')}-${d.padStart(2, '0')}`;
  const timePart = `${hh.padStart(2, '0')}:${mm}:${ss}`;
  return `${datePart}T${timePart}+07:00`;
}

function parseNumber(value) {
  if (value == null) return 0;
  const cleaned = String(value).replace(/[^0-9\-\.]/g, '').trim();
  if (!cleaned) return 0;
  return Number(cleaned);
}

function normalizeText(value) {
  return String(value || '')
    .trim()
    .toLowerCase()
    .replace(/[’'“”"()]/g, '')
    .replace(/\b1\s*lt[r]?\b/g, '1 l')
    .replace(/\b1\s*l\b/g, '1 l')
    .replace(/\b(ltr|liter)\b/g, 'l')
    .replace(/[\s\-]+/g, ' ')
    .trim();
}

const productAliasMap = new Map([
  ['baileys latte m', 'Baileys (M)'],
  ['baileys 1 l', 'Baileys (1 L)'],
  ['butterscotch 1 l', 'Butterscotch (1 L)'],
  ['gula aren 1 l', 'Gula Aren (1 L)'],
  ['salted caramel 1 l', 'Salted Caramel (1 L)'],
  ['cold brew 1 l', 'Cold Brew (1 L)'],
]);

function getAliasProductName(csvProduct) {
  return productAliasMap.get(normalizeText(csvProduct)) || null;
}

function findOutletMatch(csvOutlet, outlets) {
  const normalizedCsv = normalizeText(csvOutlet);
  if (!normalizedCsv) return null;

  const exact = outlets.find((o) => normalizeText(o.name).includes(normalizedCsv));
  if (exact) return exact;

  const parts = normalizedCsv.split(/\s+/).filter(Boolean);
  if (parts.length > 0) {
    const best = outlets.find((o) => {
      const nameLower = normalizeText(o.name);
      return parts.every((part) => nameLower.includes(part));
    });
    if (best) return best;
  }

  return null;
}

function findProductMatch(csvProduct, products) {
  const normalizedCsv = normalizeText(csvProduct);
  if (!normalizedCsv) return null;

  const exact = products.find((p) => normalizeText(p.name) === normalizedCsv);
  if (exact) return exact;

  const aliasName = getAliasProductName(csvProduct);
  if (aliasName) {
    const aliasMatch = products.find((p) => normalizeText(p.name) === normalizeText(aliasName));
    if (aliasMatch) return aliasMatch;
  }

  const partial = products.find((p) => {
    const normalizedDb = normalizeText(p.name);
    return normalizedDb.includes(normalizedCsv) || normalizedCsv.includes(normalizedDb);
  });
  if (partial) return partial;

  return null;
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

function buildSaleInsertSql(row) {
  const paymentMethod = normalizePaymentMethod(row.payment_method);
  const outletCondition = row.outletId != null
    ? `'${row.outletId}'`
    : row.outletName
      ? `(SELECT id FROM public.outlets WHERE name ILIKE '%${row.outletName.replace(/'/g, "''")}%' LIMIT 1)`
      : 'NULL';
  const productCondition = row.productId != null
    ? `'${row.productId}'`
    : row.productName
      ? `(SELECT id FROM public.products WHERE name = '${row.productName.replace(/'/g, "''")}' LIMIT 1)`
      : 'NULL';
  const productHppExpression = row.productId != null
    ? `(SELECT hpp FROM public.products WHERE id = '${row.productId}')`
    : row.productName
      ? `(SELECT hpp FROM public.products WHERE name = '${row.productName.replace(/'/g, "''")}' LIMIT 1)`
      : '0';

  return `-- ${row.csvIndex.toString().padStart(4, '0')} | ${row.productName} | ${paymentMethod} | ${row.created_at}
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    ${outletCondition},
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    '${paymentMethod}',
    ${row.total_amount.toFixed(2)},
    (${productHppExpression}) * ${row.quantity},
    ${row.bonus_amount.toFixed(2)},
    ${row.profit.toFixed(2)},
    '${row.created_at}'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  ${productCondition},
  ${row.quantity},
  ${row.price.toFixed(2)},
  ${productHppExpression}
FROM inserted_sale;`;
}

async function main() {
  loadEnv(envPath);

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase configuration. Set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY in papikopi-web/.env.local.');
    process.exit(1);
  }

  const csvPath = path.resolve(projectRoot, '..', 'data juni papi kopi.csv');
  if (!fs.existsSync(csvPath)) {
    console.error('CSV file not found:', csvPath);
    process.exit(1);
  }

  const csvText = fs.readFileSync(csvPath, 'utf8');
  const rawRows = parseCsvRows(csvText);
  if (rawRows.length === 0) {
    console.error('CSV parsing found no valid rows. Please verify delimiter and header.');
    process.exit(1);
  }

  const supabase = createClient(supabaseUrl, supabaseKey, { auth: { persistSession: false } });

  const { data: outlets, error: outletsError } = await supabase.from('outlets').select('id,name');
  if (outletsError) {
    console.error('Failed to fetch outlets:', outletsError.message || outletsError);
    process.exit(1);
  }

  const { data: products, error: productsError } = await supabase.from('products').select('id,name,hpp');
  if (productsError) {
    console.error('Failed to fetch products:', productsError.message || productsError);
    process.exit(1);
  }

  const missingOutlets = new Set();
  const missingProducts = new Set();
  const insertRows = [];

  rawRows.forEach((row, index) => {
    const createdAt = parseTimestamp(row.created_at);
    if (!createdAt) {
      console.warn(`Skipping row ${index + 1}: invalid created_at '${row.created_at}'`);
      return;
    }

    const outletMatch = findOutletMatch(row.cl_role, outlets || []);
    if (!outletMatch) missingOutlets.add(row.cl_role || '(empty)');

    const productMatch = findProductMatch(row.minuman_id, products || []);
    if (!productMatch) missingProducts.add(row.minuman_id || '(empty)');

    insertRows.push({
      csvIndex: index + 1,
      outletName: row.cl_role || '',
      outletId: outletMatch?.id ?? null,
      productName: row.minuman_id || '',
      productId: productMatch?.id ?? null,
      payment_method: row.Pembayaran || '',
      total_amount: parseNumber(row.omset || row.harga_jual || '0'),
      hpp_total: parseNumber(row.hpp || '0'),
      bonus_amount: parseNumber(row.bonus || '0'),
      profit: parseNumber(row.Laba || '0'),
      created_at: createdAt,
      quantity: parseNumber(row.quantity || '1'),
      price: parseNumber(row.harga_jual || '0'),
      productHpp: productMatch?.hpp ?? 0,
      productFound: Boolean(productMatch),
      outletFound: Boolean(outletMatch),
    });
  });

  if (missingProducts.size > 0 || missingOutlets.size > 0) {
    console.warn('Warning: some products or outlets could not be matched. The generated SQL will still use the raw labels and may fail unless those names exist in DB.');
    if (missingOutlets.size > 0) {
      console.warn('Missing outlet labels:', Array.from(missingOutlets).join(', '));
    }
    if (missingProducts.size > 0) {
      console.warn('Missing product names:', Array.from(missingProducts).join(', '));
    }
  }

  const sqlPath = path.join(projectRoot, 'sql', 'insert_june_2026_from_csv.sql');
  const header = `-- Generated SQL inserts for June 2026 CSV data
-- Source: ../data juni papi kopi.csv
-- Review carefully before running.
-- This file inserts rows into public.sales and public.sale_items.
-- It uses outlet name lookup via ILIKE and product lookup via exact name.

`;

  const statements = insertRows.map(buildSaleInsertSql).join('\n\n');
  fs.writeFileSync(sqlPath, `${header}${statements}\n`, 'utf8');

  console.log(`Wrote ${insertRows.length} insert statements to ${sqlPath}`);
  console.log('Review `sql/insert_june_2026_from_csv.sql` before executing it in the database.');
}

main().catch((err) => {
  console.error('Script failed:', err);
  process.exit(1);
});
