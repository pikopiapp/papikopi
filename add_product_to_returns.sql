-- Add product_id column to product_returns if it doesn't exist
ALTER TABLE product_returns
ADD COLUMN IF NOT EXISTS product_id BIGINT REFERENCES products(id);

-- Update the test returns with actual product IDs
-- Get the first product that exists and assign to all test returns
WITH first_product AS (
  SELECT id FROM products 
  WHERE id IS NOT NULL 
  LIMIT 1
)
UPDATE product_returns
SET product_id = (SELECT id FROM first_product)
WHERE product_id IS NULL 
  AND outlet_id = 'e3c1e3dd-36e6-4d2d-916d-66d58c51f926';

-- Verify the updated data
SELECT 
  id, 
  product_id, 
  outlet_id, 
  return_reason, 
  condition_status, 
  resolution_status,
  return_date
FROM product_returns
ORDER BY id DESC
LIMIT 10;
