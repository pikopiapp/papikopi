-- ============================================================
-- Fix Check Constraint for product_returns table
-- Find valid values for condition_status
-- ============================================================

-- Step 1: Check all constraints on product_returns
SELECT 
  constraint_name,
  constraint_type,
  table_name
FROM information_schema.table_constraints
WHERE table_name = 'product_returns';

-- Step 2: Check the specific check constraint definition
SELECT 
  constraint_name,
  check_clause
FROM information_schema.check_constraints
WHERE constraint_name LIKE '%condition%'
  OR constraint_name LIKE '%valid%';

-- Step 3: Check table structure with all columns
SELECT 
  column_name,
  data_type,
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;

-- Step 4: Try to insert with NULL condition_status (might be the issue)
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
  resolution_status,
  return_date
)
SELECT 
  sp.id,
  so.id,
  'Test Retur',
  'pending',
  CURRENT_DATE
FROM sample_product sp, sample_outlet so;

-- Step 5: Verify data was inserted
SELECT * FROM product_returns ORDER BY id DESC LIMIT 1;

-- Step 6: Clean up test data
DELETE FROM product_returns WHERE return_reason = 'Test Retur';

-- Step 7: Show what values are already in the table
SELECT DISTINCT condition_status FROM product_returns;
SELECT DISTINCT resolution_status FROM product_returns;

-- Step 8: Check enum types if they exist
SELECT typname, enumlabel 
FROM pg_enum 
JOIN pg_type ON pg_enum.enumtypid = pg_type.oid 
ORDER BY typname, enumsortorder;
