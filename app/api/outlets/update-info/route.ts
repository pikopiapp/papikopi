import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

// POST /api/outlets/update-info
// Body: { outlet_id, name?, description?, logo_url?, cover_url?, theme_primary_color?, theme_accent_color? }
export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const {
      outlet_id,
      name,
      description,
      logo_url,
      cover_url,
      theme_primary_color,
      theme_accent_color,
    } = body;

    if (!outlet_id) {
      return NextResponse.json({ error: 'outlet_id required' }, { status: 400 });
    }

    const { data: outlet, error: outletError } = await supabase
      .from('outlets')
      .select('id')
      .eq('id', outlet_id)
      .single();

    if (outletError || !outlet) {
      return NextResponse.json({ error: 'Outlet not found' }, { status: 404 });
    }

    const updateData: Record<string, string | null> = {};

    if (name !== undefined) updateData.name = name || null;
    if (description !== undefined) updateData.description = description || null;
    if (logo_url !== undefined) updateData.logo_url = logo_url || null;
    if (cover_url !== undefined) updateData.cover_url = cover_url || null;
    if (theme_primary_color !== undefined) updateData.theme_primary_color = theme_primary_color || null;
    if (theme_accent_color !== undefined) updateData.theme_accent_color = theme_accent_color || null;

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
    console.error('Update outlet info error:', errorMsg);
    return NextResponse.json({ error: `Failed to update outlet info: ${errorMsg}` }, { status: 500 });
  }
}