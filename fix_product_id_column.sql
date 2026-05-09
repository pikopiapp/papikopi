-- Fix the product_id column type (should be UUID, not BIGINT)

-- First, drop the incorrect foreign key if it exists
ALTER TABLE product_returns
DROP CONSTRAINT IF EXISTS product_returns_product_id_fkey;

-- Drop the bigint column if it exists
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_id;

-- Create product_id as UUID with proper foreign key
ALTER TABLE product_returns
ADD COLUMN product_id UUID REFERENCES products(id);

-- Get some products to check
SELECT id, name FROM products LIMIT 5;

-- Update the test returns with actual product IDs
-- First, get a product ID to use
WITH first_product AS (
  SELECT id FROM products 
  WHERE id IS NOT NULL 
  LIMIT 1
)
UPDATE product_returns
SET product_id = (SELECT id FROM first_product)
WHERE product_id IS NULL;

-- Verify the data
SELECT 
  id, 
  product_id, 
  outlet_id, 
  return_reason, 
  condition_status, 
  resolution_status,
  return_date
FROM product_returns
ORDER BY id DESC;

SELECT COUNT(*) as total FROM product_returns;
