-- Migration: Replace product_unit_id with product_id (UUID) in product_returns table

-- Step 1: Drop the old product_unit_id column and any related constraints
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_unit_id CASCADE;

-- Step 2: Add product_id column as UUID with foreign key to products table
ALTER TABLE product_returns
ADD COLUMN product_id UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT fk_product_returns_product_id 
  FOREIGN KEY (product_id) 
  REFERENCES products(id) 
  ON DELETE RESTRICT;

-- Step 3: Remove the default and make it just a regular column
ALTER TABLE product_returns
ALTER COLUMN product_id DROP DEFAULT;

-- Step 4: Verify the new schema
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;

-- Step 5: Show the constraints
SELECT constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_name = 'product_returns';
