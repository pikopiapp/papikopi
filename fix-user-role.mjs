import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://hmihxkmrsmztuyvtykrj.supabase.co';
const ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhtaWh4a21yc216dHV5dnR5a3JqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Nzc0ODcxMTgsImV4cCI6MjA5MzA2MzExOH0.dnp4hNTeoy3xTJ20LEgQKNydTra48_Sw27hwQJk68A4';

const supabase = createClient(SUPABASE_URL, ANON_KEY);

async function fixUserRole() {
  try {
    // Get the test user from auth
    const { data: users, error: fetchError } = await supabase.auth.admin.listUsers();
    
    if (fetchError) {
      console.error('Error fetching users:', fetchError);
      process.exit(1);
    }

    const testUser = users.users.find(u => u.email === 'test@barista.com');
    
    if (!testUser) {
      console.error('Test user not found in auth. Need to create it first.');
      console.log('Please manually create the user via Supabase dashboard');
      process.exit(1);
    }

    console.log('Found test user:', testUser.id);

    // Create or update user profile with showcase_manager role
    const { data, error } = await supabase
      .from('users')
      .upsert({
        id: testUser.id,
        email: 'test@barista.com',
        name: 'Test Barista',
        role: 'showcase_manager',
        is_active: true
      }, { onConflict: 'id' })
      .select('id, email, name, role');

    if (error) {
      console.error('Error upserting user:', error);
      process.exit(1);
    }

    console.log('✓ User role updated:', data);
  } catch (err) {
    console.error('Error:', err.message);
    process.exit(1);
  }
}

fixUserRole();
