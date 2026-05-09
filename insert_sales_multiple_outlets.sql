-- Insert sales transactions for multiple outlets on May 9, 2026

-- First, let's get outlet IDs (query to identify outlets)
-- SELECT id, name FROM public.outlets LIMIT 10;

-- Insert sales for Outlet 2 (gerobak Papi 002)
INSERT INTO public.sales (
  outlet_id, barista_id, total_amount, payment_method, 
  hpp_total, bonus_amount, profit, created_at
) VALUES
(
  (SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  45000,
  'cash',
  18000,
  2250,
  24750,
  '2026-05-09T08:15:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  52000,
  'qris',
  20800,
  2600,
  28600,
  '2026-05-09T11:30:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  38000,
  'cash',
  15200,
  1900,
  20900,
  '2026-05-09T14:45:00'
);

-- Insert sales for Outlet 3 (gerobak Papi 003)
INSERT INTO public.sales (
  outlet_id, barista_id, total_amount, payment_method, 
  hpp_total, bonus_amount, profit, created_at
) VALUES
(
  (SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  55000,
  'qris',
  22000,
  2750,
  30250,
  '2026-05-09T09:00:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  48000,
  'cash',
  19200,
  2400,
  26400,
  '2026-05-09T12:15:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  42000,
  'qris',
  16800,
  2100,
  23100,
  '2026-05-09T16:30:00'
);

-- Insert sales for Outlet 4 (gerobak Papi 004)
INSERT INTO public.sales (
  outlet_id, barista_id, total_amount, payment_method, 
  hpp_total, bonus_amount, profit, created_at
) VALUES
(
  (SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  60000,
  'cash',
  24000,
  3000,
  33000,
  '2026-05-09T07:30:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  50000,
  'qris',
  20000,
  2500,
  27500,
  '2026-05-09T13:00:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  44000,
  'cash',
  17600,
  2200,
  24200,
  '2026-05-09T17:45:00'
);

-- Insert sales for Outlet 5 (gerobak Papi 005)
INSERT INTO public.sales (
  outlet_id, barista_id, total_amount, payment_method, 
  hpp_total, bonus_amount, profit, created_at
) VALUES
(
  (SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  35000,
  'qris',
  14000,
  1750,
  19250,
  '2026-05-09T08:45:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  49000,
  'cash',
  19600,
  2450,
  26950,
  '2026-05-09T11:15:00'
),
(
  (SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1),
  (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
  41000,
  'qris',
  16400,
  2050,
  22550,
  '2026-05-09T15:30:00'
);

-- Insert sale items for all sales (002-005)
-- Ensure every sale has at least 2-3 items
DO $$
DECLARE
  sale_rec RECORD;
  product_id UUID;
  item_count INTEGER;
  i INTEGER;
  random_qty INTEGER;
  random_price INTEGER;
BEGIN
  -- Loop through all sales from 2026-05-09 for outlets 002-005
  FOR sale_rec IN 
    SELECT s.id, s.total_amount 
    FROM public.sales s
    WHERE s.created_at >= '2026-05-09T07:00:00' AND s.created_at <= '2026-05-09T18:00:00'
    ORDER BY s.created_at
  LOOP
    -- Get random number of items (2-3 per sale)
    item_count := (RANDOM() * 2 + 2)::int;
    
    -- Insert that many items for this sale
    FOR i IN 1..item_count LOOP
      -- Get random product
      SELECT id INTO product_id FROM public.products ORDER BY RANDOM() LIMIT 1;
      
      random_qty := (RANDOM() * 3 + 1)::int;
      random_price := (RANDOM() * 20000 + 10000)::int;
      
      INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
      VALUES (
        sale_rec.id,
        product_id,
        random_qty,
        random_price,
        (random_price * 0.4)::int
      );
    END LOOP;
    
    RAISE NOTICE 'Added % items to sale %', item_count, sale_rec.id;
  END LOOP;
  
  RAISE NOTICE 'Completed adding items to all sales 002-005!';
END $$;

-- INSERT SALES FOR REMAINING OUTLETS (006+)
-- This ensures all outlets have sales data with items

DO $$
DECLARE
  outlet_rec RECORD;
  barista_id UUID;
  sale_id UUID;
  random_amount INTEGER;
  i INTEGER;
  item_count INTEGER;
  j INTEGER;
  product_id UUID;
  random_qty INTEGER;
  random_price INTEGER;
BEGIN
  -- Get a barista
  SELECT id INTO barista_id FROM public.users WHERE role = 'barista' LIMIT 1;
  
  -- Check which outlets don't have sales on 2026-05-09 yet
  FOR outlet_rec IN 
    SELECT o.id, o.name 
    FROM public.outlets o
    WHERE NOT EXISTS (
      SELECT 1 FROM public.sales s 
      WHERE s.outlet_id = o.id 
      AND s.created_at::date = '2026-05-09'::date
    )
    ORDER BY o.id
  LOOP
    -- Insert 3 sales for each outlet missing data
    FOR i IN 1..3 LOOP
      random_amount := (RANDOM() * 40000 + 30000)::int;
      
      INSERT INTO public.sales (
        outlet_id, barista_id, total_amount, payment_method,
        hpp_total, bonus_amount, profit, created_at
      ) VALUES (
        outlet_rec.id,
        barista_id,
        random_amount,
        CASE WHEN RANDOM() > 0.5 THEN 'cash' ELSE 'qris' END,
        ROUND(random_amount * 0.4),
        ROUND(random_amount * 0.05),
        ROUND(random_amount * 0.55),
        '2026-05-09'::timestamp + (i * 3 || ' hours')::interval + ((RANDOM() * 120)::int || ' minutes')::interval
      ) RETURNING id INTO sale_id;
      
      -- Insert 2-3 sale items for each sale
      item_count := (RANDOM() * 2 + 2)::int;
      FOR j IN 1..item_count LOOP
        SELECT id INTO product_id FROM public.products ORDER BY RANDOM() LIMIT 1;
        random_qty := (RANDOM() * 3 + 1)::int;
        random_price := (RANDOM() * 20000 + 10000)::int;
        
        INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
        VALUES (
          sale_id,
          product_id,
          random_qty,
          random_price,
          (random_price * 0.4)::int
        );
      END LOOP;
    END LOOP;
  END LOOP;
  
  RAISE NOTICE 'Completed inserting sales with items for all outlets!';
END $$;

-- Verify the inserted data
SELECT 
  COUNT(*) as total_sales,
  COUNT(DISTINCT outlet_id) as outlets,
  COUNT(DISTINCT si.id) as total_items,
  SUM(total_amount) as total_omset
FROM public.sales s
LEFT JOIN public.sale_items si ON s.id = si.sale_id
WHERE s.created_at::date = '2026-05-09'::date;

-- Show breakdown by outlet with item counts
SELECT 
  o.name,
  COUNT(s.id) as transaction_count,
  COUNT(si.id) as total_items,
  SUM(s.total_amount) as omset_today,
  MIN(s.created_at) as first_transaction,
  MAX(s.created_at) as last_transaction
FROM public.outlets o
LEFT JOIN public.sales s ON o.id = s.outlet_id AND s.created_at::date = '2026-05-09'::date
LEFT JOIN public.sale_items si ON s.id = si.sale_id
GROUP BY o.id, o.name
ORDER BY o.name;

-- Check for sales WITHOUT items (should be empty!)
SELECT 
  'WARNING: Sales without items found!' as status,
  s.id as sale_id,
  s.outlet_id
FROM public.sales s
WHERE s.created_at::date = '2026-05-09'::date
AND NOT EXISTS (SELECT 1 FROM public.sale_items si WHERE si.sale_id = s.id)
ORDER BY s.created_at;

-- If above query is empty, all sales have items! ✅
