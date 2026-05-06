// POST /api/showcase/returns/initiate
// Outlet return produk ke showcase (first step)

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  requireRole,
  errorResponse,
  validateInitiateReturnRequest,
  callRpc,
} from '@/lib/showcase-utils';

export async function POST(request: NextRequest) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    await requireRole(user, ['outlet_manager', 'admin']);

    const body = await request.json();
    const { product_unit_id, outlet_id, return_reason } =
      validateInitiateReturnRequest(body);

    const result = await callRpc(
      'initiate_product_return',
      {
        p_product_unit_id: product_unit_id,
        p_outlet_id: outlet_id,
        p_return_reason: return_reason,
        p_initiated_by: user.id,
      },
      user.id
    );

    const response = result[0];
    return NextResponse.json(
      {
        success: response.success,
        message: response.message,
        return_id: response.return_id,
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
      errorResponse(errorMsg || 'Server error saat initiate return'),
      { status: 500 }
    );
  }
}
