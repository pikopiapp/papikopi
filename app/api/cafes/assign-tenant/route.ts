import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/cafes/assign-tenant
// Body: { outlet_id: string, cafe_id: string | null, bonus_percentage?: number | null }
// Assign/lepas outlet sebagai tenant cafe, dan set bonus_percentage
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, cafe_id, bonus_percentage } = body as {
      outlet_id: string;
      cafe_id: string | null;
      bonus_percentage?: number | null;
    };

    if (!outlet_id) {
      return NextResponse.json({ error: 'outlet_id required' }, { status: 400 });
    }

    // Validasi: jika cafe_id diberikan, pastikan cafe ada
    if (cafe_id) {
      const { data: cafe, error: cafeError } = await supabase
        .from('cafes')
        .select('id')
        .eq('id', cafe_id)
        .single();

      if (cafeError || !cafe) {
        return NextResponse.json({ error: 'Cafe not found' }, { status: 404 });
      }
    }

    // Validasi: outlet harus ada
    const { data: outlet, error: outletError } = await supabase
      .from('outlets')
      .select('id')
      .eq('id', outlet_id)
      .single();

    if (outletError || !outlet) {
      return NextResponse.json({ error: 'Outlet not found' }, { status: 404 });
    }

    // Update outlet: set cafe_id dan bonus_percentage
    const updateData: Record<string, string | number | null> = {
      cafe_id: cafe_id || null,
    };

    if (bonus_percentage !== undefined) {
      updateData.bonus_percentage = bonus_percentage;
    }

    const { data, error } = await supabase
      .from('outlets')
      .update(updateData)
      .eq('id', outlet_id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ success: true, outlet: data });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Assign tenant error:', errorMsg);
    return NextResponse.json({ error: `Failed to assign tenant: ${errorMsg}` }, { status: 500 });
  }
}