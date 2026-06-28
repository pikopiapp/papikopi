-- Generated from split_orders_juni_1_14/*/*.csv
-- Inserts sales and sale_items for 2026-06-03 until 2026-06-07

-- bb577a13 | Gula Aren (M) | QRIS | 2026-06-03T10:04:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-03T10:04:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 72693d30 | Gula Aren (M) | CASH | 2026-06-03T10:04:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T10:04:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- dfaff0c0 | Gula Aren (M) | QRIS | 2026-06-03T10:10:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T10:10:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 859718bd | Butterscotch (M) | QRIS | 2026-06-03T10:20:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T10:20:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 92883461 | Gula Aren (M) | CASH | 2026-06-03T10:20:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T10:20:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2585c3c9 | Baileys Latte (M) | CASH | 2026-06-03T10:21:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T10:21:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4f99193c | Cold Brew (M) | CASH | 2026-06-03T10:25:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T10:25:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- cc51a29e | Butterscotch (M) | QRIS | 2026-06-03T10:25:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T10:25:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d0f8b7a2 | Butterscotch (M) | QRIS | 2026-06-03T10:38:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T10:38:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f074c671 | Baileys Latte (M) | QRIS | 2026-06-03T10:46:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T10:46:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6cd8aa72 | Cold Brew (M) | CASH | 2026-06-03T10:46:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T10:46:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- ae90ed35 | Cold Brew (M) | CASH | 2026-06-03T10:49:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T10:49:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 7738543d | Salted Caramel (M) | CASH | 2026-06-03T10:53:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T10:53:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 2086d06a | Butterscotch (M) | QRIS | 2026-06-03T10:54:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T10:54:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d892738b | Gula Aren (M) | CASH | 2026-06-03T10:59:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T10:59:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1496e3a1 | Gula Aren (M) | QRIS | 2026-06-03T11:05:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:05:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9acec4d3 | Gula Aren (M) | CASH | 2026-06-03T11:11:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:11:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2c0b67eb | Gula Aren (M) | QRIS | 2026-06-03T11:10:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:10:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5263d6fa | Cold Brew (M) | QRIS | 2026-06-03T11:18:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T11:18:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 1697c461 | Gula Aren (M) | QRIS | 2026-06-03T11:20:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:20:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e70f471f | Butterscotch (M) | QRIS | 2026-06-03T11:27:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:27:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9875a30f | Vanilla (M) | QRIS | 2026-06-03T11:27:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:27:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 0f66e540 | Gula Aren (M) | QRIS | 2026-06-03T11:29:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:29:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4121b390 | Gula Aren (M) | QRIS | 2026-06-03T11:32:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T11:32:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1baef73b | Butterscotch (M) | QRIS | 2026-06-03T11:33:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:33:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 54c7eaed | Gula Aren (M) | CASH | 2026-06-03T11:34:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T11:34:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- be5bd503 | Butterscotch (M) | CASH | 2026-06-03T11:45:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:45:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b06f4542 | Baileys Latte (M) | CASH | 2026-06-03T11:45:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T11:45:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 75dbbe72 | Butterscotch (M) | QRIS | 2026-06-03T11:45:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:45:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7e957ebc | Butterscotch (M) | CASH | 2026-06-03T11:49:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T11:49:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 039d1727 | Baileys Latte (M) | CASH | 2026-06-03T11:49:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T11:49:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 65d4feb3 | Baileys Latte (M) | QRIS | 2026-06-03T11:52:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T11:52:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- dd9e82c9 | Baileys Latte (M) | CASH | 2026-06-03T12:04:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:04:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 953a2ce4 | Baileys Latte (M) | QRIS | 2026-06-03T12:04:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:04:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cc85f497 | Gula Aren (M) | CASH | 2026-06-03T12:05:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T12:05:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 373322ea | Baileys Latte (M) | QRIS | 2026-06-03T12:06:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:06:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- eb00673b | Salted Caramel (M) | QRIS | 2026-06-03T12:06:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T12:06:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 56e9cdd3 | Baileys Latte (M) | QRIS | 2026-06-03T12:12:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:12:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c6590579 | Butterscotch (M) | QRIS | 2026-06-03T12:12:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:12:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1b499f33 | Hazelnut (M) | QRIS | 2026-06-03T12:12:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:12:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 58f234c8 | Butterscotch (M) | CASH | 2026-06-03T12:25:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:25:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 22014ef0 | Gula Aren (M) | CASH | 2026-06-03T12:28:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:28:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2fef5bac | Butterscotch (M) | QRIS | 2026-06-03T12:28:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T12:28:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bdc2d58f | Baileys Latte (M) | QRIS | 2026-06-03T12:29:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:29:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7751d3ab | Cold Brew (M) | CASH | 2026-06-03T12:29:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T12:29:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- c0b4ce29 | Salted Caramel (M) | CASH | 2026-06-03T12:30:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:30:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1539a326 | Butterscotch (M) | CASH | 2026-06-03T12:31:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-03T12:31:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 48bd82b1 | Salted Caramel (M) | CASH | 2026-06-03T12:35:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:35:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- e7104483 | Butterscotch (M) | QRIS | 2026-06-03T12:36:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:36:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c976a268 | Hazelnut (M) | QRIS | 2026-06-03T12:36:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:36:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- ea520f86 | Gula Aren (M) | CASH | 2026-06-03T12:36:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:36:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- cdd56dc8 | Butterscotch (M) | QRIS | 2026-06-03T12:38:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T12:38:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 25df7f27 | Vanilla (M) | QRIS | 2026-06-03T12:38:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:38:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 49c587b0 | Baileys Latte (M) | QRIS | 2026-06-03T12:39:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:39:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8dbcacfe | Vanilla (M) | QRIS | 2026-06-03T12:41:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:41:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- f6994269 | Gula Aren (M) | QRIS | 2026-06-03T12:42:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:42:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b4497b5c | Butterscotch (M) | CASH | 2026-06-03T12:45:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:45:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2d27130e | Baileys Latte (M) | CASH | 2026-06-03T12:45:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:45:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c0405657 | Butterscotch (M) | QRIS | 2026-06-03T12:48:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T12:48:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 521f2927 | Baileys Latte (M) | QRIS | 2026-06-03T12:58:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T12:58:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e05b2ef7 | Gula Aren (M) | CASH | 2026-06-03T12:58:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:58:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 77ef1b07 | Gula Aren (M) | QRIS | 2026-06-03T12:59:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:59:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 17a8a4cd | Gula Aren (M) | QRIS | 2026-06-03T12:59:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T12:59:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4264b177 | Gula Aren (M) | QRIS | 2026-06-03T13:05:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T13:05:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0ff66868 | Baileys Latte (M) | QRIS | 2026-06-03T13:07:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T13:07:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 94d1929b | Cold Brew (M) | CASH | 2026-06-03T13:07:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T13:07:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- beb2ef1f | Butterscotch (M) | CASH | 2026-06-03T13:09:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T13:09:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 96aadb76 | Baileys Latte (M) | CASH | 2026-06-03T13:09:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T13:09:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 99ac61ae | Gula Aren (M) | QRIS | 2026-06-03T13:13:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T13:13:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 40fae550 | Vanilla (M) | QRIS | 2026-06-03T13:16:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:16:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 38fdd57d | Gula Aren (M) | QRIS | 2026-06-03T13:19:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T13:19:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 25ae77e4 | Vanilla (M) | CASH | 2026-06-03T13:16:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:16:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 6bc6e7f4 | Baileys Latte (M) | QRIS | 2026-06-03T13:24:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-03T13:24:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4986c97d | Butterscotch (M) | CASH | 2026-06-03T13:39:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:39:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0cba588c | Gula Aren (M) | CASH | 2026-06-03T13:41:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T13:41:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8b0daa9c | Gula Aren (M) | QRIS | 2026-06-03T13:46:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T13:46:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 97fba194 | Hazelnut (M) | CASH | 2026-06-03T13:48:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:48:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 8e33eb49 | Butterscotch (M) | CASH | 2026-06-03T13:48:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:48:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c3650305 | Salted Caramel (M) | QRIS | 2026-06-03T13:49:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T13:49:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- c121c3c4 | Gula Aren (M) | CASH | 2026-06-03T13:49:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T13:49:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 772c8de4 | Baileys Latte (M) | CASH | 2026-06-03T13:52:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T13:52:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9bc30dbb | Butterscotch (M) | QRIS | 2026-06-03T13:58:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T13:58:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d1827d45 | Butterscotch (M) | QRIS | 2026-06-03T14:04:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:04:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8bc46fb5 | Salted Caramel (M) | QRIS | 2026-06-03T14:07:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:07:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 63815457 | Butterscotch (M) | CASH | 2026-06-03T14:09:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:09:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ae2e4862 | Butterscotch (M) | QRIS | 2026-06-03T14:09:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:09:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f49747b6 | Vanilla (M) | CASH | 2026-06-03T14:10:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:10:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- d5f81bc2 | Gula Aren (M) | CASH | 2026-06-03T14:10:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T14:10:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- aef4fab8 | Vanilla (M) | CASH | 2026-06-03T14:12:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:12:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 9d08e504 | Butterscotch (M) | QRIS | 2026-06-03T14:15:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:15:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f331a401 | Salted Caramel (M) | QRIS | 2026-06-03T14:15:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:15:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 9add5187 | Baileys Latte (M) | CASH | 2026-06-03T14:15:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T14:15:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2b94ba1d | Gula Aren (M) | CASH | 2026-06-03T14:18:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-03T14:18:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 03feb95d | Cold Brew (M) | CASH | 2026-06-03T14:22:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T14:22:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- dd61b86c | Baileys Latte (M) | QRIS | 2026-06-03T14:24:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T14:24:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a4d46493 | Gula Aren (M) | CASH | 2026-06-03T14:24:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-03T14:24:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1fdf567f | Gula Aren (M) | CASH | 2026-06-03T14:34:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T14:34:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 16096577 | Vanilla (M) | QRIS | 2026-06-03T14:34:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:34:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- cb9d0aff | Butterscotch (M) | CASH | 2026-06-03T14:35:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:35:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5be1279c | Butterscotch (M) | CASH | 2026-06-03T14:36:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:36:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a7bc09ba | Butterscotch (M) | CASH | 2026-06-03T14:44:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:44:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d8972c70 | Butterscotch (M) | QRIS | 2026-06-03T14:45:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T14:45:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f584d68a | Baileys Latte (M) | CASH | 2026-06-03T15:05:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T15:05:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 96138fe5 | Salted Caramel (M) | QRIS | 2026-06-03T15:12:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T15:12:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1f0c1f40 | Gula Aren (M) | CASH | 2026-06-03T15:14:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T15:14:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- dd244463 | Butterscotch (M) | QRIS | 2026-06-03T15:17:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T15:17:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 98d061dc | Gula Aren (M) | CASH | 2026-06-03T15:34:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-03T15:34:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a4ff93f9 | Hazelnut (M) | QRIS | 2026-06-03T15:36:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T15:36:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 0303fdfa | Gula Aren (M) | QRIS | 2026-06-03T15:37:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T15:37:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8612458b | Butterscotch (M) | QRIS | 2026-06-03T15:38:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T15:38:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e5c818b9 | Baileys Latte (M) | CASH | 2026-06-03T15:38:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T15:38:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8954fcd9 | Vanilla (M) | QRIS | 2026-06-03T16:05:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:05:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 1b49229f | Butterscotch (M) | CASH | 2026-06-03T16:06:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:06:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d254660e | Butterscotch (M) | QRIS | 2026-06-03T16:09:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:09:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6e51e452 | Gula Aren (M) | CASH | 2026-06-03T16:11:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-03T16:11:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 911ee490 | Baileys Latte (M) | QRIS | 2026-06-03T16:12:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T16:12:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0c07fd89 | Baileys Latte (M) | QRIS | 2026-06-03T16:14:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T16:14:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b287dc28 | Gula Aren (M) | QRIS | 2026-06-03T16:15:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T16:15:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 6f0769fb | Hazelnut (M) | CASH | 2026-06-03T16:15:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:15:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 57ae5cc9 | Salted Caramel (M) | CASH | 2026-06-03T16:18:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:18:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 0af3d940 | Gula Aren (M) | CASH | 2026-06-03T16:18:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T16:18:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 6e2a67ed | Butterscotch (M) | CASH | 2026-06-03T16:38:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T16:38:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b7755cd1 | Baileys Latte (M) | CASH | 2026-06-03T16:38:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T16:38:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8650e2f6 | Butterscotch (M) | CASH | 2026-06-03T16:38:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:38:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 850fe9bf | Butterscotch (M) | QRIS | 2026-06-03T16:38:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:38:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f7a6f06b | Butterscotch (M) | CASH | 2026-06-03T16:38:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T16:38:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 70bdd611 | Butterscotch (M) | QRIS | 2026-06-03T16:39:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:39:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f9f7e70d | Butterscotch (M) | QRIS | 2026-06-03T16:42:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T16:42:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b471fbb0 | Gula Aren (M) | CASH | 2026-06-03T16:51:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T16:51:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 6a420780 | Hazelnut (M) | CASH | 2026-06-03T16:52:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T16:52:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 703ecca3 | Butterscotch (M) | QRIS | 2026-06-03T17:11:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:11:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6a2222dd | Salted Caramel (M) | QRIS | 2026-06-03T17:11:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:11:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- f4c2e818 | Gula Aren (M) | CASH | 2026-06-03T17:11:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T17:11:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e2d1737f | Butterscotch (M) | CASH | 2026-06-03T17:11:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-03T17:11:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- aec11353 | Butterscotch (M) | CASH | 2026-06-03T17:12:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-03T17:12:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6a3e1982 | Vanilla (M) | CASH | 2026-06-03T17:15:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:15:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- a2674997 | Baileys Latte (M) | QRIS | 2026-06-03T17:20:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-03T17:20:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 454cf3f5 | Butterscotch (M) | QRIS | 2026-06-03T17:20:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:20:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b4df4ef1 | Baileys Latte (M) | CASH | 2026-06-03T17:22:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T17:22:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 41d3cd91 | Vanilla (M) | CASH | 2026-06-03T17:22:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:22:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- fd9fde1f | Hazelnut (M) | CASH | 2026-06-03T17:22:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T17:22:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 88578086 | Salted Caramel (M) | CASH | 2026-06-03T17:23:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:23:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- ad2ada22 | Butterscotch (M) | CASH | 2026-06-03T17:23:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T17:23:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 470be053 | Gula Aren (M) | QRIS | 2026-06-03T17:24:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-03T17:24:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7de7a401 | Butterscotch (M) | QRIS | 2026-06-03T17:24:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '2026-06-03T17:24:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0853996f | Vanilla (M) | QRIS | 2026-06-03T17:24:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:24:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 97eed0bc | Baileys Latte (M) | QRIS | 2026-06-03T17:24:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T17:24:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 908d1c3d | Vanilla (M) | CASH | 2026-06-03T17:24:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:24:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 48b53d60 | Hazelnut (M) | CASH | 2026-06-03T17:24:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T17:24:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 6b5cfdee | Butterscotch (M) | QRIS | 2026-06-03T17:25:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:25:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c21cca4a | Cold Brew (M) | CASH | 2026-06-03T17:24:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-03T17:24:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- d8108c35 | Baileys Latte (M) | CASH | 2026-06-03T17:25:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-03T17:25:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c3271cdf | Butterscotch (M) | QRIS | 2026-06-03T17:26:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:26:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 878cb154 | Gula Aren (M) | CASH | 2026-06-03T17:26:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T17:26:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- eb687cb4 | Butterscotch (M) | CASH | 2026-06-03T17:27:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T17:27:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0f5d7e4d | Gula Aren (M) | CASH | 2026-06-03T17:27:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-03T17:27:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8261974a | Butterscotch (M) | CASH | 2026-06-03T17:29:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:29:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 13facd2b | Baileys Latte (M) | QRIS | 2026-06-03T17:32:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T17:32:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 24d6c99b | Baileys Latte (M) | CASH | 2026-06-03T17:33:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T17:33:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f4bd4ebe | Butterscotch (M) | QRIS | 2026-06-03T17:34:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T17:34:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 74a07019 | Butterscotch (M) | CASH | 2026-06-03T17:35:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-03T17:35:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5e0870b1 | Salted Caramel (M) | CASH | 2026-06-03T17:36:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:36:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 792bc8a1 | Hazelnut (M) | CASH | 2026-06-03T17:38:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:38:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- d7b1c356 | Butterscotch (M) | CASH | 2026-06-03T17:45:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-03T17:45:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1c193fe0 | Gula Aren (M) | CASH | 2026-06-03T17:46:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T17:46:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 13fdcebe | Hazelnut (M) | CASH | 2026-06-03T17:47:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:47:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 0ae36f42 | Vanilla (M) | CASH | 2026-06-03T17:50:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:50:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- b66fffd6 | Butterscotch (M) | CASH | 2026-06-03T17:52:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:52:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9a0b1071 | Baileys Latte (M) | QRIS | 2026-06-03T17:59:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T17:59:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 37c0703e | Cold Brew (M) | CASH | 2026-06-03T17:58:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T17:58:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- af041897 | Butterscotch (M) | CASH | 2026-06-03T17:58:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T17:58:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ea4d4746 | Butterscotch (M) | QRIS | 2026-06-03T17:58:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T17:58:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4ad78de4 | Baileys Latte (M) | QRIS | 2026-06-03T17:58:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T17:58:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 83bbcf89 | Butterscotch (M) | QRIS | 2026-06-03T18:00:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T18:00:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ec7c833b | Butterscotch (M) | CASH | 2026-06-03T18:02:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:02:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 15b04e63 | Gula Aren (M) | QRIS | 2026-06-03T18:08:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T18:08:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e6ecc547 | Butterscotch (M) | CASH | 2026-06-03T18:11:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:11:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f5395c0b | Vanilla (M) | CASH | 2026-06-03T18:17:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:17:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 380bfee4 | Baileys Latte (M) | QRIS | 2026-06-03T18:19:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T18:19:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4ced49d7 | Hazelnut (M) | QRIS | 2026-06-03T18:19:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:19:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- aa9d6694 | Butterscotch (M) | QRIS | 2026-06-03T18:20:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:20:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4d2fc1d5 | Gula Aren (M) | CASH | 2026-06-03T18:20:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T18:20:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9cf9a8c2 | Baileys Latte (M) | CASH | 2026-06-03T18:21:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T18:21:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 18444bdd | Butterscotch (M) | QRIS | 2026-06-03T18:29:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-03T18:29:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c7a5814 | Vanilla (M) | QRIS | 2026-06-03T18:29:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:29:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 5f7ba608 | Gula Aren (M) | QRIS | 2026-06-03T18:29:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T18:29:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c2cc7a60 | Cold Brew (M) | CASH | 2026-06-03T18:30:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T18:30:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- ce7da7d9 | Baileys Latte (M) | QRIS | 2026-06-03T18:30:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T18:30:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3efca3da | Gula Aren (M) | CASH | 2026-06-03T18:30:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-03T18:30:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 927b9ae5 | Baileys Latte (M) | CASH | 2026-06-03T18:30:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T18:30:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e6e6f715 | Salted Caramel (M) | CASH | 2026-06-03T18:31:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T18:31:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- dc844c3a | Cold Brew (M) | CASH | 2026-06-03T18:31:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-03T18:31:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 3838980e | Baileys Latte (M) | CASH | 2026-06-03T18:31:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '2026-06-03T18:31:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  7,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0d1d5317 | Butterscotch (M) | CASH | 2026-06-03T18:42:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:42:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 84f20427 | Vanilla (M) | CASH | 2026-06-03T18:43:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T18:43:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 84de1204 | Gula Aren (M) | CASH | 2026-06-03T18:43:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T18:43:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4c0f5c90 | Baileys Latte (M) | QRIS | 2026-06-03T19:03:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:03:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 241a6fc0 | Gula Aren (M) | CASH | 2026-06-03T19:12:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T19:12:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d3963f67 | Butterscotch (M) | QRIS | 2026-06-03T19:12:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T19:12:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- aae7206d | Baileys Latte (M) | CASH | 2026-06-03T19:23:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:23:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8bfe028d | Gula Aren (M) | QRIS | 2026-06-03T19:35:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T19:35:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a7d2a0a1 | Butterscotch (M) | QRIS | 2026-06-03T19:36:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T19:36:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ac035fd8 | Baileys Latte (M) | QRIS | 2026-06-03T19:36:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:36:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 678f195e | Gula Aren (M) | CASH | 2026-06-03T19:36:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-03T19:36:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e38453b0 | Butterscotch (M) | CASH | 2026-06-03T19:36:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T19:36:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 410d787a | Hazelnut (M) | CASH | 2026-06-03T19:36:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T19:36:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- a27820ab | Cold Brew (M) | CASH | 2026-06-03T19:37:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T19:37:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 32d6df3a | Baileys Latte (M) | CASH | 2026-06-03T19:37:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-03T19:37:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 416c5142 | Gula Aren (M) | QRIS | 2026-06-03T19:39:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T19:39:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1a234f4e | Baileys Latte (M) | QRIS | 2026-06-03T19:39:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:39:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c8e18a85 | Butterscotch (M) | CASH | 2026-06-03T19:44:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T19:44:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cbf3c3f1 | Baileys Latte (M) | CASH | 2026-06-03T19:45:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:45:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bc8be6fd | Baileys Latte (M) | CASH | 2026-06-03T19:51:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T19:51:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1d4c13fc | Cold Brew (M) | CASH | 2026-06-03T20:00:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T20:00:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- ac12aca2 | Gula Aren (M) | QRIS | 2026-06-03T20:05:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T20:05:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 341ba5b1 | Gula Aren (M) | QRIS | 2026-06-03T20:06:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T20:06:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 6cf09790 | Butterscotch (M) | QRIS | 2026-06-03T20:07:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T20:07:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 066b0492 | Hazelnut (M) | QRIS | 2026-06-03T20:08:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T20:08:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 35beac18 | Vanilla (M) | QRIS | 2026-06-03T20:08:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:08:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 750b1109 | Salted Caramel (M) | QRIS | 2026-06-03T20:09:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:09:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- cf246145 | Gula Aren (M) | CASH | 2026-06-03T20:10:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-03T20:10:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c2c6f880 | Gula Aren (M) | CASH | 2026-06-03T20:12:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T20:12:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 68087939 | Salted Caramel (M) | CASH | 2026-06-03T20:16:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:16:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 5ab37cc8 | Butterscotch (M) | QRIS | 2026-06-03T20:21:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:21:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8e0b35ad | Butterscotch (M) | CASH | 2026-06-03T20:27:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:27:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3bcde402 | Butterscotch (M) | QRIS | 2026-06-03T20:30:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T20:30:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9d213e31 | Baileys Latte (M) | CASH | 2026-06-03T20:35:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:35:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 77ca295a | Gula Aren (M) | CASH | 2026-06-03T20:36:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T20:36:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4e7da5c3 | Baileys Latte (M) | CASH | 2026-06-03T20:39:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:39:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 14a57de2 | Baileys Latte (M) | QRIS | 2026-06-03T20:51:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:51:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 43ada620 | Baileys Latte (M) | QRIS | 2026-06-03T20:52:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:52:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c5a1cddb | Baileys Latte (M) | QRIS | 2026-06-03T20:52:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:52:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 424f3c7c | Butterscotch (M) | QRIS | 2026-06-03T20:52:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:52:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e8e316c7 | Butterscotch (M) | QRIS | 2026-06-03T20:55:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:55:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dfededc7 | Butterscotch (M) | CASH | 2026-06-03T20:58:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T20:58:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1f8df9e2 | Gula Aren (M) | CASH | 2026-06-03T20:58:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-03T20:58:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- cab7a46c | Baileys Latte (M) | CASH | 2026-06-03T20:58:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-03T20:58:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8a0dd73c | Butterscotch (M) | QRIS | 2026-06-03T20:59:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:59:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3707cbcf | Butterscotch (M) | QRIS | 2026-06-03T20:59:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T20:59:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e2b72c27 | Baileys Latte (M) | QRIS | 2026-06-03T20:59:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T20:59:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 03c2e919 | Baileys Latte (M) | CASH | 2026-06-03T21:01:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T21:01:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 862a89c1 | Salted Caramel (M) | QRIS | 2026-06-03T21:04:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T21:04:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 9ab9b63e | Butterscotch (M) | CASH | 2026-06-03T21:13:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-03T21:13:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 88ad916c | Salted Caramel (M) | CASH | 2026-06-03T21:13:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T21:13:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- da78b4ee | Gula Aren (M) | QRIS | 2026-06-03T21:27:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T21:27:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9418cdcd | Baileys Latte (M) | QRIS | 2026-06-03T21:27:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T21:27:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0acfa450 | Vanilla (M) | QRIS | 2026-06-03T21:32:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T21:32:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- ccba1cc3 | Gula Aren (M) | QRIS | 2026-06-03T21:32:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-03T21:32:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 276e56d4 | Butterscotch (M) | QRIS | 2026-06-03T21:38:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T21:38:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 54fea9b7 | Hazelnut (M) | QRIS | 2026-06-03T22:07:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T22:07:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- e6a008bd | Baileys Latte (M) | QRIS | 2026-06-03T22:07:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T22:07:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7721de7b | Gula Aren (M) | QRIS | 2026-06-03T22:20:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-03T22:20:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c34f1cd5 | Butterscotch (M) | QRIS | 2026-06-03T22:23:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '2026-06-03T22:23:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  7,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b107fc49 | Gula Aren (M) | CASH | 2026-06-03T22:24:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-03T22:24:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1bcb7678 | Butterscotch (M) | CASH | 2026-06-03T22:25:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-03T22:25:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cb0adac3 | Vanilla (M) | CASH | 2026-06-03T22:25:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T22:25:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- f06bebc3 | Hazelnut (M) | CASH | 2026-06-03T22:25:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-03T22:25:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- b880dd95 | Cold Brew (M) | CASH | 2026-06-03T22:25:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-03T22:25:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- dacc963a | Baileys Latte (M) | CASH | 2026-06-03T22:25:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    187500.00,
    0.00,
    0.00,
    102937.00,
    '2026-06-03T22:25:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  15,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 453bd4b1 | Baileys Latte (M) | CASH | 2026-06-03T22:25:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-03T22:25:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 71018f2e | Baileys Latte (M) | QRIS | 2026-06-03T22:34:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-03T22:34:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5ffbf7d1 | Baileys Latte (M) | CASH | 2026-06-03T22:34:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-03T22:34:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fc06d9e3 | Baileys Latte (M) | CASH | 2026-06-03T23:00:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-03T23:00:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 65af3a32 | Gula Aren (M) | QRIS | 2026-06-04T09:00:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T09:00:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4244ed92 | Butterscotch (M) | CASH | 2026-06-04T09:49:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T09:49:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b157cc10 | Gula Aren (M) | CASH | 2026-06-04T09:49:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T09:49:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4ef8ad6d | Gula Aren (M) | CASH | 2026-06-04T10:01:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T10:01:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d62d9488 | Gula Aren (M) | QRIS | 2026-06-04T10:20:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-04T10:20:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d7686232 | Gula Aren (M) | CASH | 2026-06-04T10:26:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T10:26:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- dbd19c74 | Baileys Latte (M) | QRIS | 2026-06-04T10:27:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T10:27:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f69c14d9 | Salted Caramel (M) | QRIS | 2026-06-04T10:27:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T10:27:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1bc32693 | Butterscotch (M) | CASH | 2026-06-04T10:28:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T10:28:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7d10ca9a | Gula Aren (M) | QRIS | 2026-06-04T10:43:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T10:43:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ab039d70 | Gula Aren (M) | CASH | 2026-06-04T10:58:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T10:58:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 754def94 | Butterscotch (M) | QRIS | 2026-06-04T11:04:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:04:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fea93cba | Gula Aren (M) | CASH | 2026-06-04T11:04:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-04T11:04:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 831b5948 | Baileys Latte (M) | QRIS | 2026-06-04T11:10:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T11:10:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5b12e96a | Vanilla (M) | CASH | 2026-06-04T11:10:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:10:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- f4ca8026 | Gula Aren (M) | CASH | 2026-06-04T11:10:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T11:10:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 642b4ed6 | Gula Aren (M) | QRIS | 2026-06-04T11:18:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T11:18:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7a8e110c | Butterscotch (M) | QRIS | 2026-06-04T11:27:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:27:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 47628848 | Gula Aren (M) | CASH | 2026-06-04T11:28:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T11:28:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0886d2a1 | Baileys Latte (M) | CASH | 2026-06-04T11:39:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T11:39:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0d824237 | Butterscotch (M) | CASH | 2026-06-04T11:48:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:48:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5148ce26 | Butterscotch (M) | CASH | 2026-06-04T11:48:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:48:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 630103ab | Baileys Latte (M) | CASH | 2026-06-04T11:48:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T11:48:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f4288fac | Baileys Latte (M) | CASH | 2026-06-04T11:48:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T11:48:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 25be561b | Gula Aren (M) | QRIS | 2026-06-04T12:04:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:04:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1c00fb1e | Butterscotch (M) | CASH | 2026-06-04T12:04:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:04:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c7bc83fa | Baileys Latte (M) | CASH | 2026-06-04T12:04:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T12:04:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 27ed592f | Butterscotch (M) | QRIS | 2026-06-04T11:50:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:50:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6df965d6 | Butterscotch (M) | CASH | 2026-06-04T11:50:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T11:50:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 69603304 | Vanilla (M) | CASH | 2026-06-04T12:10:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:10:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 2bff2a90 | Gula Aren (M) | CASH | 2026-06-04T12:10:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:10:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1a1e262b | Gula Aren (M) | QRIS | 2026-06-04T12:10:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:10:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 94418703 | Butterscotch (M) | QRIS | 2026-06-04T12:13:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:13:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a3d99f2f | Salted Caramel (M) | QRIS | 2026-06-04T12:13:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:13:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- e307123f | Gula Aren (M) | CASH | 2026-06-04T12:16:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-04T12:16:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e279b1e9 | Gula Aren (M) | QRIS | 2026-06-04T12:18:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:18:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ad609581 | Baileys Latte (M) | QRIS | 2026-06-04T12:23:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:23:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7223ab1d | Hazelnut (M) | QRIS | 2026-06-04T12:23:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:23:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 3ea33793 | Butterscotch (M) | QRIS | 2026-06-04T12:24:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:24:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 644f64cb | Hazelnut (M) | QRIS | 2026-06-04T12:25:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:25:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- b07ee9e8 | Gula Aren (M) | QRIS | 2026-06-04T12:25:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:25:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 482ed45e | Butterscotch (M) | QRIS | 2026-06-04T12:29:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:29:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e60d1770 | Gula Aren (M) | QRIS | 2026-06-04T12:29:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:29:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- df870b9e | Baileys Latte (M) | QRIS | 2026-06-04T12:34:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:34:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 097b4d3c | Baileys Latte (M) | QRIS | 2026-06-04T12:34:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:34:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 177fb900 | Baileys Latte (M) | QRIS | 2026-06-04T12:34:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:34:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 045ef3d6 | Vanilla (M) | CASH | 2026-06-04T12:34:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T12:34:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- c9f24591 | Baileys Latte (M) | CASH | 2026-06-04T12:34:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:34:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0a3d31f2 | Gula Aren (M) | CASH | 2026-06-04T12:35:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:35:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c86136d9 | Salted Caramel (M) | QRIS | 2026-06-04T12:37:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:37:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 19a4cf64 | Gula Aren (M) | CASH | 2026-06-04T12:51:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:51:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a4fe3a34 | Salted Caramel (M) | QRIS | 2026-06-04T12:51:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:51:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 885cb16f | Hazelnut (M) | QRIS | 2026-06-04T12:51:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T12:51:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 921a8248 | Baileys Latte (M) | QRIS | 2026-06-04T12:51:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T12:51:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5127fc15 | Gula Aren (M) | QRIS | 2026-06-04T12:58:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:58:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- af151187 | Gula Aren (M) | QRIS | 2026-06-04T12:58:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T12:58:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 38c39b17 | Butterscotch (M) | QRIS | 2026-06-04T13:00:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:00:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a9b04e76 | Gula Aren (M) | QRIS | 2026-06-04T13:08:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:08:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- aac3e6eb | Baileys Latte (M) | QRIS | 2026-06-04T13:12:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:12:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8ddca058 | Vanilla (M) | QRIS | 2026-06-04T13:22:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:22:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- e58fe239 | Baileys Latte (M) | QRIS | 2026-06-04T13:23:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:23:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 79bfa05c | Butterscotch (M) | QRIS | 2026-06-04T13:31:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:31:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dad3563e | Baileys Latte (M) | QRIS | 2026-06-04T13:31:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:31:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d6e893a7 | Baileys Latte (M) | QRIS | 2026-06-04T13:32:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:32:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ccf610b3 | Butterscotch (M) | CASH | 2026-06-04T13:35:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-04T13:35:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 757c6ab4 | Gula Aren (M) | QRIS | 2026-06-04T13:43:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:43:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a764a22b | Butterscotch (M) | QRIS | 2026-06-04T13:43:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:43:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7fa97b67 | Gula Aren (M) | CASH | 2026-06-04T13:43:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:43:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2d4c9ea8 | Butterscotch (M) | QRIS | 2026-06-04T13:44:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:44:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e40a970b | Gula Aren (M) | QRIS | 2026-06-04T13:44:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:44:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ee72abda | Gula Aren (M) | QRIS | 2026-06-04T13:48:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:48:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2b2d2b86 | Gula Aren (M) | CASH | 2026-06-04T13:48:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-04T13:48:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 65d64be9 | Butterscotch (M) | QRIS | 2026-06-04T13:48:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T13:48:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7537f205 | Baileys Latte (M) | QRIS | 2026-06-04T13:48:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:48:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d1b64c00 | Baileys Latte (M) | QRIS | 2026-06-04T13:50:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T13:50:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 72a7aa35 | Gula Aren (M) | CASH | 2026-06-04T13:56:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T13:56:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8351ae64 | Butterscotch (M) | QRIS | 2026-06-04T13:56:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T13:56:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7ddf2cd6 | Gula Aren (M) | CASH | 2026-06-04T14:01:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T14:01:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 450d04dd | Salted Caramel (M) | QRIS | 2026-06-04T14:02:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:02:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 15435ef1 | Hazelnut (M) | QRIS | 2026-06-04T14:06:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:06:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4de31c4c | Vanilla (M) | QRIS | 2026-06-04T14:06:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:06:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 3809026e | Baileys Latte (M) | QRIS | 2026-06-04T14:06:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T14:06:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2dc0b418 | Baileys Latte (M) | CASH | 2026-06-04T14:19:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T14:19:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9b1164ea | Butterscotch (M) | CASH | 2026-06-04T14:24:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:24:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fc60f8ba | Baileys Latte (M) | CASH | 2026-06-04T14:24:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T14:24:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 04ad464b | Gula Aren (M) | CASH | 2026-06-04T14:24:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T14:24:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c4b6531c | Butterscotch (M) | QRIS | 2026-06-04T14:35:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:35:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f46dd3c9 | Butterscotch (M) | QRIS | 2026-06-04T14:51:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T14:51:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ca32e770 | Gula Aren (M) | CASH | 2026-06-04T14:59:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T14:59:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7747d417 | Gula Aren (M) | QRIS | 2026-06-04T15:09:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T15:09:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e2b1d359 | Gula Aren (M) | QRIS | 2026-06-04T15:09:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T15:09:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b9321630 | Gula Aren (M) | CASH | 2026-06-04T15:09:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-04T15:09:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1cc6a2eb | Gula Aren (M) | QRIS | 2026-06-04T15:30:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T15:30:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 23bd4387 | Baileys Latte (M) | QRIS | 2026-06-04T15:30:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T15:30:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9bfd8656 | Baileys Latte (M) | QRIS | 2026-06-04T15:34:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T15:34:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4b0bd424 | Butterscotch (M) | CASH | 2026-06-04T15:40:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T15:40:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d74fec61 | Baileys Latte (M) | CASH | 2026-06-04T15:45:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T15:45:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a8594cec | Hazelnut (M) | QRIS | 2026-06-04T16:06:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:06:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 634ff2ac | Baileys Latte (M) | QRIS | 2026-06-04T16:13:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T16:13:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 334b314e | Butterscotch (M) | CASH | 2026-06-04T16:13:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:13:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- be5a61ba | Baileys Latte (M) | CASH | 2026-06-04T16:17:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T16:17:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f3bc49e4 | Butterscotch (M) | CASH | 2026-06-04T16:18:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:18:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8909e5ee | Vanilla (M) | QRIS | 2026-06-04T16:19:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:19:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- a9823e54 | Butterscotch (M) | CASH | 2026-06-04T16:25:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:25:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- df5985fa | Baileys Latte (M) | CASH | 2026-06-04T16:25:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T16:25:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2c6ebc23 | Salted Caramel (M) | QRIS | 2026-06-04T16:42:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:42:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 2ff0d208 | Baileys Latte (M) | QRIS | 2026-06-04T16:42:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T16:42:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c03235cb | Salted Caramel (M) | CASH | 2026-06-04T16:42:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:42:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 7afe6a9b | Butterscotch (M) | CASH | 2026-06-04T16:42:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:42:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2b673fce | Gula Aren (M) | CASH | 2026-06-04T16:44:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-04T16:44:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5f467c2b | Baileys Latte (M) | CASH | 2026-06-04T16:44:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T16:44:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 144ee323 | Butterscotch (M) | CASH | 2026-06-04T16:45:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:45:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f62c080a | Butterscotch (M) | CASH | 2026-06-04T16:46:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:46:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2715583c | Salted Caramel (M) | CASH | 2026-06-04T16:47:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:47:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 08ab2582 | Gula Aren (M) | QRIS | 2026-06-04T16:50:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T16:50:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d7ca46cf | Gula Aren (M) | QRIS | 2026-06-04T16:51:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-04T16:51:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a0dffe46 | Cold Brew (M) | CASH | 2026-06-04T16:53:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T16:53:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- a7ef6489 | Cold Brew (M) | QRIS | 2026-06-04T16:53:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T16:53:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 893bf7e7 | Salted Caramel (M) | CASH | 2026-06-04T16:56:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:56:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 9764e0fc | Hazelnut (M) | CASH | 2026-06-04T16:56:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:56:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 5d766a85 | Vanilla (M) | CASH | 2026-06-04T16:56:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T16:56:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- e63ce69b | Baileys Latte (M) | CASH | 2026-06-04T16:57:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '2026-06-04T16:57:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c9a40d8f | Salted Caramel (M) | CASH | 2026-06-04T16:58:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:58:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 27722506 | Butterscotch (M) | CASH | 2026-06-04T16:58:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T16:58:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 845b0faa | Butterscotch (M) | QRIS | 2026-06-04T16:58:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-04T16:58:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 64cebc21 | Gula Aren (M) | CASH | 2026-06-04T17:00:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-04T17:00:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 487571c7 | Gula Aren (M) | QRIS | 2026-06-04T17:00:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T17:00:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d042b80b | Butterscotch (M) | QRIS | 2026-06-04T17:08:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T17:08:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d45afdac | Vanilla (M) | CASH | 2026-06-04T17:13:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:13:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 97b90b4f | Butterscotch (M) | CASH | 2026-06-04T17:15:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:15:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f7a03c50 | Butterscotch (M) | CASH | 2026-06-04T17:19:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-04T17:19:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 40e4d01c | Gula Aren (M) | QRIS | 2026-06-04T17:25:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T17:25:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 15ce5df4 | Butterscotch (M) | CASH | 2026-06-04T17:28:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:28:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fde6b437 | Hazelnut (M) | QRIS | 2026-06-04T17:29:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:29:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- f1c8e29e | Vanilla (M) | QRIS | 2026-06-04T17:29:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:29:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 33369157 | Butterscotch (M) | CASH | 2026-06-04T17:31:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:31:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- da091a9c | Baileys Latte (M) | CASH | 2026-06-04T17:31:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T17:31:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7185c4c4 | Butterscotch (M) | CASH | 2026-06-04T17:31:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:31:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 77b5db7a | Butterscotch (M) | QRIS | 2026-06-04T17:32:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-04T17:32:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 025e6ba0 | Gula Aren (M) | CASH | 2026-06-04T17:33:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T17:33:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e7b326a4 | Salted Caramel (M) | CASH | 2026-06-04T17:35:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:35:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 4e99011a | Baileys Latte (M) | QRIS | 2026-06-04T17:35:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T17:35:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cf0bf9a2 | Baileys Latte (M) | CASH | 2026-06-04T17:36:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T17:36:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1f9ce6db | Cold Brew (M) | CASH | 2026-06-04T17:36:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T17:36:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- fdafbec9 | Baileys Latte (M) | CASH | 2026-06-04T17:37:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T17:37:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 341e95a3 | Baileys Latte (M) | CASH | 2026-06-04T17:39:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T17:39:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fdada9c9 | Vanilla (M) | QRIS | 2026-06-04T17:39:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:39:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 5cb5e365 | Butterscotch (M) | CASH | 2026-06-04T17:39:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-04T17:39:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f31f14bd | Baileys Latte (M) | CASH | 2026-06-04T17:35:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T17:35:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 415a20bb | Baileys Latte (M) | CASH | 2026-06-04T17:40:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-04T17:40:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f80eb08e | Baileys Latte (M) | CASH | 2026-06-04T17:41:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T17:41:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 63999dd0 | Hazelnut (M) | CASH | 2026-06-04T17:50:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:50:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 21e2ae50 | Baileys Latte (M) | QRIS | 2026-06-04T17:52:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T17:52:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f7263b24 | Salted Caramel (M) | QRIS | 2026-06-04T17:58:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:58:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 0d757aff | Butterscotch (M) | QRIS | 2026-06-04T17:57:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:57:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7dd1135f | Vanilla (M) | QRIS | 2026-06-04T17:58:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T17:58:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 1810dbe1 | Gula Aren (M) | CASH | 2026-06-04T17:58:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '2026-06-04T17:58:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 26ba42fc | Salted Caramel (M) | CASH | 2026-06-04T17:59:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T17:59:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 35379c9b | Hazelnut (M) | CASH | 2026-06-04T17:59:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-04T17:59:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 93711efe | Cold Brew (M) | CASH | 2026-06-04T17:59:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T17:59:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 4a078859 | Butterscotch (M) | QRIS | 2026-06-04T17:59:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T17:59:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6061bdc2 | Baileys Latte (M) | CASH | 2026-06-04T18:02:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-04T18:02:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 13e5c771 | Baileys Latte (M) | CASH | 2026-06-04T18:02:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-04T18:02:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 627c44f9 | Baileys Latte (M) | QRIS | 2026-06-04T18:13:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T18:13:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3bd5e4e9 | Butterscotch (M) | QRIS | 2026-06-04T18:14:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T18:14:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5de5fa6d | Butterscotch (M) | CASH | 2026-06-04T18:23:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T18:23:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5497694c | Butterscotch (M) | QRIS | 2026-06-04T19:03:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-04T19:03:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9592f916 | Baileys Latte (M) | QRIS | 2026-06-04T19:03:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-04T19:03:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8a8a8780 | Baileys 1 ltr | QRIS | 2026-06-04T19:04:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    90000.00,
    0.00,
    0.00,
    43039.00,
    '2026-06-04T19:04:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  90000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys 1 ltr' LIMIT 1
  ) AS p;

-- 51a6b0bd | Baileys Latte (M) | QRIS | 2026-06-04T19:24:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-04T19:24:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7491debf | Baileys Latte (M) | QRIS | 2026-06-04T19:43:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T19:43:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 29b4d124 | Baileys Latte (M) | CASH | 2026-06-04T19:44:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-04T19:44:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7afe669d | Butterscotch (M) | QRIS | 2026-06-04T19:49:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T19:49:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c0ca47be | Gula Aren (M) | QRIS | 2026-06-04T20:02:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T20:02:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 67dca898 | Butterscotch (M) | QRIS | 2026-06-04T20:03:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-04T20:03:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5e05e2ba | Gula Aren (M) | CASH | 2026-06-04T20:03:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-04T20:03:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2e29cc8b | Vanilla (M) | CASH | 2026-06-04T20:03:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T20:03:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 17739121 | Hazelnut (M) | CASH | 2026-06-04T20:03:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T20:03:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- adfe06c5 | Cold Brew (M) | CASH | 2026-06-04T20:12:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T20:12:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- c8159a30 | Butterscotch (M) | QRIS | 2026-06-04T20:18:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '2026-06-04T20:18:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 03ee562a | Hazelnut (M) | QRIS | 2026-06-04T20:18:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T20:18:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 3df08898 | Gula Aren (M) | QRIS | 2026-06-04T20:18:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T20:18:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a751ec90 | Cold Brew (M) | QRIS | 2026-06-04T20:19:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T20:19:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 9664b3d1 | Gula Aren (M) | CASH | 2026-06-04T20:20:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-04T20:20:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ff2dda53 | Salted Caramel (M) | CASH | 2026-06-04T20:20:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T20:20:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 79ff856f | Cold Brew (M) | CASH | 2026-06-04T20:20:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T20:20:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 7be8b26f | Baileys Latte (M) | CASH | 2026-06-04T20:20:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '2026-06-04T20:20:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  7,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d3954536 | Butterscotch (M) | CASH | 2026-06-04T20:31:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T20:31:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dbfbc8e3 | Gula Aren (M) | QRIS | 2026-06-04T21:00:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T21:00:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9423a750 | Baileys Latte (M) | QRIS | 2026-06-04T21:09:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T21:09:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c7881f9a | Butterscotch (M) | QRIS | 2026-06-04T21:15:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-04T21:15:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bb18480f | Butterscotch (M) | QRIS | 2026-06-04T21:16:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-04T21:16:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f457cd93 | Gula Aren (M) | CASH | 2026-06-04T21:17:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-04T21:17:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 32a5849e | Baileys Latte (M) | CASH | 2026-06-04T21:18:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-04T21:18:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c1038e96 | Gula Aren (M) | QRIS | 2026-06-04T21:30:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T21:30:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 142a4823 | Butterscotch (M) | QRIS | 2026-06-04T21:33:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T21:33:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e9cd099b | Cold Brew (M) | QRIS | 2026-06-04T21:45:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-04T21:45:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 51a375af | Baileys Latte (M) | QRIS | 2026-06-04T21:57:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-04T21:57:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a88a8005 | Vanilla (M) | QRIS | 2026-06-04T21:57:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T21:57:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 15360192 | Salted Caramel (M) | QRIS | 2026-06-04T21:57:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T21:57:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- da498479 | Gula Aren (M) | QRIS | 2026-06-04T22:01:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T22:01:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1aba2c77 | Butterscotch (M) | CASH | 2026-06-04T22:10:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T22:10:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e1a8736a | Butterscotch (M) | CASH | 2026-06-04T22:19:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T22:19:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 23343b25 | Gula Aren 1 ltr | CASH | 2026-06-04T22:22:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    70000.00,
    0.00,
    0.00,
    32173.00,
    '2026-06-04T22:22:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  70000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren 1 ltr' LIMIT 1
  ) AS p;

-- 930eadb2 | Gula Aren (M) | CASH | 2026-06-04T22:29:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-04T22:29:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ef465568 | Hazelnut (M) | QRIS | 2026-06-04T22:33:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T22:33:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- cea42aa2 | Baileys Latte (M) | QRIS | 2026-06-04T22:36:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T22:36:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 70ead933 | Baileys Latte (M) | CASH | 2026-06-04T22:38:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-04T22:38:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d6bce89b | Butterscotch (M) | QRIS | 2026-06-04T22:57:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-04T22:57:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 21f15b20 | Gula Aren (M) | QRIS | 2026-06-04T22:57:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-04T22:57:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4ed104c2 | Gula Aren (M) | CASH | 2026-06-04T22:57:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-04T22:57:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bba735af | Hazelnut (M) | CASH | 2026-06-04T22:58:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-04T22:58:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- cbbfd689 | Baileys Latte (M) | CASH | 2026-06-04T22:58:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-04T22:58:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bed1710d | Gula Aren (M) | QRIS | 2026-06-05T08:27:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T08:27:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- caccf008 | Butterscotch (M) | QRIS | 2026-06-05T08:33:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T08:33:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- aafb437d | Gula Aren (M) | QRIS | 2026-06-05T08:33:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T08:33:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 16820dd2 | Salted Caramel (M) | QRIS | 2026-06-05T09:00:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T09:00:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 74b4f731 | Butterscotch (M) | QRIS | 2026-06-05T09:12:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T09:12:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c62087b | Gula Aren (M) | QRIS | 2026-06-05T09:12:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T09:12:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4468cd23 | Vanilla (M) | CASH | 2026-06-05T09:12:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T09:12:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 6f5ed693 | Gula Aren (M) | CASH | 2026-06-05T09:12:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T09:12:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 890da15c | Cold Brew (M) | QRIS | 2026-06-05T09:17:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T09:17:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 8fd80a14 | Butterscotch (M) | CASH | 2026-06-05T09:22:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T09:22:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- af3cd165 | Cold Brew (M) | CASH | 2026-06-05T09:37:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T09:37:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- b70c89c1 | Baileys Latte (M) | CASH | 2026-06-05T09:40:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T09:40:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bc2a7f25 | Gula Aren (M) | QRIS | 2026-06-05T09:43:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T09:43:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1285306f | Salted Caramel (M) | QRIS | 2026-06-05T09:43:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T09:43:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 8834b465 | Gula Aren (M) | QRIS | 2026-06-05T09:53:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T09:53:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9db06849 | Gula Aren (M) | CASH | 2026-06-05T09:53:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T09:53:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- f06c98da | Gula Aren (M) | QRIS | 2026-06-05T09:58:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T09:58:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 665058aa | Baileys Latte (M) | QRIS | 2026-06-05T09:59:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T09:59:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e769225c | Butterscotch (M) | QRIS | 2026-06-05T10:11:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:11:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7ea56b2c | Gula Aren (M) | QRIS | 2026-06-05T10:19:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T10:19:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3812b06b | Baileys Latte (M) | CASH | 2026-06-05T10:19:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T10:19:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c70fb046 | Gula Aren (M) | CASH | 2026-06-05T10:21:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T10:21:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ffff858a | Butterscotch (M) | CASH | 2026-06-05T10:27:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:27:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dff338a2 | Baileys Latte (M) | CASH | 2026-06-05T10:27:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T10:27:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3df8a65a | Salted Caramel (M) | CASH | 2026-06-05T10:36:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:36:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- e0ee98f5 | Butterscotch (M) | QRIS | 2026-06-05T10:39:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:39:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 75bd0121 | Vanilla (M) | QRIS | 2026-06-05T10:40:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:40:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- bd277f6e | Butterscotch (M) | QRIS | 2026-06-05T10:43:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:43:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d646b998 | Baileys Latte (M) | QRIS | 2026-06-05T10:43:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T10:43:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 22783ba6 | Gula Aren (M) | CASH | 2026-06-05T10:44:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T10:44:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 536427f9 | Gula Aren (M) | CASH | 2026-06-05T10:55:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T10:55:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3cb7ce2c | Gula Aren (M) | QRIS | 2026-06-05T10:55:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T10:55:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 14cbee9f | Butterscotch (M) | CASH | 2026-06-05T10:57:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T10:57:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 019ff177 | Gula Aren (M) | QRIS | 2026-06-05T10:59:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T10:59:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c764cdf3 | Cold Brew (M) | QRIS | 2026-06-05T10:59:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T10:59:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 7754a614 | Baileys Latte (M) | CASH | 2026-06-05T11:00:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T11:00:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e6b81dec | Butterscotch (M) | CASH | 2026-06-05T11:07:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T11:07:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e10a1817 | Gula Aren (M) | QRIS | 2026-06-05T11:11:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:11:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c6456167 | Baileys Latte (M) | QRIS | 2026-06-05T11:11:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T11:11:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 18218047 | Gula Aren (M) | QRIS | 2026-06-05T11:12:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:12:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 992ddaaf | Gula Aren (M) | CASH | 2026-06-05T11:24:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:24:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8f729d1a | Gula Aren (M) | CASH | 2026-06-05T11:27:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:27:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 42f6f46f | Gula Aren (M) | CASH | 2026-06-05T11:28:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:28:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ee51581c | Gula Aren (M) | QRIS | 2026-06-05T11:29:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T11:29:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bd81ae35 | Gula Aren (M) | QRIS | 2026-06-05T11:29:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:29:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0022905c | Baileys Latte (M) | QRIS | 2026-06-05T11:29:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-05T11:29:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a273159c | Baileys Latte (M) | CASH | 2026-06-05T11:29:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T11:29:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0ddb7450 | Vanilla (M) | QRIS | 2026-06-05T11:31:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T11:31:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- b0b2b6a1 | Baileys Latte (M) | QRIS | 2026-06-05T11:35:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T11:35:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c89434a7 | Gula Aren (M) | CASH | 2026-06-05T11:36:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T11:36:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7919a4b6 | Gula Aren (M) | QRIS | 2026-06-05T11:44:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T11:44:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b55bafde | Baileys Latte (M) | QRIS | 2026-06-05T11:49:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T11:49:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a35d37c9 | Butterscotch (M) | CASH | 2026-06-05T11:49:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T11:49:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 897f790f | Baileys Latte (M) | QRIS | 2026-06-05T11:50:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T11:50:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b16436ae | Butterscotch (M) | QRIS | 2026-06-05T11:55:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T11:55:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- deb3c02e | Gula Aren (M) | CASH | 2026-06-05T12:04:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T12:04:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9a8fb884 | Butterscotch (M) | QRIS | 2026-06-05T12:05:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:05:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 38514d58 | Cold Brew (M) | CASH | 2026-06-05T12:06:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T12:06:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- d10e5440 | Baileys Latte (M) | QRIS | 2026-06-05T12:37:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T12:37:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 14576301 | Butterscotch (M) | QRIS | 2026-06-05T12:41:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:41:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5c355f8b | Butterscotch (M) | CASH | 2026-06-05T12:41:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:41:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d343a820 | Baileys Latte (M) | CASH | 2026-06-05T12:41:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T12:41:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 928d220a | Gula Aren (M) | CASH | 2026-06-05T12:41:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T12:41:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 30776cf5 | Gula Aren (M) | CASH | 2026-06-05T12:41:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T12:41:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ca8bc410 | Vanilla (M) | CASH | 2026-06-05T12:44:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:44:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4b057af7 | Butterscotch (M) | QRIS | 2026-06-05T12:47:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T12:47:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d1ca7be1 | Vanilla (M) | CASH | 2026-06-05T12:47:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:47:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 2a1c380b | Butterscotch (M) | QRIS | 2026-06-05T12:47:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:47:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7a14b20a | Butterscotch (M) | QRIS | 2026-06-05T12:47:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:47:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2debef0c | Baileys Latte (M) | QRIS | 2026-06-05T12:47:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T12:47:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 56349422 | Cold Brew (M) | QRIS | 2026-06-05T12:48:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T12:48:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 178f2580 | Salted Caramel (M) | QRIS | 2026-06-05T12:48:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:48:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- be2143ca | Baileys Latte (M) | QRIS | 2026-06-05T12:49:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T12:49:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a8db75fb | Butterscotch (M) | QRIS | 2026-06-05T12:49:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T12:49:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5775c9fd | Baileys Latte (M) | CASH | 2026-06-05T12:50:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T12:50:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 556e169e | Gula Aren (M) | QRIS | 2026-06-05T12:53:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T12:53:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d43158f0 | Gula Aren (M) | CASH | 2026-06-05T12:54:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-05T12:54:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5a7d9b9d | Baileys Latte (M) | QRIS | 2026-06-05T12:56:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-05T12:56:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c5ebe625 | Hazelnut (M) | QRIS | 2026-06-05T12:56:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T12:56:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 557b2241 | Vanilla (M) | QRIS | 2026-06-05T12:56:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T12:56:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- c96eabf9 | Gula Aren (M) | CASH | 2026-06-05T13:03:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T13:03:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d1e28927 | Butterscotch (M) | QRIS | 2026-06-05T13:04:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T13:04:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 509c4749 | Vanilla (M) | QRIS | 2026-06-05T13:04:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T13:04:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 9f94f699 | Hazelnut (M) | QRIS | 2026-06-05T13:05:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:05:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 0d422776 | Butterscotch (M) | CASH | 2026-06-05T13:06:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:06:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5c0ebfa7 | Baileys Latte (M) | QRIS | 2026-06-05T13:13:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:13:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 072c0e73 | Cold Brew (M) | QRIS | 2026-06-05T13:14:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T13:14:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 4d349fc3 | Baileys Latte (M) | CASH | 2026-06-05T13:14:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:14:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 01dba37e | Baileys Latte (M) | CASH | 2026-06-05T13:17:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:17:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e63a3c8c | Vanilla (M) | QRIS | 2026-06-05T13:21:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:21:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- d05282e7 | Baileys Latte (M) | QRIS | 2026-06-05T13:25:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:25:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cd2e83d7 | Cold Brew (M) | CASH | 2026-06-05T13:32:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T13:32:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 8c68bbe4 | Salted Caramel (M) | CASH | 2026-06-05T13:33:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:33:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 7c507dfa | Baileys Latte (M) | QRIS | 2026-06-05T13:39:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:39:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3a2e70e4 | Butterscotch (M) | CASH | 2026-06-05T13:41:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:41:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b8232643 | Butterscotch (M) | CASH | 2026-06-05T13:41:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:41:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fbb88e22 | Butterscotch (M) | QRIS | 2026-06-05T13:46:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T13:46:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 59b59e77 | Baileys Latte (M) | QRIS | 2026-06-05T13:46:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:46:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 555f83a7 | Gula Aren (M) | QRIS | 2026-06-05T13:53:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T13:53:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9327d31b | Gula Aren (M) | QRIS | 2026-06-05T13:57:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T13:57:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 464a38ba | Baileys Latte (M) | CASH | 2026-06-05T13:57:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T13:57:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2b39fb6e | Baileys Latte (M) | CASH | 2026-06-05T14:02:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T14:02:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f9c73443 | Vanilla (M) | CASH | 2026-06-05T14:03:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T14:03:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- f6632eb9 | Salted Caramel (M) | CASH | 2026-06-05T14:03:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:03:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 2f160b1d | Butterscotch (M) | QRIS | 2026-06-05T14:08:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:08:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9f9bee47 | Gula Aren (M) | CASH | 2026-06-05T14:11:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T14:11:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- fdb42b7c | Gula Aren (M) | CASH | 2026-06-05T14:12:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T14:12:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 94ee0397 | Butterscotch (M) | QRIS | 2026-06-05T14:14:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:14:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b6fd0d35 | Butterscotch (M) | QRIS | 2026-06-05T14:14:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:14:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 54df65a9 | Butterscotch (M) | CASH | 2026-06-05T14:15:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:15:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 873accff | Butterscotch (M) | QRIS | 2026-06-05T14:41:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T14:41:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9872286a | Vanilla (M) | CASH | 2026-06-05T14:59:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T14:59:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 6f41bbf4 | Hazelnut (M) | CASH | 2026-06-05T15:00:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T15:00:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 0ee1ecf3 | Butterscotch (M) | CASH | 2026-06-05T15:02:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:02:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5f947dbc | Butterscotch (M) | QRIS | 2026-06-05T15:05:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:05:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6152a3bb | Baileys Latte (M) | QRIS | 2026-06-05T15:22:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T15:22:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4d784cde | Vanilla (M) | CASH | 2026-06-05T15:23:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T15:23:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- f58b912b | Baileys Latte (M) | CASH | 2026-06-05T15:23:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T15:23:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4624b1dc | Salted Caramel (M) | CASH | 2026-06-05T15:24:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:24:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- c5f0b9b8 | Vanilla (M) | CASH | 2026-06-05T15:26:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T15:26:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 06b5799a | Butterscotch (M) | CASH | 2026-06-05T15:27:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:27:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9c66e55f | Baileys Latte (M) | QRIS | 2026-06-05T15:29:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T15:29:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f934df36 | Gula Aren (M) | CASH | 2026-06-05T15:49:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-05T15:49:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c4c24621 | Gula Aren (M) | QRIS | 2026-06-05T15:49:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-05T15:49:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b62009b9 | Butterscotch (M) | QRIS | 2026-06-05T15:49:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:49:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5da68f5e | Baileys Latte (M) | QRIS | 2026-06-05T15:50:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T15:50:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 77cdf8b5 | Cold Brew (M) | CASH | 2026-06-05T15:49:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T15:49:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 120f8fad | Cold Brew (M) | QRIS | 2026-06-05T15:50:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-05T15:50:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 7aac9eb9 | Baileys Latte (M) | CASH | 2026-06-05T15:51:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T15:51:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2d32b127 | Vanilla (M) | CASH | 2026-06-05T15:52:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T15:52:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- a2b0fc36 | Butterscotch (M) | CASH | 2026-06-05T15:52:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-05T15:52:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2857f321 | Butterscotch (M) | QRIS | 2026-06-05T15:52:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '2026-06-05T15:52:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bf24cf0e | Salted Caramel (M) | QRIS | 2026-06-05T15:53:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T15:53:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 6294d504 | Hazelnut (M) | QRIS | 2026-06-05T15:53:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T15:53:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4d216b80 | Vanilla (M) | QRIS | 2026-06-05T15:56:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:56:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- ddf6a3d7 | Hazelnut (M) | QRIS | 2026-06-05T15:56:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T15:56:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 6dd38c64 | Baileys Latte (M) | QRIS | 2026-06-05T15:56:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T15:56:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8d4dd551 | Salted Caramel (M) | QRIS | 2026-06-05T16:02:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:02:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1ecccce1 | Baileys Latte (M) | CASH | 2026-06-05T16:06:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:06:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 54ab5db5 | Baileys Latte (M) | QRIS | 2026-06-05T16:12:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:12:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 31fc013c | Baileys Latte (M) | QRIS | 2026-06-05T16:13:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:13:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a69d1aab | Cold Brew (M) | QRIS | 2026-06-05T16:40:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T16:40:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- d9888878 | Hazelnut (M) | QRIS | 2026-06-05T16:44:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:44:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 038dc993 | Salted Caramel (M) | QRIS | 2026-06-05T16:45:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:45:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- c2e8d240 | Vanilla (M) | QRIS | 2026-06-05T16:45:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:45:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 5a1b9b97 | Salted Caramel (M) | QRIS | 2026-06-05T16:46:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:46:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- a5722479 | Baileys Latte (M) | QRIS | 2026-06-05T16:46:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T16:46:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7a09c893 | Gula Aren (M) | CASH | 2026-06-05T16:47:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T16:47:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ff290db2 | Gula Aren (M) | QRIS | 2026-06-05T16:47:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T16:47:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c857edea | Butterscotch (M) | CASH | 2026-06-05T16:48:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:48:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 36423d55 | Salted Caramel (M) | CASH | 2026-06-05T16:48:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:48:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1bf7635b | Baileys Latte (M) | CASH | 2026-06-05T16:48:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:48:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3797f383 | Baileys Latte (M) | CASH | 2026-06-05T16:48:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:48:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 50010feb | Gula Aren (M) | QRIS | 2026-06-05T16:48:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-05T16:48:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1d93d581 | Butterscotch (M) | CASH | 2026-06-05T16:51:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:51:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 181a0079 | Cold Brew (M) | QRIS | 2026-06-05T16:54:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T16:54:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 4a9ddd5a | Gula Aren (M) | QRIS | 2026-06-05T16:57:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    240000.00,
    0.00,
    0.00,
    107873.00,
    '2026-06-05T16:57:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  30,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b5e09ac8 | Butterscotch (M) | CASH | 2026-06-05T16:57:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T16:57:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e4c3b761 | Salted Caramel (M) | CASH | 2026-06-05T16:59:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:59:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 38b23ad2 | Baileys Latte (M) | CASH | 2026-06-05T16:59:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T16:59:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2d31d418 | Butterscotch (M) | CASH | 2026-06-05T16:59:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T16:59:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 12ab9ece | Butterscotch (M) | QRIS | 2026-06-05T17:00:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    375000.00,
    0.00,
    0.00,
    211092.00,
    '2026-06-05T17:00:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  30,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9a5d111f | Baileys Latte (M) | QRIS | 2026-06-05T17:02:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T17:02:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4102bb41 | Baileys Latte (M) | CASH | 2026-06-05T17:02:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T17:02:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 51637433 | Baileys Latte (M) | QRIS | 2026-06-05T17:13:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T17:13:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0eff4325 | Butterscotch (M) | QRIS | 2026-06-05T17:19:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T17:19:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ce762a81 | Gula Aren (M) | CASH | 2026-06-05T17:22:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T17:22:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 13c2b719 | Hazelnut (M) | QRIS | 2026-06-05T17:23:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T17:23:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 8b385891 | Salted Caramel (M) | QRIS | 2026-06-05T17:23:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:23:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- cf9955a9 | Butterscotch (M) | CASH | 2026-06-05T17:23:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:23:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 897e7c36 | Butterscotch (M) | QRIS | 2026-06-05T17:23:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:23:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8dd3ad3f | Butterscotch (M) | QRIS | 2026-06-05T17:23:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:23:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9f0e8143 | Butterscotch (M) | CASH | 2026-06-05T17:24:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T17:24:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8efbbb2b | Vanilla (M) | QRIS | 2026-06-05T17:25:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:25:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- de696d56 | Gula Aren (M) | CASH | 2026-06-05T17:25:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-05T17:25:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 513cc81e | Gula Aren (M) | CASH | 2026-06-05T17:25:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T17:25:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7b18415f | Gula Aren (M) | CASH | 2026-06-05T17:27:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T17:27:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7b6c8c1e | Butterscotch (M) | CASH | 2026-06-05T17:28:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:28:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cad5c900 | Butterscotch (M) | QRIS | 2026-06-05T17:30:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:30:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2eebef96 | Butterscotch (M) | CASH | 2026-06-05T17:30:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:30:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 66e0017c | Baileys Latte (M) | CASH | 2026-06-05T17:31:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T17:31:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2ca2c1d2 | Butterscotch (M) | QRIS | 2026-06-05T17:35:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:35:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1eba02a2 | Butterscotch (M) | QRIS | 2026-06-05T17:37:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:37:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 511a5e51 | Butterscotch (M) | QRIS | 2026-06-05T17:40:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T17:40:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9b196cbd | Baileys Latte (M) | QRIS | 2026-06-05T17:41:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T17:41:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d335bf54 | Butterscotch (M) | CASH | 2026-06-05T17:41:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:41:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 46734467 | Butterscotch (M) | QRIS | 2026-06-05T17:44:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-05T17:44:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- eddde991 | Butterscotch (M) | QRIS | 2026-06-05T17:46:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:46:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 62ea9668 | Butterscotch (M) | CASH | 2026-06-05T17:49:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T17:49:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- deb60486 | Gula Aren (M) | CASH | 2026-06-05T17:55:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T17:55:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5ebab38f | Baileys Latte (M) | CASH | 2026-06-05T17:56:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T17:56:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a78d53a1 | Baileys Latte (M) | QRIS | 2026-06-05T18:11:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T18:11:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 43db2d7e | Gula Aren (M) | QRIS | 2026-06-05T18:17:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T18:17:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 37dbcf25 | Cold Brew (M) | QRIS | 2026-06-05T18:18:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-05T18:18:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 954426d5 | Butterscotch (M) | QRIS | 2026-06-05T18:18:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T18:18:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- be749430 | Vanilla (M) | QRIS | 2026-06-05T18:19:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T18:19:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- df2dcfbe | Gula Aren (M) | CASH | 2026-06-05T18:20:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-05T18:20:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ea994006 | Salted Caramel (M) | CASH | 2026-06-05T18:20:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:20:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- f30ba227 | Hazelnut (M) | CASH | 2026-06-05T18:20:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T18:20:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- a49e67ed | Baileys Latte (M) | CASH | 2026-06-05T18:20:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T18:20:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0c2af486 | Gula Aren (M) | QRIS | 2026-06-05T18:28:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-05T18:28:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ca0a5480 | Cold Brew (M) | QRIS | 2026-06-05T18:28:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-05T18:28:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- a5c91f91 | Butterscotch (M) | QRIS | 2026-06-05T18:28:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-05T18:28:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3b29b91f | Vanilla (M) | QRIS | 2026-06-05T18:28:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:28:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 615a6126 | Gula Aren (M) | CASH | 2026-06-05T18:29:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-05T18:29:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bbd437fa | Salted Caramel (M) | CASH | 2026-06-05T18:30:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:30:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 0d6d6dd9 | Hazelnut (M) | CASH | 2026-06-05T18:30:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T18:30:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 636956de | Baileys Latte (M) | CASH | 2026-06-05T18:30:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-05T18:30:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1d41dd23 | Butterscotch (M) | QRIS | 2026-06-05T18:37:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:37:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 99fc0d68 | Baileys Latte (M) | QRIS | 2026-06-05T18:37:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T18:37:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a26656be | Butterscotch (M) | QRIS | 2026-06-05T18:47:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:47:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9baa23e3 | Butterscotch (M) | QRIS | 2026-06-05T18:47:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:47:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0a303e74 | Hazelnut (M) | QRIS | 2026-06-05T18:47:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T18:47:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 764fabca | Baileys Latte (M) | QRIS | 2026-06-05T18:50:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-05T18:50:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b636f6e8 | Baileys Latte (M) | CASH | 2026-06-05T19:14:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T19:14:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3329a0a6 | Butterscotch (M) | CASH | 2026-06-05T19:15:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T19:15:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5913fcf3 | Baileys Latte (M) | CASH | 2026-06-05T19:15:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T19:15:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f1c0a036 | Butterscotch (M) | QRIS | 2026-06-05T19:16:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T19:16:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d8b87a35 | Hazelnut (M) | QRIS | 2026-06-05T19:16:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T19:16:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 9950edd1 | Baileys Latte (M) | CASH | 2026-06-05T19:22:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-05T19:22:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c01dbb09 | Hazelnut (M) | CASH | 2026-06-05T19:22:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T19:22:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- be61a708 | Butterscotch (M) | CASH | 2026-06-05T19:31:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T19:31:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9b3520a4 | Baileys Latte (M) | QRIS | 2026-06-05T19:32:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-05T19:32:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0e41bf09 | Cold Brew (M) | QRIS | 2026-06-05T19:52:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T19:52:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- ba4c8ee8 | Butterscotch (M) | QRIS | 2026-06-05T19:53:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T19:53:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 65553b66 | Vanilla (M) | QRIS | 2026-06-05T19:54:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T19:54:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- a8af75c8 | Baileys Latte (M) | CASH | 2026-06-05T20:12:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-05T20:12:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 85c7d2f2 | Baileys Latte (M) | CASH | 2026-06-05T20:13:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T20:13:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e698b373 | Butterscotch (M) | CASH | 2026-06-05T20:13:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:13:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 002971b2 | Cold Brew (M) | CASH | 2026-06-05T20:18:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-05T20:18:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 6e78913b | Salted Caramel (M) | CASH | 2026-06-05T20:22:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:22:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 3d67e35f | Butterscotch (M) | QRIS | 2026-06-05T20:26:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '2026-06-05T20:26:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  7,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 80c14162 | Gula Aren (M) | QRIS | 2026-06-05T20:27:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-05T20:27:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9e8cfa36 | Cold Brew (M) | QRIS | 2026-06-05T20:27:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T20:27:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- c5f23dfd | Gula Aren (M) | CASH | 2026-06-05T20:28:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-05T20:28:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 020f48bc | Butterscotch (M) | CASH | 2026-06-05T20:28:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:28:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bd4853f2 | Vanilla (M) | CASH | 2026-06-05T20:28:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T20:28:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- ef5b9110 | Salted Caramel (M) | CASH | 2026-06-05T20:28:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:28:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 86a2bc5d | Hazelnut (M) | CASH | 2026-06-05T20:28:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:28:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4b787e4f | Baileys Latte (M) | CASH | 2026-06-05T20:28:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-05T20:28:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f4200c6a | Vanilla (M) | CASH | 2026-06-05T20:31:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:31:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4a4bb121 | Gula Aren 1 ltr | CASH | 2026-06-05T20:35:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    70000.00,
    0.00,
    0.00,
    32173.00,
    '2026-06-05T20:35:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  70000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren 1 ltr' LIMIT 1
  ) AS p;

-- d1f0cede | Butterscotch (M) | CASH | 2026-06-05T20:52:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T20:52:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a80a3a0e | Baileys Latte (M) | CASH | 2026-06-05T20:52:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T20:52:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a14bb51a | Butterscotch (M) | CASH | 2026-06-05T20:55:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T20:55:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4583db37 | Baileys Latte (M) | QRIS | 2026-06-05T20:57:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T20:57:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fde02a47 | Hazelnut (M) | QRIS | 2026-06-05T21:10:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T21:10:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- d0049011 | Baileys Latte (M) | CASH | 2026-06-05T21:10:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-05T21:10:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d68d35d0 | Vanilla (M) | QRIS | 2026-06-05T21:11:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T21:11:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 1fbee793 | Hazelnut (M) | QRIS | 2026-06-05T21:11:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T21:11:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 95675cf0 | Baileys Latte (M) | CASH | 2026-06-05T21:59:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '2026-06-05T21:59:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d010d551 | Butterscotch (M) | CASH | 2026-06-05T22:00:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-05T22:00:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f58f7dda | Salted Caramel (M) | CASH | 2026-06-05T22:00:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T22:00:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 594abf2f | Butterscotch (M) | QRIS | 2026-06-05T22:07:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T22:07:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 692fa85a | Butterscotch (M) | CASH | 2026-06-05T22:11:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T22:11:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6ab2b488 | Baileys Latte (M) | CASH | 2026-06-05T22:11:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T22:11:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 63c93703 | Baileys Latte (M) | CASH | 2026-06-05T22:15:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-05T22:15:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e05533d7 | Salted Caramel (M) | CASH | 2026-06-05T22:22:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-05T22:22:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 171a208c | Butterscotch (M) | QRIS | 2026-06-05T23:02:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    175000.00,
    0.00,
    0.00,
    98509.00,
    '2026-06-05T23:02:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 44035fbe | Gula Aren (M) | QRIS | 2026-06-05T23:02:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-05T23:02:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ec4760c0 | Cold Brew (M) | QRIS | 2026-06-05T23:03:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T23:03:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 0c324592 | Gula Aren (M) | CASH | 2026-06-05T23:03:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-05T23:03:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0b9f0b2b | Vanilla (M) | CASH | 2026-06-05T23:04:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T23:04:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- da3dc6c7 | Salted Caramel (M) | CASH | 2026-06-05T23:04:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T23:04:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1b6be599 | Hazelnut (M) | CASH | 2026-06-05T23:04:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-05T23:04:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 2fd54c50 | Cold Brew (M) | CASH | 2026-06-05T23:04:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-05T23:04:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- b19da6c0 | Baileys Latte (M) | CASH | 2026-06-05T23:04:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    112500.00,
    0.00,
    0.00,
    61762.00,
    '2026-06-05T23:04:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2b6f0275 | Baileys Latte (M) | CASH | 2026-06-05T23:04:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-05T23:04:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8118a81d | Butterscotch (M) | QRIS | 2026-06-06T08:16:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T08:16:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a91dacfa | Gula Aren (M) | QRIS | 2026-06-06T08:45:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T08:45:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ff7cc6d7 | Gula Aren (M) | QRIS | 2026-06-06T08:55:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T08:55:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 43773026 | Butterscotch (M) | CASH | 2026-06-06T09:36:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T09:36:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 058d9d17 | Gula Aren (M) | QRIS | 2026-06-06T09:43:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T09:43:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- f7d313e8 | Butterscotch (M) | CASH | 2026-06-06T09:45:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T09:45:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 59562f74 | Butterscotch (M) | CASH | 2026-06-06T09:57:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T09:57:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ff227bef | Baileys Latte (M) | CASH | 2026-06-06T09:57:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T09:57:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b84427b5 | Butterscotch (M) | QRIS | 2026-06-06T10:01:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T10:01:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8d006747 | Gula Aren (M) | CASH | 2026-06-06T10:04:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T10:04:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4e9c9172 | Gula Aren (M) | CASH | 2026-06-06T10:06:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T10:06:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2a635fbd | Gula Aren (M) | CASH | 2026-06-06T10:07:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T10:07:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a760a4cb | Gula Aren (M) | CASH | 2026-06-06T10:12:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T10:12:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 23397dc8 | Baileys Latte (M) | CASH | 2026-06-06T10:16:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T10:16:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bc9e0a5c | Hazelnut (M) | CASH | 2026-06-06T10:41:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T10:41:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 3162d1b0 | Baileys Latte (M) | CASH | 2026-06-06T10:48:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T10:48:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1cee3367 | Gula Aren (M) | QRIS | 2026-06-06T11:14:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T11:14:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ddfa6686 | Vanilla (M) | CASH | 2026-06-06T11:16:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:16:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 5a3b9ebf | Baileys Latte (M) | QRIS | 2026-06-06T11:16:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T11:16:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d292218e | Butterscotch (M) | QRIS | 2026-06-06T11:16:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:16:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2183f681 | Butterscotch (M) | CASH | 2026-06-06T11:26:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:26:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3e4e5b22 | Baileys Latte (M) | CASH | 2026-06-06T11:33:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T11:33:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8c47e5de | Salted Caramel (M) | CASH | 2026-06-06T11:33:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:33:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 18351869 | Cold Brew (M) | CASH | 2026-06-06T11:45:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-06T11:45:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 98365693 | Vanilla (M) | QRIS | 2026-06-06T11:47:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:47:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4681d526 | Butterscotch (M) | QRIS | 2026-06-06T11:55:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T11:55:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ab22f428 | Vanilla (M) | QRIS | 2026-06-06T11:55:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T11:55:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 6b83aab3 | Baileys Latte (M) | CASH | 2026-06-06T11:55:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T11:55:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9a5612f4 | Gula Aren (M) | QRIS | 2026-06-06T12:10:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T12:10:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0fe3e537 | Hazelnut (M) | CASH | 2026-06-06T12:22:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:22:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- ba631d02 | Butterscotch (M) | QRIS | 2026-06-06T12:25:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:25:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b98c32f9 | Baileys Latte (M) | CASH | 2026-06-06T12:36:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T12:36:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e83ad15e | Vanilla (M) | CASH | 2026-06-06T12:36:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:36:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 7c0cc36d | Baileys Latte (M) | CASH | 2026-06-06T12:41:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T12:41:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9b629385 | Butterscotch (M) | CASH | 2026-06-06T12:48:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:48:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 283c8c77 | Baileys Latte (M) | CASH | 2026-06-06T12:49:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T12:49:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- db117274 | Gula Aren (M) | CASH | 2026-06-06T12:55:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T12:55:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3d0cc809 | Gula Aren (M) | CASH | 2026-06-06T12:55:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T12:55:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1356909b | Baileys Latte (M) | CASH | 2026-06-06T12:55:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T12:55:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- df560a5f | Butterscotch (M) | QRIS | 2026-06-06T12:55:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:55:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e9b7cfac | Butterscotch (M) | CASH | 2026-06-06T12:56:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T12:56:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0057ee14 | Butterscotch (M) | CASH | 2026-06-06T12:59:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T12:59:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0c526917 | Baileys Latte (M) | CASH | 2026-06-06T12:59:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T12:59:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ce6841bb | Butterscotch (M) | QRIS | 2026-06-06T13:02:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T13:02:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dbe487ee | Hazelnut (M) | QRIS | 2026-06-06T13:03:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T13:03:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- bfcad209 | Cold Brew (M) | QRIS | 2026-06-06T13:05:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-06T13:05:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- a1dfb04b | Gula Aren (M) | CASH | 2026-06-06T13:21:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T13:21:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bac3d23b | Gula Aren (M) | QRIS | 2026-06-06T13:41:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-06T13:41:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 785bcac2 | Butterscotch (M) | CASH | 2026-06-06T13:52:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T13:52:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 876f4465 | Cold Brew (M) | QRIS | 2026-06-06T13:53:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-06T13:53:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 142ae35d | Gula Aren (M) | QRIS | 2026-06-06T13:53:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T13:53:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 62162955 | Gula Aren (M) | CASH | 2026-06-06T13:56:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T13:56:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- f9d3691f | Butterscotch (M) | QRIS | 2026-06-06T14:12:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T14:12:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 472e28a1 | Hazelnut (M) | QRIS | 2026-06-06T14:12:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:12:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- ac995335 | Baileys Latte (M) | CASH | 2026-06-06T14:19:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T14:19:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2a46c894 | Butterscotch (M) | QRIS | 2026-06-06T14:20:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:20:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4e3d871e | Butterscotch (M) | CASH | 2026-06-06T14:26:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:26:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cec3d274 | Vanilla (M) | CASH | 2026-06-06T14:26:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:26:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- c015c8a4 | Butterscotch (M) | CASH | 2026-06-06T14:33:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T14:33:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ba9e70ee | Baileys Latte (M) | QRIS | 2026-06-06T14:36:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T14:36:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6937ed8a | Baileys Latte (M) | CASH | 2026-06-06T14:40:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T14:40:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 573d700f | Butterscotch (M) | CASH | 2026-06-06T14:48:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:48:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8acf6b43 | Butterscotch (M) | QRIS | 2026-06-06T14:49:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T14:49:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f028a115 | Gula Aren (M) | QRIS | 2026-06-06T14:49:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T14:49:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d508a981 | Butterscotch (M) | CASH | 2026-06-06T14:50:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T14:50:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fb2b4a9f | Baileys Latte (M) | QRIS | 2026-06-06T14:50:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T14:50:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a71ba1ec | Hazelnut (M) | CASH | 2026-06-06T15:05:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:05:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- ed7b2332 | Butterscotch (M) | CASH | 2026-06-06T15:08:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:08:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 026ebf3e | Salted Caramel (M) | CASH | 2026-06-06T15:10:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:10:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- e0dee0e4 | Hazelnut (M) | QRIS | 2026-06-06T15:32:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:32:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 1c73d4ee | Hazelnut (M) | CASH | 2026-06-06T15:32:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:32:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- a5efed44 | Baileys Latte (M) | QRIS | 2026-06-06T15:33:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T15:33:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3a8a1493 | Butterscotch (M) | CASH | 2026-06-06T15:38:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:38:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7a4c4bb3 | Gula Aren (M) | CASH | 2026-06-06T15:40:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-06T15:40:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 78a759ab | Baileys Latte (M) | QRIS | 2026-06-06T15:41:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T15:41:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8d081a1e | Butterscotch (M) | CASH | 2026-06-06T15:56:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T15:56:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7a4bb361 | Gula Aren (M) | CASH | 2026-06-06T15:58:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T15:58:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 723d5fb0 | Butterscotch (M) | QRIS | 2026-06-06T16:17:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T16:17:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8b7ae8c8 | Baileys Latte (M) | QRIS | 2026-06-06T16:17:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:17:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a4c37fa8 | Baileys Latte (M) | CASH | 2026-06-06T16:17:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:17:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0f8c9277 | Butterscotch (M) | QRIS | 2026-06-06T16:22:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T16:22:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d5fcb8a9 | Butterscotch (M) | QRIS | 2026-06-06T16:23:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T16:23:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4c152044 | Gula Aren (M) | QRIS | 2026-06-06T16:23:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T16:23:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 51f90e31 | Baileys Latte (M) | CASH | 2026-06-06T16:23:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:23:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a9c69b08 | Baileys Latte (M) | CASH | 2026-06-06T16:23:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:23:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c2dd9d57 | Gula Aren (M) | QRIS | 2026-06-06T16:26:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T16:26:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8a51c65e | Gula Aren (M) | CASH | 2026-06-06T16:30:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T16:30:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ae63360e | Gula Aren (M) | CASH | 2026-06-06T16:42:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T16:42:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- fddbb82b | Butterscotch (M) | QRIS | 2026-06-06T16:43:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T16:43:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 58ca0e0f | Baileys Latte (M) | CASH | 2026-06-06T16:43:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:43:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 81f78f5a | Gula Aren (M) | CASH | 2026-06-06T16:54:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T16:54:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8219b494 | Baileys Latte (M) | QRIS | 2026-06-06T16:56:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T16:56:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 80fe981a | Gula Aren (M) | CASH | 2026-06-06T17:04:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T17:04:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d6a05104 | Hazelnut (M) | QRIS | 2026-06-06T17:07:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T17:07:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 2dec5e74 | Baileys Latte (M) | QRIS | 2026-06-06T17:11:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:11:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 67247244 | Baileys Latte (M) | QRIS | 2026-06-06T17:13:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:13:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 34905375 | Gula Aren (M) | CASH | 2026-06-06T17:13:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T17:13:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c99da42c | Baileys Latte (M) | CASH | 2026-06-06T17:14:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:14:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6b93a6f5 | Baileys Latte (M) | QRIS | 2026-06-06T17:17:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:17:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a85a6dc3 | Gula Aren (M) | QRIS | 2026-06-06T17:18:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T17:18:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 55736873 | Butterscotch (M) | CASH | 2026-06-06T17:20:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:20:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3be8f0ce | Butterscotch (M) | CASH | 2026-06-06T17:23:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T17:23:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8f7e110d | Baileys Latte (M) | CASH | 2026-06-06T17:23:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-06T17:23:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 521930cf | Hazelnut (M) | CASH | 2026-06-06T17:24:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T17:24:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 5537b3d6 | Gula Aren (M) | CASH | 2026-06-06T17:24:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-06T17:24:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d9fb3b44 | Baileys Latte (M) | QRIS | 2026-06-06T17:25:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:25:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d3af50e2 | Vanilla (M) | CASH | 2026-06-06T17:27:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:27:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 3b35519f | Butterscotch (M) | CASH | 2026-06-06T17:28:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-06T17:28:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 58309ca9 | Baileys Latte (M) | CASH | 2026-06-06T17:39:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:39:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8fbfeb29 | Butterscotch (M) | QRIS | 2026-06-06T17:40:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:40:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ac71dd5d | Butterscotch (M) | QRIS | 2026-06-06T17:42:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:42:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cc4f6a38 | Butterscotch (M) | CASH | 2026-06-06T17:42:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:42:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 111abd11 | Baileys Latte (M) | CASH | 2026-06-06T17:42:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:42:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e73d19e1 | Gula Aren (M) | CASH | 2026-06-06T17:43:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T17:43:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7c7e47ee | Baileys Latte (M) | QRIS | 2026-06-06T17:48:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:48:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5db2855f | Baileys Latte (M) | QRIS | 2026-06-06T17:49:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T17:49:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8dee4e4a | Butterscotch (M) | QRIS | 2026-06-06T17:54:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:54:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 32103808 | Hazelnut (M) | QRIS | 2026-06-06T17:55:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T17:55:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 490bef9f | Butterscotch (M) | QRIS | 2026-06-06T18:00:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:00:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cd092620 | Vanilla (M) | CASH | 2026-06-06T18:00:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:00:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- fd276343 | Vanilla (M) | QRIS | 2026-06-06T18:01:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T18:01:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- b1658107 | Hazelnut (M) | QRIS | 2026-06-06T18:02:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:02:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 928a1f22 | Butterscotch (M) | QRIS | 2026-06-06T18:02:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:02:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a755ca89 | Gula Aren (M) | QRIS | 2026-06-06T18:02:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T18:02:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bf311169 | Butterscotch (M) | QRIS | 2026-06-06T18:02:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:02:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- adf12a0f | Gula Aren (M) | CASH | 2026-06-06T18:02:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-06T18:02:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9fde2080 | Gula Aren (M) | CASH | 2026-06-06T18:03:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:03:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2ffc5b9b | Butterscotch (M) | CASH | 2026-06-06T18:03:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-06T18:03:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c0d9335 | Baileys Latte (M) | CASH | 2026-06-06T18:03:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-06T18:03:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7ea20c00 | Butterscotch (M) | QRIS | 2026-06-06T18:04:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:04:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0359adc7 | Baileys Latte (M) | QRIS | 2026-06-06T18:06:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:06:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- aadebe6d | Butterscotch (M) | CASH | 2026-06-06T18:06:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:06:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8cd8faef | Baileys Latte (M) | QRIS | 2026-06-06T18:08:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:08:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ed32afd8 | Vanilla (M) | CASH | 2026-06-06T18:11:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T18:11:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- eda074f3 | Butterscotch (M) | CASH | 2026-06-06T18:11:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    175000.00,
    0.00,
    0.00,
    98509.00,
    '2026-06-06T18:11:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cbf5addb | Butterscotch (M) | CASH | 2026-06-06T18:18:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T18:18:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 39d94efb | Vanilla (M) | CASH | 2026-06-06T18:18:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:18:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 1895b31d | Gula Aren (M) | CASH | 2026-06-06T18:26:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:26:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1c8e60d2 | Baileys Latte (M) | QRIS | 2026-06-06T18:37:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T18:37:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ef6b8a9a | Vanilla (M) | CASH | 2026-06-06T18:44:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:44:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 6618e0ac | Gula Aren (M) | CASH | 2026-06-06T18:44:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:44:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ebbe573b | Baileys Latte (M) | CASH | 2026-06-06T18:45:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:45:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 46b613e5 | Baileys Latte (M) | QRIS | 2026-06-06T18:45:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:45:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 90b6b717 | Gula Aren (M) | QRIS | 2026-06-06T18:45:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:45:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 907b62d4 | Butterscotch (M) | QRIS | 2026-06-06T18:46:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:46:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 269147a7 | Butterscotch (M) | QRIS | 2026-06-06T18:47:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T18:47:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 43755b05 | Gula Aren (M) | QRIS | 2026-06-06T18:50:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:50:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 669da65d | Baileys Latte (M) | QRIS | 2026-06-06T18:54:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:54:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1bac6e9c | Baileys Latte (M) | CASH | 2026-06-06T18:55:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T18:55:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 531dadb0 | Gula Aren (M) | CASH | 2026-06-06T18:59:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T18:59:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 1cde2efc | Butterscotch (M) | CASH | 2026-06-06T19:02:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-06T19:02:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0b967001 | Gula Aren (M) | CASH | 2026-06-06T19:02:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T19:02:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 53f3155b | Butterscotch (M) | QRIS | 2026-06-06T19:02:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:02:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 93a1faa1 | Butterscotch (M) | QRIS | 2026-06-06T19:08:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T19:08:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e953ea2b | Baileys Latte (M) | QRIS | 2026-06-06T19:08:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-06T19:08:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f6275010 | Baileys Latte (M) | QRIS | 2026-06-06T19:13:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T19:13:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 77f90e88 | Baileys Latte (M) | CASH | 2026-06-06T19:16:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-06T19:16:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 54c9619f | Gula Aren (M) | QRIS | 2026-06-06T19:19:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T19:19:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 61cac0b6 | Gula Aren (M) | QRIS | 2026-06-06T19:20:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T19:20:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7e4cad94 | Baileys Latte (M) | QRIS | 2026-06-06T19:22:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T19:22:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e6f393d8 | Baileys Latte (M) | QRIS | 2026-06-06T19:29:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T19:29:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 121c809b | Baileys Latte (M) | CASH | 2026-06-06T19:29:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T19:29:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 860b530a | Baileys Latte (M) | CASH | 2026-06-06T19:29:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T19:29:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 73aecacc | Butterscotch (M) | QRIS | 2026-06-06T19:31:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:31:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 202e005a | Hazelnut (M) | QRIS | 2026-06-06T19:41:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:41:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 19b11578 | Butterscotch (M) | CASH | 2026-06-06T19:41:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T19:41:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8dd5ef58 | Gula Aren (M) | CASH | 2026-06-06T19:42:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T19:42:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 09efd828 | Butterscotch (M) | CASH | 2026-06-06T19:42:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T19:42:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 569f195a | Butterscotch (M) | QRIS | 2026-06-06T19:44:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:44:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 15f6b717 | Baileys Latte (M) | QRIS | 2026-06-06T19:47:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T19:47:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 38787dfb | Butterscotch (M) | CASH | 2026-06-06T19:48:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:48:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0ae3d382 | Butterscotch (M) | QRIS | 2026-06-06T19:49:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:49:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2fbf1ec0 | Butterscotch (M) | QRIS | 2026-06-06T19:54:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:54:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f19f875e | Butterscotch (M) | CASH | 2026-06-06T19:55:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T19:55:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 88890b54 | Baileys Latte (M) | CASH | 2026-06-06T19:55:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-06T19:55:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8fb2ac7d | Baileys Latte (M) | QRIS | 2026-06-06T19:57:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T19:57:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 93136903 | Butterscotch (M) | QRIS | 2026-06-06T19:57:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:57:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e3d832e5 | Butterscotch (M) | CASH | 2026-06-06T19:58:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T19:58:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 93f12b7e | Butterscotch (M) | QRIS | 2026-06-06T20:01:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '2026-06-06T20:01:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  11,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- aa85cc8c | Gula Aren (M) | QRIS | 2026-06-06T20:02:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-06T20:02:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 34632ae0 | Gula Aren (M) | CASH | 2026-06-06T20:03:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-06T20:03:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5425fa8f | Butterscotch (M) | CASH | 2026-06-06T20:03:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T20:03:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1d99b074 | Hazelnut (M) | CASH | 2026-06-06T20:03:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T20:03:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- c2508fcb | Baileys Latte (M) | CASH | 2026-06-06T20:03:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    150000.00,
    0.00,
    0.00,
    82349.00,
    '2026-06-06T20:03:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  12,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 813aeefe | Butterscotch (M) | CASH | 2026-06-06T20:05:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:05:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0d0acc00 | Baileys Latte (M) | CASH | 2026-06-06T20:05:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T20:05:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a0474629 | Gula Aren (M) | CASH | 2026-06-06T20:07:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T20:07:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d7deeb19 | Baileys Latte (M) | QRIS | 2026-06-06T20:07:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T20:07:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fe02279d | Butterscotch (M) | CASH | 2026-06-06T20:12:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:12:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8225a4b9 | Butterscotch (M) | QRIS | 2026-06-06T20:12:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:12:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 855f6056 | Butterscotch (M) | CASH | 2026-06-06T20:17:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:17:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 52d638cb | Butterscotch (M) | CASH | 2026-06-06T20:20:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:20:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0789ad45 | Butterscotch (M) | QRIS | 2026-06-06T20:38:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:38:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cba6d22c | Baileys Latte (M) | CASH | 2026-06-06T20:46:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T20:46:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b507cde1 | Vanilla (M) | CASH | 2026-06-06T20:46:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:46:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 9f8c152a | Butterscotch (M) | CASH | 2026-06-06T20:46:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T20:46:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5d092f4a | Butterscotch (M) | QRIS | 2026-06-06T20:51:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:51:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c965ddb6 | Vanilla (M) | QRIS | 2026-06-06T20:51:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:51:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- fafc1742 | Butterscotch (M) | CASH | 2026-06-06T20:51:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T20:51:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9132669a | Butterscotch (M) | QRIS | 2026-06-06T21:05:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:05:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fe459cc0 | Baileys Latte (M) | QRIS | 2026-06-06T21:05:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:05:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5068cb04 | Gula Aren (M) | QRIS | 2026-06-06T21:09:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-06T21:09:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9ffd4110 | Butterscotch (M) | QRIS | 2026-06-06T21:09:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:09:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- df3979ab | Gula Aren (M) | CASH | 2026-06-06T21:09:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T21:09:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 97a2b400 | Butterscotch (M) | CASH | 2026-06-06T21:09:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T21:09:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0392e7f5 | Baileys Latte (M) | CASH | 2026-06-06T21:10:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '2026-06-06T21:10:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 96c1e5fc | Butterscotch (M) | QRIS | 2026-06-06T21:10:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:10:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ad1a504f | Baileys Latte (M) | QRIS | 2026-06-06T21:10:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:10:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 61012deb | Butterscotch (M) | CASH | 2026-06-06T21:12:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:12:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 342ada4e | Butterscotch (M) | QRIS | 2026-06-06T21:14:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '2026-06-06T21:14:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  10,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 74a898f7 | Gula Aren (M) | QRIS | 2026-06-06T21:16:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-06T21:16:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  7,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e151bbc5 | Butterscotch (M) | CASH | 2026-06-06T21:16:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T21:16:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9aa9f544 | Baileys Latte (M) | CASH | 2026-06-06T21:16:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:16:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b2b1d633 | Butterscotch (M) | CASH | 2026-06-06T21:21:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:21:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 688ddf5e | Vanilla (M) | QRIS | 2026-06-06T21:23:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:23:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 038cd395 | Butterscotch (M) | CASH | 2026-06-06T21:25:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:25:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cef999a4 | Baileys Latte (M) | CASH | 2026-06-06T21:26:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:26:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8399cdd0 | Hazelnut (M) | CASH | 2026-06-06T21:26:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:26:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- c28ebc51 | Gula Aren (M) | CASH | 2026-06-06T21:28:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-06T21:28:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- fa34b74b | Hazelnut (M) | QRIS | 2026-06-06T21:28:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T21:28:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- a2c05d89 | Vanilla (M) | CASH | 2026-06-06T21:28:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T21:28:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 41138519 | Gula Aren (M) | CASH | 2026-06-06T21:29:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-06T21:29:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 231b4872 | Gula Aren (M) | QRIS | 2026-06-06T21:35:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T21:35:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7c840fdc | Baileys Latte (M) | CASH | 2026-06-06T21:35:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:35:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6ac70cd9 | Baileys Latte (M) | QRIS | 2026-06-06T21:37:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:37:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f7d0e76e | Butterscotch (M) | QRIS | 2026-06-06T21:39:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T21:39:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b3bf6ad4 | Butterscotch (M) | QRIS | 2026-06-06T21:39:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:39:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 26c572c9 | Vanilla (M) | CASH | 2026-06-06T21:40:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:40:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 9eb4306e | Baileys Latte (M) | CASH | 2026-06-06T21:40:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:40:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7e2ff4bb | Butterscotch (M) | QRIS | 2026-06-06T21:43:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:43:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7c97661a | Salted Caramel (M) | QRIS | 2026-06-06T21:43:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:43:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- cff01335 | Butterscotch (M) | CASH | 2026-06-06T21:54:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:54:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 468cfbed | Baileys Latte (M) | CASH | 2026-06-06T21:54:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T21:54:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 79acfcd1 | Butterscotch (M) | CASH | 2026-06-06T21:55:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-06T21:55:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c772a9f5 | Baileys Latte (M) | CASH | 2026-06-06T21:55:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-06T21:55:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 46e3c1f2 | Butterscotch (M) | CASH | 2026-06-06T21:57:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T21:57:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 65cca7a7 | Hazelnut (M) | QRIS | 2026-06-06T22:05:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T22:05:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4081be05 | Vanilla (M) | CASH | 2026-06-06T22:06:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:06:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4380c203 | Baileys Latte (M) | CASH | 2026-06-06T22:07:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    175000.00,
    0.00,
    0.00,
    96074.00,
    '2026-06-06T22:07:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2c92d71a | Baileys Latte (M) | QRIS | 2026-06-06T22:07:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T22:07:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2e15177d | Baileys Latte (M) | CASH | 2026-06-06T22:10:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-06T22:10:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b7c88c46 | Hazelnut (M) | CASH | 2026-06-06T22:11:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:11:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 31d00d87 | Baileys Latte (M) | CASH | 2026-06-06T22:13:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T22:13:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0a17b234 | Butterscotch (M) | QRIS | 2026-06-06T22:18:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T22:18:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 08f164ec | Butterscotch (M) | CASH | 2026-06-06T22:18:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:18:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5ce47f26 | Butterscotch (M) | CASH | 2026-06-06T22:19:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:19:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cc36103b | Vanilla (M) | QRIS | 2026-06-06T22:19:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:19:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 2165af68 | Baileys Latte (M) | QRIS | 2026-06-06T22:19:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T22:19:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c2fd25f4 | Butterscotch (M) | CASH | 2026-06-06T22:19:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:19:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2de5905d | Baileys Latte (M) | CASH | 2026-06-06T22:21:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T22:21:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c7cc14ff | Baileys Latte (M) | CASH | 2026-06-06T22:25:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T22:25:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1f270a14 | Hazelnut (M) | QRIS | 2026-06-06T22:48:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:48:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 3db26d68 | Butterscotch (M) | CASH | 2026-06-06T22:49:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T22:49:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7ec492b4 | Butterscotch (M) | CASH | 2026-06-06T22:51:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T22:51:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9e04139b | Baileys Latte (M) | QRIS | 2026-06-06T22:58:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T22:58:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0e0fd7cc | Baileys Latte (M) | CASH | 2026-06-06T23:06:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T23:06:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0555bfcf | Butterscotch (M) | CASH | 2026-06-06T23:08:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T23:08:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0c6c4f63 | Hazelnut (M) | CASH | 2026-06-06T23:16:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-06T23:16:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 6a244c26 | Baileys Latte (M) | CASH | 2026-06-06T23:16:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-06T23:16:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ea798356 | Butterscotch (M) | QRIS | 2026-06-06T23:35:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-06T23:35:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7d4273e7 | Gula Aren (M) | QRIS | 2026-06-06T23:35:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-06T23:35:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 17324716 | Gula Aren (M) | CASH | 2026-06-06T23:36:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-06T23:36:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e8d9385c | Butterscotch (M) | CASH | 2026-06-06T23:36:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T23:36:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fc3724d6 | Vanilla (M) | CASH | 2026-06-06T23:36:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T23:36:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 04639ffd | Salted Caramel (M) | CASH | 2026-06-06T23:36:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T23:36:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 7f63889d | Hazelnut (M) | CASH | 2026-06-06T23:37:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-06T23:37:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 8e70cba7 | Cold Brew (M) | CASH | 2026-06-06T23:37:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-06T23:37:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 41a9fdce | Baileys Latte (M) | CASH | 2026-06-06T23:37:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    200000.00,
    0.00,
    0.00,
    109799.00,
    '2026-06-06T23:37:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  16,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9ba715d5 | Baileys Latte (M) | QRIS | 2026-06-06T23:42:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-06T23:42:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 91ec4e9c | Butterscotch (M) | QRIS | 2026-06-06T23:42:14+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-06T23:42:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1f77dafc | Baileys Latte (M) | CASH | 2026-06-07T08:48:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T08:48:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d8ab34dd | Gula Aren (M) | CASH | 2026-06-07T09:41:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-07T09:41:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c415b442 | Butterscotch (M) | QRIS | 2026-06-07T09:41:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T09:41:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 27ca91a6 | Baileys Latte (M) | QRIS | 2026-06-07T09:42:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T09:42:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 32500d91 | Baileys Latte (M) | QRIS | 2026-06-07T09:52:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T09:52:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9df0e9c5 | Gula Aren (M) | CASH | 2026-06-07T09:52:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-07T09:52:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 62668945 | Gula Aren (M) | CASH | 2026-06-07T09:57:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T09:57:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 18ed7fba | Butterscotch (M) | CASH | 2026-06-07T10:00:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T10:00:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 60b37319 | Gula Aren (M) | CASH | 2026-06-07T10:18:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T10:18:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 84438c8e | Gula Aren (M) | QRIS | 2026-06-07T10:18:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T10:18:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 14d03166 | Gula Aren (M) | CASH | 2026-06-07T10:26:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-07T10:26:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 72f18452 | Baileys Latte (M) | CASH | 2026-06-07T10:26:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T10:26:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0ab755d9 | Gula Aren (M) | CASH | 2026-06-07T10:47:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-07T10:47:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4bea5745 | Gula Aren (M) | CASH | 2026-06-07T10:51:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T10:51:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 92b8d022 | Butterscotch (M) | CASH | 2026-06-07T10:58:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T10:58:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 77ebb4e3 | Butterscotch (M) | QRIS | 2026-06-07T10:58:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T10:58:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b4c92c18 | Gula Aren (M) | CASH | 2026-06-07T11:09:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:09:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ba9070ab | Gula Aren (M) | CASH | 2026-06-07T11:18:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:18:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8cd1fa9d | Gula Aren (M) | CASH | 2026-06-07T11:26:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:26:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ff64a06e | Butterscotch (M) | QRIS | 2026-06-07T11:26:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T11:26:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b6c3c497 | Butterscotch (M) | QRIS | 2026-06-07T11:36:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-07T11:36:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 663ede0f | Butterscotch (M) | CASH | 2026-06-07T11:36:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T11:36:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2c7116b9 | Butterscotch (M) | CASH | 2026-06-07T11:36:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T11:36:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 78367566 | Butterscotch (M) | QRIS | 2026-06-07T11:37:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T11:37:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f3c0f4d8 | Gula Aren (M) | CASH | 2026-06-07T11:39:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:39:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4c0799b4 | Butterscotch (M) | CASH | 2026-06-07T11:44:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T11:44:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3e2ed44d | Gula Aren (M) | QRIS | 2026-06-07T11:45:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:45:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 380a7ba4 | Salted Caramel (M) | QRIS | 2026-06-07T11:46:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T11:46:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- 1ba754cd | Vanilla (M) | CASH | 2026-06-07T11:46:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T11:46:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 977973cb | Gula Aren (M) | CASH | 2026-06-07T11:58:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T11:58:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d88baeed | Baileys Latte (M) | CASH | 2026-06-07T12:02:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '2026-06-07T12:02:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4ac39321 | Gula Aren (M) | QRIS | 2026-06-07T12:02:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T12:02:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a20f471a | Butterscotch (M) | CASH | 2026-06-07T12:03:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-07T12:03:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fb899704 | Gula Aren (M) | CASH | 2026-06-07T12:07:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T12:07:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e278176d | Butterscotch (M) | QRIS | 2026-06-07T12:17:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:17:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2af3fbce | Hazelnut (M) | CASH | 2026-06-07T12:22:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:22:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4c48d743 | Butterscotch (M) | CASH | 2026-06-07T12:23:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:23:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4654fff8 | Baileys Latte (M) | QRIS | 2026-06-07T12:23:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T12:23:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9405e9b8 | Hazelnut (M) | QRIS | 2026-06-07T12:23:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:23:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- d827cbcb | Gula Aren (M) | CASH | 2026-06-07T12:27:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-07T12:27:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b7054b94 | Hazelnut (M) | CASH | 2026-06-07T12:28:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:28:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 4c1b98b6 | Vanilla (M) | CASH | 2026-06-07T12:28:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:28:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- bb2b3c9d | Butterscotch (M) | CASH | 2026-06-07T12:28:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T12:28:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 85b7aa0b | Butterscotch (M) | QRIS | 2026-06-07T12:25:09+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:25:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a1f56f32 | Gula Aren (M) | QRIS | 2026-06-07T12:29:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T12:29:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7a37d3e5 | Gula Aren (M) | QRIS | 2026-06-07T12:29:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T12:29:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d0e1ff96 | Hazelnut (M) | QRIS | 2026-06-07T12:33:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:33:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 6396738c | Butterscotch (M) | CASH | 2026-06-07T12:33:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-07T12:33:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 05c96515 | Baileys Latte (M) | QRIS | 2026-06-07T12:45:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T12:45:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 93e999b8 | Cold Brew (M) | QRIS | 2026-06-07T12:51:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-07T12:51:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- bdfbe466 | Vanilla (M) | CASH | 2026-06-07T12:55:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T12:55:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 81afaeb4 | Gula Aren (M) | CASH | 2026-06-07T12:56:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T12:56:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e57e969a | Butterscotch (M) | CASH | 2026-06-07T13:02:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:02:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 37349dc1 | Butterscotch (M) | CASH | 2026-06-07T13:03:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:03:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 83c698ca | Baileys Latte (M) | QRIS | 2026-06-07T13:08:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T13:08:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1f8f13fb | Butterscotch (M) | QRIS | 2026-06-07T13:17:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:17:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b7709b9e | Hazelnut (M) | QRIS | 2026-06-07T13:18:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:18:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 2cc4c671 | Baileys Latte (M) | QRIS | 2026-06-07T13:18:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T13:18:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0abf8ae3 | Baileys Latte (M) | QRIS | 2026-06-07T13:19:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T13:19:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4c0f8cb1 | Baileys Latte (M) | QRIS | 2026-06-07T13:22:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-07T13:22:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5e2b403b | Butterscotch (M) | QRIS | 2026-06-07T13:24:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '2026-06-07T13:24:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  10,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1cd865e8 | Butterscotch (M) | QRIS | 2026-06-07T13:27:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T13:27:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 223496b9 | Vanilla (M) | CASH | 2026-06-07T13:27:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T13:27:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 90a233c1 | Gula Aren (M) | CASH | 2026-06-07T13:28:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T13:28:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 342f9ca8 | Hazelnut (M) | CASH | 2026-06-07T13:28:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:28:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 41dfc1cc | Vanilla (M) | CASH | 2026-06-07T13:36:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:36:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4fdd92cd | Butterscotch (M) | QRIS | 2026-06-07T13:39:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:39:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c90d222 | Baileys Latte (M) | QRIS | 2026-06-07T13:39:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T13:39:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 19b1350e | Baileys Latte (M) | CASH | 2026-06-07T13:45:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T13:45:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6b6e0750 | Gula Aren (M) | CASH | 2026-06-07T13:55:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T13:55:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- edcb0563 | Hazelnut (M) | QRIS | 2026-06-07T13:58:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T13:58:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 50e14e70 | Baileys Latte (M) | CASH | 2026-06-07T14:00:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T14:00:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 58f539c2 | Butterscotch (M) | CASH | 2026-06-07T14:00:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:00:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5907b380 | Baileys Latte (M) | CASH | 2026-06-07T14:02:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T14:02:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 898c60ef | Butterscotch (M) | QRIS | 2026-06-07T14:23:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:23:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1b602308 | Baileys Latte (M) | CASH | 2026-06-07T14:24:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-07T14:24:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c848e29a | Hazelnut (M) | CASH | 2026-06-07T14:24:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:24:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- ca35a36a | Butterscotch (M) | QRIS | 2026-06-07T14:39:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:39:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ff1f7b66 | Vanilla (M) | QRIS | 2026-06-07T14:43:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:43:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 1ab89643 | Butterscotch (M) | QRIS | 2026-06-07T14:57:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T14:57:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0a4859f0 | Baileys Latte (M) | CASH | 2026-06-07T15:05:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T15:05:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d5425d3e | Butterscotch (M) | CASH | 2026-06-07T15:19:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T15:19:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 06b315ec | Baileys Latte (M) | CASH | 2026-06-07T15:19:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T15:19:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6946e66f | Vanilla (M) | CASH | 2026-06-07T15:23:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T15:23:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 76b856de | Hazelnut (M) | CASH | 2026-06-07T15:25:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T15:25:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 1f0d5a33 | Butterscotch (M) | QRIS | 2026-06-07T15:28:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T15:28:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- adfbf5d4 | Hazelnut (M) | QRIS | 2026-06-07T15:48:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T15:48:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 7c976099 | Butterscotch (M) | CASH | 2026-06-07T15:50:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-07T15:50:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ceeaa58f | Baileys Latte (M) | QRIS | 2026-06-07T16:03:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T16:03:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c39e56b5 | Butterscotch (M) | CASH | 2026-06-07T16:03:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-07T16:03:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  4,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 436776a7 | Gula Aren (M) | CASH | 2026-06-07T16:03:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T16:03:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 591937a6 | Butterscotch (M) | QRIS | 2026-06-07T16:06:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T16:06:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8a699c52 | Butterscotch (M) | CASH | 2026-06-07T16:09:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T16:09:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 067b8039 | Baileys Latte (M) | CASH | 2026-06-07T16:14:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T16:14:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7aca6421 | Butterscotch (M) | QRIS | 2026-06-07T16:23:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T16:23:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4d8a7986 | Baileys Latte (M) | QRIS | 2026-06-07T16:32:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T16:32:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e486c429 | Butterscotch (M) | CASH | 2026-06-07T16:35:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-07T16:35:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e57d1fed | Butterscotch (M) | CASH | 2026-06-07T16:49:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-07T16:49:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e0d05c27 | Butterscotch (M) | QRIS | 2026-06-07T16:50:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T16:50:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3a35fd0c | Baileys Latte (M) | CASH | 2026-06-07T17:03:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-07T17:03:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b4068815 | Baileys Latte (M) | CASH | 2026-06-07T17:07:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T17:07:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 50b880f3 | Gula Aren (M) | CASH | 2026-06-07T17:08:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T17:08:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3b51086d | Hazelnut (M) | QRIS | 2026-06-07T17:11:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T17:11:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 26b640ec | Baileys Latte (M) | QRIS | 2026-06-07T17:12:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T17:12:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- aa34a98d | Butterscotch (M) | CASH | 2026-06-07T17:24:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T17:24:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dc65707e | Baileys Latte (M) | QRIS | 2026-06-07T17:31:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-07T17:31:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ab1bd094 | Baileys Latte (M) | CASH | 2026-06-07T17:32:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T17:32:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2dc93f7b | Butterscotch (M) | QRIS | 2026-06-07T17:32:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T17:32:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 482434b8 | Butterscotch (M) | CASH | 2026-06-07T17:33:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T17:33:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5fa7a540 | Baileys Latte (M) | CASH | 2026-06-07T17:40:21+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '2026-06-07T17:40:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  2,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6c936751 | Gula Aren (M) | CASH | 2026-06-07T17:42:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T17:42:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7f053695 | Butterscotch (M) | QRIS | 2026-06-07T17:42:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T17:42:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c0b2d063 | Baileys Latte (M) | QRIS | 2026-06-07T18:04:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T18:04:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7c74f344 | Butterscotch (M) | CASH | 2026-06-07T18:10:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:10:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4cc0e887 | Butterscotch (M) | QRIS | 2026-06-07T18:15:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:15:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 23c2a5a8 | Baileys Latte (M) | CASH | 2026-06-07T18:17:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T18:17:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c4c6fa37 | Vanilla (M) | CASH | 2026-06-07T18:22:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-07T18:22:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 0f8b4db5 | Butterscotch (M) | QRIS | 2026-06-07T18:22:58+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:22:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e3c709ec | Vanilla (M) | CASH | 2026-06-07T18:23:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:23:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- e23258cc | Butterscotch (M) | QRIS | 2026-06-07T18:23:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:23:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2307c61a | Butterscotch (M) | QRIS | 2026-06-07T18:23:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:23:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1a203976 | Baileys Latte (M) | CASH | 2026-06-07T18:26:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T18:26:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8a536a71 | Baileys Latte (M) | QRIS | 2026-06-07T18:32:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T18:32:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- aad198b7 | Baileys Latte (M) | CASH | 2026-06-07T18:43:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T18:43:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0045dca0 | Butterscotch (M) | CASH | 2026-06-07T18:50:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T18:50:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 531975da | Butterscotch (M) | CASH | 2026-06-07T19:01:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T19:01:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f4a8c0b2 | Baileys Latte (M) | CASH | 2026-06-07T19:04:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T19:04:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4bd1a8c3 | Vanilla (M) | QRIS | 2026-06-07T19:13:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T19:13:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 4f3f7a5c | Butterscotch (M) | QRIS | 2026-06-07T19:14:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T19:14:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 22c4dcda | Butterscotch (M) | QRIS | 2026-06-07T19:18:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T19:18:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6ebbfee0 | Hazelnut (M) | QRIS | 2026-06-07T19:18:30+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T19:18:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 13986a07 | Gula Aren (M) | CASH | 2026-06-07T19:18:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-07T19:18:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2b9d629e | Baileys Latte (M) | CASH | 2026-06-07T19:21:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T19:21:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4881d105 | Baileys Latte (M) | CASH | 2026-06-07T19:21:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T19:21:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5e025aaa | Baileys Latte (M) | CASH | 2026-06-07T19:23:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T19:23:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0ec420c9 | Baileys Latte (M) | CASH | 2026-06-07T20:10:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T20:10:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 05c4d6a7 | Butterscotch 1 ltr | CASH | 2026-06-07T21:08:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    90000.00,
    0.00,
    0.00,
    44488.00,
    '2026-06-07T21:08:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  90000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch 1 ltr' LIMIT 1
  ) AS p;

-- 4c8b35fe | Baileys Latte (M) | CASH | 2026-06-07T21:30:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-07T21:30:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- a78bb25f | Baileys Latte (M) | QRIS | 2026-06-07T21:30:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T21:30:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 7aa951c9 | Baileys Latte (M) | QRIS | 2026-06-07T21:57:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-07T21:57:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 65515564 | Gula Aren (M) | QRIS | 2026-06-07T22:39:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-07T22:39:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- e354dbd3 | Butterscotch (M) | QRIS | 2026-06-07T22:39:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '2026-06-07T22:39:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  9,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 468cf1e8 | Gula Aren (M) | CASH | 2026-06-07T22:39:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-07T22:39:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  5,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- b2a348b4 | Butterscotch (M) | CASH | 2026-06-07T22:40:07+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-07T22:40:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 739da26e | Hazelnut (M) | CASH | 2026-06-07T22:40:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-07T22:40:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- 0390c8fa | Baileys Latte (M) | CASH | 2026-06-07T22:40:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '2026-06-07T22:40:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  6,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;
