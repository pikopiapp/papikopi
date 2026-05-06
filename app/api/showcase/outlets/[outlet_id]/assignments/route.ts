// GET /api/showcase/[outlet_id]/assignments
// Get outlet assignment status

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  errorResponse,
  callRpc,
} from '@/lib/showcase-utils';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ outlet_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { outlet_id } = await params;

    if (!outlet_id) {
      return NextResponse.json(
        errorResponse('outlet_id harus diisi'),
        { status: 400 }
      );
    }

    const result = await callRpc(
      'get_outlet_assignment_status',
      {
        p_outlet_id: parseInt(outlet_id),
      },
      user.id
    );

    return NextResponse.json(
      {
        success: true,
        data: result,
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';

    console.error('Error:', error);
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch assignment status'),
      { status: 500 }
    );
  }
}
