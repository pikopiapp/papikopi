import { NextResponse } from 'next/server';
import type { NextRequest } from 'next/server';
import { getRoleFromUser, isAdminSecretAuthorized, normalizeAppRole } from './lib/admin-access';
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

// The users table is the only role source the caller cannot write. Most staff
// profiles are keyed by a different id than the auth user, so fall back to the
// email match before giving up; app_metadata is the last trusted resort.
async function getAppUserRole(authUser: { id?: string | null; email?: string | null; app_metadata?: Record<string, any> } | null | undefined) {
  if (!authUser?.id) {
    return null;
  }

  try {
    const admin = getSupabaseAdminClient();

    const { data, error } = await admin.from('users').select('role').eq('id', authUser.id).maybeSingle();
    const byId = normalizeAppRole(data?.role);
    if (byId) {
      return byId;
    }
    if (error) {
      // eslint-disable-next-line no-console
      console.warn('[middleware] app user role lookup by id failed', error.message);
    }

    if (authUser.email) {
      const { data: byEmail, error: emailError } = await admin
        .from('users')
        .select('role')
        .ilike('email', authUser.email)
        .limit(1)
        .maybeSingle();
      const emailRole = normalizeAppRole(byEmail?.role);
      if (emailRole) {
        return emailRole;
      }
      if (emailError) {
        // eslint-disable-next-line no-console
        console.warn('[middleware] app user role lookup by email failed', emailError.message);
      }
    }
  } catch (e) {
    // eslint-disable-next-line no-console
    console.warn('[middleware] app user role lookup error', e);
  }

  return getRoleFromUser(authUser);
}

// Bearer header or the cookie the auth provider writes; used for the cheap API gate.
function getRequestToken(req: NextRequest): string | null {
  const authHeader = req.headers.get('authorization') || '';
  if (authHeader.toLowerCase().startsWith('bearer')) {
    const bearer = authHeader.slice(7).trim();
    if (bearer) return bearer;
  }
  const cookieToken = req.cookies.get('sb-access-token')?.value || '';
  return cookieToken || null;
}

const SESSION_TOKEN_TTL_MS = 60_000;
const MAX_CACHED_TOKENS = 500;
const validTokenCache = new Map<string, number>();

// Validates the token against Supabase, cached briefly so a dashboard load
// (several API calls sharing one token) costs a single round trip.
async function isValidSessionToken(token: string): Promise<boolean> {
  const now = Date.now();
  const cachedUntil = validTokenCache.get(token);
  if (cachedUntil && cachedUntil > now) return true;

  if (!SUPABASE_URL || !SUPABASE_ANON) return false;

  try {
    const resp = await fetch(`${SUPABASE_URL.replace(/\/$/, '')}/auth/v1/user`, {
      headers: { Authorization: `Bearer ${token}`, apikey: SUPABASE_ANON },
    });
    if (!resp.ok) {
      validTokenCache.delete(token);
      return false;
    }
    if (validTokenCache.size >= MAX_CACHED_TOKENS) validTokenCache.clear();
    validTokenCache.set(token, now + SESSION_TOKEN_TTL_MS);
    return true;
  } catch {
    return false;
  }
}

// Routes that delete or bulk-insert rows: no page in the app calls them, so they
// are restricted to the admin secret or an admin session.
const ADMIN_ONLY_API_PATHS = new Set([
  '/api/test-endpoint',
  '/api/products/reset',
  '/api/products/seed',
  '/api/outlets/seed',
  '/api/outlets/stock/seed',
  '/api/outlets/stock/init-showcase',
  '/api/outlets/stock/seed-allocations',
  '/api/outlets/stock/seed-batch-allocations',
  '/api/ingredients/seed',
  '/api/users/seed',
  '/api/sales/seed',
  '/api/showcase/returns/seed',
  '/api/warehouse/batches/seed',
]);

// Data endpoints that only authenticated dashboard pages call. Public pages
// (/showcase, /showcase-inventory, /cafe, /login) must stay outside this list.
const SESSION_REQUIRED_API_PREFIXES = [
  '/api/sales',
  '/api/reports',
  '/api/users',
  '/api/investors',
  '/api/expenses',
  '/api/cash-handovers',
  '/api/barista-bonus',
  '/api/analytics',
  '/api/dashboard',
  '/api/purchase-history',
  '/api/inventory-purchases',
  '/api/inventory',
  '/api/warehouse',
  '/api/ingredients',
  '/api/products',
  '/api/categories',
  '/api/holidays',
  '/api/system',
  '/api/messaging',
  '/api/labels',
  '/api/qrcode',
  '/api/batch-to-showcase',
  '/api/showcase',
  '/api/outlets/stock',
];

function matchesPrefix(pathname: string, prefixes: string[]) {
  return prefixes.some((prefix) => pathname === prefix || pathname.startsWith(`${prefix}/`));
}

// Protect /admin, /dashboard, /investor pages and every /api route that is not
// used by a public page.
export async function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;

  const matchesAdminApi = pathname.startsWith('/api/admin');
  const matchesAdminPage = pathname.startsWith('/admin');
  const matchesDashboard = pathname.startsWith('/dashboard');
  const matchesInvestorPage = pathname.startsWith('/investor');
  const normalizedPath = pathname.length > 1 && pathname.endsWith('/') ? pathname.slice(0, -1) : pathname;
  const matchesAdminOnlyApi = ADMIN_ONLY_API_PATHS.has(normalizedPath) || normalizedPath === '/api/debug' || normalizedPath.startsWith('/api/debug/');
  // Financial, stock, PII and payroll endpoints: no public page reads them.
  const matchesSensitiveApi = matchesPrefix(normalizedPath, SESSION_REQUIRED_API_PREFIXES);

  if (matchesAdminOnlyApi) {
    if (isAdminSecretAuthorized(req, ADMIN_API_SECRET)) {
      return NextResponse.next();
    }

    const user = await getAuthenticatedUser(req);
    if (!user) {
      return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), {
        status: 401,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    const role = await getAppUserRole(user);
    if (role !== 'admin') {
      return new NextResponse(JSON.stringify({ error: 'Forbidden' }), {
        status: 403,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    return NextResponse.next();
  }

  if (matchesSensitiveApi) {
    if (isAdminSecretAuthorized(req, ADMIN_API_SECRET)) {
      return NextResponse.next();
    }

    const token = getRequestToken(req);
    if (!token) {
      return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), {
        status: 401,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    if (!(await isValidSessionToken(token))) {
      return new NextResponse(JSON.stringify({ error: 'Unauthorized' }), {
        status: 401,
        headers: { 'Content-Type': 'application/json' },
      });
    }

    return NextResponse.next();
  }

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
  matcher: [
    '/admin/:path*',
    '/api/:path*',
    '/dashboard/:path*',
    '/dashboard/investor/:path*',
    '/investor/:path*',
  ],
};
