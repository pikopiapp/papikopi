import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { createClient } from '@supabase/supabase-js';
import { parseCsvDateKey, parseDatabaseDateKey } from './date-format-utils.js';

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

function parseDateKey(value) {
  return parseCsvDateKey(value);
}

function parseJakartaDateKey(value) {
  return parseDatabaseDateKey(value);
}

function parseNumber(value) {
  if (value == null) return 0;
  const cleaned = String(value).replace(/[^0-9\-\.]/g, '').trim();
  if (!cleaned) return 0;
  return Number(cleaned);
}

function parseCsvRows(content) {
  const lines = content.split(/\r?\n/).filter(Boolean);
  if (lines.length === 0) return [];

  const header = lines[0].split(';').map((item) => item.trim());
  const rows = [];

  for (let i = 1; i < lines.length; i += 1) {
    const row = lines[i].split(';');
    if (row.length < header.length) {
      // Skip malformed rows, but keep note.
      continue;
    }
    const entry = {};
    for (let j = 0; j < header.length; j += 1) {
      entry[header[j]] = row[j]?.trim() ?? '';
    }
    rows.push(entry);
  }

  return rows;
}

function buildCsvSummary(rows) {
  const summary = {
    byDate: {},
    total: { orders: 0, revenue: 0, quantity: 0 },
  };

  for (const row of rows) {
    const date = parseDateKey(row.order_date);
    if (!date) continue;

    const omset = parseNumber(row.omset);
    const quantity = parseNumber(row.quantity);
    const hargajual = parseNumber(row.harga_jual);

    if (!summary.byDate[date]) {
      summary.byDate[date] = { orders: 0, revenue: 0, quantity: 0, priceSum: 0 };
    }

    summary.byDate[date].orders += 1;
    summary.byDate[date].revenue += omset;
    summary.byDate[date].quantity += quantity;
    summary.byDate[date].priceSum += hargajual;

    summary.total.orders += 1;
    summary.total.revenue += omset;
    summary.total.quantity += quantity;
  }

  return summary;
}

function chunkArray(array, size) {
  const chunks = [];
  for (let i = 0; i < array.length; i += size) {
    chunks.push(array.slice(i, i + size));
  }
  return chunks;
}

async function fetchAllSales(supabase, startDate, endDate) {
  const pageSize = 1000;
  let from = 0;
  const allRows = [];

  while (true) {
    const { data, error } = await supabase
      .from('sales')
      .select('id, outlet_id, total_amount, hpp_total, bonus_amount, profit, created_at, payment_method')
      .gte('created_at', startDate)
      .lte('created_at', endDate)
      .order('created_at', { ascending: true })
      .range(from, from + pageSize - 1);

    if (error) {
      throw error;
    }

    if (!data || data.length === 0) {
      break;
    }

    allRows.push(...data);
    if (data.length < pageSize) {
      break;
    }

    from += pageSize;
  }

  return allRows;
}

