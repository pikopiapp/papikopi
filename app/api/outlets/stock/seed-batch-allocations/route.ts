import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET() {
  return handleSeed();
}

export async function POST() {
  return handleSeed();
}

async function handleSeed() {
  try {
    console.log('Starting batch allocations seed...');

    // Get all outlets
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id, name');

    if (outletsError || !outlets || outlets.length === 0) {
      return NextResponse.json(
        { error: 'No outlets found', details: outletsError },
        { status: 400 }
      );
    }

    console.log(`Found ${outlets.length} outlets`);

    // Get all product batches with status 'ready'
    const { data: batches, error: batchesError } = await supabase
      .from('product_batches')
      .select('id, product_id, quantity')
      .eq('status', 'ready')
      .gt('quantity', 0);

    if (batchesError || !batches || batches.length === 0) {
      return NextResponse.json(
        { 
          error: 'No ready batches found', 
          details: batchesError,
          message: 'Create product batches with status "ready" in warehouse first'
        },
        { status: 400 }
      );
    }

    console.log(`Found ${batches.length} ready batches`);

    // Create allocations: distribute batches to outlets
    const allocationsToCreate: any[] = [];
    
    batches.forEach((batch: any) => {
      // Distribute each batch to 1-3 random outlets
      const numOutlets = Math.floor(Math.random() * 3) + 1; // 1-3 outlets
      const selectedOutlets = outlets
        .sort(() => Math.random() - 0.5)
        .slice(0, numOutlets);

      // Divide batch quantity among selected outlets
      const qtyPerOutlet = Math.floor(batch.quantity / selectedOutlets.length);

      selectedOutlets.forEach((outlet: any) => {
        allocationsToCreate.push({
          batch_id: batch.id,
          outlet_id: outlet.id,
          quantity: qtyPerOutlet,
        });
      });
    });

    console.log(`Creating ${allocationsToCreate.length} allocations...`);

    if (allocationsToCreate.length === 0) {
      return NextResponse.json(
        { 
          error: 'No allocations to create',
          message: 'Ensure you have product batches with status "ready"'
        },
        { status: 400 }
      );
    }

    // Insert allocations in batches
    const batchSize = 100;
    let successCount = 0;
    let errorCount = 0;
    const errors: any[] = [];

    for (let i = 0; i < allocationsToCreate.length; i += batchSize) {
      const batch = allocationsToCreate.slice(i, i + batchSize);
      const { data, error } = await supabase
        .from('batch_allocations')
        .insert(batch)
        .select();

      if (error) {
        console.error(`Batch ${Math.floor(i / batchSize) + 1} error:`, error);
        errorCount += batch.length;
        errors.push(error.message);
      } else {
        successCount += data?.length || 0;
      }
    }

    return NextResponse.json(
      {
        success: true,
        message: 'Batch allocations seeded successfully',
        stats: {
          total_allocations_created: successCount,
          outletsCount: outlets.length,
          batchesCount: batches.length,
          allocations_created: allocationsToCreate.length,
        },
        errors: errors.length > 0 ? errors : undefined,
      },
      { status: 201 }
    );
  } catch (error) {
    console.error('Seed allocations error:', error);
    return NextResponse.json(
      { error: 'Failed to seed allocations', details: String(error) },
      { status: 500 }
    );
  }
}
