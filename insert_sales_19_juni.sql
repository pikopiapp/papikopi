-- Generated SQL inserts for Orders 19 Juni.csv (2026-06-19)
-- Use with care: confirm outlet and product lookups match your database.

-- a18e9d75 | Butterscotch (M) | QRIS | 2026-06-19T09:26:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T09:26:56'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 2fe4206f | Butterscotch (M) | QRIS | 2026-06-19T09:46:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T09:46:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- c791944a | Baileys Latte (M) | QRIS | 2026-06-19T09:46:34
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T09:46:34'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- b2150b2d | Baileys Latte (M) | CASH | 2026-06-19T09:46:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T09:46:42'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 45670569 | Cold Brew (M) | QRIS | 2026-06-19T09:51:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T09:51:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 7015aca0 | Butterscotch (M) | CASH | 2026-06-19T10:27:43
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T10:27:43'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 967445db | Gula Aren (M) | QRIS | 2026-06-19T10:52:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000,
    0.00,
    0.00,
    10787,
    '2026-06-19T10:52:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 016219b0 | Butterscotch (M) | QRIS | 2026-06-19T10:57:37
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T10:57:37'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 4f69de5c | Butterscotch (M) | CASH | 2026-06-19T10:57:43
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T10:57:43'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 1cfcae82 | Gula Aren (M) | QRIS | 2026-06-19T11:09:24
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T11:09:24'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 1471f66d | Cold Brew (M) | CASH | 2026-06-19T11:13:29
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T11:13:29'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 7e2fa974 | Gula Aren (M) | CASH | 2026-06-19T11:22:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T11:22:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 4f14360e | Vanilla (M) | QRIS | 2026-06-19T11:34:57
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T11:34:57'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- cb15bfe3 | Gula Aren (M) | CASH | 2026-06-19T11:35:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T11:35:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 8c150d22 | Gula Aren (M) | QRIS | 2026-06-19T11:40:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T11:40:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 1ec452e5 | Salted Caramel (M) | CASH | 2026-06-19T11:46:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T11:46:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- b12775bc | Cold Brew (M) | QRIS | 2026-06-19T11:52:46
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000,
    0.00,
    0.00,
    10724,
    '2026-06-19T11:52:46'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 995544fc | Butterscotch (M) | CASH | 2026-06-19T11:52:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T11:52:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- fde1f4d5 | Baileys Latte (M) | CASH | 2026-06-19T12:02:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T12:02:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 6c363c1f | Gula Aren (M) | QRIS | 2026-06-19T12:34:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T12:34:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 0e6e4a00 | Hazelnut (M) | CASH | 2026-06-19T12:34:14
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:34:14'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- f7b9d302 | Butterscotch (M) | QRIS | 2026-06-19T12:34:41
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:34:41'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 3092b0fd | Baileys Latte (M) | QRIS | 2026-06-19T12:34:48
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T12:34:48'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 76e1c0f6 | Butterscotch (M) | CASH | 2026-06-19T12:34:55
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:34:55'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- f6f6ca33 | Salted Caramel (M) | QRIS | 2026-06-19T12:43:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:43:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 5a1630a3 | Vanilla (M) | QRIS | 2026-06-19T12:43:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T12:43:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 2c7374db | Baileys Latte (M) | QRIS | 2026-06-19T12:43:17
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T12:43:17'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 78361d33 | Butterscotch (M) | CASH | 2026-06-19T12:43:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:43:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 4aee64a3 | Butterscotch (M) | QRIS | 2026-06-19T12:43:34
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:43:34'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 89233d21 | Butterscotch (M) | QRIS | 2026-06-19T12:44:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:44:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 4bfbaf00 | Gula Aren (M) | QRIS | 2026-06-19T12:44:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T12:44:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 50106431 | Baileys Latte (M) | QRIS | 2026-06-19T12:44:49
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T12:44:49'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- fb555c4e | Gula Aren (M) | CASH | 2026-06-19T12:45:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T12:45:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 6b521d0f | Gula Aren (M) | CASH | 2026-06-19T12:53:17
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T12:53:17'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 98444cf8 | Butterscotch (M) | CASH | 2026-06-19T12:53:22
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:53:22'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 946694be | Hazelnut (M) | CASH | 2026-06-19T12:53:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:53:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 8eed1aa0 | Salted Caramel (M) | QRIS | 2026-06-19T12:58:10
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:58:10'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- ec4dd194 | Salted Caramel (M) | QRIS | 2026-06-19T12:59:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:59:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- bb8237ed | Butterscotch (M) | CASH | 2026-06-19T13:02:15
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:02:15'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- d226fe59 | Butterscotch (M) | CASH | 2026-06-19T13:05:36
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:05:36'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 40b56df2 | Hazelnut (M) | CASH | 2026-06-19T13:05:43
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:05:43'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 0e4f815c | Gula Aren (M) | CASH | 2026-06-19T13:08:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:08:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 9316f734 | Gula Aren (M) | CASH | 2026-06-19T13:11:32
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:11:32'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- a1b3cc3c | Butterscotch (M) | CASH | 2026-06-19T13:15:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T13:15:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 9591fc2f | Gula Aren (M) | CASH | 2026-06-19T13:16:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:16:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 4fff61bb | Baileys Latte (M) | CASH | 2026-06-19T13:20:47
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T13:20:47'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 470097a6 | Baileys Latte (M) | CASH | 2026-06-19T13:21:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T13:21:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- b337d0b4 | Butterscotch (M) | CASH | 2026-06-19T13:23:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:23:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- cea7a16f | Vanilla (M) | CASH | 2026-06-19T13:23:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:23:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 919c118f | Gula Aren (M) | CASH | 2026-06-19T13:23:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:23:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 7de9bd4a | Cold Brew (M) | CASH | 2026-06-19T13:25:07
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T13:25:07'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 87ac025a | Cold Brew (M) | CASH | 2026-06-19T13:29:28
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T13:29:28'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 63d6147a | Butterscotch (M) | QRIS | 2026-06-19T13:31:09
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000,
    0.00,
    0.00,
    28146,
    '2026-06-19T13:31:09'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 0c32ae51 | Butterscotch (M) | CASH | 2026-06-19T12:40:33
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T12:40:33'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 0c4c1210 | Baileys Latte (M) | CASH | 2026-06-19T12:40:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T12:40:42'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 42a02051 | Butterscotch (M) | QRIS | 2026-06-19T13:33:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500,
    0.00,
    0.00,
    21109,
    '2026-06-19T13:33:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 9eb67aa0 | Gula Aren (M) | CASH | 2026-06-19T13:33:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:33:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 7fa9c693 | Salted Caramel (M) | QRIS | 2026-06-19T13:33:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T13:33:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 51db6fa3 | Baileys Latte (M) | CASH | 2026-06-19T13:37:22
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T13:37:22'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- c9b86844 | Cold Brew (M) | CASH | 2026-06-19T13:37:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T13:37:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- c8a9afb7 | Baileys Latte (M) | CASH | 2026-06-19T13:38:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T13:38:45'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- d8455162 | Gula Aren (M) | QRIS | 2026-06-19T13:40:33
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:40:33'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 0cd81270 | Butterscotch (M) | QRIS | 2026-06-19T13:40:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000,
    0.00,
    0.00,
    28146,
    '2026-06-19T13:40:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 8d0cec62 | Gula Aren (M) | CASH | 2026-06-19T13:42:24
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000,
    0.00,
    0.00,
    21575,
    '2026-06-19T13:42:24'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- f60612ad | Baileys Latte (M) | QRIS | 2026-06-19T13:43:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T13:43:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 19749e9c | Gula Aren (M) | CASH | 2026-06-19T13:47:52
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T13:47:52'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 1f812b77 | Gula Aren (M) | CASH | 2026-06-19T13:49:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:49:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 56013c21 | Baileys Latte (M) | QRIS | 2026-06-19T13:49:09
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T13:49:09'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- ac0dea3c | Gula Aren (M) | QRIS | 2026-06-19T13:49:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:49:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- e1f0a112 | Gula Aren (M) | QRIS | 2026-06-19T13:50:10
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T13:50:10'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 2a932f65 | Gula Aren (M) | CASH | 2026-06-19T13:58:39
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T13:58:39'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 285f35a6 | Hazelnut (M) | QRIS | 2026-06-19T13:47:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T13:47:58'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 54677c9c | Butterscotch (M) | CASH | 2026-06-19T14:06:38
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:06:38'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 96a7385b | Gula Aren (M) | CASH | 2026-06-19T14:19:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T14:19:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 8159065b | Salted Caramel (M) | QRIS | 2026-06-19T14:20:10
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T14:20:10'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 9d4c8689 | Vanilla (M) | QRIS | 2026-06-19T14:20:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:20:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- a263085b | Baileys Latte (M) | QRIS | 2026-06-19T14:21:19
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T14:21:19'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 38ab392c | Butterscotch (M) | QRIS | 2026-06-19T14:23:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500,
    0.00,
    0.00,
    35182,
    '2026-06-19T14:23:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- c8b60426 | Vanilla (M) | QRIS | 2026-06-19T14:28:48
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:28:48'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- b9e2ca61 | Baileys Latte (M) | CASH | 2026-06-19T14:38:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T14:38:42'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- a91ebe13 | Gula Aren (M) | CASH | 2026-06-19T14:44:43
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T14:44:43'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 2ff2c704 | Baileys Latte (M) | QRIS | 2026-06-19T14:44:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T14:44:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 95644175 | Gula Aren (M) | QRIS | 2026-06-19T14:45:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T14:45:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- e0ccc84e | Salted Caramel (M) | QRIS | 2026-06-19T14:45:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:45:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- c26c9d76 | Vanilla (M) | QRIS | 2026-06-19T14:46:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:46:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 3f216841 | Vanilla (M) | QRIS | 2026-06-19T14:47:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:47:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 4ae45636 | Gula Aren (M) | QRIS | 2026-06-19T14:54:36
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T14:54:36'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- a98d4dff | Butterscotch (M) | CASH | 2026-06-19T14:55:02
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T14:55:02'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 7a126635 | Gula Aren (M) | QRIS | 2026-06-19T15:05:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T15:05:58'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 1da558e8 | Hazelnut (M) | QRIS | 2026-06-19T15:24:41
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T15:24:41'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 3b6ac6bd | Baileys Latte (M) | CASH | 2026-06-19T15:42:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T15:42:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 5180a27c | Hazelnut (M) | CASH | 2026-06-19T15:44:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T15:44:45'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 1baf5d73 | Gula Aren (M) | QRIS | 2026-06-19T15:44:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T15:44:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- f115d038 | Gula Aren (M) | CASH | 2026-06-19T15:51:21
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T15:51:21'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 8b10ba10 | Butterscotch (M) | CASH | 2026-06-19T15:51:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T15:51:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 109a9b6b | Baileys Latte (M) | QRIS | 2026-06-19T15:53:12
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T15:53:12'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 06ebd559 | Butterscotch (M) | CASH | 2026-06-19T16:03:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T16:03:58'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 22727e9d | Baileys Latte (M) | CASH | 2026-06-19T16:18:22
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T16:18:22'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 20f29d95 | Vanilla (M) | QRIS | 2026-06-19T16:24:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T16:24:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 86d2e580 | Baileys Latte (M) | QRIS | 2026-06-19T16:31:46
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T16:31:46'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 8bf6fe13 | Gula Aren (M) | CASH | 2026-06-19T16:31:53
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000,
    0.00,
    0.00,
    10787,
    '2026-06-19T16:31:53'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 38bfe20c | Butterscotch (M) | CASH | 2026-06-19T16:42:38
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T16:42:38'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- c193d038 | Cold Brew (M) | CASH | 2026-06-19T16:46:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T16:46:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- a62ae6eb | Baileys Latte (M) | QRIS | 2026-06-19T16:47:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T16:47:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- f1c0618d | Vanilla (M) | CASH | 2026-06-19T16:49:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T16:49:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 8beaf5d2 | Butterscotch (M) | CASH | 2026-06-19T16:48:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000,
    0.00,
    0.00,
    42218,
    '2026-06-19T16:48:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 1a5c9932 | Gula Aren (M) | CASH | 2026-06-19T16:50:31
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T16:50:31'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- d699859d | Salted Caramel (M) | QRIS | 2026-06-19T16:58:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T16:58:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- e278714f | Baileys Latte (M) | QRIS | 2026-06-19T16:59:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T16:59:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- d5661a2d | Baileys Latte (M) | QRIS | 2026-06-19T16:59:12
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T16:59:12'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 0b8834ef | Gula Aren (M) | QRIS | 2026-06-19T16:13:46
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T16:13:46'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- f39c676a | Baileys Latte (M) | CASH | 2026-06-19T17:05:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:05:45'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 47f6db87 | Baileys Latte (M) | QRIS | 2026-06-19T17:06:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:06:42'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- d07f334a | Hazelnut (M) | QRIS | 2026-06-19T17:08:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:08:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- aec92948 | Gula Aren (M) | CASH | 2026-06-19T17:08:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T17:08:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 41dd0ad1 | Baileys Latte (M) | CASH | 2026-06-19T17:08:22
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:08:22'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- d4398665 | Baileys Latte (M) | QRIS | 2026-06-19T17:13:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:13:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 1b87a73a | Gula Aren (M) | CASH | 2026-06-19T17:17:05
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T17:17:05'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- e116ee89 | Baileys Latte (M) | QRIS | 2026-06-19T17:22:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:22:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 20e54b9f | Butterscotch (M) | QRIS | 2026-06-19T17:27:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:27:56'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 8afa8edd | Vanilla (M) | GRATIS | 2026-06-19T17:33:36
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0,
    0.00,
    0.00,
    0,
    '2026-06-19T17:33:36'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- f92b9e53 | Butterscotch (M) | QRIS | 2026-06-19T17:34:16
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:34:16'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- cd387399 | Baileys Latte (M) | QRIS | 2026-06-19T17:34:23
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:34:23'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 209957cf | Hazelnut (M) | QRIS | 2026-06-19T17:35:12
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:35:12'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- b699100a | Vanilla (M) | QRIS | 2026-06-19T17:35:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:35:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 10eeba1f | Butterscotch (M) | CASH | 2026-06-19T17:36:12
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:36:12'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 3ab73a91 | Butterscotch (M) | QRIS | 2026-06-19T17:36:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:36:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 804d3f2a | Butterscotch (M) | CASH | 2026-06-19T17:37:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T17:37:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 0889f116 | Baileys Latte (M) | CASH | 2026-06-19T17:41:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000,
    0.00,
    0.00,
    27450,
    '2026-06-19T17:41:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- f8ec6d84 | Butterscotch (M) | QRIS | 2026-06-19T17:43:10
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:43:10'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 3b5fe676 | Baileys Latte (M) | QRIS | 2026-06-19T17:43:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T17:43:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- db84d529 | Butterscotch (M) | CASH | 2026-06-19T17:43:52
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:43:52'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 0419f744 | Hazelnut (M) | QRIS | 2026-06-19T17:49:57
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:49:57'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 92eb690c | Salted Caramel (M) | CASH | 2026-06-19T17:52:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:52:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 1892799c | Gula Aren (M) | QRIS | 2026-06-19T17:57:19
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T17:57:19'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- f192289a | Hazelnut (M) | QRIS | 2026-06-19T17:57:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:57:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 2e4d1552 | Hazelnut (M) | QRIS | 2026-06-19T17:58:21
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T17:58:21'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 2a8b943f | Baileys Latte (M) | QRIS | 2026-06-19T18:01:46
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T18:01:46'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- c718a5da | Hazelnut (M) | QRIS | 2026-06-19T18:05:24
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:05:24'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 79b2bf1c | Gula Aren (M) | QRIS | 2026-06-19T18:14:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T18:14:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 0b4a8c2e | Butterscotch (M) | QRIS | 2026-06-19T18:14:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:14:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- c7a0faf9 | Gula Aren (M) | CASH | 2026-06-19T18:15:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T18:15:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- f311c59e | Baileys Latte (M) | CASH | 2026-06-19T18:19:40
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T18:19:40'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 3e37f5ea | Cold Brew (M) | CASH | 2026-06-19T18:20:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T18:20:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 56cdcf21 | Baileys Latte (M) | QRIS | 2026-06-19T18:23:39
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T18:23:39'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 4f733382 | Baileys Latte (M) | CASH | 2026-06-19T18:25:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T18:25:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 2b87786b | Baileys Latte (M) | CASH | 2026-06-19T18:34:07
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T18:34:07'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 6f99079c | Butterscotch (M) | QRIS | 2026-06-19T18:38:46
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:38:46'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 9bd1f472 | Butterscotch (M) | QRIS | 2026-06-19T18:47:30
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:47:30'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 227a98d3 | Gula Aren (M) | CASH | 2026-06-19T18:53:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000,
    0.00,
    0.00,
    14383,
    '2026-06-19T18:53:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 84e047d6 | Baileys Latte (M) | CASH | 2026-06-19T18:53:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T18:53:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- e27b7132 | Hazelnut (M) | CASH | 2026-06-19T18:53:52
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:53:52'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- fb1a9a77 | Butterscotch (M) | GRATIS | 2026-06-19T18:54:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0,
    0.00,
    0.00,
    0,
    '2026-06-19T18:54:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 2fed8e32 | Baileys Latte (M) | CASH | 2026-06-19T18:55:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T18:55:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 54b30b4e | Butterscotch (M) | QRIS | 2026-06-19T18:56:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T18:56:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- a9d7cf40 | Salted Caramel (M) | QRIS | 2026-06-19T18:56:21
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T18:56:21'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 223e63ca | Gula Aren (M) | CASH | 2026-06-19T18:57:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T18:57:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 98239319 | Butterscotch (M) | QRIS | 2026-06-19T18:57:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    262500,
    0.00,
    0.00,
    147764,
    '2026-06-19T18:57:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  21,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 74619801 | Butterscotch (M) | CASH | 2026-06-19T19:04:28
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:04:28'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 8731c722 | Baileys Latte (M) | CASH | 2026-06-19T19:04:37
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:04:37'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 57bec351 | Gula Aren (M) | CASH | 2026-06-19T19:08:40
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:08:40'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- b49a9158 | Baileys Latte (M) | CASH | 2026-06-19T19:11:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:11:01'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 1e5b67c8 | Butterscotch (M) | CASH | 2026-06-19T19:14:44
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:14:44'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 78a9b8b9 | Baileys Latte (M) | CASH | 2026-06-19T19:14:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2210%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:14:56'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 11879606 | Vanilla (M) | CASH | 2026-06-19T19:14:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:14:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- d61a4297 | Gula Aren (M) | QRIS | 2026-06-19T19:15:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T19:15:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 8e72c0b5 | Salted Caramel (M) | QRIS | 2026-06-19T19:16:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T19:16:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 8de7d8a8 | Gula Aren (M) | QRIS | 2026-06-19T19:16:47
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:16:47'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 29a7cec3 | Hazelnut (M) | QRIS | 2026-06-19T19:16:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:16:56'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- a0e5be2f | Baileys Latte (M) | CASH | 2026-06-19T19:17:51
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:17:51'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- f303f709 | Vanilla (M) | QRIS | 2026-06-19T19:18:39
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:18:39'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 422796c4 | Baileys Latte (M) | QRIS | 2026-06-19T19:18:55
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:18:55'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 2a47308c | Butterscotch (M) | QRIS | 2026-06-19T19:19:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:19:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 9cf34beb | Gula Aren (M) | CASH | 2026-06-19T19:22:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:22:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 0413044f | Gula Aren (M) | QRIS | 2026-06-19T19:22:14
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:22:14'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- c86cb107 | Butterscotch 1 ltr | QRIS | 2026-06-19T19:26:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2212%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000,
    0.00,
    0.00,
    44488,
    '2026-06-19T19:26:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  90000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch 1 ltr' LIMIT 1
) AS p;

