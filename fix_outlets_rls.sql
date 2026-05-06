-- Fix outlets table permissions
-- Disable RLS on outlets table to allow CRUD operations
ALTER TABLE outlets DISABLE ROW LEVEL SECURITY;

-- Or if you want to keep RLS, create permissive policies:
-- DROP POLICY IF EXISTS "allow_all_outlets" ON outlets;
-- CREATE POLICY "allow_all_outlets" ON outlets
--   FOR ALL USING (true) WITH CHECK (true);

-- Verify outlets can be accessed
SELECT COUNT(*) as outlet_count FROM outlets;
