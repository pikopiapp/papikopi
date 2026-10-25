import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// GET /api/cafes — daftar semua cafe
// GET /api/cafes?id=[id] — detail cafe
export async function GET(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (id) {
      const { data, error } = await supabase
        .from('cafes')
        .select('*, outlets(*), users(id, name, email, role)')
        .eq('id', id)
        .single();

      if (error) throw error;
      return NextResponse.json(data);
    }

    const { data, error } = await supabase
      .from('cafes')
      .select('*, outlets(id, name, type)')
      .order('created_at', { ascending: false });

    if (error) throw error;
    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Get cafes error:', error);
    return NextResponse.json({ error: 'Failed to fetch cafes' }, { status: 500 });
  }
}

// POST /api/cafes — buat cafe baru
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { name, address } = body;

    if (!name) {
      return NextResponse.json({ error: 'name required' }, { status: 400 });
    }

    const { data, error } = await supabase
      .from('cafes')
      .insert([{ name, address: address || null }])
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Create cafe error:', errorMsg);
    return NextResponse.json({ error: `Failed to create cafe: ${errorMsg}` }, { status: 500 });
  }
}

// PUT /api/cafes — update cafe
export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, address } = body;

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const updateData: Record<string, string | null> = {};
    if (name) updateData.name = name;
    if (address !== undefined) updateData.address = address || null;

    const { data, error } = await supabase
      .from('cafes')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(data);
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Update cafe error:', errorMsg);
    return NextResponse.json({ error: `Failed to update cafe: ${errorMsg}` }, { status: 500 });
  }
}

// DELETE /api/cafes?id=[id] — hapus cafe
export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    // Reset cafe_id di outlets yang menjadi tenant cafe ini
    const { error: resetError } = await supabase
      .from('outlets')
      .update({ cafe_id: null })
      .eq('cafe_id', id);

    if (resetError) throw resetError;

    const { error } = await supabase
      .from('cafes')
      .delete()
      .eq('id', id);

    if (error) throw error;

    return NextResponse.json({ success: true });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Delete cafe error:', errorMsg);
    return NextResponse.json({ error: `Failed to delete cafe: ${errorMsg}` }, { status: 500 });
  }
}