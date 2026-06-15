import { NextRequest, NextResponse } from 'next/server';
import { supabase } from '@/lib/supabase';

export async function GET() {
  try {
    const { data, error } = await supabase
      .from('custom_holidays')
      .select('id, date, description, is_national')
      .order('date', { ascending: true });

    if (error) throw error;
    return NextResponse.json({ success: true, data });
  } catch (err) {
    console.error('Get custom holidays error:', err);
    // If any error occurs (connectivity, timeout, or missing table), return
    // an empty list so the frontend can operate in offline/local-only mode.
    // This prevents a 500 from blocking the UI when Supabase is unreachable.
    return NextResponse.json({ success: true, data: [] });
  }
}

export async function POST(request: NextRequest) {
  try {
    const body = await request.json();
    const { date, description } = body;
    if (!date) return NextResponse.json({ success: false, error: 'Missing date' }, { status: 400 });

    // Preserve the `is_national` flag if the row already exists.
    const { data: existing, error: selectErr } = await supabase
      .from('custom_holidays')
      .select('id, date, description, is_national')
      .eq('date', date)
      .maybeSingle();

    if (selectErr) throw selectErr;

    if (existing && existing.id) {
      // Update only the description to avoid changing is_national unintentionally
      const { data, error } = await supabase
        .from('custom_holidays')
        .update({ description: description || null })
        .eq('date', date)
        .select('id, date, description, is_national')
        .single();
      if (error) throw error;
      return NextResponse.json({ success: true, data });
    }

    // Insert a new custom holiday (is_national defaults to false)
    const { data, error } = await supabase
      .from('custom_holidays')
      .insert([{ date, description: description || null }])
      .select('id, date, description, is_national')
      .single();

    if (error) throw error;
    return NextResponse.json({ success: true, data });
  } catch (err) {
    console.error('Create custom holiday error:', err);
    // If the table is missing, provide a helpful message so the developer can create the table.
    // @ts-expect-error PGRST205: PostgREST error code when table missing
    if (err && err.code === 'PGRST205') {
      return NextResponse.json({ success: false, error: "Database table 'custom_holidays' not found. Run the migration to create it." }, { status: 500 });
    }
    return NextResponse.json({ success: false, error: 'Failed to create custom holiday' }, { status: 500 });
  }
}
