DELETE FROM public.sale_items
WHERE sale_id IN (
  SELECT id
  FROM public.sales
  WHERE created_at >= '2026-06-30T00:00:00+07:00'
    AND created_at < '2026-07-01T00:00:00+07:00'
);

DELETE FROM public.sales
WHERE created_at >= '2026-06-30T00:00:00+07:00'
  AND created_at < '2026-07-01T00:00:00+07:00';

-- 0001 | Butterscotch (M) | CASH | 2026-06-30T09:19:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T09:19:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0002 | Baileys Latte (M) | QRIS | 2026-06-30T09:19:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T09:19:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0003 | Butterscotch (M) | QRIS | 2026-06-30T09:19:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T09:19:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0004 | Gula Aren (M) | QRIS | 2026-06-30T09:19:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T09:19:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0005 | Butterscotch (M) | QRIS | 2026-06-30T09:47:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T09:47:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0006 | Cold Brew (M) | QRIS | 2026-06-30T09:58:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-30T09:58:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1),
  1,
  10000.00,
  0.00
FROM inserted_sale;

-- 0007 | Gula Aren (M) | CASH | 2026-06-30T10:01:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T10:01:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0008 | Gula Aren (M) | CASH | 2026-06-30T10:15:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T10:15:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0009 | Gula Aren (M) | CASH | 2026-06-30T10:27:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T10:27:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0010 | Salted Caramel (M) | CASH | 2026-06-30T10:27:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T10:27:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0011 | Gula Aren (M) | QRIS | 2026-06-30T10:28:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T10:28:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0012 | Butterscotch (M) | CASH | 2026-06-30T10:38:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T10:38:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0013 | Baileys Latte (M) | QRIS | 2026-06-30T10:38:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T10:38:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0014 | Butterscotch (M) | QRIS | 2026-06-30T10:44:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T10:44:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0015 | Gula Aren (M) | CASH | 2026-06-30T11:01:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:01:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0016 | Gula Aren (M) | QRIS | 2026-06-30T11:06:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:06:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0017 | Gula Aren (M) | CASH | 2026-06-30T11:20:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:20:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0018 | Butterscotch (M) | CASH | 2026-06-30T11:21:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T11:21:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0019 | Butterscotch (M) | CASH | 2026-06-30T11:23:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T11:23:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0020 | Baileys Latte (M) | CASH | 2026-06-30T11:24:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T11:24:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0021 | Gula Aren (M) | CASH | 2026-06-30T11:26:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T11:26:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0022 | Baileys Latte (M) | CASH | 2026-06-30T11:36:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T11:36:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0023 | Gula Aren (M) | CASH | 2026-06-30T11:37:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:37:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0024 | Baileys Latte (M) | QRIS | 2026-06-30T11:40:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T11:40:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0025 | Butterscotch (M) | QRIS | 2026-06-30T11:50:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T11:50:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0026 | Gula Aren (M) | CASH | 2026-06-30T11:51:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:51:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0027 | Gula Aren (M) | CASH | 2026-06-30T11:55:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-30T11:55:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  3,
  8000.00,
  0.00
FROM inserted_sale;

