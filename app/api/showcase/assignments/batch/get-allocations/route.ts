// GET /api/showcase/assignments/batch?batch_id=xxx
// Get all allocations for a batch with outlet details

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const batchId = searchParams.get('batch_id');

    if (!batchId) {
      return NextResponse.json(
        { success: false, error: 'batch_id parameter required' },
        { status: 400 }
      );
    }

    // Get batch info
    const { data: batch, error: batchError } = await supabase
      .from('product_batches')
      .select('*')
      .eq('id', batchId)
      .single();

    if (batchError || !batch) {
      return NextResponse.json(
        { success: false, error: 'Batch not found' },
        { status: 404 }
      );
    }

    // Get all allocations with outlet info
    const { data: allocations, error: allocError } = await supabase
      .from('batch_allocations')
      .select(`
        id,
        quantity,
        allocated_date,
        outlet:outlets(id, name, type, address)
      `)
      .eq('batch_id', batchId)
      .order('allocated_date', { ascending: false });

    if (allocError) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch allocations: ${allocError.message}` },
        { status: 500 }
      );
    }

    // Calculate totals
    const totalAllocated = allocations?.reduce((sum, a) => sum + a.quantity, 0) || 0;
    const remaining = batch.quantity - totalAllocated;

    return NextResponse.json(
      {
        success: true,
        data: {
          batch: {
            id: batch.id,
            batch_code: batch.batch_code,
            product_name: batch.product_name,
            total_quantity: batch.quantity,
            status: batch.status,
          },
          allocations: allocations || [],
          summary: {
            total_quantity: batch.quantity,
            total_allocated: totalAllocated,
            remaining: remaining,
            outlet_count: allocations?.length || 0,
          },
        },
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Get allocations error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
