// POST /api/showcase/returns/[return_id]/resolve
// Showcase manager check condition dan resolve return

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  requireRole,
  errorResponse,
  validateCheckReturnRequest,
  callRpc,
} from '@/lib/showcase-utils';

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ return_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    await requireRole(user, ['admin', 'showcase_manager']);

    const { return_id } = await params;
    const body = await request.json();

    if (!return_id) {
      return NextResponse.json(
        errorResponse('return_id harus diisi'),
        { status: 400 }
      );
    }

    const { condition_status, condition_notes, resolution_action } =
      validateCheckReturnRequest(body);

    const result = await callRpc(
      'check_and_resolve_return',
      {
        p_return_id: parseInt(return_id),
        p_condition_status: condition_status,
        p_condition_notes: condition_notes || null,
        p_checked_by: user.id,
        p_resolution_action: resolution_action,
      },
      user.id
    );

    const response = result[0];
    return NextResponse.json(
      {
        success: response.success,
        message: response.message,
        updated_unit_status: response.updated_unit_status,
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
      errorResponse(errorMsg || 'Server error saat resolve return'),
      { status: 500 }
    );
  }
}
