import { createClient } from '@supabase/supabase-js';
import { NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET() {
  try {
    console.log('Testing product query...');
    
    // Test 1: Simple product query
    const { data: products1, error: error1 } = await supabase
      .from('products')
      .select('id, name')
      .limit(1);
    
    console.log('Test 1 - Simple product query:', error1 ? `ERROR: ${error1.message}` : `OK (${products1?.length} items)`);

    // Test 2: Sales query without nested select
    const { data: sales, error: salesError } = await supabase
      .from('sales')
      .select('id, outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at')
      .eq('outlet_id', '1')
      .order('created_at', { ascending: false })
      .limit(1);
    
    console.log('Test 2 - Sales without nested select:', salesError ? `ERROR: ${salesError.message}` : `OK (${sales?.length} items)`);

    // Test 3: Sale items query
    const { data: items, error: itemsError } = await supabase
      .from('sale_items')
      .select('*')
      .limit(1);
    
    console.log('Test 3 - Sale items:', itemsError ? `ERROR: ${itemsError.message}` : `OK (${items?.length} items)`);

    // Test 4: Product batches query without nested select
    const { data: batches, error: batchesError } = await supabase
      .from('product_batches')
      .select('id, product_id, quantity, batch_code, production_date, expired_date')
      .eq('outlet_id', '1')
      .eq('status', 'assigned')
      .limit(1);
    
    console.log('Test 4 - Product batches without nested select:', batchesError ? `ERROR: ${batchesError.message}` : `OK (${batches?.length} items)`);

    return NextResponse.json({
      test1: { error: error1?.message, success: !error1 },
      test2: { error: salesError?.message, success: !salesError, count: sales?.length },
      test3: { error: itemsError?.message, success: !itemsError },
      test4: { error: batchesError?.message, success: !batchesError },
    });

  } catch (error: unknown) {
    const message = error instanceof Error ? error.message : 'Unknown error';
    console.error('Debug test error:', message);
    return NextResponse.json({ error: message }, { status: 500 });
  }
}
