// POST /api/admin/fix-allocations
// Auto-fix allocated_quantity by recalculating from actual allocations

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function POST(request: NextRequest) {
  try {
    // Get all showcase products
    const { data: products, error: productsError } = await supabase
      .from('showcase_products')
      .select('id, product_name, total_quantity, allocated_quantity');

    if (productsError) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch products: ${productsError.message}` },
        { status: 500 }
      );
    }

    let fixed = 0;
    const results = [];

    // For each product, recalculate allocated_quantity
    for (const product of products || []) {
      // Get sum of all allocations for this product
      const { data: allocations, error: allocError } = await supabase
        .from('showcase_allocations')
        .select('quantity')
        .eq('showcase_product_id', product.id);

      if (allocError) {
        results.push({
          product_id: product.id,
          product_name: product.product_name,
          status: 'error',
          error: allocError.message,
        });
        continue;
      }

      // Calculate actual sum
      const actualAllocated = (allocations || []).reduce((sum, a) => sum + (a.quantity || 0), 0);

      // Only update if different from current
      if (actualAllocated !== product.allocated_quantity) {
        const { error: updateError } = await supabase
          .from('showcase_products')
          .update({ allocated_quantity: actualAllocated })
          .eq('id', product.id);

        if (updateError) {
          results.push({
            product_id: product.id,
            product_name: product.product_name,
            status: 'error',
            error: updateError.message,
          });
        } else {
          fixed++;
          results.push({
            product_id: product.id,
            product_name: product.product_name,
            old_allocated: product.allocated_quantity,
            new_allocated: actualAllocated,
            status: 'fixed',
          });
        }
      } else {
        results.push({
          product_id: product.id,
          product_name: product.product_name,
          allocated: actualAllocated,
          status: 'ok',
        });
      }
    }

    return NextResponse.json(
      {
        success: true,
        message: `Fixed ${fixed} products out of ${products?.length || 0}`,
        fixed_count: fixed,
        total_products: products?.length || 0,
        details: results,
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Fix allocations error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
