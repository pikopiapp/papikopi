import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/cafes/assign-user
// Body: { user_id: string, cafe_id: string | null }
// Assign/lepas user (kasir/manager) sebagai pengelola cafe
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { user_id, cafe_id } = body as {
      user_id: string;
      cafe_id: string | null;
    };

    if (!user_id) {
      return NextResponse.json({ error: 'user_id required' }, { status: 400 });
    }

    // Validasi: user harus ada
    const { data: user, error: userError } = await supabase
      .from('users')
      .select('id, role')
      .eq('id', user_id)
      .single();

    if (userError || !user) {
      return NextResponse.json({ error: 'User not found' }, { status: 404 });
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

    // Update user: set cafe_id
    const { data, error } = await supabase
      .from('users')
      .update({ cafe_id: cafe_id || null })
      .eq('id', user_id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ success: true, user: data });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Assign user to cafe error:', errorMsg);
    return NextResponse.json({ error: `Failed to assign user to cafe: ${errorMsg}` }, { status: 500 });
  }
}