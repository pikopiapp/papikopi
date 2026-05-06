// POST /api/showcase/assignments/[assignment_id]/mark-received
// Outlet manager mark produk sudah diterima

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  requireRole,
  errorResponse,
  callRpc,
} from '@/lib/showcase-utils';

export async function POST(
  request: NextRequest,
  { params }: { params: Promise<{ assignment_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }
    await requireRole(user, ['outlet_manager', 'admin']);

    const { assignment_id } = await params;
    const body = await request.json();

    if (!assignment_id) {
      return NextResponse.json(
        errorResponse('assignment_id harus diisi'),
        { status: 400 }
      );
    }

    const result = await callRpc(
      'mark_product_received_at_outlet',
      {
        p_assignment_id: parseInt(assignment_id),
        p_received_by: user.id,
        p_notes: body.notes || null,
      },
      user.id
    );

    const response = result[0];
    return NextResponse.json(
      {
        success: response.success,
        message: response.message,
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
      errorResponse(errorMsg || 'Server error saat mark received'),
      { status: 500 }
    );
  }
}
