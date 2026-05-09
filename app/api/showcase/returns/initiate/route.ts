// POST /api/showcase/returns/initiate
// Outlet return produk ke showcase (first step)

import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import {
  getAuthUser,
  requireRole,
  errorResponse,
} from '@/lib/showcase-utils';

// Use anon key (will need permissive RLS policies)
const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL || '',
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || ''
);

interface InitiateReturnRequest {
  showcase_product_id?: string; // UUID of showcase_product
  outlet_id: string; // UUID
  return_reason: string;
}

function validateInitiateReturnRequest(body: any): InitiateReturnRequest {
  const { showcase_product_id, outlet_id, return_reason } = body;

  if (!showcase_product_id && !outlet_id) {
    throw new Error('showcase_product_id atau outlet_id harus diisi');
  }

  if (!return_reason || typeof return_reason !== 'string' || return_reason.trim() === '') {
    throw new Error('return_reason harus berupa string yang tidak kosong');
  }

  return { showcase_product_id, outlet_id, return_reason };
}

export async function POST(request: NextRequest) {
  try {
    const user = await getAuthUser(request);
    if (!user) {
      return NextResponse.json(errorResponse('Unauthorized'), { status: 401 });
    }

    // Check if admin from users table
    const { data: userData } = await supabase
      .from('users')
      .select('role')
      .eq('id', user.id)
      .single();

    if (!userData || userData.role !== 'admin') {
      return NextResponse.json(errorResponse('Forbidden - only admin can initiate returns'), { status: 403 });
    }

    const body = await request.json();
    const { showcase_product_id, outlet_id, return_reason } = validateInitiateReturnRequest(body);

    if (!showcase_product_id) {
      return NextResponse.json(
        errorResponse('showcase_product_id diperlukan'),
        { status: 400 }
      );
    }

    // Create return record in product_returns table via RPC (bypass RLS)
    // Use anonymous request to product_returns (RLS disabled for development)
    try {
      const response = await fetch(
        `${process.env.NEXT_PUBLIC_SUPABASE_URL}/rest/v1/product_returns`,
        {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'apikey': process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
            'Prefer': 'return=representation',
          },
          body: JSON.stringify({
            product_unit_id: 0, // TODO: Map showcase_product_id to actual product_unit_id
            outlet_id: outlet_id,
            return_reason: return_reason,
            condition_status: 'pending',
          }),
        }
      );

      if (!response.ok) {
        const error = await response.json();
        return NextResponse.json(
          errorResponse(`Failed to create return: ${error.message || response.statusText}`),
          { status: 500 }
        );
      }

      const data = await response.json();
      const returnRecord = Array.isArray(data) ? data[0] : data;

      return NextResponse.json(
        {
          success: true,
          message: 'Return berhasil di-initiate, awaiting condition check',
          return_id: returnRecord.id,
        },
        { status: 200 }
      );
    } catch (fetchError) {
      const errorMsg = fetchError instanceof Error ? fetchError.message : 'Unknown error';
      return NextResponse.json(
        errorResponse(`Failed to create return: ${errorMsg}`),
        { status: 500 }
      );
    }
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


