import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/cafes/update-info
// Body: { cafe_id, name?, address?, description?, logo_url?, cover_url?, theme_primary_color?, theme_accent_color? }
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      cafe_id,
      name,
      address,
      description,
      logo_url,
      cover_url,
      theme_primary_color,
      theme_accent_color,
    } = body;

    if (!cafe_id) {
      return NextResponse.json({ error: 'cafe_id required' }, { status: 400 });
    }

    // Validasi: cafe harus ada
    const { data: cafe, error: cafeError } = await supabase
      .from('cafes')
      .select('id')
      .eq('id', cafe_id)
      .single();

    if (cafeError || !cafe) {
      return NextResponse.json({ error: 'Cafe not found' }, { status: 404 });
    }

    // Build update data
    const updateData: Record<string, string | null> = {};

    if (name !== undefined) updateData.name = name || null;
    if (address !== undefined) updateData.address = address || null;
    if (description !== undefined) updateData.description = description || null;
    if (logo_url !== undefined) updateData.logo_url = logo_url || null;
    if (cover_url !== undefined) updateData.cover_url = cover_url || null;
    if (theme_primary_color !== undefined) updateData.theme_primary_color = theme_primary_color || null;
    if (theme_accent_color !== undefined) updateData.theme_accent_color = theme_accent_color || null;

    const { data, error } = await supabase
      .from('cafes')
      .update(updateData)
      .eq('id', cafe_id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json({ success: true, cafe: data });
  } catch (error) {
    const errorMsg = error instanceof Error ? error.message : 'Unknown error';
    console.error('Update cafe info error:', errorMsg);
    return NextResponse.json({ error: `Failed to update cafe info: ${errorMsg}` }, { status: 500 });
  }
}