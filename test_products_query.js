import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY
);

async function test() {
  try {
    console.log('Testing product query...');
    const { data, error } = await supabase
      .from('products')
      .select('id, name');
    
    if (error) {
      console.error('Error:', error);
    } else {
      console.log('Success! Products found:', data?.length);
      console.log('Sample:', data?.[0]);
    }
  } catch (e) {
    console.error('Exception:', e);
  }
}

test();
