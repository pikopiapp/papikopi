-- Confirm email for test user
-- Run in Supabase SQL Editor

UPDATE auth.users 
SET email_confirmed_at = NOW()
WHERE email = 'test@barista.com';

-- Verify
SELECT id, email, email_confirmed_at FROM auth.users WHERE email = 'test@barista.com';