-- ae57f10c | Gula Aren (M) | QRIS | 2026-06-19T19:29:59
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    168000,
    0.00,
    0.00,
    75511,
    '2026-06-19T19:29:59'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  21,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 49625745 | Baileys Latte (M) | CASH | 2026-06-19T19:34:47
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:34:47'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- d2314814 | Butterscotch (M) | QRIS | 2026-06-19T19:37:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T19:37:01'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 4fdb5110 | Baileys Latte (M) | QRIS | 2026-06-19T19:37:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T19:37:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 05010f3a | Butterscotch (M) | CASH | 2026-06-19T19:38:17
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T19:38:17'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 6b6275b6 | Gula Aren (M) | QRIS | 2026-06-19T19:39:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:39:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 996c0476 | Gula Aren (M) | CASH | 2026-06-19T19:39:14
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T19:39:14'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 3f67caf4 | Butterscotch (M) | QRIS | 2026-06-19T19:40:47
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:40:47'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 8c32f969 | Baileys Latte (M) | QRIS | 2026-06-19T19:40:52
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T19:40:52'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- a5137feb | Salted Caramel (M) | CASH | 2026-06-19T19:42:09
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:42:09'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 8643db6d | Butterscotch (M) | QRIS | 2026-06-19T19:53:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    125000,
    0.00,
    0.00,
    70364,
    '2026-06-19T19:53:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  10,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 805a8f2b | Cold Brew (M) | QRIS | 2026-06-19T19:53:21
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T19:53:21'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 07f99b18 | Gula Aren (M) | QRIS | 2026-06-19T19:53:31
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T19:53:31'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 907fbe7f | Gula Aren (M) | CASH | 2026-06-19T19:54:36
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000,
    0.00,
    0.00,
    28766,
    '2026-06-19T19:54:36'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 4d18522b | Butterscotch (M) | CASH | 2026-06-19T19:54:47
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:54:47'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 6654985d | Vanilla (M) | CASH | 2026-06-19T19:54:55
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:54:55'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 20ab55c6 | Salted Caramel (M) | CASH | 2026-06-19T19:55:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T19:55:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- cf0cc0fe | Hazelnut (M) | CASH | 2026-06-19T19:55:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500,
    0.00,
    0.00,
    21109,
    '2026-06-19T19:55:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 252355fa | Cold Brew (M) | CASH | 2026-06-19T19:55:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T19:55:58'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 02ac01e3 | Baileys Latte (M) | CASH | 2026-06-19T19:56:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000,
    0.00,
    0.00,
    27450,
    '2026-06-19T19:56:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 599dcfa6 | Salted Caramel (M) | QRIS | 2026-06-19T19:57:34
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T19:57:34'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 4b7800b1 | Gula Aren (M) | CASH | 2026-06-19T19:57:57
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000,
    0.00,
    0.00,
    10787,
    '2026-06-19T19:57:57'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- a7e91770 | Butterscotch (M) | QRIS | 2026-06-19T20:03:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T20:03:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 5ededae2 | Baileys Latte (M) | CASH | 2026-06-19T20:06:55
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T20:06:55'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 03b85664 | Salted Caramel (M) | CASH | 2026-06-19T20:07:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500,
    0.00,
    0.00,
    21109,
    '2026-06-19T20:07:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- 3ef7c2ba | Vanilla (M) | CASH | 2026-06-19T20:09:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000,
    0.00,
    0.00,
    28146,
    '2026-06-19T20:09:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 43e268dd | Vanilla (M) | QRIS | 2026-06-19T20:09:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T20:09:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- f297ae4c | Gula Aren (M) | CASH | 2026-06-19T20:15:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2201%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T20:15:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 78547269 | Butterscotch (M) | QRIS | 2026-06-19T20:16:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000,
    0.00,
    0.00,
    28146,
    '2026-06-19T20:16:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 33892c29 | Gula Aren (M) | QRIS | 2026-06-19T20:17:16
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T20:17:16'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 400c231e | Gula Aren (M) | CASH | 2026-06-19T20:17:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000,
    0.00,
    0.00,
    17979,
    '2026-06-19T20:17:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 937b3ba7 | Butterscotch (M) | CASH | 2026-06-19T20:18:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T20:18:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- d5e09938 | Gula Aren (M) | QRIS | 2026-06-19T20:18:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T20:18:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 211ab5ae | Salted Caramel (M) | CASH | 2026-06-19T20:18:09
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T20:18:09'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- e3424a1b | Hazelnut (M) | CASH | 2026-06-19T20:18:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T20:18:27'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 6af2b3c4 | Baileys Latte (M) | CASH | 2026-06-19T20:18:34
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2204%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T20:18:34'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 26bc8021 | Butterscotch (M) | QRIS | 2026-06-19T20:26:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500,
    0.00,
    0.00,
    21109,
    '2026-06-19T20:26:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- d847d3ae | Gula Aren (M) | QRIS | 2026-06-19T20:26:18
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T20:26:18'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 48b1859b | Gula Aren (M) | CASH | 2026-06-19T20:27:12
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000,
    0.00,
    0.00,
    28766,
    '2026-06-19T20:27:12'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 54ea3eee | Butterscotch (M) | CASH | 2026-06-19T20:27:21
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T20:27:21'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- ad5890f2 | Vanilla (M) | CASH | 2026-06-19T20:27:28
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T20:27:28'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- ed49bc19 | Salted Caramel (M) | CASH | 2026-06-19T20:27:37
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T20:27:37'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- d5218b36 | Baileys Latte (M) | CASH | 2026-06-19T20:27:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2208%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T20:27:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- baae566d | Butterscotch 1 ltr | QRIS | 2026-06-19T20:32:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000,
    0.00,
    0.00,
    44488,
    '2026-06-19T20:32:56'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  90000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch 1 ltr' LIMIT 1
) AS p;

