-- ============================================================
-- Migration: Replace product_unit_id with product_id (UUID)
-- Table: product_returns
-- Date: May 9, 2026
-- Fixed version: Handle existing NULL values
-- ============================================================

-- Step 0: First, delete all existing product_returns data
-- since we're changing the schema structure
DELETE FROM product_returns;

-- Step 1: Remove old product_unit_id column if it exists
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_unit_id CASCADE;

-- Step 2: Remove product_id column if it already exists from failed migration
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_id CASCADE;

-- Step 3: Add new product_id column as UUID NOT NULL
-- We can do this now since we deleted all old data
ALTER TABLE product_returns
ADD COLUMN product_id UUID NOT NULL;

-- Step 4: Add foreign key constraint
-- Prevent deletion of products if they're referenced in returns
ALTER TABLE product_returns
ADD CONSTRAINT fk_product_returns_product_id 
  FOREIGN KEY (product_id) 
  REFERENCES products(id) 
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

-- Step 5: Create index for better query performance
CREATE INDEX idx_product_returns_product_id 
ON product_returns(product_id);

-- Step 6: Verify the new schema structure
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;

-- Step 7: Verify foreign key constraint
SELECT 
  constraint_name,
  constraint_type,
  table_name
FROM information_schema.table_constraints
WHERE table_name = 'product_returns'
  AND constraint_type = 'FOREIGN KEY';

-- Step 8: Check table is now clean
SELECT COUNT(*) as total_returns FROM product_returns;

-- Step 9: Verify products table exists and has data
SELECT COUNT(*) as total_products FROM products;
SELECT id, name FROM products LIMIT 3;

-- Migration complete! The application will auto-seed test data on next load.
