import dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';

dotenv.config({ path: '.env.local' });

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

(async () => {
  try {
    // Get outlets
    const { data: outlets } = await supabase.from('outlets').select('id, name').limit(3);
    console.log('=== OUTLETS ===');
    console.log(JSON.stringify(outlets, null, 2));
    
    // Get batch allocations
    const { data: allocations } = await supabase.from('batch_allocations').select('*').limit(5);
    console.log('\n=== BATCH ALLOCATIONS ===');
    console.log(JSON.stringify(allocations, null, 2));
    console.log(`Total allocations: ${allocations?.length || 0}`);
    
    // If there are allocations, get product batches
    if (allocations && allocations.length > 0) {
      const batchIds = allocations.map(a => a.batch_id);
      const { data: batches } = await supabase.from('product_batches').select('id, product_id').in('id', batchIds);
      console.log('\n=== PRODUCT BATCHES FOR ALLOCATED IDS ===');
      console.log(JSON.stringify(batches, null, 2));
    } else {
      console.log('\n⚠️  No batch allocations found in database!');
      console.log('\nYou need to:');
      console.log('1. Go to /dashboard/warehouse');
      console.log('2. Create product allocations for outlets');
      console.log('3. Then check /dashboard/outlets to see the products');
    }
  } catch (err) {
    console.error('Error:', err.message);
  }
})();
