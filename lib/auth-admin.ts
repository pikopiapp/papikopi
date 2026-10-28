import type { getSupabaseAdminClient } from '@/lib/supabase-admin';

const AUTH_PAGE_SIZE = 200;
const AUTH_MAX_PAGES = 20;

// GoTrue has no get-by-email endpoint, so walk the admin listing until the email shows up.
export async function findAuthUserByEmail(
  admin: ReturnType<typeof getSupabaseAdminClient>,
  email: string
) {
  const normalized = email.trim().toLowerCase();

  for (let page = 1; page <= AUTH_MAX_PAGES; page++) {
    const { data, error } = await admin.auth.admin.listUsers({ page, perPage: AUTH_PAGE_SIZE });
    if (error) {
      throw error;
    }

    const users = data?.users || [];
    const match = users.find((user) => user.email?.toLowerCase() === normalized);
    if (match) {
      return match;
    }
    if (users.length < AUTH_PAGE_SIZE) {
      return null;
    }
  }

  return null;
}