async function main() {
  loadEnv(envPath);

  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
  const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!supabaseUrl || !supabaseKey) {
    console.error('Missing Supabase configuration. Set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY or NEXT_PUBLIC_SUPABASE_ANON_KEY in papikopi-web/.env.local.');
    process.exit(1);
  }

  const csvPath = path.resolve(projectRoot, '..', 'data juni papi kopi.csv');
  if (!fs.existsSync(csvPath)) {
    console.error('CSV file not found:', csvPath);
    process.exit(1);
  }

  const csvText = fs.readFileSync(csvPath, 'utf8');
  const csvRows = parseCsvRows(csvText);
  if (csvRows.length === 0) {
    console.error('Tidak ada baris CSV yang valid setelah parsing. Pastikan file `data juni papi kopi.csv` menggunakan delimiter `;` dan header lengkap.');
    process.exit(1);
  }

  const csvSummary = buildCsvSummary(csvRows);
  const csvDates = Object.keys(csvSummary.byDate).sort();

  if (csvDates.length === 0) {
    console.error('Tidak ditemukan tanggal yang valid di CSV.');
    process.exit(1);
  }

  const startDate = `${csvDates[0]}T00:00:00+07:00`;
  const endDate = `${csvDates[csvDates.length - 1]}T23:59:59+07:00`;

  const supabase = createClient(supabaseUrl, supabaseKey, { auth: { persistSession: false } });

  console.log('Membaca CSV:', csvPath);
  console.log('Rentang tanggal CSV:', csvDates[0], 'sampai', csvDates[csvDates.length - 1]);
  console.log('Total baris CSV:', csvRows.length);
  console.log('Total revenue CSV:', csvSummary.total.revenue);
  console.log('-------------------------------------');

  const salesRows = await fetchAllSales(supabase, startDate, endDate);

  const salesById = new Map();
  const dbDateSummary = {};
  const saleIds = [];

  for (const sale of salesRows || []) {
    const createdAt = String(sale.created_at || '');
    const dateKey = parseJakartaDateKey(createdAt);
    if (!dateKey) continue;

    saleIds.push(sale.id);
    salesById.set(sale.id, sale);

    if (!dbDateSummary[dateKey]) {
      dbDateSummary[dateKey] = { salesCount: 0, revenue: 0, hpp: 0, bonus: 0, profit: 0, itemQuantity: 0, itemValue: 0, saleItems: 0 };
    }

    dbDateSummary[dateKey].salesCount += 1;
    dbDateSummary[dateKey].revenue += parseNumber(sale.total_amount);
    dbDateSummary[dateKey].hpp += parseNumber(sale.hpp_total);
    dbDateSummary[dateKey].bonus += parseNumber(sale.bonus_amount);
    dbDateSummary[dateKey].profit += parseNumber(sale.profit);
  }

  console.log('Total sales DB:', saleIds.length);

  const saleItems = [];
  const saleIdChunks = chunkArray(saleIds, 200);
  for (const chunk of saleIdChunks) {
    const { data: items, error: itemsError } = await supabase
      .from('sale_items')
      .select('sale_id, quantity, price, hpp')
      .in('sale_id', chunk);

    if (itemsError) {
      console.error('Query sale_items error:', itemsError);
      process.exit(1);
    }

    saleItems.push(...(items || []));
  }

  for (const item of saleItems) {
    const sale = salesById.get(item.sale_id);
    if (!sale) continue;
    const dateKey = parseJakartaDateKey(String(sale.created_at || ''));
    if (!dateKey) continue;

    if (!dbDateSummary[dateKey]) {
      dbDateSummary[dateKey] = { salesCount: 0, revenue: 0, hpp: 0, bonus: 0, profit: 0, itemQuantity: 0, itemValue: 0, saleItems: 0 };
    }
    dbDateSummary[dateKey].itemQuantity += parseNumber(item.quantity);
    dbDateSummary[dateKey].itemValue += parseNumber(item.price) * parseNumber(item.quantity);
    dbDateSummary[dateKey].saleItems += 1;
  }

  console.log('Total sale_items DB:', saleItems.length);
  console.log('-------------------------------------');

  console.log('Perbandingan ringkas per tanggal:');
  for (const date of csvDates) {
    const csvRow = csvSummary.byDate[date] || { orders: 0, revenue: 0, quantity: 0 };
    const dbRow = dbDateSummary[date] || { salesCount: 0, revenue: 0, hpp: 0, bonus: 0, profit: 0, itemQuantity: 0, itemValue: 0, saleItems: 0 };

    console.log(`Tanggal: ${date}`);
    console.log(`  CSV orders: ${csvRow.orders}, revenue: ${csvRow.revenue}, qty: ${csvRow.quantity}`);
    console.log(`  DB sales: ${dbRow.salesCount}, revenue: ${dbRow.revenue}, qty items: ${dbRow.itemQuantity}, itemRows: ${dbRow.saleItems}`);
    console.log(`  DB hpp: ${dbRow.hpp}, bonus: ${dbRow.bonus}, profit: ${dbRow.profit}`);
    console.log('');
  }

  console.log('-------------------------------------');
  console.log('Ringkasan total:');
  console.log(`  CSV orders: ${csvSummary.total.orders}, revenue: ${csvSummary.total.revenue}, qty: ${csvSummary.total.quantity}`);

  const totalDb = Object.values(dbDateSummary).reduce(
    (acc, row) => {
      acc.salesCount += row.salesCount;
      acc.revenue += row.revenue;
      acc.hpp += row.hpp;
      acc.bonus += row.bonus;
      acc.profit += row.profit;
      acc.itemQuantity += row.itemQuantity;
      acc.saleItems += row.saleItems;
      return acc;
    },
    { salesCount: 0, revenue: 0, hpp: 0, bonus: 0, profit: 0, itemQuantity: 0, saleItems: 0 },
  );

  console.log(`  DB sales: ${totalDb.salesCount}, revenue: ${totalDb.revenue}, qty items: ${totalDb.itemQuantity}, itemRows: ${totalDb.saleItems}`);
  console.log(`  DB hpp: ${totalDb.hpp}, bonus: ${totalDb.bonus}, profit: ${totalDb.profit}`);
}

main().catch((error) => {
  console.error('Unexpected error:', error);
  process.exit(1);
});
