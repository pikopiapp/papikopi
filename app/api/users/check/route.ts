import { createClient } from '@supabase/supabase-js';

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!;

const supabase = createClient(supabaseUrl, supabaseAnonKey);

export async function GET() {
  try {
    // Check if users table exists
    const { data, error } = await supabase
      .from('users')
      .select('count', { count: 'exact' });

    if (error) {
      return Response.json({
        status: 'error',
        message: error.message,
      });
    }

    return Response.json({
      status: 'success',
      message: 'Users table is accessible',
      data,
    });
  } catch (error) {
    console.error('Error:', error);
    return Response.json({
      status: 'error',
      message: String(error),
    });
  }
}
