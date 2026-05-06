// GET /api/showcase/inventory
// Get showcase inventory summary with allocations

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(request: NextRequest) {
  try {
    // Get all showcase products with allocations
    const { data: showcaseProducts, error: productsError } = await supabase
      .from('showcase_products')
      .select(`
        id,
        product_id,
        product_name,
        total_quantity,
        allocated_quantity,
        created_at
      `)
      .order('created_at', { ascending: false });

    if (productsError) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch products: ${productsError.message}` },
        { status: 500 }
      );
    }

    // Get allocations for each product
    const productsWithAllocations = await Promise.all(
      (showcaseProducts || []).map(async (product) => {
        const { data: allocations, error: allocError } = await supabase
          .from('showcase_allocations')
          .select(`
            id,
            quantity,
            outlet_id,
            allocated_date
          `)
          .eq('showcase_product_id', product.id)
          .order('allocated_date', { ascending: false });

        console.log(`Allocations for ${product.product_name}:`, { count: allocations?.length, allocations, error: allocError });

        // Get outlet details for each allocation
        let allocationsWithOutlets = allocations || [];
        if (allocationsWithOutlets.length > 0) {
          const outletIds = [...new Set(allocationsWithOutlets.map((a: any) => a.outlet_id))];
          const { data: outlets } = await supabase
            .from('outlets')
            .select('id, name')
            .in('id', outletIds);
          
          const outletMap = new Map(outlets?.map((o: any) => [o.id, o.name]) || []);
          allocationsWithOutlets = allocationsWithOutlets.map((alloc: any) => ({
            ...alloc,
            outlet_name: outletMap.get(alloc.outlet_id) || 'Unknown Outlet',
          }));
        }

        return {
          ...product,
          allocations: allocationsWithOutlets,
        };
      })
    );

    // Calculate summary
    const summary = {
      total_products: productsWithAllocations.length,
      total_quantity: productsWithAllocations.reduce((sum, p) => sum + p.total_quantity, 0),
      total_allocated: productsWithAllocations.reduce((sum, p) => sum + p.allocated_quantity, 0),
      total_available: productsWithAllocations.reduce((sum, p) => sum + (p.total_quantity - p.allocated_quantity), 0),
    };

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
