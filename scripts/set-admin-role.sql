-- Replace EMAIL_OR_ID with the user's email or the user's UUID
-- 1) Find the user (by email)
SELECT id, email, user_metadata
FROM auth.users
WHERE email = 'EMAIL_OR_ID';

-- 2) Set role to 'admin' using email (preferred):
UPDATE auth.users
SET user_metadata = COALESCE(user_metadata, '{}'::jsonb) || jsonb_build_object('role', 'admin')
WHERE email = 'EMAIL_OR_ID';

-- 2b) Or set by user id:
-- UPDATE auth.users
-- SET user_metadata = COALESCE(user_metadata, '{}'::jsonb) || jsonb_build_object('role', 'admin')
-- WHERE id = 'USER_UUID_HERE';

-- 3) Verify
SELECT id, email, user_metadata->>'role' AS role
FROM auth.users
WHERE email = 'EMAIL_OR_ID' OR id = 'USER_UUID_HERE';
