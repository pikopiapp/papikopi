type AuthUserMetadata = Record<string, unknown>;

type AuthUser = {
  app_metadata?: AuthUserMetadata | null;
};

// Roles the app actually authorizes against. Anything else ("authenticated",
// stale metadata, typos) resolves to null so it can never satisfy a gate.
const KNOWN_ROLES = ['admin', 'manager', 'investor', 'barista'] as const;

export function normalizeAppRole(value: unknown): string | null {
  if (value === null || value === undefined || typeof value === 'object' && !Array.isArray(value)) {
    return null;
  }

  const candidates = (Array.isArray(value) ? value : [value]).map((item) => String(item).trim().toLowerCase());
  for (const role of KNOWN_ROLES) {
    if (candidates.includes(role)) return role;
  }
  return null;
}

// `user_metadata` is writable by the user themselves, so it is never a role
// source. Only `app_metadata` (service-role writable) and the users table are.
export function getRoleFromUser(user: AuthUser | null | undefined) {
  const appMetadata = (user?.app_metadata || {}) as Record<string, unknown>;

  return (
    normalizeAppRole(appMetadata.role) ??
    normalizeAppRole(appMetadata['x-hasura-default-role']) ??
    normalizeAppRole(appMetadata['x-hasura-role'])
  );
}

export function isAdminSecretAuthorized(req: Pick<Request, 'headers'>, expectedSecret?: string) {
  const headerValue = req.headers.get('x-admin-secret') || '';
  return Boolean(expectedSecret && headerValue === expectedSecret);
}
