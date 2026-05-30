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

    // Check available quantity
    const available = product.total_quantity - product.allocated_quantity;
    if (available < quantity) {
      return NextResponse.json(
        { success: false, error: `Insufficient quantity. Available: ${available}, Requested: ${quantity}` },
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

    let quantityDifference = quantity;
    let newAllocationQuantity = quantity;

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
