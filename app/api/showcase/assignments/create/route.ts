// POST /api/showcase/assignments/create
// Admin assign produk dari showcase ke outlet

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  requireRole,
  errorResponse,
  validateAssignProductRequest,
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
    const { product_unit_id, outlet_id, notes } = validateAssignProductRequest(body);

    const result = await callRpc(
      'assign_product_to_outlet',
      {
        p_product_unit_id: product_unit_id,
        p_outlet_id: outlet_id,
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
      errorResponse(errorMsg || 'Server error saat assign produk'),
      { status: 500 }
    );
  }
}
