import { supabase } from '@/lib/supabase';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(req: NextRequest) {
  try {
    const authHeader = req.headers.get('Authorization') || '';
    const token = authHeader.replace('Bearer ', '').trim() || req.cookies.get('sb-access-token')?.value || '';

    if (!token) {
      return NextResponse.json({ error: 'no-token' }, { status: 401 });
    }

    const { data: authData, error: authError } = await supabase.auth.getUser(token);
    if (authError) {
      return NextResponse.json({ error: 'invalid-token', detail: authError.message }, { status: 401 });
    }

    const user = authData.user;
    const { data: profile, error: profileError } = await supabase.from('users').select('*').eq('id', user.id).maybeSingle();

    return NextResponse.json({ user, profile, profileError: profileError?.message || null });
  } catch (e: any) {
    return NextResponse.json({ error: e?.message || String(e) }, { status: 500 });
  }
}
