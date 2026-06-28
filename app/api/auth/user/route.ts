import { supabase } from '@/lib/supabase';
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

    // Try to fetch user profile
    const { data: userData, error: userError } = await supabase
      .from('users')
      .select('*')
      .eq('id', user.id)
      .maybeSingle();

    if (userData) {
      return NextResponse.json(userData);
    }

    // If profile doesn't exist, create a default one
    if (userError?.code === 'PGRST116' || !userError) {
      const payload: Database['users']['Insert'][] = [
        {
          id: user.id,
          name: user.user_metadata?.full_name || user.email?.split('@')[0] || 'User',
          email: user.email,
          role: 'barista',
          is_active: true,
        },
      ];

      const { data: newUser, error: createError } = await supabase
        .from('users')
        .insert(payload)
        .select()
        .single();

      if (createError) {
        console.error('Error creating user profile:', createError);
        return NextResponse.json({ error: 'Failed to create profile' }, { status: 500 });
      }

      return NextResponse.json(newUser);
    }

    return NextResponse.json({ error: 'User not found' }, { status: 404 });
  } catch (error) {
    console.error('API error:', error);
    return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
  }
}
