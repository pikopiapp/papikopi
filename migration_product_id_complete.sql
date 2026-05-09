-- ============================================================
-- Migration: Replace product_unit_id with product_id (UUID)
-- Table: product_returns
-- Date: May 9, 2026
-- ============================================================

-- Step 1: Remove old product_unit_id column and constraints
-- This will cascade delete any dependent objects
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_unit_id CASCADE;

-- Step 2: Add new product_id column as UUID with NOT NULL constraint
-- The column will be a foreign key reference to products.id
ALTER TABLE product_returns
ADD COLUMN product_id UUID NOT NULL;

-- Step 3: Add foreign key constraint
-- Prevent deletion of products if they're referenced in returns
ALTER TABLE product_returns
ADD CONSTRAINT fk_product_returns_product_id 
  FOREIGN KEY (product_id) 
  REFERENCES products(id) 
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

-- Step 4: Create index for better query performance
CREATE INDEX idx_product_returns_product_id 
ON product_returns(product_id);

-- Step 5: Verify the new schema structure
SELECT 
  column_name, 
  data_type, 
  is_nullable,
  column_default
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;

-- Step 6: Verify foreign key constraint
SELECT 
  constraint_name,
  constraint_type,
  table_name
FROM information_schema.table_constraints
WHERE table_name = 'product_returns'
  AND constraint_type = 'FOREIGN KEY';

-- Step 7: Check if there are any returns (should be empty after migration)
SELECT COUNT(*) as total_returns FROM product_returns;

-- Step 8: Verify products table exists and has data
SELECT COUNT(*) as total_products FROM products;

-- Step 9: Success message
-- If all queries execute without error, the migration is complete!
-- Next step: Refresh the application to auto-seed test data
