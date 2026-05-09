-- Check all outlets in database
SELECT id, name, type, address FROM public.outlets ORDER BY name;

-- Count total outlets
SELECT COUNT(*) as total_outlets FROM public.outlets;

-- Check for outlets without names or with null names
SELECT id, name FROM public.outlets WHERE name IS NULL OR name = '';
