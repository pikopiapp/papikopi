import { createClient } from '@supabase/supabase-js';

const { NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY } = process.env;
if (!NEXT_PUBLIC_SUPABASE_URL || !SUPABASE_SERVICE_ROLE_KEY) {
  console.error('Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in env');
  process.exit(1);
}

const supabase = createClient(NEXT_PUBLIC_SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY);

async function setAdmin(email) {
  try {
    // Find user via the Admin Auth API and update via admin endpoint
    const { data: listData, error: listError } = await supabase.auth.admin.listUsers();
    if (listError) throw listError;

    const user = (listData?.users || []).find((u) => u.email === email);
    if (!user) {
      console.error('User not found in admin list:', email);
      process.exit(2);
    }

    const newMetadata = { ...(user.user_metadata || {}), role: 'admin' };

    const { data: updated, error: updateError } = await supabase.auth.admin.updateUserById(user.id, {
      user_metadata: newMetadata,
    });

    if (updateError) throw updateError;

    console.log('Updated user', email, '-> role: admin');
  } catch (err) {
    console.error('Failed:', err);
    process.exit(3);
  }
}

if (process.argv.length < 3) {
  console.error('Usage: node set-admin-role.mjs email@example.com');
  process.exit(1);
}

setAdmin(process.argv[2]);
