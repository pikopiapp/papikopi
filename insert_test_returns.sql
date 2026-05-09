-- ============================================================
-- Insert Product Returns for yesterday (May 8, 2026)
-- ============================================================

-- Step 1: Get sample products and outlet
WITH products_list AS (
  SELECT id, name FROM products LIMIT 5
),
outlet_list AS (
  SELECT id, name FROM outlets LIMIT 1
),
yesterday AS (
  SELECT CURRENT_DATE - INTERVAL '1 day' as return_date
)
-- Step 2: Insert multiple returns for yesterday
INSERT INTO product_returns (
  product_id,
  outlet_id,
  return_reason,
  resolution_status,
  return_date
)
SELECT 
  p.id as product_id,
  o.id as outlet_id,
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 1 THEN 'Kemasan rusak'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 2 THEN 'Produk expired'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 3 THEN 'Rasa tidak sesuai'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 4 THEN 'Kemasan penyok'
    ELSE 'Produk cacat'
  END as return_reason,
  'pending' as resolution_status,
  y.return_date
FROM products_list p, outlet_list o, yesterday y
LIMIT 5;

-- Step 3: Insert data for today (May 9, 2026)
WITH products_list AS (
  SELECT id FROM products LIMIT 3
),
outlet_list AS (
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
  p.id,
  o.id,
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 1 THEN 'Kemasan rusak'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 2 THEN 'Produk expired'
    ELSE 'Rasa tidak sesuai'
  END,
  'pending',
  CURRENT_DATE
FROM products_list p, outlet_list o;

-- Step 4: Verify data was inserted
SELECT 
  return_date,
  COUNT(*) as total_returns,
  STRING_AGG(DISTINCT return_reason, ', ') as reasons
FROM product_returns
GROUP BY return_date
ORDER BY return_date DESC;

-- Step 5: Show detailed view
SELECT 
  id,
  product_id,
  (SELECT name FROM products WHERE id = product_returns.product_id) as product_name,
  outlet_id,
  (SELECT name FROM outlets WHERE id = product_returns.outlet_id) as outlet_name,
  return_reason,
  return_date,
  resolution_status
FROM product_returns
ORDER BY return_date DESC, id DESC;

-- Done! Test data inserted for both yesterday and today.
