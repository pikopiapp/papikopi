-- Check constraint definition for condition_status
SELECT 
  constraint_name,
  check_clause
FROM information_schema.check_constraints
WHERE constraint_name LIKE '%condition%'
   OR constraint_name LIKE '%valid%';

-- Show constraint details
SELECT 
  conname as constraint_name,
  pg_get_constraintdef(oid) as constraint_definition
FROM pg_constraint
WHERE conrelid = 'product_returns'::regclass
  AND contype = 'c';

-- Check what values already exist in the table
SELECT DISTINCT condition_status FROM product_returns;

-- Check the table structure
\d product_returns
