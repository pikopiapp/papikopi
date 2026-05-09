import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!SUPABASE_URL || !SUPABASE_SERVICE_KEY) {
  console.error('Missing Supabase environment variables');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);

async function updateUserRole() {
  try {
    console.log('Updating test user role...');

    // Update users table
    const { data, error } = await supabase
      .from('users')
      .update({ role: 'showcase_manager' })
      .eq('email', 'test@barista.com')
      .select('id, email, role');

    if (error) {
      console.error('Error updating user:', error);
      process.exit(1);
    }

    console.log('✓ User updated:', data);
  } catch (err) {
    console.error('Error:', err);
    process.exit(1);
  }
}

updateUserRole();
