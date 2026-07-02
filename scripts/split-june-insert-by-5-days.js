import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
const projectRoot = path.resolve(__dirname, '..');
const sqlPath = path.join(projectRoot, 'sql', 'insert_june_2026_from_csv.sql');
const outDir = path.join(projectRoot, 'sql', 'june_2026_5day_batches');

if (!fs.existsSync(sqlPath)) {
  console.error(`File not found: ${sqlPath}`);
  process.exit(1);
}

const content = fs.readFileSync(sqlPath, 'utf8');
const lines = content.split(/\r?\n/);

// Split by statement boundary starting with "WITH inserted_sale AS"
const statements = [];
let current = [];
for (const line of lines) {
  if (line.startsWith('WITH inserted_sale AS (')) {
    if (current.length > 0) {
      statements.push(current.join('\n'));
      current = [];
    }
  }
  current.push(line);
}
if (current.length > 0) statements.push(current.join('\n'));

const datePattern = /-- \d{4} \| .* \| .* \| (\d{4}-\d{2}-\d{2})T/;

function getBucket(dateStr) {
  const date = new Date(dateStr);
  const day = date.getUTCDate();
  if (day >= 1 && day <= 5) return '01-05';
  if (day >= 6 && day <= 10) return '06-10';
  if (day >= 11 && day <= 15) return '11-15';
  if (day >= 16 && day <= 20) return '16-20';
  if (day >= 21 && day <= 25) return '21-25';
  return '26-30';
}

const buckets = new Map();
for (const stmt of statements) {
  const match = stmt.match(datePattern);
  if (!match) {
    console.warn('Skipping statement without date comment:', stmt.slice(0, 120));
    continue;
  }
  const bucket = getBucket(match[1]);
  if (!buckets.has(bucket)) buckets.set(bucket, []);
  buckets.get(bucket).push(stmt);
}

if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });
for (const [bucket, stmts] of buckets.entries()) {
  const filename = `insert_june_2026_${bucket}.sql`;
  const outPath = path.join(outDir, filename);
  const header = `-- Generated from data juni papi kopi.csv
-- Batch for June 2026: ${bucket}
-- Includes ${stmts.length} sales inserts.
\n`;
  fs.writeFileSync(outPath, header + stmts.join('\n\n') + '\n', 'utf8');
  console.log('Wrote', outPath);
}

console.log('Split complete.');
