import { NextResponse } from 'next/server';

function maskKey(k?: string | null) {
  if (!k) return null;
  const s = String(k);
  if (s.length <= 8) return s.replace(/.(?=.{4})/g, '*');
  return `${s.slice(0, 4)}...${s.slice(-4)}`;
}

export async function GET(req: Request) {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL || null;
  const hasServiceRole = Boolean(process.env.SUPABASE_SERVICE_ROLE_KEY);
  const mask = maskKey(process.env.SUPABASE_SERVICE_ROLE_KEY || null);

  return NextResponse.json({
    supabaseUrl: url,
    hasServiceRole,
    serviceRoleMask: mask,
    env: {
      NEXT_PUBLIC_SUPABASE_URL: Boolean(process.env.NEXT_PUBLIC_SUPABASE_URL),
      SUPABASE_URL: Boolean(process.env.SUPABASE_URL),
      SUPABASE_SERVICE_ROLE_KEY: Boolean(process.env.SUPABASE_SERVICE_ROLE_KEY),
    },
  });
}
