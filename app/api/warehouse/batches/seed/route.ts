import { createClient } from '@supabase/supabase-js';
import { NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function POST() {
  try {
    console.log('Creating sample batches...');

    // Get real products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('id, name')
      .limit(5);

    if (productsError || !products || products.length === 0) {
      return NextResponse.json(
        { error: 'No products found' },
        { status: 400 }
      );
    }

    // Create batches for each product
    const batches = products.flatMap((product, idx) => {
      return Array.from({ length: 3 }, (_, batchIdx) => ({
        batch_code: `BATCH-${new Date().toISOString().split('T')[0]}-${idx * 10 + batchIdx}`,
        product_id: product.id,
        quantity: Math.floor(Math.random() * 100) + 50,
        production_date: new Date(Date.now() - Math.random() * 7 * 24 * 60 * 60 * 1000)
          .toISOString()
          .split('T')[0],
        expired_date: new Date(Date.now() + Math.random() * 30 * 24 * 60 * 60 * 1000)
          .toISOString()
          .split('T')[0],
        status: 'ready' as const,
        notes: `Sample batch for ${product.name}`,
      }));
    });

    // Clear existing batches
    const { error: deleteError } = await supabase
      .from('product_batches')
      .delete()
      .neq('id', '00000000-0000-0000-0000-000000000000');

    if (deleteError) {
      console.warn('Delete error (continuing):', deleteError);
    }

    // Insert batches
    const { data: createdBatches, error: insertError } = await supabase
      .from('product_batches')
      .insert(batches)
      .select();

    if (insertError) {
      console.error('Insert error:', insertError);
      return NextResponse.json(
        { error: `Failed to create batches: ${insertError.message}` },
        { status: 500 }
      );
    }

    console.log(`Created ${createdBatches?.length} batches`);

    return NextResponse.json({
      message: 'Sample batches created successfully',
      stats: {
        products: products.length,
        batches_created: createdBatches?.length || 0,
      },
    });
  } catch (error) {
    console.error('Error seeding batches:', error);
    return NextResponse.json(
      { error: 'Failed to seed batches', details: String(error) },
      { status: 500 }
    );
  }
}
