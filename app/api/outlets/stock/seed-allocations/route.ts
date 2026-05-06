import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  return handleSeed();
}

export async function POST() {
  return handleSeed();
}

async function handleSeed() {
  try {
    // First, clear existing allocations
    const { error: deleteError } = await supabase
      .from('showcase_allocations')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000'); // Delete all

    if (deleteError) {
      console.error('Delete error:', deleteError);
      // Continue anyway - might be empty or permission issue
    }

    // Fetch all outlets
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id');

    if (outletsError || !outlets || outlets.length === 0) {
      return Response.json(
        { error: 'No outlets found', details: outletsError },
        { status: 400 }
      );
    }

    // Fetch all showcase products
    const { data: showcaseProducts, error: productsError } = await supabase
      .from('showcase_products')
      .select('id');

    if (productsError || !showcaseProducts || showcaseProducts.length === 0) {
      return Response.json(
        { error: 'No showcase products found', details: productsError },
        { status: 400 }
      );
    }

    // Generate allocations: each outlet gets some products
    const allocationsToCreate = outlets.flatMap((outlet: any) =>
      showcaseProducts.map((product: any) => ({
        showcase_product_id: product.id,
        outlet_id: outlet.id,
        quantity: Math.floor(Math.random() * 100) + 20, // Random between 20-120
        allocated_date: new Date().toISOString(),
      }))
    );

    // Insert allocations in batches
    const batchSize = 100;
    let successCount = 0;
    let errorCount = 0;
    const errors: any[] = [];

    for (let i = 0; i < allocationsToCreate.length; i += batchSize) {
      const batch = allocationsToCreate.slice(i, i + batchSize);
      const { data, error } = await supabase
        .from('showcase_allocations')
        .insert(batch)
        .select();

      if (error) {
        console.error(`Batch ${Math.floor(i / batchSize) + 1} error:`, error);
        errorCount += batch.length;
        errors.push(error.message);
      } else {
        successCount += (data?.length || 0);
      }
    }

    return Response.json({
      message: 'Showcase allocations seeded successfully',
      total: allocationsToCreate.length,
      created: successCount,
      failed: errorCount,
      outlets: outlets.length,
      showcaseProducts: showcaseProducts.length,
      errors: errors.length > 0 ? errors : undefined,
    });
  } catch (error) {
    console.error('Error seeding allocations:', error);
    return Response.json(
      { error: 'Failed to seed allocations', details: String(error) },
      { status: 500 }
    );
  }
}