-- 0028 | Baileys Latte (M) | QRIS | 2026-06-30T11:56:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T11:56:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0029 | Vanilla (M) | QRIS | 2026-06-30T11:56:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T11:56:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0030 | Gula Aren (M) | CASH | 2026-06-30T11:58:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T11:58:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0031 | Gula Aren (M) | CASH | 2026-06-30T12:00:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:00:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0032 | Baileys Latte (M) | QRIS | 2026-06-30T12:10:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T12:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0033 | Baileys Latte (M) | QRIS | 2026-06-30T12:11:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T12:11:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0034 | Baileys Latte (M) | QRIS | 2026-06-30T12:11:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T12:11:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0035 | Gula Aren (M) | QRIS | 2026-06-30T12:11:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:11:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0036 | Gula Aren (M) | CASH | 2026-06-30T12:11:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T12:11:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0037 | Butterscotch (M) | QRIS | 2026-06-30T12:12:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T12:12:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0038 | Hazelnut (M) | QRIS | 2026-06-30T12:13:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:13:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0039 | Butterscotch (M) | CASH | 2026-06-30T12:18:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:18:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0040 | Gula Aren (M) | QRIS | 2026-06-30T12:21:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:21:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0041 | Gula Aren (M) | QRIS | 2026-06-30T12:23:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:23:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0042 | Baileys Latte (M) | CASH | 2026-06-30T12:26:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T12:26:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0043 | Baileys Latte (M) | QRIS | 2026-06-30T12:26:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T12:26:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0044 | Butterscotch (M) | QRIS | 2026-06-30T12:27:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T12:27:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0045 | Hazelnut (M) | CASH | 2026-06-30T12:27:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:27:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0046 | Butterscotch (M) | QRIS | 2026-06-30T12:29:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:29:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0047 | Butterscotch (M) | QRIS | 2026-06-30T12:30:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:30:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0048 | Butterscotch (M) | CASH | 2026-06-30T12:31:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:31:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0049 | Hazelnut (M) | CASH | 2026-06-30T12:32:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:32:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0050 | Salted Caramel (M) | QRIS | 2026-06-30T12:34:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:34:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0051 | Butterscotch (M) | QRIS | 2026-06-30T12:34:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T12:34:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0052 | Gula Aren (M) | QRIS | 2026-06-30T12:35:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:35:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0053 | Gula Aren (M) | CASH | 2026-06-30T12:35:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:35:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0054 | Gula Aren (M) | CASH | 2026-06-30T12:37:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T12:37:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0055 | Butterscotch (M) | CASH | 2026-06-30T12:39:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:39:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0056 | Hazelnut (M) | CASH | 2026-06-30T12:39:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:39:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0057 | Butterscotch (M) | QRIS | 2026-06-30T12:40:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:40:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0058 | Baileys Latte (M) | QRIS | 2026-06-30T12:42:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T12:42:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0059 | Butterscotch (M) | QRIS | 2026-06-30T12:43:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:43:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0060 | Vanilla (M) | QRIS | 2026-06-30T12:44:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:44:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0061 | Salted Caramel (M) | GRATIS | 2026-06-30T12:45:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T12:45:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0062 | Butterscotch (M) | QRIS | 2026-06-30T12:50:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-30T12:50:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0063 | Butterscotch (M) | QRIS | 2026-06-30T12:52:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-30T12:52:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  6,
  12500.00,
  0.00
FROM inserted_sale;

-- 0064 | Baileys Latte (M) | QRIS | 2026-06-30T12:52:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-30T12:52:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0065 | Butterscotch (M) | CASH | 2026-06-30T12:53:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T12:53:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0066 | Baileys Latte (M) | QRIS | 2026-06-30T13:02:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:02:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0067 | Vanilla (M) | CASH | 2026-06-30T13:03:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:03:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0068 | Butterscotch (M) | QRIS | 2026-06-30T13:03:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:03:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0069 | Baileys Latte (M) | QRIS | 2026-06-30T13:03:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:03:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0070 | Gula Aren (M) | QRIS | 2026-06-30T13:03:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:03:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0071 | Butterscotch (M) | CASH | 2026-06-30T13:03:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:03:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0072 | Gula Aren (M) | CASH | 2026-06-30T13:06:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:06:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0073 | Butterscotch (M) | QRIS | 2026-06-30T13:04:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:04:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0074 | Gula Aren (M) | CASH | 2026-06-30T13:11:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:11:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0075 | Baileys Latte (M) | CASH | 2026-06-30T13:11:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:11:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0076 | Baileys Latte (M) | CASH | 2026-06-30T13:11:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:11:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0077 | Butterscotch (M) | CASH | 2026-06-30T13:11:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:11:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0078 | Gula Aren (M) | QRIS | 2026-06-30T13:12:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-30T13:12:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  3,
  8000.00,
  0.00
FROM inserted_sale;

-- 0079 | Butterscotch (M) | QRIS | 2026-06-30T13:12:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T13:12:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0080 | Butterscotch (M) | QRIS | 2026-06-30T13:12:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-30T13:12:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  5,
  12500.00,
  0.00
