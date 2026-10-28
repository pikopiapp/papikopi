import { createClient } from '@supabase/supabase-js';
import { getSupabaseAdminClient } from '@/lib/supabase-admin';
import { DEFAULT_USER_PASSWORD } from '@/lib/auth-defaults';
import { normalizeAppRole } from '@/lib/admin-access';
import { findAuthUserByEmail } from '@/lib/auth-admin';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(request: Request) {
  try {
    // Get role from query params
    const { searchParams } = new URL(request.url);
    const role = searchParams.get('role');

    let query = supabase
      .from('users')
      .select('*')
      .order('created_at', { ascending: false });

    // Filter by role if provided
    if (role) {
      query = query.eq('role', role);
    }

    const { data, error } = await query;

    if (error) {
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json(data);
  } catch (error) {
    console.error('Error fetching users:', error);
    return Response.json(
      { error: 'Failed to fetch users' },
      { status: 500 }
    );
  }
}

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const name = typeof body.name === 'string' ? body.name.trim() : '';
    const email = typeof body.email === 'string' ? body.email.trim().toLowerCase() : '';
    const phone = typeof body.phone === 'string' ? String(body.phone).trim() : '';
    const role = normalizeAppRole(body.role);

    if (!name || !email || !role) {
      return Response.json(
        { error: 'Nama, email, dan role harus diisi' },
        { status: 400 }
      );
    }

    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
      return Response.json(
        { error: 'Format email tidak valid' },
        { status: 400 }
      );
    }

    const admin = getSupabaseAdminClient();

    const { data: existingProfile, error: profileLookupError } = await admin
      .from('users')
      .select('id, email')
      .ilike('email', email)
      .maybeSingle();

    if (profileLookupError) {
      throw profileLookupError;
    }

    if (existingProfile) {
      return Response.json(
        { error: 'Email sudah terdaftar sebagai user' },
        { status: 409 }
      );
    }

    // Remember whether we created the auth account: only a self-created login is
    // rolled back when the profile insert fails, an existing one is left untouched.
    let authUserId: string;
    let authCreated = false;

    const existingAuthUser = await findAuthUserByEmail(admin, email);

    if (existingAuthUser) {
      authUserId = existingAuthUser.id;
      const { error: metadataError } = await admin.auth.admin.updateUserById(authUserId, {
        app_metadata: { ...(existingAuthUser.app_metadata || {}), role },
      });
      if (metadataError) {
        console.warn('Failed to sync app_metadata.role:', metadataError.message);
      }
    } else {
      const { data: createdUser, error: createError } = await admin.auth.admin.createUser({
        email,
        password: DEFAULT_USER_PASSWORD,
        email_confirm: true,
        user_metadata: { name },
        app_metadata: { role },
      });

      if (createError || !createdUser?.user) {
        return Response.json(
          { error: createError?.message || 'Gagal membuat akun login' },
          { status: 400 }
        );
      }

      authUserId = createdUser.user.id;
      authCreated = true;
    }

    // Same id for login and profile so role lookups resolve on the first hop.
    const { data: profile, error: insertError } = await admin
      .from('users')
      .insert([
        {
          id: authUserId,
          name,
          email,
          phone: phone || null,
          role,
          is_active: true,
        },
      ])
      .select()
      .single();

    if (insertError) {
      if (authCreated) {
        const { error: rollbackError } = await admin.auth.admin.deleteUser(authUserId);
        if (rollbackError) {
          console.error('Failed to roll back auth user after profile insert failure:', rollbackError.message);
        }
      }

      return Response.json(
        { error: insertError.message },
        { status: 400 }
      );
    }

    return Response.json({ ...profile, auth_created: authCreated }, { status: 201 });
  } catch (error) {
    console.error('Error creating user:', error);
    return Response.json(
      { error: 'Failed to create user' },
      { status: 500 }
    );
  }
}
