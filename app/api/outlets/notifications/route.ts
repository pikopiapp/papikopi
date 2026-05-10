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

    // Try to fetch notification settings - optimized
    const { data, error } = await supabase
      .from('outlet_notifications')
      .select('*')
      .eq('outlet_id', outletId)
      .limit(1)
      .single();

    // If table doesn't exist or row not found, return defaults
    if (error) {
      return NextResponse.json({
        outlet_id: outletId,
        email_notifications: true,
        sms_notifications: false,
        push_notifications: true,
        email_address: '',
        phone_number: '',
        alert_sales_anomaly: true,
        alert_low_stock: true,
        alert_system_errors: true,
        alert_user_activity: false,
        quiet_hours_enabled: false,
        quiet_hours_start: '22:00',
        quiet_hours_end: '08:00',
      }, { status: 200 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error('Error fetching notification settings:', error);
    // Return defaults instead of error to prevent loading failures
    const outletId = new URL(request.url).searchParams.get('outlet_id');
    return NextResponse.json({
      outlet_id: outletId,
      email_notifications: true,
      sms_notifications: false,
      push_notifications: true,
      email_address: '',
      phone_number: '',
      alert_sales_anomaly: true,
      alert_low_stock: true,
      alert_system_errors: true,
      alert_user_activity: false,
      quiet_hours_enabled: false,
      quiet_hours_start: '22:00',
      quiet_hours_end: '08:00',
    }, { status: 200 });
  }
}

export async function PUT(request: NextRequest) {
  try {
    const body = await request.json();
    const { outlet_id, ...settings } = body;

    if (!outlet_id) {
      return NextResponse.json(
        { error: 'outlet_id diperlukan' },
        { status: 400 }
      );
    }

    // Upsert notification settings
    const { data, error } = await supabase
      .from('outlet_notifications')
      .upsert({
        outlet_id,
        ...settings,
        updated_at: new Date().toISOString(),
      })
      .eq('outlet_id', outlet_id)
      .select()
      .single();

    if (error) throw error;

    return NextResponse.json(data);
  } catch (error) {
    console.error('Error saving notification settings:', error);
    return NextResponse.json(
      { error: 'Gagal menyimpan pengaturan notifikasi' },
      { status: 500 }
    );
  }
}