FROM inserted_sale;

-- 0081 | Baileys Latte (M) | QRIS | 2026-06-30T13:13:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-30T13:13:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  5,
  12500.00,
  0.00
FROM inserted_sale;

-- 0082 | Cold Brew (M) | QRIS | 2026-06-30T13:14:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-30T13:14:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1),
  1,
  10000.00,
  0.00
FROM inserted_sale;

-- 0083 | Baileys Latte (M) | CASH | 2026-06-30T13:15:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:15:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0084 | Vanilla (M) | CASH | 2026-06-30T13:15:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:15:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0085 | Salted Caramel (M) | CASH | 2026-06-30T13:16:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-30T13:16:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0086 | Gula Aren (M) | CASH | 2026-06-30T13:16:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:16:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0087 | Butterscotch (M) | QRIS | 2026-06-30T13:19:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:19:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0088 | Baileys Latte (M) | QRIS | 2026-06-30T13:19:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T13:19:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0089 | Gula Aren (M) | QRIS | 2026-06-30T13:22:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:22:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0090 | Butterscotch (M) | CASH | 2026-06-30T13:23:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:23:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0091 | Butterscotch (M) | CASH | 2026-06-30T13:24:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T13:24:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0092 | Butterscotch (M) | CASH | 2026-06-30T13:32:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T13:32:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0093 | Gula Aren (M) | CASH | 2026-06-30T13:40:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T13:40:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0094 | Butterscotch (M) | QRIS | 2026-06-30T14:09:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:09:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0095 | Gula Aren (M) | QRIS | 2026-06-30T14:11:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T14:11:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0096 | Butterscotch (M) | CASH | 2026-06-30T14:15:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T14:15:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0097 | Gula Aren (M) | CASH | 2026-06-30T14:15:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T14:15:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0098 | Salted Caramel (M) | CASH | 2026-06-30T14:15:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:15:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0099 | Gula Aren (M) | QRIS | 2026-06-30T14:15:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T14:15:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0100 | Butterscotch (M) | CASH | 2026-06-30T14:18:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:18:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0101 | Baileys Latte (M) | QRIS | 2026-06-30T14:18:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T14:18:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0102 | Vanilla (M) | QRIS | 2026-06-30T14:20:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:20:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0103 | Hazelnut (M) | QRIS | 2026-06-30T14:20:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:20:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0104 | Baileys Latte (M) | QRIS | 2026-06-30T14:20:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T14:20:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0105 | Butterscotch (M) | QRIS | 2026-06-30T14:24:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:24:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0106 | Butterscotch (M) | CASH | 2026-06-30T14:31:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:31:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0107 | Baileys Latte (M) | QRIS | 2026-06-30T14:40:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T14:40:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0108 | Butterscotch (M) | CASH | 2026-06-30T14:45:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:45:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0109 | Salted Caramel (M) | CASH | 2026-06-30T14:46:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:46:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0110 | Butterscotch (M) | CASH | 2026-06-30T14:46:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:46:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0111 | Baileys Latte (M) | CASH | 2026-06-30T14:46:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T14:46:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0112 | Salted Caramel (M) | CASH | 2026-06-30T14:46:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T14:46:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0113 | Butterscotch (M) | QRIS | 2026-06-30T15:04:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:04:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0114 | Vanilla (M) | QRIS | 2026-06-30T15:04:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:04:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0115 | Butterscotch (M) | CASH | 2026-06-30T15:05:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:05:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0116 | Gula Aren (M) | CASH | 2026-06-30T15:06:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T15:06:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0117 | Gula Aren (M) | CASH | 2026-06-30T15:08:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T15:08:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0118 | Gula Aren (M) | CASH | 2026-06-30T15:08:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T15:08:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0119 | Baileys Latte (M) | QRIS | 2026-06-30T15:09:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T15:09:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0120 | Butterscotch (M) | QRIS | 2026-06-30T15:13:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:13:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0121 | Butterscotch (M) | CASH | 2026-06-30T15:16:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:16:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0122 | Butterscotch (M) | CASH | 2026-06-30T15:17:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:17:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0123 | Baileys Latte (M) | QRIS | 2026-06-30T15:19:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T15:19:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0124 | Vanilla (M) | CASH | 2026-06-30T15:35:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:35:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0125 | Butterscotch (M) | QRIS | 2026-06-30T15:35:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:35:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0126 | Gula Aren (M) | QRIS | 2026-06-30T15:44:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T15:44:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0127 | Baileys Latte (M) | QRIS | 2026-06-30T15:45:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T15:45:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0128 | Baileys Latte (M) | CASH | 2026-06-30T15:47:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T15:47:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0129 | Butterscotch (M) | QRIS | 2026-06-30T15:48:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:48:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0130 | Baileys Latte (M) | QRIS | 2026-06-30T15:48:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T15:48:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0131 | Gula Aren (M) | QRIS | 2026-06-30T15:48:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T15:48:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0132 | Butterscotch (M) | CASH | 2026-06-30T15:49:30+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T15:49:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0133 | Butterscotch (M) | QRIS | 2026-06-30T16:00:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:00:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0134 | Butterscotch (M) | QRIS | 2026-06-30T16:04:30+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:04:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0135 | Butterscotch (M) | QRIS | 2026-06-30T16:12:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:12:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0136 | Baileys Latte (M) | QRIS | 2026-06-30T16:12:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T16:12:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0137 | Butterscotch (M) | QRIS | 2026-06-30T16:15:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:15:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0138 | Butterscotch (M) | QRIS | 2026-06-30T16:15:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:15:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0139 | Salted Caramel (M) | QRIS | 2026-06-30T16:15:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:15:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0140 | Butterscotch (M) | QRIS | 2026-06-30T16:15:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T16:15:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0141 | Gula Aren (M) | CASH | 2026-06-30T16:27:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T16:27:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0142 | Salted Caramel (M) | GRATIS | 2026-06-30T16:31:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T16:31:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0143 | Butterscotch (M) | QRIS | 2026-06-30T16:48:30+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T16:48:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0144 | Vanilla (M) | QRIS | 2026-06-30T16:48:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T16:48:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0145 | Baileys Latte (M) | CASH | 2026-06-30T16:50:20+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T16:50:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0146 | Gula Aren (M) | CASH | 2026-06-30T16:50:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-30T16:50:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  4,
  8000.00,
  0.00
