import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import { getRoleFromUser, isAdminSecretAuthorized } from './lib/admin-access';
import { getSupabaseAdminClient } from './lib/supabase-admin';

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SUPABASE_ANON = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;
const ADMIN_API_SECRET = process.env.ADMIN_API_SECRET || process.env.ADMIN_SYNC_SECRET;

async function getAuthenticatedUser(req: NextRequest) {
  const authHeader = req.headers.get('authorization') || '';
  const cookieHeader = req.headers.get('cookie') || '';
  const cookieToken = req.cookies.get('sb-access-token') || req.cookies.get('sb:token') || req.cookies.get('supabase-auth-token');

  const token = authHeader.toLowerCase().startsWith('bearer')
    ? authHeader.split(' ')[1]
    : cookieToken?.value || null;

  // eslint-disable-next-line no-console
  console.log('[middleware] auth check', {
    hasAuthHeader: Boolean(authHeader),
    cookieHeader: cookieHeader ? cookieHeader.slice(0, 200) : null,
    cookieToken: cookieToken?.value ? 'present' : 'missing',
    tokenPresent: Boolean(token),
    tokenPreview: token ? `${token.slice(0, 8)}...${token.slice(-8)}` : null,
    tokenLength: token ? token.length : 0,
  });

  if (!token || !SUPABASE_URL || !SUPABASE_ANON) {
    return null;
  }

  try {
    const resp = await fetch(`${SUPABASE_URL.replace(/\/$/, '')}/auth/v1/user`, {
      headers: {
        Authorization: `Bearer ${token}`,
        apikey: SUPABASE_ANON,
      },
    });

    if (!resp.ok) {
      const text = await resp.text();
      // eslint-disable-next-line no-console
      console.warn('[middleware] auth user fetch failed', {
        status: resp.status,
        statusText: resp.statusText,
        body: text.slice(0, 500),
        tokenPreview: token ? `${token.slice(0, 10)}...${token.slice(-10)}` : null,
      });
      return null;
    }

    const payload = await resp.json();
    const u = payload.user ?? payload ?? null;
    // Log minimal auth info for debugging
    try {
      // avoid logging secrets
      // eslint-disable-next-line no-console
      console.log('[middleware] getAuthenticatedUser ->', u ? { id: u.id, email: u.email } : null, { payloadKeys: Object.keys(payload) });
    } catch {}
    return u;
  } catch {
    return null;
  }
}

async function getAppUserRole(authUser: { id?: string | null; user_metadata?: Record<string, any>; app_metadata?: Record<string, any> } | null | undefined) {
  const tokenRole = getRoleFromUser(authUser);

  if (!authUser?.id) {
    return tokenRole;
  }

  try {
    const admin = getSupabaseAdminClient();
    const { data, error } = await admin.from('users').select('role').eq('id', authUser.id).maybeSingle();
    if (!error && data?.role) {
      // eslint-disable-next-line no-console
      console.log('[middleware] app user role mapped', { authUserId: authUser.id, role: data.role });
      return data.role;
    }
    if (error) {
      // eslint-disable-next-line no-console
      console.warn('[middleware] app user role lookup failed', error.message);
    }
  } catch (e) {
    // eslint-disable-next-line no-console
    console.warn('[middleware] app user role lookup error', e);
  }

  // eslint-disable-next-line no-console
  console.log('[middleware] fallback role from token metadata', { authUserId: authUser.id, tokenRole });
  return tokenRole;
}

// Protect /admin, /dashboard, /api/admin, and /investor routes.
export async function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;

  const matchesAdminApi = pathname.startsWith('/api/admin');
  const matchesAdminPage = pathname.startsWith('/admin');
  const matchesDashboard = pathname.startsWith('/dashboard');
  const matchesInvestorPage = pathname.startsWith('/investor');

  if (!matchesAdminApi && !matchesAdminPage && !matchesDashboard && !matchesInvestorPage) {
    return NextResponse.next();
  }

  if (isAdminSecretAuthorized(req, ADMIN_API_SECRET)) {
    return NextResponse.next();
  }

  const user = await getAuthenticatedUser(req);
  const role = await getAppUserRole(user);

  // eslint-disable-next-line no-console
  console.log('[middleware] auth guard match', {
    pathname,
    matchesAdminApi,
    matchesAdminPage,
    matchesDashboard,
    matchesInvestorPage,
    authUserId: user?.id || null,
    authEmail: user?.email || null,
    role,
  });

  // Prevent investors from accessing admin/dashboard pages
  if (role === 'investor') {
    if (pathname.startsWith('/api/admin') || pathname.startsWith('/admin') || matchesDashboard) {
      // For API requests return 403, for pages redirect to /investor
      if (pathname.startsWith('/api')) {
        return new NextResponse(JSON.stringify({ error: 'Forbidden' }), {
          status: 403,
          headers: { 'Content-Type': 'application/json' },
        });
      }

      const investorUrl = new URL('/investor', req.url);
      return NextResponse.redirect(investorUrl);
    }
  }

  if (matchesAdminApi) {
    if (role === 'admin') {
      return NextResponse.next();
    }

    if (user) {
      return new NextResponse(JSON.stringify({ error: 'Forbidden' }), {
        status: 403,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), {
      status: 401,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  if (matchesAdminPage) {
    if (role === 'admin') {
      return NextResponse.next();
    }

    if (role === 'investor') {
      const investorUrl = new URL('/investor', req.url);
      return NextResponse.redirect(investorUrl);
    }

    const loginUrl = new URL('/login', req.url);
    loginUrl.searchParams.set('redirect', req.nextUrl.pathname + (req.nextUrl.search || ''));
    return NextResponse.redirect(loginUrl);
  }

  if (matchesDashboard) {
    if (role === 'admin') {
      return NextResponse.next();
    }

    const loginUrl = new URL('/login', req.url);
    loginUrl.searchParams.set('redirect', req.nextUrl.pathname + (req.nextUrl.search || ''));
    return NextResponse.redirect(loginUrl);
  }

  if (matchesInvestorPage) {
    if (role === 'investor') {
      return NextResponse.next();
    }

    const loginUrl = new URL('/login', req.url);
    loginUrl.searchParams.set('redirect', req.nextUrl.pathname + (req.nextUrl.search || ''));
    return NextResponse.redirect(loginUrl);
  }

  return NextResponse.next();
}

export const config = {
  matcher: ['/admin/:path*', '/api/admin/:path*', '/dashboard/:path*', '/dashboard/investor/:path*', '/investor/:path*'],
};
