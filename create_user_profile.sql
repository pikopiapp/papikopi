-- Create user profile for test@barista.com
-- Run in Supabase SQL Editor

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
  '80eec503-6059-4ab6-9909-1f8b0b7df113',
  'test@barista.com',
  'Test Barista',
  'barista',
  (SELECT id FROM outlets LIMIT 1),
  true,
  NOW(),
  NOW()
)
ON CONFLICT (id) DO UPDATE SET
  email = EXCLUDED.email,
  is_active = true,
  updated_at = NOW();

-- Verify user was created
SELECT id, email, name, role, outlet_id, is_active FROM public.users WHERE email = 'test@barista.com';