FROM inserted_sale;

-- 0147 | Gula Aren (M) | CASH | 2026-06-30T17:02:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T17:02:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0148 | Baileys Latte (M) | QRIS | 2026-06-30T17:08:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T17:08:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0149 | Butterscotch (M) | QRIS | 2026-06-30T17:14:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T17:14:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0150 | Salted Caramel (M) | CASH | 2026-06-30T17:14:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T17:14:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0151 | Butterscotch (M) | CASH | 2026-06-30T17:19:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T17:19:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0152 | Baileys Latte (M) | QRIS | 2026-06-30T17:24:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T17:24:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0153 | Vanilla (M) | CASH | 2026-06-30T17:24:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T17:24:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0154 | Butterscotch (M) | CASH | 2026-06-30T17:24:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T17:24:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0155 | Baileys Latte (M) | CASH | 2026-06-30T17:27:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T17:27:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0156 | Baileys Latte (M) | CASH | 2026-06-30T17:29:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T17:29:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0157 | Gula Aren (M) | QRIS | 2026-06-30T17:33:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T17:33:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0158 | Gula Aren (M) | QRIS | 2026-06-30T17:34:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T17:34:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0159 | Gula Aren (M) | CASH | 2026-06-30T17:34:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T17:34:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0160 | Butterscotch (M) | QRIS | 2026-06-30T17:43:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T17:43:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0161 | Baileys Latte (M) | QRIS | 2026-06-30T17:58:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T17:58:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0162 | Butterscotch (M) | QRIS | 2026-06-30T18:00:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '2026-06-30T18:00:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  7,
  12500.00,
  0.00
FROM inserted_sale;

