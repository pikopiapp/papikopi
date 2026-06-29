-- Generated SQL inserts for Orders 20 Juni.csv (2026-06-20)
-- Use with care: confirm outlet and product lookups match your database.

-- 596a93c3 | Gula Aren (M) | QRIS | 2026-06-20T19:14:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000,
    0.00,
    0.00,
    3596,
    '2026-06-20 19:14:01'
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

-- 2772876a | Butterscotch (M) | QRIS | 2026-06-20T19:14:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500,
    0.00,
    0.00,
    35182,
    '2026-06-20 19:14:45'
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

-- de6bf784 | Gula Aren (M) | CASH | 2026-06-20T19:15:14
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    72000,
    0.00,
    0.00,
    32362,
    '2026-06-20 19:15:14'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  8000,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p;

-- af2f4ff4 | Butterscotch (M) | CASH | 2026-06-20T19:15:27
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500,
    0.00,
    0.00,
    35182,
    '2026-06-20 19:15:27'
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

-- 07d5f010 | Vanilla (M) | CASH | 2026-06-20T19:15:44
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
    '2026-06-20 19:15:44'
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
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 603f60f0 | Salted Caramel (M) | CASH | 2026-06-20T19:15:53
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
    '2026-06-20 19:15:53'
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

-- a08c1311 | Cold Brew (M) | CASH | 2026-06-20T19:16:07
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2205%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000,
    0.00,
    0.00,
    10724,
    '2026-06-20 19:16:07'
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

-- 83076527 | Baileys Latte (M) | CASH | 2026-06-20T19:16:19
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
    20587,
    '2026-06-20 19:16:19'
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

-- ba1787ea | Gula Aren (M) | CASH | 2026-06-20T14:20:57
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
    '2026-06-20 14:20:57'
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

-- c4771fd7 | Baileys Latte (M) | CASH | 2026-06-20T14:21:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    13725,
    '2026-06-20 14:21:01'
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

-- 824b89b0 | Butterscotch (M) | CASH | 2026-06-20T14:21:05
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
    '2026-06-20 14:21:05'
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

-- 52b1b895 | Hazelnut (M) | CASH | 2026-06-20T14:24:10
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
    '2026-06-20 14:24:10'
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

-- f6a478ae | Cold Brew (M) | CASH | 2026-06-20T14:39:02
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000,
    0.00,
    0.00,
    5362,
    '2026-06-20 14:39:02'
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

-- ef4fa66c | Gula Aren (M) | CASH | 2026-06-20T15:15:02
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
    '2026-06-20 15:15:02'
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

-- 1b5d5792 | Gula Aren (M) | QRIS | 2026-06-20T15:43:20
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
    '2026-06-20 15:43:20'
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

-- 8d68cdc7 | Butterscotch (M) | QRIS | 2026-06-20T15:55:01
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
    '2026-06-20 15:55:01'
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

-- 40259fcf | Gula Aren (M) | CASH | 2026-06-20T15:55:37
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
    '2026-06-20 15:55:37'
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

-- 4d0c9f28 | Butterscotch (M) | CASH | 2026-06-20T16:35:53
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
    '2026-06-20 16:35:53'
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

-- bf3351c4 | Baileys Latte (M) | QRIS | 2026-06-20T17:35:04
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
    '2026-06-20 17:35:04'
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

-- 5fc925a4 | Vanilla (M) | QRIS | 2026-06-20T17:35:13
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
    '2026-06-20 17:35:13'
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

-- 290d0a19 | Hazelnut (M) | CASH | 2026-06-20T17:35:18
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
    '2026-06-20 17:35:18'
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

-- 27ef9eaa | Hazelnut (M) | CASH | 2026-06-20T17:40:24
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
    '2026-06-20 17:40:24'
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

-- 1d532e77 | Butterscotch (M) | QRIS | 2026-06-20T18:14:09
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
    '2026-06-20 18:14:09'
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

-- f3fc027a | Butterscotch (M) | CASH | 2026-06-20T18:14:38
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000,
    0.00,
    0.00,
    14073,
    '2026-06-20 18:14:38'
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

-- 668b3bc6 | Baileys Latte (M) | CASH | 2026-06-20T18:14:42
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500,
    0.00,
    0.00,
    20587,
    '2026-06-20 18:14:42'
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

-- a79871a4 | Gula Aren (M) | CASH | 2026-06-20T18:36:09
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
    '2026-06-20 18:36:09'
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

-- 887a135f | Butterscotch (M) | CASH | 2026-06-20T18:40:42
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
    '2026-06-20 18:40:42'
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

-- 9aed7f7b | Gula Aren (M) | CASH | 2026-06-20T18:47:03
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000,
    0.00,
    0.00,
    14383,
    '2026-06-20 18:47:03'
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

-- 4faa0081 | Baileys Latte (M) | QRIS | 2026-06-20T19:35:07
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
    '2026-06-20 19:35:07'
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

-- a34607d2 | Cold Brew (M) | QRIS | 2026-06-20T19:41:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000,
    0.00,
    0.00,
    10724,
    '2026-06-20 19:41:01'
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

-- 2a12da63 | Baileys Latte (M) | QRIS | 2026-06-20T19:41:35
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
    '2026-06-20 19:41:35'
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

-- faaa75d4 | Baileys Latte (M) | GRATIS | 2026-06-20T20:44:54
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2207%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0,
    0.00,
    0.00,
    0,
    '2026-06-20 20:44:54'
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

-- b50ecc7a | Butterscotch (M) | QRIS | 2026-06-20T21:38:31
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
    '2026-06-20 21:38:31'
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

-- e06ef001 | Butterscotch (M) | QRIS | 2026-06-20T21:36:35
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500,
    0.00,
    0.00,
    7036,
    '2026-06-20 21:36:35'
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

-- fb0fcd56 | Cold Brew (M) | QRIS | 2026-06-20T21:36:45
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000,
    0.00,
    0.00,
    10724,
    '2026-06-20 21:36:45'
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

-- 7ebc6176 | Gula Aren (M) | QRIS | 2026-06-20T21:36:56
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    64000,
    0.00,
    0.00,
    28766,
    '2026-06-20 21:36:56'
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

-- 617599f2 | Gula Aren (M) | CASH | 2026-06-20T21:37:58
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000,
    0.00,
    0.00,
    7192,
    '2026-06-20 21:37:58'
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

-- 35c9fea6 | Butterscotch (M) | CASH | 2026-06-20T21:38:07
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
    '2026-06-20 21:38:07'
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

-- 88fe2fb1 | Vanilla (M) | CASH | 2026-06-20T21:38:24
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
    21109,
    '2026-06-20 21:38:24'
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
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p;

-- 15003322 | Baileys Latte (M) | CASH | 2026-06-20T21:38:49
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    112500,
    0.00,
    0.00,
    61762,
    '2026-06-20 21:38:49'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p;

-- 3cfe2e41 | Baileys Latte (M) | GRATIS | 2026-06-20T21:39:01
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    (SELECT id FROM public.outlets WHERE name ILIKE '%papi 2211%' LIMIT 1),
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0,
    0.00,
    0.00,
    0,
    '2026-06-20 21:39:01'
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