-- 603adbd8 | Baileys Latte (M) | QRIS | 2026-06-19T20:33:32
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T20:33:32'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 41a35e37 | Baileys Latte (M) | CASH | 2026-06-19T20:49:30
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T20:49:30'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 287d426b | Salted Caramel (M) | QRIS | 2026-06-19T21:08:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:08:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- d6c25659 | Butterscotch (M) | QRIS | 2026-06-19T21:11:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:11:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- a7972041 | Hazelnut (M) | CASH | 2026-06-19T21:17:34
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000,
    0.00,
    0.00,
    28146,
    '2026-06-19T21:17:34'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- 88207dfd | Hazelnut (M) | QRIS | 2026-06-19T21:17:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:17:42'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- df1a1a28 | Butterscotch (M) | QRIS | 2026-06-19T21:18:38
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T21:18:38'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- d99e61e4 | Butterscotch (M) | CASH | 2026-06-19T21:19:53
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:19:53'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- e26d61a5 | Baileys Latte (M) | CASH | 2026-06-19T21:19:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000,
    0.00,
    0.00,
    27450,
    '2026-06-19T21:19:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 87d0e594 | Baileys Latte (M) | QRIS | 2026-06-19T21:20:07
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T21:20:07'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 49997692 | Baileys Latte (M) | GRATIS | 2026-06-19T21:21:53
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0,
    0.00,
    0.00,
    0,
    '2026-06-19T21:21:53'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- f69cf3f7 | Baileys Latte (M) | CASH | 2026-06-19T21:27:23
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2202%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T21:27:23'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 4e611c69 | Salted Caramel (M) | QRIS | 2026-06-19T21:28:06
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:28:06'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p;

