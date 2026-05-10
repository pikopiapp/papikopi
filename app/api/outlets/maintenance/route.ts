import { createClient } from '@supabase/supabase-js';
import { NextRequest, NextResponse } from 'next/server';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  throw new Error('Missing Supabase configuration');
}

const supabase = createClient(supabaseUrl, supabaseKey);

export async function GET(request: NextRequest) {
  try {
    const { searchParams } = new URL(request.url);
    const outletId = searchParams.get('outlet_id');

    if (!outletId) {
      return NextResponse.json(
        { error: 'outlet_id diperlukan' },
        { status: 400 }
      );
    }

    // Check if maintenance table exists, if not return defaults
    const { data, error } = await supabase
      .from('outlet_maintenance')
      .select('*')
      .eq('outlet_id', outletId)
      .limit(1)
      .single();

    // If table doesn't exist or row not found, return defaults
    if (error) {
      return NextResponse.json({
        outlet_id: outletId,
        is_maintenance_mode: false,
        maintenance_start: null,
        maintenance_end: null,
        maintenance_message: 'Sistem sedang dalam pemeliharaan. Kami akan kembali segera.',
        notify_users: true,
      }, { status: 200 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error('Error fetching maintenance settings:', error);
    // Return defaults instead of error to prevent loading failures
    const outletId = new URL(request.url).searchParams.get('outlet_id');
    return NextResponse.json({
      outlet_id: outletId,
      is_maintenance_mode: false,
      maintenance_start: null,
      maintenance_end: null,
      maintenance_message: 'Sistem sedang dalam pemeliharaan. Kami akan kembali segera.',
      notify_users: true,
    }, { status: 200 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, is_maintenance_mode, maintenance_start, maintenance_end, maintenance_message, notify_users } = body;

    if (!outlet_id) {
      return NextResponse.json(
        { error: 'outlet_id diperlukan' },
        { status: 400 }
      );
    }

    // Upsert maintenance settings
    const { data, error } = await supabase
      .from('outlet_maintenance')
      .upsert({
        outlet_id,
        is_maintenance_mode,
        maintenance_start,
        maintenance_end,
        maintenance_message,
        notify_users,
        updated_at: new Date().toISOString(),
      })
      .eq('outlet_id', outlet_id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(data);
  } catch (error) {
    console.error('Error saving maintenance settings:', error);
    return NextResponse.json(
      { error: 'Gagal menyimpan pengaturan pemeliharaan' },
      { status: 500 }
    );
  }
}
