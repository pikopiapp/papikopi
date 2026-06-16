// GET /api/showcase/returns/pending
// Get pending returns for showcase manager

import { NextRequest, NextResponse } from 'next/server';
import {
  supabase,
  getAuthUser,
  requireRole,
  errorResponse,
} from '@/lib/showcase-utils';

export async function GET(request: NextRequest) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    // Fetch pending returns
    const { data: returns, error: returnsError } = await supabase
      .from('product_returns')
      .select('id,product_id,outlet_id,return_reason,condition_status,resolution_status,return_date')
      .eq('resolution_status', 'pending')
      .order('return_date', { ascending: false });

    if (returnsError) {
      console.error('Supabase error fetching returns:', returnsError);
      throw returnsError;
    }

    // Get all unique product_ids
    const productIds = [...new Set(returns?.map(r => r.product_id).filter(Boolean))];
    
    const productsMap: Record<string, any> = {};
    
    // Fetch products with details
    if (productIds.length > 0) {
      const { data: products, error: productsError } = await supabase
        .from('products')
        .select('id, name')
        .in('id', productIds);
      
      if (productsError) {
        console.error('Error fetching products:', productsError);
      } else if (products) {
        products.forEach((product: any) => {
          productsMap[product.id] = product;
        });
      }
    }

    // Enrich returns with product data
    const enrichedData = returns?.map((ret: any) => ({
      ...ret,
      products: productsMap[ret.product_id] || null,
    }));

    return NextResponse.json(
      {
        success: true,
        data: enrichedData,
      },
      { status: 200 }
    );
  } catch (error) {
    console.error('API error:', error);
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';

    if (errorMsg === 'UNAUTHORIZED') {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    if (errorMsg === 'FORBIDDEN') {
      return NextResponse.json(errorResponse('Forbidden - insufficient permissions'), { status: 403 });
    }

    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch pending returns'),
      { status: 500 }
    );
  }
}
