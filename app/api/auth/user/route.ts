import { supabase } from '@/lib/supabase';
import { getRoleFromUser } from '@/lib/admin-access';
import { getSupabaseAdminClient } from '@/lib/supabase-admin';
import type { Database } from '@/lib/supabase';
import { NextRequest, NextResponse } from 'next/server';

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

    if (userData) {
      if (tokenRole && tokenRole !== userData.role && ['admin', 'investor'].includes(tokenRole)) {
        const { error: updateError } = await admin
          .from('users')
          .update({ role: tokenRole })
          .eq('id', user.id);

        if (updateError) {
          console.warn('Failed to sync role from auth metadata:', updateError.message);
        } else {
          userData.role = tokenRole;
        }
      }
      return NextResponse.json(userData);
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

        return NextResponse.json(updateResp.data);
      }

      // If auth metadata marks this user as investor, ensure profile role matches
      if (defaultRole === 'investor') {
        try {
          const setRole = await admin
            .from('users')
            .update({ role: 'investor' })
            .eq('email', user.email)
            .select()
            .maybeSingle();

          if (setRole.error) {
            console.warn('Failed to set investor role on profile:', setRole.error.message);
          } else if (setRole.data) {
            return NextResponse.json(setRole.data);
          }
        } catch (e: any) {
          console.warn('Error setting investor role:', e?.message || e);
        }
      }

      return NextResponse.json(upsertResp.data);
    } catch (e: any) {
      console.error('Unexpected error creating profile:', e?.message || e);
      return NextResponse.json({ error: 'Failed to create profile' }, { status: 500 });
    }
  } catch (error) {
    console.error('API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
