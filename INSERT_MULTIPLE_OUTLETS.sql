-- ============================================================
-- Insert Product Returns for Multiple Outlets
-- Outlets: Gerobak Papi 002, 003, 008
-- Dates: Mix of yesterday and today
-- ============================================================

-- Step 1: Check available outlets
SELECT id, name FROM outlets WHERE name LIKE '%Papi%' ORDER BY name;

-- Step 2: Get product IDs for variety
SELECT id, name FROM products LIMIT 8;

-- Step 3: Insert returns for Gerobak Papi 002 (yesterday and today)
WITH outlet_papi_002 AS (
  SELECT id FROM outlets WHERE name LIKE '%Papi 002%' LIMIT 1
),
products_sample AS (
  SELECT id FROM products LIMIT 3
),
yesterday AS (
  SELECT CURRENT_DATE - INTERVAL '1 day' as return_date
)
INSERT INTO product_returns 
(product_id, outlet_id, return_reason, condition_status, resolution_status, return_date)
SELECT 
  p.id,
  o.id,
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 1 THEN 'Produk expired'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 2 THEN 'Packaging rusak'
    ELSE 'Kualitas tidak sesuai'
  END,
  'damaged',
  'pending',
  y.return_date
FROM products_sample p, outlet_papi_002 o, yesterday y;

-- Step 4: Insert returns for Gerobak Papi 003 (yesterday only)
WITH outlet_papi_003 AS (
  SELECT id FROM outlets WHERE name LIKE '%Papi 003%' LIMIT 1
),
products_sample AS (
  SELECT id FROM products OFFSET 3 LIMIT 4
),
yesterday AS (
  SELECT CURRENT_DATE - INTERVAL '1 day' as return_date
)
INSERT INTO product_returns 
(product_id, outlet_id, return_reason, condition_status, resolution_status, return_date)
SELECT 
  p.id,
  o.id,
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 1 THEN 'Kemasan penyok'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 2 THEN 'Produk rusak'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 3 THEN 'Ekspirasi'
    ELSE 'Kualitas rendah'
  END,
  'damaged',
  'pending',
  y.return_date
FROM products_sample p, outlet_papi_003 o, yesterday y;

-- Step 5: Insert returns for Gerobak Papi 008 (today only)
WITH outlet_papi_008 AS (
  SELECT id FROM outlets WHERE name LIKE '%Papi 008%' LIMIT 1
),
products_sample AS (
  SELECT id FROM products OFFSET 6 LIMIT 3
)
INSERT INTO product_returns 
(product_id, outlet_id, return_reason, condition_status, resolution_status, return_date)
SELECT 
  p.id,
  o.id,
  CASE 
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 1 THEN 'Botol pecah'
    WHEN ROW_NUMBER() OVER (ORDER BY p.id) = 2 THEN 'Label rusak'
    ELSE 'Rasa berubah'
  END,
  'damaged',
  'pending',
  CURRENT_DATE
FROM products_sample p, outlet_papi_008 o;

-- Step 6: Verify all returns by outlet with barista names
SELECT 
  CONCAT(o.name, ' (', COALESCE(u.name, 'Barista Unknown'), ')') as outlet_with_barista,
  COUNT(*) as total_returns,
  STRING_AGG(DISTINCT pr.return_date::text, ', ') as dates
FROM product_returns pr
JOIN outlets o ON pr.outlet_id = o.id
LEFT JOIN users u ON o.id = u.outlet_id
GROUP BY o.id, o.name, u.full_name
ORDER BY o.name, u.full_name;

-- Step 7: Detailed view - all returns by outlet and date with barista
SELECT 
  CONCAT(o.name, ' (', COALESCE(u.name, 'Barista Unknown'), ')') as outlet_with_barista,
  pr.return_date,
  p.name as product_name,
  pr.return_reason,
  pr.condition_status,
  pr.resolution_status
FROM product_returns pr
JOIN outlets o ON pr.outlet_id = o.id
LEFT JOIN users u ON o.id = u.outlet_id
JOIN products p ON pr.product_id = p.id
WHERE o.name LIKE '%Papi%' AND o.name LIKE '%00%'
ORDER BY o.name, pr.return_date DESC, p.name;

-- Step 8: Summary by outlet and date with barista
SELECT 
  CONCAT(o.name, ' (', COALESCE(u.name, 'Barista Unknown'), ')') as outlet_with_barista,
  pr.return_date,
  COUNT(*) as total_returns
FROM product_returns pr
JOIN outlets o ON pr.outlet_id = o.id
LEFT JOIN users u ON o.id = u.outlet_id
WHERE o.name LIKE '%Papi%' AND o.name LIKE '%00%'
GROUP BY o.id, o.name, u.full_name, pr.return_date
ORDER BY o.name, pr.return_date DESC;

-- Step 9: Grand total
SELECT COUNT(*) as total_returns_all_papi_outlets
FROM product_returns pr
JOIN outlets o ON pr.outlet_id = o.id
WHERE o.name LIKE '%Papi%' AND o.name LIKE '%00%';
