import { NextResponse } from 'next/server';

export function GET() {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL || process.env.SUPABASE_URL || null;
  const anon = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY || null;
  const svc = process.env.SUPABASE_SERVICE_ROLE_KEY || null;
  return NextResponse.json({
    NEXT_PUBLIC_SUPABASE_URL: url,
    NEXT_PUBLIC_SUPABASE_ANON_KEY: anon ? (anon.slice(0, 8) + '...') : null,
    SUPABASE_SERVICE_ROLE_KEY: svc ? (svc.slice(0, 8) + '...') : null,
  });
}
