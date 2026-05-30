// GET /api/showcase/inventory
// Get showcase inventory summary with aggregated allocations

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(request: NextRequest) {
  try {
    // Get all showcase products
    const { data: showcaseProducts, error: productsError } = await supabase
      .from('showcase_products')
      .select(`
        id,
        product_id,
        product_name,
        total_quantity,
        created_at
      `)
      .order('created_at', { ascending: false });

    if (productsError) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch products: ${productsError.message}` },
        { status: 500 }
      );
    }

    // Get all allocations (aggregate by showcase_product_id)
    const { data: allAllocations, error: allocError } = await supabase
      .from('showcase_allocations')
      .select(`
        id,
        quantity,
        showcase_product_id,
        outlet_id,
        allocated_date,
        created_at
      `);

    if (allocError) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch allocations: ${allocError.message}` },
        { status: 500 }
      );
    }

    // Aggregate allocations by showcase_product_id
    const allocationMap = new Map<string, number>();
    (allAllocations || []).forEach((alloc: any) => {
      const productId = alloc.showcase_product_id;
      const qty = alloc.quantity || 0;
      allocationMap.set(productId, (allocationMap.get(productId) || 0) + qty);
    });

    console.log(`Total allocations found: ${allAllocations?.length || 0}`);
    console.log(`Products aggregated: ${allocationMap.size}`);

    // Map products with actual allocated quantities from aggregation
    const productsWithAllocations = (showcaseProducts || []).map((product) => {
      const actualAllocatedQuantity = allocationMap.get(product.id) || 0;
      return {
        id: product.id,
        product_id: product.product_id,
        product_name: product.product_name,
        total_quantity: product.total_quantity,
        allocated_quantity: actualAllocatedQuantity,
        remaining: product.total_quantity - actualAllocatedQuantity,
        created_at: product.created_at,
      };
    });

    return NextResponse.json(productsWithAllocations, { status: 200 });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Get inventory error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
