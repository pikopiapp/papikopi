// POST /api/showcase/returns/seed
// Seed test data if no returns exist

import { NextRequest, NextResponse } from 'next/server';
import { supabase, getAuthUser, errorResponse } from '@/lib/showcase-utils';

export async function POST(request: NextRequest) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    // Check if there are any returns
    const { data: existingReturns, error: checkError } = await supabase
      .from('product_returns')
      .select('id')
      .limit(1);

    if (checkError) {
      console.error('Error checking returns:', checkError);
      return NextResponse.json(
        { success: false, message: 'Error checking database', error: checkError },
        { status: 500 }
      );
    }

    // If returns already exist, return early
    if (existingReturns && existingReturns.length > 0) {
      return NextResponse.json(
        { success: false, message: 'Returns already exist', count: existingReturns.length },
        { status: 200 }
      );
    }

    // Get a sample outlet
    const { data: outlets, error: outletsError } = await supabase
      .from('outlets')
      .select('id, name')
      .limit(1);

    if (outletsError || !outlets || outlets.length === 0) {
      return NextResponse.json(
        { success: false, message: 'No outlets found' },
        { status: 400 }
      );
    }

    const outletId = outlets[0].id;

    // Get products
    const { data: products, error: productsError } = await supabase
      .from('products')
      .select('id, name')
      .limit(5);

    if (productsError || !products || products.length === 0) {
      return NextResponse.json(
        { success: false, message: 'No products found' },
        { status: 400 }
      );
    }

    // Create test returns for today
    const today = new Date().toISOString().split('T')[0];
    const testReturns = [
      {
        product_id: products[0]?.id,
        outlet_id: outletId,
        return_reason: 'Kemasan rusak',
        resolution_status: 'pending',
        return_date: today,
      },
      {
        product_id: products[1]?.id || products[0]?.id,
        outlet_id: outletId,
        return_reason: 'Produk expired',
        resolution_status: 'pending',
        return_date: today,
      },
      {
        product_id: products[2]?.id || products[0]?.id,
        outlet_id: outletId,
        return_reason: 'Rasa tidak sesuai',
        resolution_status: 'pending',
        return_date: today,
      },
    ].filter(ret => ret.product_id); // Filter out undefined entries

    // Insert test returns
    const { data: insertedReturns, error: insertError } = await supabase
      .from('product_returns')
      .insert(testReturns)
      .select();

    if (insertError) {
      console.error('Error inserting test returns:', insertError);
      return NextResponse.json(
        { success: false, message: 'Error inserting test data', error: insertError },
        { status: 500 }
      );
    }

    return NextResponse.json(
      {
        success: true,
        message: 'Test data inserted successfully',
        count: insertedReturns?.length || 0,
        returns: insertedReturns,
      },
      { status: 201 }
    );
  } catch (error) {
    console.error('API error:', error);
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error'),
      { status: 500 }
    );
  }
}
