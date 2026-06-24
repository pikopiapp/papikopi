import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_ANON = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

// Protect /admin pages and /api/admin/* routes.
export async function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;

  // Only run for admin API routes (pages are handled client-side)
  const matchesAdmin = pathname.startsWith('/api/admin');
  if (!matchesAdmin) return NextResponse.next();

  // Check Authorization header or common supabase cookie names for a session token.
  const authHeader = req.headers.get('authorization') || '';
  const cookie = req.cookies.get('sb-access-token') || req.cookies.get('sb:token') || req.cookies.get('supabase-auth-token');

  // If cookie present, allow (we assume it's a valid session cookie set by supabase-js server-side helpers)
  if (cookie) return NextResponse.next();

  // If Authorization header present, validate the token with Supabase Auth endpoint
  if (authHeader.toLowerCase().startsWith('bearer')) {
    const token = authHeader.split(' ')[1];
    if (!SUPABASE_URL || !SUPABASE_ANON) {
      return new NextResponse(JSON.stringify({ error: 'Server misconfigured' }), { status: 500, headers: { 'Content-Type': 'application/json' } });
    }

    try {
      const resp = await fetch(`${SUPABASE_URL.replace(/\/$/, '')}/auth/v1/user`, {
        headers: {
          Authorization: `Bearer ${token}`,
          apikey: SUPABASE_ANON,
        },
      });

      if (resp.ok) return NextResponse.next();
      // fallthrough to unauthorized
    } catch (e) {
      // fallthrough to unauthorized
    }
  }

  // API requests -> return 401 JSON
  if (pathname.startsWith('/api/')) {
    return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), { status: 401, headers: { 'Content-Type': 'application/json' } });
  }

  // For pages, redirect to login
  const loginUrl = new URL('/login', req.url);
  loginUrl.searchParams.set('redirect', req.nextUrl.pathname + (req.nextUrl.search || ''));
  return NextResponse.redirect(loginUrl);
}

export const config = {
  matcher: ['/admin/:path*', '/api/admin/:path*'],
};
