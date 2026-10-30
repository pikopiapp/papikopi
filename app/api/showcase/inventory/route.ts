// GET /api/showcase/inventory
// Get showcase inventory summary with aggregated allocations

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { fetchAllPaginatedRows } from '@/lib/supabase-pagination';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

type ShowcaseProductRow = {
  id: string;
  product_id: string | null;
  product_name: string | null;
  total_quantity: number | null;
  created_at: string;
};

type AllocationRow = {
  id: string;
  quantity: number | null;
  showcase_product_id: string | null;
  outlet_id: string | null;
  allocated_date: string | null;
  created_at: string;
};

function errorMessage(error: unknown): string {
  return error instanceof Error ? error.message : String(error);
}

export async function GET(request: NextRequest) {
  try {
    // 'sql' reads the pre-aggregated view; default keeps the legacy full-download path.
    const engine = (request.nextUrl.searchParams.get('engine') || '').toLowerCase();

    if (engine === 'sql') {
      let data: Record<string, unknown>[] | null = null;
      try {
        data = await fetchAllPaginatedRows<Record<string, unknown>>(
          supabase
            .from('showcase_inventory_summary')
            // select all so the route keeps working before migration 0009 adds sold_quantity
            .select('*')
            .order('created_at', { ascending: false })
        );
      } catch (error) {
        return NextResponse.json(
          { success: false, error: `Failed to fetch inventory summary: ${errorMessage(error)}` },
          { status: 500 }
        );
      }

      return NextResponse.json(data ?? [], { status: 200 });
    }

    // Get all showcase products
    let showcaseProducts: ShowcaseProductRow[] | null = null;
    try {
      showcaseProducts = await fetchAllPaginatedRows<ShowcaseProductRow>(
        supabase
          .from('showcase_products')
          .select(`
            id,
            product_id,
            product_name,
            total_quantity,
            created_at
          `)
          .order('created_at', { ascending: false })
          .order('id', { ascending: true })
      );
    } catch (error) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch products: ${errorMessage(error)}` },
        { status: 500 }
      );
    }

    // Get all allocations (aggregate by showcase_product_id)
    let allAllocations: AllocationRow[] | null = null;
    try {
      allAllocations = await fetchAllPaginatedRows<AllocationRow>(
        supabase
          .from('showcase_allocations')
          .select(`
            id,
            quantity,
            showcase_product_id,
            outlet_id,
            allocated_date,
            created_at
          `)
          .order('id', { ascending: true })
      );
    } catch (error) {
      return NextResponse.json(
        { success: false, error: `Failed to fetch allocations: ${errorMessage(error)}` },
        { status: 500 }
      );
    }

    // Aggregate allocations by showcase_product_id
    const allocationMap = new Map<string, number>();
    (allAllocations || []).forEach((alloc) => {
      const productId = alloc.showcase_product_id;
      if (!productId) return;
      const qty = Number(alloc.quantity) || 0;
      allocationMap.set(productId, (allocationMap.get(productId) || 0) + qty);
    });

    console.log(`Total allocations found: ${allAllocations?.length || 0}`);
    console.log(`Products aggregated: ${allocationMap.size}`);

    // Map products with actual allocated quantities from aggregation
    const productsWithAllocations = (showcaseProducts || []).map((product) => {
      const actualAllocatedQuantity = allocationMap.get(product.id) || 0;
      const totalQuantity = Number(product.total_quantity) || 0;
      return {
        id: product.id,
        product_id: product.product_id,
        product_name: product.product_name,
        total_quantity: totalQuantity,
        allocated_quantity: actualAllocatedQuantity,
        remaining: totalQuantity - actualAllocatedQuantity,
        created_at: product.created_at,
      };
    });

    return NextResponse.json(productsWithAllocations, { status: 200 });
  } catch (error) {
    const errorMsg = errorMessage(error);
    console.error('Get inventory error:', error);

    return NextResponse.json(
      { success: false, error: `Server error: ${errorMsg}` },
      { status: 500 }
    );
  }
}
