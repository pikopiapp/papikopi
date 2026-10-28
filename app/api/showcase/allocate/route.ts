// POST /api/showcase/allocate
// Allocate products from showcase inventory to outlet

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

interface AllocateRequest {
  showcase_product_id: string;
  outlet_id: string;
  quantity: number;
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { showcase_product_id, outlet_id, quantity } = body as AllocateRequest;

    console.log('Allocate request received:', {
      showcase_product_id,
      outlet_id,
      quantity,
    });

    // Validate input
    if (!showcase_product_id || !outlet_id || !quantity) {
      console.error('Missing required fields:', { showcase_product_id, outlet_id, quantity });
      return NextResponse.json(
        { success: false, error: 'Missing required fields' },
        { status: 400 }
      );
    }

    if (quantity < 1) {
      return NextResponse.json(
        { success: false, error: 'Quantity must be at least 1' },
        { status: 400 }
      );
    }

    // Get showcase product
    const { data: product, error: productError } = await supabase
      .from('showcase_products')
      .select('*')
      .eq('id', showcase_product_id)
      .single();

    if (productError || !product) {
      return NextResponse.json(
        { success: false, error: 'Showcase product not found' },
        { status: 404 }
      );
    }

    // Guard against the real dispatched total, not showcase_products.allocated_quantity:
    // that column is stale (single digits while actual dispatch is in the thousands), so
    // checking it let every allocation through.
    const { data: summary, error: summaryError } = await supabase
      .from('showcase_inventory_summary')
      .select('allocated_quantity')
      .eq('id', showcase_product_id)
      .single();

    if (summaryError) {
      return NextResponse.json(
        { success: false, error: `Failed to read inventory summary: ${summaryError.message}` },
        { status: 500 }
      );
    }

    const dispatched = Number(summary?.allocated_quantity ?? 0);
    const recordedIntake = Number(product.total_quantity ?? 0);
    const available = recordedIntake - dispatched;

    if (available < quantity) {
      return NextResponse.json(
        {
          success: false,
          error:
            `Stok tercatat tidak cukup: batch masuk ${recordedIntake}, sudah disalurkan ${dispatched}. ` +
            `Selisih ${available}. Perbaiki pencatatan batch masuk sebelum alokasi baru.`,
          recorded_intake: recordedIntake,
          dispatched,
          available,
        },
        { status: 400 }
      );
    }

    // Always INSERT new allocation record (since constraint is dropped)
    // No need to check for existing allocations
    console.log(`Creating new allocation record for outlet`, {
      quantity,
    });

    const { error: insertError } = await supabase
      .from('showcase_allocations')
      .insert({
        showcase_product_id,
        outlet_id,
        quantity,
        created_at: new Date().toISOString(),
      });

    if (insertError) {
      return NextResponse.json(
        { success: false, error: `Failed to create allocation: ${insertError.message}` },
        { status: 500 }
      );
    }

    // Rebuild the summary column from the true dispatched total so it converges instead of
    // drifting further. A blocked UPDATE returns zero rows without an error, so check the
    // returned rows rather than only the error object.
    const newProductAllocated = dispatched + quantity;
    const { error: updateProductError, data: updateRows } = await supabase
      .from('showcase_products')
      .update({ allocated_quantity: newProductAllocated })
      .eq('id', showcase_product_id)
      .select('id');

    let summaryWarning: string | undefined;
    if (updateProductError || !updateRows || updateRows.length === 0) {
      summaryWarning =
        'Alokasi tersimpan, tetapi kolom ringkasan allocated_quantity tidak diperbarui. ' +
        'Angka akurat tetap tersedia dari view showcase_inventory_summary.';
      console.warn('[showcase/allocate] summary column not updated', {
        showcase_product_id,
        reason: updateProductError?.message ?? 'no rows returned (RLS?)',
      });
    }

    return NextResponse.json(
      {
        success: true,
        message: `${quantity} units of ${product.product_name} allocated to outlet`,
        ...(summaryWarning ? { warning: summaryWarning } : {}),
        data: {
          showcase_product_id,
          outlet_id,
          quantity_added: quantity,
          outlet_total_allocation: quantity,
          product_total_allocated: newProductAllocated,
          remaining: available - quantity,
        },
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Allocate error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
