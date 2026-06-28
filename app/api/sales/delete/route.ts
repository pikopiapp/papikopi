import { NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';

const SUPA_URL = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
const SUPA_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPA_URL || !SUPA_SERVICE_KEY) {
  throw new Error('Missing SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY env');
}

const svc = createClient(SUPA_URL, SUPA_SERVICE_KEY, { auth: { persistSession: false } });

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { sale_id } = body;
    if (!sale_id) return NextResponse.json({ error: 'sale_id required' }, { status: 400 });

    // delete sale_items first, then sale
    await svc.from('sale_items').delete().eq('sale_id', sale_id);
    await svc.from('sales').delete().eq('id', sale_id);

    return NextResponse.json({ ok: true });
  } catch (err: any) {
    console.error('sales/delete error:', err);
    return NextResponse.json({ error: err?.message || String(err) }, { status: 500 });
  }
}
