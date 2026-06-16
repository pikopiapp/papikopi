import { createClient } from "@supabase/supabase-js";

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error(
    "Missing Supabase environment variables. Please set NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY"
  );
}

type Json = string | number | boolean | null | { [key: string]: Json } | Json[];

export interface Database {
  users: {
    Row: {
      id: string;
      name: string | null;
      email: string | null;
      role: string | null;
      is_active: boolean | null;
      outlet_id?: string | null;
      user_metadata?: Json | null;
      created_at?: string | null;
    };
    Insert: {
      id?: string;
      name?: string | null;
      email?: string | null;
      role?: string | null;
      is_active?: boolean | null;
      outlet_id?: string | null;
      user_metadata?: Json | null;
      created_at?: string | null;
    };
    Update: {
      id?: string;
      name?: string | null;
      email?: string | null;
      role?: string | null;
      is_active?: boolean | null;
      outlet_id?: string | null;
      user_metadata?: Json | null;
      created_at?: string | null;
    };
  };

  // Other tables may be added here as needed.
}

// Create a typed Supabase client so Postgrest methods infer correct row types.
// Create the Supabase client without attaching the generic to avoid
// incompatibilities with the project's PostgREST type expectations.
// We still export the `Database` type for explicit casts where needed.
export const supabase = createClient(supabaseUrl, supabaseAnonKey);