-- 0163 | Vanilla (M) | QRIS | 2026-06-30T18:01:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-30T18:01:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0164 | Butterscotch (M) | QRIS | 2026-06-30T18:09:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:09:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0165 | Hazelnut (M) | QRIS | 2026-06-30T18:09:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:09:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0166 | Butterscotch (M) | QRIS | 2026-06-30T18:10:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0167 | Gula Aren (M) | CASH | 2026-06-30T18:11:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T18:11:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0168 | Baileys Latte (M) | QRIS | 2026-06-30T18:17:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:17:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0169 | Hazelnut (M) | CASH | 2026-06-30T18:17:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:17:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0170 | Gula Aren (M) | QRIS | 2026-06-30T18:18:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-30T18:18:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  5,
  8000.00,
  0.00
FROM inserted_sale;

-- 0171 | Butterscotch (M) | QRIS | 2026-06-30T18:18:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T18:18:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0172 | Salted Caramel (M) | QRIS | 2026-06-30T18:19:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:19:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0173 | Hazelnut (M) | QRIS | 2026-06-30T18:19:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:19:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0174 | Butterscotch (M) | QRIS | 2026-06-30T18:21:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T18:21:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0175 | Baileys Latte (M) | QRIS | 2026-06-30T18:21:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:21:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0176 | Vanilla (M) | CASH | 2026-06-30T18:21:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:21:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0177 | Baileys Latte (M) | QRIS | 2026-06-30T18:21:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:21:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0178 | Butterscotch (M) | QRIS | 2026-06-30T18:21:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T18:21:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0179 | Baileys Latte (M) | QRIS | 2026-06-30T18:23:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:23:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0180 | Gula Aren (M) | QRIS | 2026-06-30T18:30:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T18:30:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0181 | Baileys Latte (M) | QRIS | 2026-06-30T18:31:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T18:31:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0182 | Baileys Latte (M) | QRIS | 2026-06-30T18:33:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:33:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0183 | Salted Caramel (M) | CASH | 2026-06-30T18:37:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T18:37:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0184 | Baileys Latte (M) | QRIS | 2026-06-30T18:58:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T18:58:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0185 | Baileys Latte (M) | QRIS | 2026-06-30T19:02:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:02:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0186 | Baileys Latte (M) | QRIS | 2026-06-30T19:05:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-30T19:05:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0187 | Baileys Latte (M) | QRIS | 2026-06-30T19:06:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:06:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0188 | Baileys Latte (M) | QRIS | 2026-06-30T19:08:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T19:08:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0189 | Cold Brew (M) | QRIS | 2026-06-30T19:08:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-30T19:08:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1),
  1,
  10000.00,
  0.00
FROM inserted_sale;

-- 0190 | Baileys Latte (M) | QRIS | 2026-06-30T19:09:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:09:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0191 | Salted Caramel (M) | QRIS | 2026-06-30T19:09:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:09:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0192 | Butterscotch (M) | QRIS | 2026-06-30T19:09:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:09:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0193 | Butterscotch (M) | QRIS | 2026-06-30T19:22:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T19:22:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0194 | Baileys Latte (M) | QRIS | 2026-06-30T19:26:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:26:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0195 | Vanilla (M) | QRIS | 2026-06-30T19:35:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:35:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0196 | Butterscotch (M) | QRIS | 2026-06-30T19:36:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:36:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0197 | Baileys Latte (M) | CASH | 2026-06-30T19:36:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:36:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0198 | Baileys Latte (M) | QRIS | 2026-06-30T19:36:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:36:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0199 | Butterscotch (M) | QRIS | 2026-06-30T19:45:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:45:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0200 | Butterscotch (M) | QRIS | 2026-06-30T19:52:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:52:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0201 | Baileys Latte (M) | QRIS | 2026-06-30T19:52:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T19:52:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0202 | Butterscotch (M) | CASH | 2026-06-30T19:52:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:52:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0203 | Baileys Latte (M) | GRATIS | 2026-06-30T19:52:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T19:52:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0204 | Baileys Latte (M) | GRATIS | 2026-06-30T19:53:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T19:53:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0205 | Baileys Latte (M) | QRIS | 2026-06-30T19:58:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    312500.00,
    0.00,
    0.00,
    171561.00,
    '2026-06-30T19:58:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  25,
  12500.00,
  0.00
