require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

(async () => {
  try {
    // Get showcase allocations
    const { data: showcaseAllocations, error: showcaseError } = await supabase
      .from('showcase_allocations')
      .select('*')
      .limit(10);

    console.log('=== SHOWCASE ALLOCATIONS ===');
    if (showcaseError) {
      console.log('Error:', showcaseError.message);
    } else {
      console.log(`Total: ${showcaseAllocations?.length || 0}`);
      console.log(JSON.stringify(showcaseAllocations, null, 2));
    }

    // Get showcase products
    const { data: showcaseProducts, error: productsError } = await supabase
      .from('showcase_products')
      .select('*')
      .limit(5);

    console.log('\n=== SHOWCASE PRODUCTS ===');
    if (productsError) {
      console.log('Error:', productsError.message);
    } else {
      console.log(`Total: ${showcaseProducts?.length || 0}`);
      console.log(JSON.stringify(showcaseProducts, null, 2));
    }

    // Check batch_allocations again
    const { data: batchAllocations } = await supabase
      .from('batch_allocations')
      .select('*')
      .limit(5);

    console.log('\n=== BATCH ALLOCATIONS ===');
    console.log(`Total: ${batchAllocations?.length || 0}`);
    if (batchAllocations && batchAllocations.length > 0) {
      console.log(JSON.stringify(batchAllocations, null, 2));
    }
  } catch (err) {
    console.error('Error:', err.message);
  }
})();
