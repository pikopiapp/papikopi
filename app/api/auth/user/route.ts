import { supabase } from '@/lib/supabase';
import { getRoleFromUser, normalizeAppRole } from '@/lib/admin-access';
import { getSupabaseAdminClient } from '@/lib/supabase-admin';
import type { Database } from '@/lib/supabase';
import { NextRequest, NextResponse } from 'next/server';

// Stored roles can be junk ("authenticated" from an old sync); the client only
// understands the four app roles, so anything else is reported as no role.
function normalizeProfileRole<T extends { role?: string | null }>(profile: T | null) {
  if (!profile) return profile;
  return { ...profile, role: normalizeAppRole(profile.role) };
}

export async function GET(request: NextRequest) {
  try {
    const authHeader = request.headers.get('Authorization') || '';
    const token = authHeader.replace('Bearer ', '').trim();

    if (!token) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const { data: authData, error: authError } = await supabase.auth.getUser(token);

    if (authError || !authData.user) {
      console.error('Auth user verification failed:', authError?.message || 'No user');
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    const user = authData.user;
    const tokenRole = getRoleFromUser(user) || 'barista';

    // Use admin client for profile reads/creates to avoid RLS restrictions
    const admin = getSupabaseAdminClient();

    // Try to fetch user profile
    const { data: userData, error: userError } = await admin
      .from('users')
      .select('*')
      .eq('id', user.id)
      .maybeSingle();

    if (userError) {
      console.error('Failed to fetch user profile by auth ID:', userError.message);
      return NextResponse.json({ error: 'Failed to fetch user profile' }, { status: 500 });
    }

    if (userData) {
      return NextResponse.json(normalizeProfileRole(userData));
    }

    if (user.email) {
      const { data: emailProfile, error: emailProfileError } = await admin
        .from('users')
        .select('*')
        .ilike('email', user.email)
        .maybeSingle();

      if (emailProfileError) {
        console.error('Failed to fetch user profile by email:', emailProfileError.message);
        return NextResponse.json({ error: 'Failed to fetch user profile' }, { status: 500 });
      }

      if (emailProfile) {
        return NextResponse.json(normalizeProfileRole(emailProfile));
      }
    }

    // If profile doesn't exist, try to upsert by email (avoid duplicate key)
    const defaultName = (user.user_metadata?.full_name as string) || user.email?.split('@')[0] || 'User';
    const defaultRole = tokenRole;
    try {
      const upsertResp = await admin
        .from('users')
        .upsert({ id: user.id, email: user.email, name: defaultName, role: defaultRole, is_active: true }, { onConflict: 'email' })
        .select()
        .maybeSingle();

      if (upsertResp.error) {
        // fallback: try update by email and preserve the metadata-derived role
        const updateResp = await admin
          .from('users')
          .update({ name: defaultName, role: defaultRole, is_active: true })
          .eq('email', user.email)
          .select()
          .maybeSingle();

        if (updateResp.error) {
          console.error('Error creating/updating user profile:', updateResp.error);
          return NextResponse.json({ error: 'Failed to create profile' }, { status: 500 });
        }

        return NextResponse.json(normalizeProfileRole(updateResp.data));
      }

      return NextResponse.json(normalizeProfileRole(upsertResp.data));
    } catch (e: any) {
      console.error('Unexpected error creating profile:', e?.message || e);
      return NextResponse.json({ error: 'Failed to create profile' }, { status: 500 });
    }
  } catch (error) {
    console.error('API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
