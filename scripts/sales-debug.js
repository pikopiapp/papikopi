const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');

// Load .env.local if present
try {
  const envContent = fs.readFileSync('.env.local', 'utf8');
  envContent.split(/\n/).filter(Boolean).forEach(line => {
    const idx = line.indexOf('=');
    if (idx > -1) {
      const key = line.slice(0, idx).trim();
      const val = line.slice(idx + 1).trim();
      process.env[key] = val;
    }
  });
} catch (e) {
  // ignore
}

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  console.error('Missing env vars NEXT_PUBLIC_SUPABASE_URL or NEXT_PUBLIC_SUPABASE_ANON_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseAnonKey);

(async () => {
  try {
    const saleId = '4092a969-a93e-44fe-ab9b-46df1f40ad72';
    console.log('Checking sale_id =', saleId);

    const { data: items, error } = await supabase
      .from('sale_items')
      .select('*')
      .eq('sale_id', saleId);

    console.log('eq() -> items length:', (items || []).length);
    console.log('eq() -> error:', error);

    const ids = [saleId];
    const { data: itemsIn, error: errIn } = await supabase
      .from('sale_items')
      .select('*')
      .in('sale_id', ids);

    console.log('in() -> items length:', (itemsIn || []).length);
    console.log('in() -> error:', errIn);

    const { data: nested, error: nestedErr } = await supabase
      .from('sales')
      .select('id, sale_items(*)')
      .in('id', ids);

    console.log('nested select -> length:', (nested || []).length);
    console.log('nested select -> error:', nestedErr);
    console.log('nested select -> sample:', nested);

    // Now emulate by-outlet: fetch many sales and query sale_items via .in()
    const { data: manySales } = await supabase
      .from('sales')
      .select('id')
      .order('created_at', { ascending: false })
      .limit(200);

    const saleIds = (manySales || []).map(s => s.id);
    console.log('Fetched sales count for batch test:', saleIds.length);

    if (saleIds.length > 0) {
      const { data: batchedItems, error: batchedErr } = await supabase
        .from('sale_items')
        .select('*')
        .in('sale_id', saleIds);

      console.log('.in() batched -> items length:', (batchedItems || []).length);
      console.log('.in() batched -> error:', batchedErr);
    }
  } catch (e) {
    console.error('Script error', e);
  }
  process.exit(0);
})();
