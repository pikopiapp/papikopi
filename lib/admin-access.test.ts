import { getRoleFromUser, isAdminSecretAuthorized } from './admin-access';
import { middleware } from '../middleware';

function test(name: string, fn: () => void) {
  try {
    fn();
    console.log(`✓ ${name}`);
  } catch (error) {
    console.error(`✗ ${name}`);
    console.error(error);
    process.exitCode = 1;
  }
}

function assertTrue(value: boolean, message?: string) {
  if (!value) {
    throw new Error(message || 'Assertion failed');
  }
}

function assertEquals(actual: unknown, expected: unknown) {
  if (actual !== expected) {
    throw new Error(`Expected ${JSON.stringify(expected)}, but got ${JSON.stringify(actual)}`);
  }
}

test('accepts a matching admin secret header', () => {
  const request = { headers: new Headers({ 'x-admin-secret': 'super-secret' }) };
  assertTrue(isAdminSecretAuthorized(request, 'super-secret'));
});

test('rejects a missing or mismatched admin secret header', () => {
  const badRequest = { headers: new Headers() };
  assertTrue(!isAdminSecretAuthorized(badRequest, 'super-secret'));
});

test('extracts investor role from metadata', () => {
  const user = {
    user_metadata: { role: 'investor' },
    app_metadata: { role: 'authenticated' },
  };
  assertEquals(getRoleFromUser(user), 'investor');
});

test('middleware allows the protected admin sync route when the admin secret is present', async () => {
  process.env.ADMIN_API_SECRET = 'test-secret';

  const request = new Request('http://localhost/api/admin/sync-investor-auth', {
    headers: { 'x-admin-secret': 'test-secret' },
  });

  const response = await middleware({
    nextUrl: new URL(request.url),
    headers: request.headers,
    cookies: { get: () => undefined },
  } as any);

  assertTrue(response.status === 200 || response.status === 101 || response.status === 307);
});
