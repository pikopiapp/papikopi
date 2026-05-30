// GET /api/showcase/assignments?outlet_id=xxx
// GET /api/showcase/assignments/[id]
// PUT /api/showcase/assignments/[id]
// DELETE /api/showcase/assignments/[id]

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || '';
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || '';
const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ id?: string }> }
) {
  try {
    const id = (await params).id;
    const outletId = request.nextUrl.searchParams.get('outlet_id');

    if (id) {
      // Get single assignment
      const { data, error } = await supabase
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
        `)
        .eq('id', id)
        .single();

      if (error || !data) {
        return NextResponse.json(
          { success: false, error: 'Assignment not found' },
          { status: 404 }
        );
      }

      // Transform data
      type AllocationData = Record<string, unknown>;
      type ShowcaseProduct = { product_id: string; products: { name: string } | null } | null;
      
      const allocationData = data as AllocationData;
      const showcaseProduct = allocationData.showcase_products as ShowcaseProduct;
      const productName = showcaseProduct?.products?.name || 'Unknown Product';
      const outletData = allocationData.outlets as Record<string, string> | null;

      return NextResponse.json({
        id: allocationData.id,
        showcase_product_id: allocationData.showcase_product_id,
        outlet_id: allocationData.outlet_id,
        quantity: allocationData.quantity,
        created_at: allocationData.created_at,
        product_name: productName,
        outlet_name: outletData?.name || 'Unknown Outlet',
      });
    }

    // Get all assignments for outlet
    if (!outletId) {
      return NextResponse.json(
        { success: false, error: 'outlet_id is required' },
        { status: 400 }
      );
    }

    const { data, error } = await supabase
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
      `)
      .eq('outlet_id', outletId)
      .order('created_at', { ascending: false });

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

export async function PUT(
  request: NextRequest,
  { params }: { params: Promise<{ id?: string }> }
) {
  try {
    const id = (await params).id;
    if (!id) {
      return NextResponse.json(
        { success: false, error: 'ID is required' },
        { status: 400 }
      );
    }

    const body = await request.json();
    const { quantity } = body;

    if (!quantity || quantity < 1) {
      return NextResponse.json(
        { success: false, error: 'Invalid quantity' },
        { status: 400 }
      );
    }

    // Update allocation
    const { data, error } = await supabase
      .from('showcase_allocations')
      .update({ quantity })
      .eq('id', id)
      .select()
      .single();

    if (error || !data) {
      return NextResponse.json(
        { success: false, message: 'Gagal mengupdate alokasi' },
        { status: 400 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Alokasi berhasil diupdate',
    });
  } catch (error) {
    console.error('Error updating assignment:', error);
    return NextResponse.json(
      { success: false, message: 'Terjadi kesalahan saat mengupdate' },
      { status: 500 }
    );
  }
}

export async function DELETE(
  request: NextRequest,
  { params }: { params: Promise<{ id?: string }> }
) {
  try {
    const id = (await params).id;
    if (!id) {
      return NextResponse.json(
        { success: false, error: 'ID is required' },
        { status: 400 }
      );
    }

    const { error } = await supabase
      .from('showcase_allocations')
      .delete()
      .eq('id', id);

    if (error) {
      return NextResponse.json(
        { success: false, message: 'Gagal menghapus alokasi' },
        { status: 400 }
      );
    }

    return NextResponse.json({
      success: true,
      message: 'Alokasi berhasil dihapus',
    });
  } catch (error) {
    console.error('Error deleting assignment:', error);
    return NextResponse.json(
      { success: false, message: 'Terjadi kesalahan saat menghapus' },
      { status: 500 }
    );
  }
}
