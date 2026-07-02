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

async function main() {
  loadEnv(envPath);
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
  if (!supabaseUrl || !supabaseKey) throw new Error('Missing Supabase config.');

  const csvPath = path.resolve(projectRoot, '..', 'data juni papi kopi.csv');
  const csvText = fs.readFileSync(csvPath, 'utf8');
  const rows = parseCsvRows(csvText);

  const supabase = createClient(supabaseUrl, supabaseKey, { auth: { persistSession: false } });
  const start = '2026-06-27T00:00:00+07:00';
  const end = '2026-06-28T00:00:00+07:00';

  const { data: existingSales, error: salesQueryError } = await supabase
    .from('sales')
    .select('id')
    .gte('created_at', start)
    .lt('created_at', end)
    .order('created_at', { ascending: true });
  if (salesQueryError) throw salesQueryError;

  const saleIds = (existingSales || []).map((row) => row.id);
  if (saleIds.length > 0) {
    const { error: itemDeleteError } = await supabase.from('sale_items').delete().in('sale_id', saleIds);
    if (itemDeleteError) throw itemDeleteError;
    const { error: saleDeleteError } = await supabase.from('sales').delete().in('id', saleIds);
    if (saleDeleteError) throw saleDeleteError;
    console.log(`Deleted ${saleIds.length} existing June 27 sales rows.`);
  }

  const { data: outlets, error: outletsError } = await supabase.from('outlets').select('id,name');
  if (outletsError) throw outletsError;
  const { data: products, error: productsError } = await supabase.from('products').select('id,name,hpp');
  if (productsError) throw productsError;
  const { data: baristaRows, error: baristaError } = await supabase.from('users').select('id').eq('role', 'barista').limit(1);
  if (baristaError) throw baristaError;
  const baristaId = baristaRows?.[0]?.id;
  if (!baristaId) throw new Error('No barista user found.');

  let imported = 0;
  let skipped = 0;
  for (const row of rows) {
    const createdAt = parseTimestamp(row.created_at);
    if (!createdAt) { skipped += 1; continue; }
    const day = createdAt.slice(0, 10);
    if (day !== '2026-06-27') continue;

    const outletMatch = findOutletMatch(row.cl_role, outlets || []);
    const productMatch = findProductMatch(row.minuman_id, products || []);
    if (!outletMatch || !productMatch) {
      skipped += 1;
      continue;
    }

    const salePayload = {
      outlet_id: outletMatch.id,
      barista_id: baristaId,
      payment_method: normalizePaymentMethod(row.Pembayaran || ''),
      total_amount: parseNumber(row.omset || row.harga_jual || '0'),
      hpp_total: parseNumber(row.hpp || '0'),
      bonus_amount: parseNumber(row.bonus || '0'),
      profit: parseNumber(row.Laba || '0'),
      created_at: createdAt,
    };

    const { data: insertedSale, error: saleError } = await supabase.from('sales').insert([salePayload]).select('id').single();
    if (saleError) {
      skipped += 1;
      continue;
    }

    const { error: itemError } = await supabase.from('sale_items').insert([{
      sale_id: insertedSale.id,
      product_id: productMatch.id,
      quantity: parseNumber(row.quantity || '1'),
      price: parseNumber(row.harga_jual || '0'),
      hpp: productMatch.hpp ?? 0,
    }]);
    if (itemError) {
      skipped += 1;
      continue;
    }

    imported += 1;
  }

  console.log(`Imported ${imported} June 27 sales and sale_items rows; skipped ${skipped}.`);
}

main().catch((err) => {
  console.error('June 27 reimport failed:', err);
  process.exit(1);
});
