import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
);

export async function GET(request: NextRequest) {
  try {
    const outlet_id = request.nextUrl.searchParams.get('outlet_id');

    // If outlet_id is provided, get single outlet
    if (outlet_id) {
      const { data, error } = await supabase
        .from('outlets')
        .select('*')
        .eq('id', outlet_id)
        .single();

      if (error) throw error;
      return NextResponse.json(data);
    }

    // Otherwise, get all outlets
    const { data, error } = await supabase
      .from('outlets')
      .select('*')
      .order('created_at', { ascending: false });

    if (error) throw error;

    return NextResponse.json(data || []);
  } catch (error) {
    console.error('Outlet error:', error);
    return NextResponse.json({ error: 'Failed to fetch outlet' }, { status: 500 });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { name, type, address } = body;

    if (!name || !type) {
      return NextResponse.json({ error: 'name and type required' }, { status: 400 });
    }

    const { data, error } = await supabase
      .from('outlets')
      .insert([{ name, type, address: address || null }])
      .select()
      .single();

    if (error) {
      console.error('Create outlet error details:', error);
      throw error;
    }

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Create outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to create outlet: ${errorMsg}` }, { status: 500 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { id, name, type, address } = body;

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const updateData: Record<string, string | null> = {};
    if (name) updateData.name = name;
    if (type) updateData.type = type;
    if (address !== undefined) updateData.address = address || null;

    const { data, error } = await supabase
      .from('outlets')
      .update(updateData)
      .eq('id', id)
      .select()
      .single();

    if (error) {
      console.error('Update outlet error details:', error);
      throw error;
    }

    return NextResponse.json(data);
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Update outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to update outlet: ${errorMsg}` }, { status: 500 });
  }
}

export async function DELETE(request: NextRequest) {
  try {
    const id = request.nextUrl.searchParams.get('id');

    if (!id) {
      return NextResponse.json({ error: 'id required' }, { status: 400 });
    }

    const { error } = await supabase
      .from('outlets')
      .delete()
      .eq('id', id);

    if (error) {
      console.error('Delete outlet error details:', error);
      throw error;
    }

    return NextResponse.json({ success: true });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Delete outlet error:', errorMsg);
    return NextResponse.json({ error: `Failed to delete outlet: ${errorMsg}` }, { status: 500 });
  }
}
