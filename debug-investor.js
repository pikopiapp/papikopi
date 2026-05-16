require('dotenv').config({ path: '.env.local' });
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

const testInvestorId = '4be37776-096e-4b35-b267-1b2955a14465';

(async () => {
  try {
    // Check if user exists in auth
    console.log(`\n🔍 Testing investor_id: ${testInvestorId}\n`);

    // 1. Check investor_assignments for this investor
    console.log('1️⃣ Querying investor_assignments...');
    const { data: assignments, error: assignError } = await supabase
      .from('investor_assignments')
      .select('*')
      .eq('investor_id', testInvestorId);
    
    console.log(`   Result: ${assignments?.length || 0} rows`);
    if (assignError) console.log(`   Error: ${assignError.message}`);
    if (assignments && assignments.length > 0) {
      console.log(`   First: ${JSON.stringify(assignments[0])}`);
    }

    // 2. Check all investor_ids in investor_assignments
    console.log('\n2️⃣ All investor_ids in investor_assignments:');
    const { data: allAssignments, error: allError } = await supabase
      .from('investor_assignments')
      .select('investor_id')
      .limit(10);
    
    const uniqueInvestorIds = [...new Set(allAssignments?.map(a => a.investor_id) || [])];
    console.log(`   Total assignments: ${allAssignments?.length || 0}`);
    console.log(`   Unique investor_ids: ${uniqueInvestorIds.length}`);
    uniqueInvestorIds.forEach((id, idx) => {
      console.log(`     ${idx + 1}. ${id}`);
    });

    // 3. Check user existence
    console.log('\n3️⃣ Checking if this ID exists in users table:');
    const { data: user, error: userError } = await supabase
      .from('users')
      .select('id, email, name, role')
      .eq('id', testInvestorId)
      .single();
    
    if (user) {
      console.log(`   User found: ${user.email} (${user.role})`);
    } else {
      console.log(`   User NOT found: ${userError?.message || 'not found'}`);
    }

  } catch (err) {
    console.error('Error:', err.message);
  }
})();
