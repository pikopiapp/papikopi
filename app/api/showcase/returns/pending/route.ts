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
    await requireRole(user, ['admin', 'showcase_manager']);

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
        outlets (name),
        product_units (
          product_id,
          batch_id,
          products (name)
        )
      `
      )
      .eq('resolution_status', 'pending')
      .order('return_date', { ascending: false });

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

    if (errorMsg === 'UNAUTHORIZED') {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    if (errorMsg === 'FORBIDDEN') {
      return NextResponse.json(errorResponse('Forbidden - insufficient permissions'), { status: 403 });
    }

    console.error('Error:', error);
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch pending returns'),
      { status: 500 }
    );
  }
}