-- b544e0a2 | Gula Aren (M) | QRIS | 2026-06-19T21:32:08
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-19T21:32:08'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 648460c3 | Butterscotch (M) | QRIS | 2026-06-19T21:32:13
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:32:13'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 1e77e0fb | Butterscotch (M) | QRIS | 2026-06-19T21:32:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-19T21:32:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 88ac78be | Gula Aren (M) | QRIS | 2026-06-19T21:33:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T21:33:03'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- 1c99dba4 | Cold Brew (M) | QRIS | 2026-06-19T21:33:20
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T21:33:20'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 72179fec | Gula Aren (M) | CASH | 2026-06-19T21:33:49
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000,
    0.00,
    0.00,
    28766,
    '2026-06-19T21:33:49'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- dc0eea30 | Butterscotch (M) | CASH | 2026-06-19T21:34:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    137500,
    0.00,
    0.00,
    77400,
    '2026-06-19T21:34:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  11,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- 2cc7dc44 | Vanilla (M) | CASH | 2026-06-19T21:34:14
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:34:14'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 494b436d | Hazelnut (M) | CASH | 2026-06-19T21:34:25
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:34:25'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p;

-- e5887af2 | Cold Brew (M) | CASH | 2026-06-19T21:34:40
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-19T21:34:40'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
) AS p;

