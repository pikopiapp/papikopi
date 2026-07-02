import fs from 'fs/promises';
import path from 'path';
import dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';

dotenv.config({ path: path.resolve(process.cwd(), '.env.local') });

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_ROLE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SERVICE_ROLE_KEY) {
  console.error('Missing environment variables. Set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY.');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SERVICE_ROLE_KEY, {
  auth: {
    persistSession: false,
    autoRefreshToken: false,
  },
});

function parseCsv(content) {
  const lines = content.split(/\r?\n/).filter((line) => line.trim().length > 0);
  if (lines.length === 0) return [];

  const headers = lines[0].split(';').map((h) => h.trim().toLowerCase());
  const rows = lines.slice(1).map((line) => {
    const values = line.split(';').map((value) => value.trim());
    return headers.reduce((acc, header, index) => {
      acc[header] = values[index] || '';
      return acc;
    }, {});
  });

  return rows;
}

async function findOutletId(gerobakName) {
  if (!gerobakName) return null;
  const sanitized = gerobakName.trim();
  if (!sanitized) return null;

  const exact = await supabase
    .from('outlets')
    .select('id')
    .ilike('name', sanitized)
    .maybeSingle();

  if (exact.error) {
    console.warn('Failed to lookup outlet exact match', exact.error.message);
  }

  if (exact.data?.id) {
    return exact.data.id;
  }

  const fuzzy = await supabase
    .from('outlets')
    .select('id')
    .ilike('name', `%${sanitized}%`)
    .limit(1);

  if (fuzzy.error) {
    console.warn('Failed to lookup outlet fuzzy match', fuzzy.error.message);
    return null;
  }

  return fuzzy.data?.[0]?.id || null;
}

async function importInvestors(csvFilePath) {
  const content = await fs.readFile(csvFilePath, 'utf8');
  const rows = parseCsv(content);

  if (rows.length === 0) {
    console.error('No investor rows found in CSV.');
    process.exit(1);
  }

  console.log(`Importing ${rows.length} investor rows from ${csvFilePath}`);
  const summary = [];

  for (const row of rows) {
    const gerobak = row['gerobak'] || row['gerobak']?.trim();
    const name = row['nama'] || row['nama']?.trim();
    const email = row['email'] || row['email']?.trim();
    const bank = row['bank'] || row['bank']?.trim();
    const account = row['no rek'] || row['no rek']?.trim();
    const share = row['persentase'] || row['persentase']?.trim();

    if (!email) {
      summary.push({ email: '(missing)', status: 'skipped', reason: 'Missing email', gerobak, name });
      continue;
    }

    const outletId = await findOutletId(gerobak);
    const payload = {
      email,
      name: name || email.split('@')[0],
      role: 'investor',
      is_active: true,
      outlet_id: outletId,
      phone: null,
    };

    const { data, error } = await supabase
      .from('users')
      .upsert(payload, { onConflict: 'email' })
      .select()
      .single();

    if (error) {
      summary.push({ email, status: 'failed', reason: error.message, gerobak, name });
      continue;
    }

    // Upsert investor_profiles bank details if available
    try {
      const investorId = data?.id;
      if (investorId && (bank || account)) {
        // check existing
        const { data: existing } = await supabase
          .from('investor_profiles')
          .select('id')
          .eq('investor_id', investorId)
          .single();

        if (existing) {
          const { error: updErr } = await supabase
            .from('investor_profiles')
            .update({ account_holder: name || null, bank_name: bank || null, account_number: account || null, routing_number: null })
            .eq('investor_id', investorId);
          if (updErr) console.warn('Failed to update investor_profiles for', email, updErr.message);
        } else {
          const { error: insErr } = await supabase
            .from('investor_profiles')
            .insert({ investor_id: investorId, account_holder: name || null, bank_name: bank || null, account_number: account || null, routing_number: null });
          if (insErr) console.warn('Failed to insert investor_profiles for', email, insErr.message);
        }
      }
    } catch (e) {
      console.warn('Error upserting investor_profiles for', email, e?.message || e);
    }

    summary.push({ email, status: 'upserted', userId: data?.id, outletId, gerobak, name });
  }

  console.table(summary.map(({ email, status, userId, outletId, reason, gerobak, name }) => ({
    email,
    status,
    userId: userId || '',
    outletId: outletId || '',
    gerobak: gerobak || '',
    name: name || '',
    reason: reason || '',
  })));
  return summary;
}

const defaultCsvPath = path.resolve(process.cwd(), '../List Investor (1).csv');
const csvFile = process.argv[2] ? path.resolve(process.cwd(), process.argv[2]) : defaultCsvPath;

importInvestors(csvFile)
  .then(() => {
    console.log('Investor import completed.');
    process.exit(0);
  })
  .catch((error) => {
    console.error('Investor import failed:', error);
    process.exit(1);
  });
