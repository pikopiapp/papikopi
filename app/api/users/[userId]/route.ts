import { createClient } from '@supabase/supabase-js';
import { getSupabaseAdminClient } from '@/lib/supabase-admin';
import { findAuthUserByEmail } from '@/lib/auth-admin';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET(
  request: Request,
  { params }: { params: Promise<{ userId: string }> }
) {
  try {
    const { userId } = await params;

    // Get single user by ID
    const { data, error } = await supabase
      .from('users')
      .select('*')
      .eq('id', userId)
      .single();

    if (error) {
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json(data);
  } catch (error) {
    console.error('Error fetching user:', error);
    return Response.json(
      { error: 'Failed to fetch user' },
      { status: 500 }
    );
  }
}

export async function PUT(
  request: Request,
  { params }: { params: Promise<{ userId: string }> }
) {
  try {
    const { userId } = await params;
    const body = await request.json();

    const { name, email, phone, role } = body;

    // Update user
    const { data, error } = await supabase
      .from('users')
      .update({
        name,
        email,
        phone: phone || null,
        role
      })
      .eq('id', userId)
      .select()
      .single();

    if (error) {
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    return Response.json(data);
  } catch (error) {
    console.error('Error updating user:', error);
    return Response.json(
      { error: 'Failed to update user' },
      { status: 500 }
    );
  }
}

export async function DELETE(
  request: Request,
  { params }: { params: Promise<{ userId: string }> }
) {
  try {
    const { userId } = await params;
    const admin = getSupabaseAdminClient();

    const { data: profile, error: lookupError } = await admin
      .from('users')
      .select('id, email')
      .eq('id', userId)
      .maybeSingle();

    if (lookupError) {
      return Response.json(
        { error: lookupError.message },
        { status: 400 }
      );
    }

    if (!profile) {
      return Response.json(
        { error: 'User tidak ditemukan' },
        { status: 404 }
      );
    }

    const { error } = await admin
      .from('users')
      .delete()
      .eq('id', userId);

    if (error) {
      return Response.json(
        { error: error.message },
        { status: 400 }
      );
    }

    // Without this the login keeps working and the profile is recreated on the next request.
    let authDeleted = false;
    if (profile.email) {
      try {
        const authUser = await findAuthUserByEmail(admin, profile.email);
        if (authUser) {
          const { error: authDeleteError } = await admin.auth.admin.deleteUser(authUser.id);
          if (authDeleteError) {
            console.error('Failed to delete auth user for removed profile:', authDeleteError.message);
          } else {
            authDeleted = true;
          }
        }
      } catch (authError) {
        console.error('Failed to look up auth user for removed profile:', authError);
      }
    }

    return Response.json({ message: 'User deleted successfully', auth_deleted: authDeleted });
  } catch (error) {
    console.error('Error deleting user:', error);
    return Response.json(
      { error: 'Failed to delete user' },
      { status: 500 }
    );
  }
}