-- 0712fb65 | Butterscotch (M) | QRIS | 2026-06-19T21:34:51
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T21:34:51'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- e8047802 | Baileys Latte (M) | CASH | 2026-06-19T21:34:50
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500,
    0.00,
    0.00,
    20587,
    '2026-06-19T21:34:50'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 77594cce | Baileys Latte (M) | QRIS | 2026-06-19T21:34:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T21:34:58'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 856fd7b0 | Baileys Latte (M) | CASH | 2026-06-19T21:42:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2206%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-19T21:42:54'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- f8d468a8 | Gula Aren (M) | CASH | 2026-06-19T22:10:26
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2203%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-19T22:10:26'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- c7445d9f | Baileys Latte (M) | CASH | 2026-06-19T22:11:11
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-19T22:11:11'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- a42f28b3 | Butterscotch (M) | QRIS | 2026-06-19T22:20:04
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-19T22:20:04'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p;

-- fa096ab4 | Baileys Latte (M) | QRIS | 2026-06-20T09:42:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-20T09:42:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- ba0717db | Baileys Latte (M) | QRIS | 2026-06-20T09:51:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    6862,
    '2026-06-20T09:51:45'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- b7ec9251 | Gula Aren (M) | CASH | 2026-06-20T10:02:36
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2209%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-20T10:02:36'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

