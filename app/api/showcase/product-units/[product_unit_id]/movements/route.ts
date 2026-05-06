// GET /api/showcase/product-units/[product_unit_id]/movements
// Get product movement history

import { NextRequest, NextResponse } from 'next/server';
import {
  supabase,
  getAuthUser,
  errorResponse,
} from '@/lib/showcase-utils';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ product_unit_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { product_unit_id } = await params;

    if (!product_unit_id) {
      return NextResponse.json(
        errorResponse('product_unit_id harus diisi'),
        { status: 400 }
      );
    }

    const { data, error } = await supabase
      .from('product_unit_movements')
      .select(
        `
        id,
        from_location_type,
        from_location_id,
        to_location_type,
        to_location_id,
        moved_date,
        notes,
        moved_by
      `
      )
      .eq('product_unit_id', parseInt(product_unit_id))
      .order('moved_date', { ascending: false });

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
      errorResponse(errorMsg || 'Server error saat fetch movement history'),
      { status: 500 }
    );
  }
}
