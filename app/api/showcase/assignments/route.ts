// GET /api/showcase/assignments
// List all assignments with filtering

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(request: NextRequest) {
  try {
    const outletId = request.nextUrl.searchParams.get('outlet_id');
    const createdAtGte = request.nextUrl.searchParams.get('created_at_gte');
    const createdAtLte = request.nextUrl.searchParams.get('created_at_lte');

    let query = supabase
      .from('showcase_allocations')
      .select(`
        id,
        showcase_product_id,
        outlet_id,
        quantity,
        created_at,
        showcase_products(
          product_id,
          products(name)
        ),
        outlets(name)
      `);

    if (outletId) {
      query = query.eq('outlet_id', outletId);
    }

    if (createdAtGte) {
      query = query.gte('created_at', createdAtGte);
    }

    if (createdAtLte) {
      query = query.lte('created_at', createdAtLte);
    }

    const { data, error } = await query.order('created_at', { ascending: false });

    if (error) {
      throw error;
    }

    // Transform data to include product and outlet names
    type AllocationRow = Record<string, unknown>;
    type ShowcaseProduct = { product_id: string; products: { name: string } | null } | null;

    const transformed = (data as AllocationRow[])?.map((item) => {
      const showcaseProduct = item.showcase_products as ShowcaseProduct;
      const productName = showcaseProduct?.products?.name || 'Unknown Product';
      const outletData = item.outlets as Record<string, string> | null;
      
      return {
        id: item.id,
        showcase_product_id: item.showcase_product_id,
        outlet_id: item.outlet_id,
        quantity: item.quantity,
        created_at: item.created_at,
        product_name: productName,
        outlet_name: outletData?.name || 'Unknown Outlet',
      };
    }) || [];

    return NextResponse.json(transformed);
  } catch (error) {
    console.error('Error fetching assignments:', error);
    return NextResponse.json(
      { success: false, error: 'Internal server error' },
      { status: 500 }
    );
  }
}
