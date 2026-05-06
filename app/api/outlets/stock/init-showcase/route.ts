import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function POST() {
  try {
    console.log('🚀 Initializing showcase data...');

    // 1. Fetch all real products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('id, name')
      .limit(50);

    if (productsError || !products || products.length === 0) {
      console.error('Products error:', productsError);
      return Response.json(
        { error: 'No products found', details: productsError },
        { status: 400 }
      );
    }

    console.log(`✓ Found ${products.length} products`);

    // 2. Clear and recreate showcase_products
    const { error: deleteShowcaseError } = await supabase
      .from('showcase_products')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteShowcaseError) {
      console.warn('Delete showcase error (continuing):', deleteShowcaseError);
    }

    // 3. Create showcase products for each product (just use first 5 for variety)
    const showcaseProductsToCreate = products.slice(0, 5).map((p: any) => ({
      product_id: p.id,
      product_name: p.name,
      total_quantity: 500,
      allocated_quantity: 0,
    }));

    const { data: showcaseProducts, error: insertShowcaseError } = await supabase
      .from('showcase_products')
      .insert(showcaseProductsToCreate)
      .select();

    if (insertShowcaseError) {
      console.error('Insert showcase products error:', insertShowcaseError);
      return Response.json(
        { error: 'Failed to create showcase products', details: insertShowcaseError },
        { status: 500 }
      );
    }

    console.log(`✓ Created ${showcaseProducts?.length} showcase products`);

    // 4. Fetch all outlets
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id, name');

    if (outletsError || !outlets || outlets.length === 0) {
      console.error('Outlets error:', outletsError);
      return Response.json(
        { error: 'No outlets found', details: outletsError },
        { status: 400 }
      );
    }

    console.log(`✓ Found ${outlets.length} outlets`);

    // 5. Clear existing allocations
    const { error: deleteAllocError } = await supabase
      .from('showcase_allocations')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteAllocError) {
      console.warn('Delete allocations error (continuing):', deleteAllocError);
    }

    // 6. Create allocations: each outlet gets some of each showcase product
    const allocationsToCreate = outlets.flatMap((outlet: any) =>
      (showcaseProducts || []).map((showcase: any) => ({
        showcase_product_id: showcase.id,
        outlet_id: outlet.id,
        quantity: Math.floor(Math.random() * 80) + 20, // Random between 20-100
      }))
    );

    console.log(`Creating ${allocationsToCreate.length} allocations...`);

    // 7. Insert allocations in batches
    const batchSize = 100;
    let successCount = 0;
    let errorCount = 0;
    const errors: string[] = [];

    for (let i = 0; i < allocationsToCreate.length; i += batchSize) {
      const batch = allocationsToCreate.slice(i, i + batchSize);
      const { data: allocData, error: allocError } = await supabase
        .from('showcase_allocations')
        .insert(batch)
        .select();

      if (allocError) {
        console.error(`Batch ${Math.floor(i / batchSize) + 1} error:`, allocError.message);
        errorCount += batch.length;
        errors.push(allocError.message);
      } else {
        successCount += (allocData?.length || 0);
      }
    }

    console.log(`✓ Created ${successCount} allocations (${errorCount} failed)`);

    return Response.json({
      message: 'Showcase data initialized successfully',
      stats: {
        products: products.length,
        showcaseProducts: showcaseProducts?.length,
        outlets: outlets.length,
        allocations: {
          total: allocationsToCreate.length,
          created: successCount,
          failed: errorCount,
        },
      },
      errors: errors.length > 0 ? errors : undefined,
    });
  } catch (error) {
    console.error('Error initializing showcase:', error);
    return Response.json(
      { error: 'Failed to initialize showcase', details: String(error) },
      { status: 500 }
    );
  }
}
