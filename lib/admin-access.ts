type MetadataValue = string | number | boolean | null | undefined | Array<string | number | boolean>;

type AuthUserMetadata = Record<string, unknown>;

type AuthUser = {
  role?: string | null;
  user_metadata?: AuthUserMetadata | null;
  app_metadata?: AuthUserMetadata | null;
};

export function getRoleFromUser(user: AuthUser | null | undefined) {
  const metadata = (user?.user_metadata || {}) as Record<string, unknown>;
  const appMetadata = (user?.app_metadata || {}) as Record<string, unknown>;

  const candidate =
    (typeof user?.role === 'string' ? user.role : null) ??
    (appMetadata.role as MetadataValue | undefined) ??
    (appMetadata['x-hasura-default-role'] as MetadataValue | undefined) ??
    (appMetadata['x-hasura-role'] as MetadataValue | undefined) ??
    (metadata.role as MetadataValue | undefined) ??
    (metadata['x-hasura-default-role'] as MetadataValue | undefined) ??
    (metadata['x-hasura-role'] as MetadataValue | undefined);

  if (typeof candidate === 'string') {
    return candidate.toLowerCase();
  }

  if (Array.isArray(candidate) && candidate.length > 0) {
    const normalized = candidate.map((item) => String(item).toLowerCase());
    if (normalized.includes('admin')) return 'admin';
    if (normalized.includes('investor')) return 'investor';
  }

  return null;
}

export function isAdminSecretAuthorized(req: Pick<Request, 'headers'>, expectedSecret?: string) {
  const headerValue = req.headers.get('x-admin-secret') || '';
  return Boolean(expectedSecret && headerValue === expectedSecret);
}
