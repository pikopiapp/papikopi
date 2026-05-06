// GET /api/showcase/[showcase_location_id]/inventory-summary
// Get showcase inventory summary

import { NextRequest, NextResponse } from 'next/server';
import {
  getAuthUser,
  errorResponse,
  callRpc,
} from '@/lib/showcase-utils';

export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ showcase_location_id: string }> }
) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    const { showcase_location_id } = await params;

    if (!showcase_location_id) {
      return NextResponse.json(
        errorResponse('showcase_location_id harus diisi'),
        { status: 400 }
      );
    }

    const result = await callRpc(
      'get_showcase_inventory_summary',
      {
        p_showcase_location_id: parseInt(showcase_location_id),
      },
      user.id
    );

    return NextResponse.json(
      {
        success: true,
        data: result[0],
      },
      { status: 200 }
    );
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';

    console.error('Error:', error);
    return NextResponse.json(
      errorResponse(errorMsg || 'Server error saat fetch inventory summary'),
      { status: 500 }
    );
  }
}
