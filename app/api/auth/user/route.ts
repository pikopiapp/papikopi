import { supabase } from '@/lib/supabase';
import type { Database } from '@/lib/supabase';
import { NextRequest, NextResponse } from 'next/server';

export async function GET(request: NextRequest) {
  try {
    const { data: { user }, error: authError } = await supabase.auth.admin.getUserById(
      request.headers.get('Authorization')?.replace('Bearer ', '') || ''
    );

    if (authError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }

    // Try to fetch user profile
    const { data: userData, error: userError } = await supabase
      .from('users')
      .select('*')
      .eq('id', user.id)
      .single();

    if (userData) {
      return NextResponse.json(userData);
    }

    // If profile doesn't exist, create a default one
    if (userError?.code === 'PGRST116') {
      const payload: Database['users']['Insert'][] = [
        {
          id: user.id,
          name: user.user_metadata?.full_name || user.email?.split('@')[0] || 'User',
          email: user.email,
          role: 'barista', // Default role
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
