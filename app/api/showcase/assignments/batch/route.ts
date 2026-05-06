// POST /api/showcase/assignments/batch
// Assign production batch to outlet (warehouse workflow)

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

interface BatchAssignmentRequest {
  batch_id: string;
  outlet_id: string;
  quantity: number;
  notes?: string;
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { batch_id, outlet_id, quantity, notes } = body as BatchAssignmentRequest;

    // Validate input
    if (!batch_id || !outlet_id || !quantity) {
      return NextResponse.json(
        { success: false, error: 'Missing required fields: batch_id, outlet_id, quantity' },
        { status: 400 }
      );
    }

    if (quantity < 1) {
      return NextResponse.json(
        { success: false, error: 'Quantity must be at least 1' },
        { status: 400 }
      );
    }

    // Get the batch
    const { data: batch, error: batchError } = await supabase
      .from('product_batches')
      .select('*')
      .eq('id', batch_id)
      .single();

    if (batchError || !batch) {
      return NextResponse.json(
        { success: false, error: 'Batch not found' },
        { status: 404 }
      );
    }

    // Calculate total allocated quantity
    const { data: allocations, error: allocError } = await supabase
      .from('batch_allocations')
      .select('quantity')
      .eq('batch_id', batch_id);

    if (allocError) {
      console.error('Error fetching allocations:', allocError);
      return NextResponse.json(
        { success: false, error: 'Failed to check allocations' },
        { status: 500 }
      );
    }

    const totalAllocated = allocations?.reduce((sum, a) => sum + a.quantity, 0) || 0;
    const availableQty = batch.quantity - totalAllocated;

    // Check if batch has enough quantity
    if (availableQty < quantity) {
      return NextResponse.json(
        { success: false, error: `Insufficient quantity. Available: ${availableQty}, Requested: ${quantity}` },
        { status: 400 }
      );
    }

    // Check if already allocated to this outlet
    const { data: existingAllocation } = await supabase
      .from('batch_allocations')
      .select('*')
      .eq('batch_id', batch_id)
      .eq('outlet_id', outlet_id)
      .single();

    if (existingAllocation) {
      // Update existing allocation
      const { error: updateAllocError } = await supabase
        .from('batch_allocations')
        .update({ quantity })
        .eq('id', existingAllocation.id);

      if (updateAllocError) {
        return NextResponse.json(
          { success: false, error: `Failed to update allocation: ${updateAllocError.message}` },
          { status: 500 }
        );
      }
    } else {
      // Create new allocation
      const { error: insertError } = await supabase
        .from('batch_allocations')
        .insert({
          batch_id,
          outlet_id,
          quantity,
        });

      if (insertError) {
        return NextResponse.json(
          { success: false, error: `Failed to create allocation: ${insertError.message}` },
          { status: 500 }
        );
      }
    }

    // Update batch status to 'assigned' if all quantity allocated
    const newTotalAllocated = totalAllocated + quantity;
    if (newTotalAllocated >= batch.quantity) {
      await supabase
        .from('product_batches')
        .update({ status: 'assigned' })
        .eq('id', batch_id);
    }

    return NextResponse.json(
      {
        success: true,
        message: `${quantity} units allocated to outlet successfully`,
        data: {
          batch_id,
          outlet_id,
          quantity_allocated: quantity,
          total_allocated: newTotalAllocated,
          quantity_remaining: batch.quantity - newTotalAllocated,
        },
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Assignment error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
