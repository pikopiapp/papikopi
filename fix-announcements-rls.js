const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || 'https://hmihxkmrsmztuyvtykrj.supabase.co';
const serviceRoleKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhtaWh4a21yc216dHV5dnR5a3JqIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwOTk4MTExOSwiZXhwIjoyMDI1NTU3MTE5fQ.aP4hYh4RkQCjlKh1iHGKdKK8LJk7a_zR9b4OB-fwRQ0';

// Create admin client with service role key
const supabase = createClient(supabaseUrl, serviceRoleKey);

async function fixRLS() {
  try {
    console.log('🔄 Connecting to Supabase...');
    
    // Execute raw SQL using postgres function or direct query
    // Since we have service_role, we can execute SQL
    const { data, error } = await supabase
      .from('announcements')
      .select('count', { count: 'exact', head: true });
    
    if (error) {
      console.error('❌ Error connecting to announcements table:', error.message);
      process.exit(1);
    }
    
    console.log('✅ Connected to announcements table');
    console.log(`📊 Current announcements: ${data ? data.length : 0}`);
    
    // Now let's just show the error so we know RLS is the issue
    console.log('\n💡 RLS Fix Instructions:');
    console.log('1. Go to: https://app.supabase.com/project/hmihxkmrsmztuyvtykrj/sql/new');
    console.log('2. Copy and paste the following SQL:');
    console.log('---');
    console.log(`
DROP POLICY IF EXISTS "Anyone can view announcements" ON announcements;
DROP POLICY IF EXISTS "Only admins can create announcements" ON announcements;
DROP POLICY IF EXISTS "Allow read announcements for authenticated users" ON announcements;
DROP POLICY IF EXISTS "Allow insert announcements for authenticated users" ON announcements;
DROP POLICY IF EXISTS "Allow update announcements for authenticated users" ON announcements;
DROP POLICY IF EXISTS "Allow delete announcements for authenticated users" ON announcements;
ALTER TABLE announcements DISABLE ROW LEVEL SECURITY;
    `);
    console.log('---');
    console.log('3. Click "Run"');
    console.log('4. Done! Now you can create/view announcements');
    
  } catch (err) {
    console.error('❌ Error:', err.message);
    process.exit(1);
  }
}

fixRLS();
