// GET /api/showcase/[showcase_location_id]/available-products
// List available products in showcase

import { NextRequest, NextResponse } from 'next/server';
import {
  supabase,
  getAuthUser,
  errorResponse,
} from '@/lib/showcase-utils';

interface RouteContext {
  params: {
    showcase_location_id: string;
  };
}

export async function GET(request: NextRequest, { params }: RouteContext) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { showcase_location_id } = params;
    const { searchParams } = new URL(request.url);
    const product_id = searchParams.get('product_id');

    if (!showcase_location_id) {
      return NextResponse.json(
        errorResponse('showcase_location_id harus diisi'),
        { status: 400 }
      );
    }

    let query = supabase
      .from('product_units')
      .select(
        `
        id,
        product_id,
        batch_id,
        status,
        created_at,
        products (id, name, sku),
        product_batches (batch_number)
      `
      )
      .eq('current_showcase_location_id', parseInt(showcase_location_id))
      .eq('status', 'in_showcase');

    if (product_id) {
      query = query.eq('product_id', parseInt(product_id));
    }

    const { data, error } = await query.order('created_at', {
      ascending: true,
    });

    if (error) {
      throw error;
    }

    return NextResponse.json(
      {
        success: true,
        data: data,
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';

    console.error('Error:', error);
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch available products'),
      { status: 500 }
    );
  }
}
