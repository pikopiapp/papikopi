-- Create missing user profile for the user reported in the browser logs
-- Replace the UUID below if your actual auth user id is different

INSERT INTO public.users (
  id,
  email,
  name,
  role,
  outlet_id,
  is_active,
  created_at,
  updated_at
)
VALUES (
  'fb435656-271c-4577-8f7c-dc862fc146a0',
  'unknown@example.com',
  'User',
  'barista',
  (SELECT id FROM public.outlets LIMIT 1),
  true,
  NOW(),
  NOW()
)
ON CONFLICT (id) DO UPDATE SET
  email = EXCLUDED.email,
  name = EXCLUDED.name,
  role = EXCLUDED.role,
  outlet_id = EXCLUDED.outlet_id,
  is_active = EXCLUDED.is_active,
  updated_at = NOW();

SELECT id, email, name, role, outlet_id, is_active
FROM public.users
WHERE id = 'fb435656-271c-4577-8f7c-dc862fc146a0';
