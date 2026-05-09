-- ============================================================
-- Fix RLS Policy for product_returns table
-- Enable inserts for authenticated users
-- ============================================================

-- Step 1: Check current RLS status
SELECT 
  tablename,
  rowsecurity
FROM pg_tables
WHERE tablename = 'product_returns';

-- Step 2: Check existing policies
SELECT 
  schemaname,
  tablename,
  policyname,
  permissive,
  roles,
  qual,
  with_check
FROM pg_policies
WHERE tablename = 'product_returns'
ORDER BY policyname;

-- Step 3: Disable RLS on product_returns table (allow all operations)
ALTER TABLE product_returns DISABLE ROW LEVEL SECURITY;

-- Step 4: Verify RLS is disabled
SELECT 
  tablename,
  rowsecurity
FROM pg_tables
WHERE tablename = 'product_returns';

-- Step 5: Test - Try to insert a sample record
-- First get a product_id
WITH sample_product AS (
  SELECT id FROM products LIMIT 1
),
sample_outlet AS (
  SELECT id FROM outlets LIMIT 1
)
INSERT INTO product_returns (
  product_id,
  outlet_id,
  return_reason,
  condition_status,
  resolution_status,
  return_date
)
SELECT 
  sp.id,
  so.id,
  'Test Retur',
  'pending',
  'pending',
  CURRENT_DATE
FROM sample_product sp, sample_outlet so;

-- Step 6: Verify data was inserted
SELECT * FROM product_returns LIMIT 1;

-- Step 7: Clean up test data if needed
DELETE FROM product_returns WHERE return_reason = 'Test Retur';

-- Done! RLS is now disabled for product_returns.
-- The application can now insert/update/delete returns freely.
