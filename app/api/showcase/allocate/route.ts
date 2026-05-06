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

    // Validate input
    if (!showcase_product_id || !outlet_id || !quantity) {
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

    // Check available quantity
    const available = product.total_quantity - product.allocated_quantity;
    if (available < quantity) {
      return NextResponse.json(
        { success: false, error: `Insufficient quantity. Available: ${available}, Requested: ${quantity}` },
        { status: 400 }
      );
    }

    // Check if already allocated to this outlet
    const { data: existingAllocation, error: existingError } = await supabase
      .from('showcase_allocations')
      .select('*')
      .eq('showcase_product_id', showcase_product_id)
      .eq('outlet_id', outlet_id)
      .single();

    // For new allocations, quantityDifference = requested quantity
    // For existing, we ADD to existing (not replace)
    let quantityDifference = quantity;
    let newAllocationQuantity = quantity;

    if (existingAllocation) {
      // ADD to existing allocation (accumulate)
      newAllocationQuantity = existingAllocation.quantity + quantity;
      quantityDifference = quantity; // Only add the new quantity to product total

      console.log(`Updating existing allocation for outlet`, {
        existingQuantity: existingAllocation.quantity,
        addQuantity: quantity,
        newAllocationQuantity,
      });

      const { error: updateError } = await supabase
        .from('showcase_allocations')
        .update({ quantity: newAllocationQuantity })
        .eq('id', existingAllocation.id);

      if (updateError) {
        return NextResponse.json(
          { success: false, error: `Failed to update allocation: ${updateError.message}` },
          { status: 500 }
        );
      }
    } else {
      // Create new allocation
      console.log(`Creating new allocation for outlet`, {
        quantity,
      });

      const { error: insertError } = await supabase
        .from('showcase_allocations')
        .insert({
          showcase_product_id,
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

    // Update showcase product allocated quantity (always add the requested quantity)
    const newProductAllocated = product.allocated_quantity + quantityDifference;
    console.log(`Updating product ${showcase_product_id}:`, {
      currentAllocated: product.allocated_quantity,
      addQuantity: quantityDifference,
      newAllocated: newProductAllocated,
    });

    const { error: updateProductError, data: updateData } = await supabase
      .from('showcase_products')
      .update({
        allocated_quantity: newProductAllocated,
      })
      .eq('id', showcase_product_id)
      .select();

    if (updateProductError) {
      return NextResponse.json(
        { success: false, error: `Failed to update product: ${updateProductError.message}` },
        { status: 500 }
      );
    }

    return NextResponse.json(
      {
        success: true,
        message: `${quantity} units of ${product.product_name} allocated to outlet`,
        data: {
          showcase_product_id,
          outlet_id,
          quantity_added: quantity,
          outlet_total_allocation: newAllocationQuantity,
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
