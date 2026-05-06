// POST /api/showcase/assignments/reassign
// Reassign produk yang sudah di-return ke outlet berbeda

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  requireRole,
  errorResponse,
  validateReassignProductRequest,
  callRpc,
} from '@/lib/showcase-utils';

export async function POST(request: NextRequest) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    await requireRole(user, ['admin', 'showcase_manager']);

    const body = await request.json();
    const { product_unit_id, old_outlet_id, new_outlet_id, notes } =
      validateReassignProductRequest(body);

    const result = await callRpc(
      'reassign_product_to_outlet',
      {
        p_product_unit_id: product_unit_id,
        p_old_outlet_id: old_outlet_id,
        p_new_outlet_id: new_outlet_id,
        p_assigned_by: user.id,
        p_notes: notes || null,
      },
      user.id
    );

    const response = result[0];
    return NextResponse.json(
      {
        success: response.success,
        message: response.message,
        assignment_id: response.assignment_id,
      },
      { status: response.success ? 200 : 400 }
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
      errorResponse(errorMsg || 'Server error saat reassign produk'),
      { status: 500 }
    );
  }
}
