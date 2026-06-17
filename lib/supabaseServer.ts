import { createClient } from '@supabase/supabase-js';

const rawUrl = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL;
const rawServiceRole = process.env.SUPABASE_SERVICE_ROLE_KEY;

// Trim to guard against accidental newlines/whitespace in env values (e.g., copied with a trailing newline)
const supabaseUrl = rawUrl?.trim();
const supabaseServiceRole = rawServiceRole?.trim();

if (!supabaseUrl || !supabaseServiceRole) {
  throw new Error('Missing Supabase server environment variables. Please set SUPABASE_SERVICE_ROLE_KEY and NEXT_PUBLIC_SUPABASE_URL or SUPABASE_URL');
}

export const supabaseServer = createClient(supabaseUrl, supabaseServiceRole, {
  auth: { persistSession: false },
});
