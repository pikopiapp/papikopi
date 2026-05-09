-- Insert sales transactions for multiple outlets on May 9, 2026
-- Simplified version without random functions

-- Get outlet and user IDs first (run this to see what IDs to use)
-- SELECT id, name FROM public.outlets WHERE name LIKE '%Papi%' ORDER BY name;
-- SELECT id, name FROM public.users WHERE role = 'barista' LIMIT 5;
-- SELECT id, name FROM public.products LIMIT 10;

-- Insert sales for gerobak Papi 002
INSERT INTO public.sales (outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at)
VALUES 
  ((SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 45000, 'cash', 18000, 2250, 24750, '2026-05-09T08:15:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 52000, 'qris', 20800, 2600, 28600, '2026-05-09T11:30:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 38000, 'cash', 15200, 1900, 20900, '2026-05-09T14:45:00');

-- Insert sales for gerobak Papi 003
INSERT INTO public.sales (outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at)
VALUES 
  ((SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 55000, 'qris', 22000, 2750, 30250, '2026-05-09T09:00:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 48000, 'cash', 19200, 2400, 26400, '2026-05-09T12:15:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%003%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 42000, 'qris', 16800, 2100, 23100, '2026-05-09T16:30:00');

-- Insert sales for gerobak Papi 004
INSERT INTO public.sales (outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at)
VALUES 
  ((SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 60000, 'cash', 24000, 3000, 33000, '2026-05-09T07:30:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 50000, 'qris', 20000, 2500, 27500, '2026-05-09T13:00:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%004%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 44000, 'cash', 17600, 2200, 24200, '2026-05-09T17:45:00');

-- Insert sales for gerobak Papi 005
INSERT INTO public.sales (outlet_id, barista_id, total_amount, payment_method, hpp_total, bonus_amount, profit, created_at)
VALUES 
  ((SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 35000, 'qris', 14000, 1750, 19250, '2026-05-09T08:45:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 49000, 'cash', 19600, 2450, 26950, '2026-05-09T11:15:00'),
  ((SELECT id FROM public.outlets WHERE name LIKE '%005%' LIMIT 1), (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1), 41000, 'qris', 16400, 2050, 22550, '2026-05-09T15:30:00');

-- Get the last inserted sale IDs for adding items
-- Store them for reference (replace with actual UUIDs after running inserts)

-- Insert sale items - Adjust the product and sale IDs based on your actual data
-- Example items for outlet 002, first sale
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT 
  (SELECT id FROM public.sales WHERE outlet_id = (SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1) AND created_at = '2026-05-09T08:15:00' LIMIT 1),
  (SELECT id FROM public.products WHERE name LIKE '%Baileys%' LIMIT 1),
  2,
  28000,
  5600;

INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT 
  (SELECT id FROM public.sales WHERE outlet_id = (SELECT id FROM public.outlets WHERE name LIKE '%002%' LIMIT 1) AND created_at = '2026-05-09T08:15:00' LIMIT 1),
  (SELECT id FROM public.products WHERE name LIKE '%Vanilla%' LIMIT 1),
  1,
  17000,
  6800;

-- Verify the data
SELECT 
  o.name as outlet,
  COUNT(s.id) as transaction_count,
  SUM(s.total_amount) as total_sales,
  COUNT(DISTINCT si.id) as total_items
FROM public.outlets o
LEFT JOIN public.sales s ON o.id = s.outlet_id AND s.created_at::date = '2026-05-09'
LEFT JOIN public.sale_items si ON s.id = si.sale_id
WHERE o.name LIKE '%Papi%'
GROUP BY o.id, o.name
ORDER BY o.name;