FROM inserted_sale;

-- 0206 | Salted Caramel (M) | CASH | 2026-06-30T19:59:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T19:59:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0207 | Butterscotch (M) | QRIS | 2026-06-30T19:59:20+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T19:59:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0208 | Vanilla (M) | QRIS | 2026-06-30T19:59:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T19:59:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0209 | Gula Aren (M) | QRIS | 2026-06-30T20:00:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-30T20:00:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  7,
  8000.00,
  0.00
FROM inserted_sale;

-- 0210 | Baileys 1 ltr | QRIS | 2026-06-30T20:01:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    270000.00,
    0.00,
    0.00,
    117786.00,
    '2026-06-30T20:01:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (1 L)' LIMIT 1),
  3,
  90000.00,
  0.00
FROM inserted_sale;

-- 0211 | Baileys Latte (M) | CASH | 2026-06-30T20:01:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-30T20:01:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0212 | Gula Aren (M) | CASH | 2026-06-30T20:02:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-30T20:02:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  3,
  8000.00,
  0.00
FROM inserted_sale;

-- 0213 | Butterscotch (M) | QRIS | 2026-06-30T20:17:39+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T20:17:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0214 | Salted Caramel (M) | QRIS | 2026-06-30T20:17:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-30T20:17:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0215 | Gula Aren (M) | QRIS | 2026-06-30T20:18:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-30T20:18:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  5,
  8000.00,
  0.00
FROM inserted_sale;

-- 0216 | Hazelnut (M) | CASH | 2026-06-30T20:18:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T20:18:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0217 | Baileys Latte (M) | CASH | 2026-06-30T20:19:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-30T20:19:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0218 | Gula Aren (M) | CASH | 2026-06-30T20:20:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-30T20:20:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  4,
  8000.00,
  0.00
FROM inserted_sale;

-- 0219 | Gula Aren (M) | GRATIS | 2026-06-30T20:21:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T20:21:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0220 | Cold Brew (M) | CASH | 2026-06-30T20:22:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-30T20:22:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1),
  1,
  10000.00,
  0.00
FROM inserted_sale;

-- 0221 | Baileys Latte (M) | CASH | 2026-06-30T20:22:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T20:22:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0222 | Butterscotch (M) | QRIS | 2026-06-30T20:25:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-30T20:25:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  5,
  12500.00,
  0.00
FROM inserted_sale;

-- 0223 | Baileys Latte (M) | QRIS | 2026-06-30T20:25:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-30T20:25:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0224 | Salted Caramel (M) | CASH | 2026-06-30T20:26:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-30T20:26:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0225 | Vanilla (M) | CASH | 2026-06-30T20:27:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T20:27:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0226 | Hazelnut (M) | CASH | 2026-06-30T20:27:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T20:27:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0227 | Gula Aren (M) | CASH | 2026-06-30T20:32:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-30T20:32:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  4,
  8000.00,
  0.00
FROM inserted_sale;

-- 0228 | Butterscotch (M) | CASH | 2026-06-30T20:32:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T20:32:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0229 | Hazelnut (M) | CASH | 2026-06-30T20:32:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T20:32:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0230 | Salted Caramel (M) | CASH | 2026-06-30T20:33:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T20:33:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0231 | Baileys Latte (M) | CASH | 2026-06-30T20:33:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-30T20:33:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0232 | Butterscotch (M) | QRIS | 2026-06-30T20:37:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T20:37:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0233 | Butterscotch (M) | CASH | 2026-06-30T20:37:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T20:37:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0234 | Butterscotch (M) | CASH | 2026-06-30T20:59:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T20:59:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0235 | Baileys Latte (M) | QRIS | 2026-06-30T21:01:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T21:01:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0236 | Butterscotch (M) | CASH | 2026-06-30T21:04:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:04:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0237 | Hazelnut (M) | CASH | 2026-06-30T21:12:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:12:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0238 | Gula Aren (M) | QRIS | 2026-06-30T21:19:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-30T21:19:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0239 | Butterscotch (M) | QRIS | 2026-06-30T21:20:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:20:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0240 | Butterscotch (M) | CASH | 2026-06-30T21:41:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:41:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0241 | Butterscotch (M) | QRIS | 2026-06-30T21:44:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:44:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0242 | Vanilla (M) | CASH | 2026-06-30T21:51:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T21:51:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0243 | Baileys Latte (M) | CASH | 2026-06-30T21:51:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T21:51:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0244 | Butterscotch (M) | CASH | 2026-06-30T22:00:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:00:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0245 | Hazelnut (M) | QRIS | 2026-06-30T22:02:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:02:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0246 | Vanilla (M) | QRIS | 2026-06-30T22:02:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:02:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0247 | Baileys Latte (M) | QRIS | 2026-06-30T22:02:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:02:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0248 | Baileys Latte (M) | CASH | 2026-06-30T22:03:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:03:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0249 | Butterscotch (M) | QRIS | 2026-06-30T22:05:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-30T22:05:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  6,
  12500.00,
  0.00
