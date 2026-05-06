// GET /api/showcase/returns/[return_id]
// Get return detail

import { NextRequest, NextResponse } from 'next/server';
import {
  supabase,
  getAuthUser,
  errorResponse,
} from '@/lib/showcase-utils';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ return_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { return_id } = await params;

    if (!return_id) {
      return NextResponse.json(
        errorResponse('return_id harus diisi'),
        { status: 400 }
      );
    }

    const { data, error } = await supabase
      .from('product_returns')
      .select(
        `
        id,
        product_unit_id,
        outlet_id,
        return_reason,
        return_date,
        condition_status,
        condition_notes,
        resolution_status,
        checked_at,
        resolved_at,
        outlets (name),
        product_units (
          product_id,
          batch_id,
          products (name, sku)
        )
      `
      )
      .eq('id', parseInt(return_id))
      .single();

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
      errorResponse(errorMsg || 'Server error saat fetch return detail'),
      { status: 500 }
    );
  }
}
