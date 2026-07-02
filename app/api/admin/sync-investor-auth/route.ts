import { NextResponse } from 'next/server';
import { getSupabaseAdminClient } from '@/lib/supabase-admin';

const DEFAULT_PASSWORD = 'PapiKopiOutlet!234';

export async function POST() {
  try {
    const adminSupabase = getSupabaseAdminClient();

    const { data: users, error: usersError } = await adminSupabase
      .from('users')
      .select('id, email, name, role, is_active')
      .eq('role', 'investor')
      .eq('is_active', true)
      .order('name', { ascending: true });

    if (usersError) {
      throw usersError;
    }

    const results: Array<{ email: string; status: string; authId?: string; message?: string }> = [];

    for (const user of users || []) {
      if (!user.email) {
        results.push({ email: '(no email)', status: 'skipped', message: 'No email found' });
        continue;
      }

      const { data: existingAuthUsers, error: listError } = await adminSupabase.auth.admin.listUsers();

      if (listError) {
        throw listError;
      }

      const existingAuthUser = existingAuthUsers.users.find((authUser) => authUser.email === user.email);

      if (existingAuthUser) {
        results.push({ email: user.email, status: 'exists', authId: existingAuthUser.id });
        continue;
      }

      const { data: createdUser, error: createError } = await adminSupabase.auth.admin.createUser({
        email: user.email,
        password: DEFAULT_PASSWORD,
        email_confirm: true,
        user_metadata: {
          name: user.name || user.email,
          role: 'investor',
        },
      });

      if (createError || !createdUser.user) {
        results.push({ email: user.email, status: 'failed', message: createError?.message || 'Unknown error' });
        continue;
      }

      // Upsert the user profile by email to avoid unique constraint failures
      // when an existing profile uses the same email but a different id.
      let profileError = null;
      try {
        const upsertResp = await adminSupabase
          .from('users')
          .upsert({
            id: createdUser.user.id,
            email: user.email,
            name: user.name || user.email,
            role: 'investor',
            is_active: true,
          }, { onConflict: 'email' })
          .select()
          .single();

        profileError = upsertResp.error || null;
      } catch (e: any) {
        profileError = e;
      }

      if (profileError) {
        // If upsert by email fails, attempt a safer update by email.
        try {
          const updateResp = await adminSupabase
            .from('users')
            .update({
              name: user.name || user.email,
              role: 'investor',
              is_active: true,
            })
            .eq('email', user.email)
            .select()
            .single();

          if (updateResp.error) {
            results.push({ email: user.email, status: 'auth-created-profile-sync-failed', authId: createdUser.user.id, message: updateResp.error.message });
            continue;
          }
        } catch (e: any) {
          results.push({ email: user.email, status: 'auth-created-profile-sync-failed', authId: createdUser.user.id, message: e?.message || String(e) });
          continue;
        }
      }

      results.push({ email: user.email, status: 'created', authId: createdUser.user.id });
    }

    return NextResponse.json({
      message: 'Investor auth sync completed',
      results,
    });
  } catch (error: any) {
    console.error('Investor auth sync error:', error);
    return NextResponse.json({ error: error?.message || 'Failed to sync investor auth' }, { status: 500 });
  }
}