FROM inserted_sale;

-- 0250 | Gula Aren (M) | QRIS | 2026-06-30T22:06:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T22:06:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0251 | Hazelnut (M) | CASH | 2026-06-30T22:06:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T22:06:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0252 | Gula Aren (M) | CASH | 2026-06-30T22:06:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-30T22:06:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  8,
  8000.00,
  0.00
FROM inserted_sale;

-- 0253 | Butterscotch (M) | CASH | 2026-06-30T22:06:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-30T22:06:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0254 | Vanilla (M) | CASH | 2026-06-30T22:06:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:06:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0255 | Salted Caramel (M) | CASH | 2026-06-30T22:06:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:06:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0256 | Hazelnut (M) | CASH | 2026-06-30T22:06:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:06:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0257 | Baileys Latte (M) | CASH | 2026-06-30T22:07:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-30T22:07:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  4,
  12500.00,
  0.00
FROM inserted_sale;

-- 0258 | Butterscotch (M) | QRIS | 2026-06-30T22:11:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-30T22:11:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  8,
  12500.00,
  0.00
FROM inserted_sale;

-- 0259 | Gula Aren (M) | QRIS | 2026-06-30T22:11:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-30T22:11:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  2,
  8000.00,
  0.00
FROM inserted_sale;

-- 0260 | Butterscotch (M) | CASH | 2026-06-30T22:12:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T22:12:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0261 | Vanilla (M) | CASH | 2026-06-30T22:12:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-30T22:12:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  2,
  12500.00,
  0.00
FROM inserted_sale;

-- 0262 | Salted Caramel (M) | CASH | 2026-06-30T22:12:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-30T22:12:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1),
  3,
  12500.00,
  0.00
FROM inserted_sale;

-- 0263 | Gula Aren (M) | CASH | 2026-06-30T22:15:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-30T22:15:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  7,
  8000.00,
  0.00
FROM inserted_sale;

-- 0264 | Gula Aren (M) | GRATIS | 2026-06-30T22:15:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T22:15:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0265 | Baileys Latte (M) | CASH | 2026-06-30T22:15:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-30T22:15:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  5,
  12500.00,
  0.00
FROM inserted_sale;

-- 0266 | Vanilla (M) | QRIS | 2026-06-30T22:24:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:24:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0267 | Baileys Latte (M) | QRIS | 2026-06-30T22:24:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:24:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0268 | Hazelnut (M) | CASH | 2026-06-30T22:39:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-30T22:39:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0269 | Baileys Latte (M) | CASH | 2026-06-30T22:39:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:39:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0270 | Gula Aren (M) | GRATIS | 2026-06-30T22:42:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-30T22:42:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1),
  1,
  8000.00,
  0.00
FROM inserted_sale;

-- 0271 | Baileys Latte (M) | CASH | 2026-06-30T22:44:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:44:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;

-- 0272 | Baileys Latte (M) | QRIS | 2026-06-30T22:49:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-30T22:49:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  (SELECT id FROM public.products WHERE name = 'Baileys (M)' LIMIT 1),
  1,
  12500.00,
  0.00
FROM inserted_sale;
