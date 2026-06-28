-- Generated from split_orders_juni_1_14/*/*.csv
-- Inserts sales and sale_items for 2026-06-08 until 2026-06-12

-- fdac66d8 | Cold Brew (M) | QRIS | 2026-06-08T09:00:46+00:00
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
    '2026-06-08T09:00:46+00:00'
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

-- 16bb1bf2 | Cold Brew (M) | QRIS | 2026-06-08T09:31:34+00:00
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
    '2026-06-08T09:31:34+00:00'
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

-- 64453cc3 | Gula Aren (M) | CASH | 2026-06-08T09:46:41+00:00
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
    '2026-06-08T09:46:41+00:00'
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

-- b5d50971 | Gula Aren (M) | CASH | 2026-06-08T09:58:34+00:00
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
    '2026-06-08T09:58:34+00:00'
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

-- 3811a0ed | Butterscotch (M) | CASH | 2026-06-08T09:58:40+00:00
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
    '2026-06-08T09:58:40+00:00'
  ) RETURNING id
)
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

-- a1ca8ca9 | Vanilla (M) | CASH | 2026-06-08T09:58:45+00:00
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
    '2026-06-08T09:58:45+00:00'
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

-- f5b6c747 | Hazelnut (M) | CASH | 2026-06-08T09:58:51+00:00
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
    '2026-06-08T09:58:51+00:00'
  ) RETURNING id
)
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

-- 046f120d | Gula Aren (M) | QRIS | 2026-06-08T09:58:56+00:00
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
    '2026-06-08T09:58:56+00:00'
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

-- fe883c1f | Butterscotch (M) | QRIS | 2026-06-08T10:12:00+00:00
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
    '2026-06-08T10:12:00+00:00'
  ) RETURNING id
)
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

-- 42c6225f | Salted Caramel (M) | QRIS | 2026-06-08T10:18:10+00:00
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
    '2026-06-08T10:18:10+00:00'
  ) RETURNING id
)
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

-- ea3a1369 | Butterscotch (M) | QRIS | 2026-06-08T10:22:43+00:00
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
    '2026-06-08T10:22:43+00:00'
  ) RETURNING id
)
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

-- d9a3b482 | Baileys Latte (M) | QRIS | 2026-06-08T10:22:54+00:00
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
    '2026-06-08T10:22:54+00:00'
  ) RETURNING id
)
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

-- 2de870be | Gula Aren (M) | QRIS | 2026-06-08T10:30:06+00:00
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
    '2026-06-08T10:30:06+00:00'
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

-- 1ef561d1 | Gula Aren (M) | QRIS | 2026-06-08T10:30:15+00:00
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
    '2026-06-08T10:30:15+00:00'
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

-- 3ceffc4e | Gula Aren (M) | CASH | 2026-06-08T10:30:51+00:00
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
    '2026-06-08T10:30:51+00:00'
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

-- be9b1fc8 | Vanilla (M) | CASH | 2026-06-08T10:31:00+00:00
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
    '2026-06-08T10:31:00+00:00'
  ) RETURNING id
)
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

-- ad76ffb5 | Hazelnut (M) | QRIS | 2026-06-08T10:33:42+00:00
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
    '2026-06-08T10:33:42+00:00'
  ) RETURNING id
)
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

-- 322cd3f8 | Butterscotch (M) | QRIS | 2026-06-08T10:33:50+00:00
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
    '2026-06-08T10:33:50+00:00'
  ) RETURNING id
)
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

-- 2118a04d | Baileys Latte (M) | QRIS | 2026-06-08T10:53:18+00:00
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
    '2026-06-08T10:53:18+00:00'
  ) RETURNING id
)
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

-- 1ea86e0c | Salted Caramel (M) | QRIS | 2026-06-08T10:56:59+00:00
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
    '2026-06-08T10:56:59+00:00'
  ) RETURNING id
)
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

-- 55db690e | Baileys Latte (M) | QRIS | 2026-06-08T10:57:05+00:00
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
    '2026-06-08T10:57:05+00:00'
  ) RETURNING id
)
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

-- d1e89b44 | Butterscotch (M) | QRIS | 2026-06-08T10:57:11+00:00
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
    '2026-06-08T10:57:11+00:00'
  ) RETURNING id
)
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

-- 407b1fe3 | Butterscotch (M) | QRIS | 2026-06-08T11:03:49+00:00
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
    '2026-06-08T11:03:49+00:00'
  ) RETURNING id
)
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

-- cb6c1142 | Gula Aren (M) | QRIS | 2026-06-08T11:04:00+00:00
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
    '2026-06-08T11:04:00+00:00'
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

-- 71f296f9 | Salted Caramel (M) | CASH | 2026-06-08T11:05:46+00:00
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
    '2026-06-08T11:05:46+00:00'
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

-- 991af046 | Baileys Latte (M) | QRIS | 2026-06-08T11:08:44+00:00
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
    '2026-06-08T11:08:44+00:00'
  ) RETURNING id
)
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

-- e087c705 | Butterscotch (M) | CASH | 2026-06-08T11:08:52+00:00
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
    '2026-06-08T11:08:52+00:00'
  ) RETURNING id
)
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

-- cc4ef870 | Gula Aren (M) | QRIS | 2026-06-08T11:26:27+00:00
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
    '2026-06-08T11:26:27+00:00'
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

-- 3b276c1c | Gula Aren (M) | CASH | 2026-06-08T11:33:15+00:00
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
    '2026-06-08T11:33:15+00:00'
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

-- a719262b | Butterscotch (M) | QRIS | 2026-06-08T11:33:54+00:00
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
    '2026-06-08T11:33:54+00:00'
  ) RETURNING id
)
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

-- 0c4ae176 | Gula Aren (M) | CASH | 2026-06-08T11:33:58+00:00
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
    '2026-06-08T11:33:58+00:00'
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

-- 64b05d2c | Butterscotch (M) | CASH | 2026-06-08T11:36:02+00:00
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
    '2026-06-08T11:36:02+00:00'
  ) RETURNING id
)
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

-- ccfc3217 | Baileys Latte (M) | CASH | 2026-06-08T11:41:37+00:00
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
    '2026-06-08T11:41:37+00:00'
  ) RETURNING id
)
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

-- d7551e3c | Gula Aren (M) | CASH | 2026-06-08T11:19:51+00:00
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
    '2026-06-08T11:19:51+00:00'
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

-- fb486cb8 | Gula Aren (M) | QRIS | 2026-06-08T11:44:18+00:00
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
    '2026-06-08T11:44:18+00:00'
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

-- 9c88f8bc | Cold Brew (M) | QRIS | 2026-06-08T11:46:59+00:00
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
    '2026-06-08T11:46:59+00:00'
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

-- 2ac44480 | Gula Aren (M) | QRIS | 2026-06-08T11:47:15+00:00
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
    '2026-06-08T11:47:15+00:00'
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

-- a7c9373b | Vanilla (M) | QRIS | 2026-06-08T11:48:13+00:00
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
    '2026-06-08T11:48:13+00:00'
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

-- 9dce507c | Butterscotch (M) | CASH | 2026-06-08T11:49:02+00:00
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
    '2026-06-08T11:49:02+00:00'
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

-- ce3991ad | Gula Aren (M) | CASH | 2026-06-08T11:49:09+00:00
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
    '2026-06-08T11:49:09+00:00'
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

-- 2827c2cf | Gula Aren (M) | QRIS | 2026-06-08T11:49:06+00:00
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
    '2026-06-08T11:49:06+00:00'
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

-- 75945812 | Hazelnut (M) | QRIS | 2026-06-08T11:51:25+00:00
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
    '2026-06-08T11:51:25+00:00'
  ) RETURNING id
)
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

-- cc4e6d58 | Butterscotch (M) | CASH | 2026-06-08T11:51:31+00:00
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
    '2026-06-08T11:51:31+00:00'
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

-- b4c56a68 | Gula Aren (M) | QRIS | 2026-06-08T11:51:44+00:00
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
    '2026-06-08T11:51:44+00:00'
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

-- ba4e5077 | Gula Aren (M) | QRIS | 2026-06-08T11:59:50+00:00
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
    '2026-06-08T11:59:50+00:00'
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

-- a6bb67c1 | Salted Caramel (M) | QRIS | 2026-06-08T12:00:54+00:00
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
    '2026-06-08T12:00:54+00:00'
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

-- bc8de8d8 | Butterscotch (M) | QRIS | 2026-06-08T12:01:13+00:00
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
    '2026-06-08T12:01:13+00:00'
  ) RETURNING id
)
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

-- b008f92e | Baileys Latte (M) | CASH | 2026-06-08T12:02:17+00:00
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
    '2026-06-08T12:02:17+00:00'
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

-- ed713a7c | Salted Caramel (M) | CASH | 2026-06-08T12:03:02+00:00
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
    '2026-06-08T12:03:02+00:00'
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

-- 8d6686b4 | Vanilla (M) | CASH | 2026-06-08T12:03:10+00:00
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
    '2026-06-08T12:03:10+00:00'
  ) RETURNING id
)
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

-- fc5f4b11 | Butterscotch (M) | CASH | 2026-06-08T12:04:31+00:00
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
    '2026-06-08T12:04:31+00:00'
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

-- 79fab42f | Butterscotch (M) | QRIS | 2026-06-08T12:07:32+00:00
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
    '2026-06-08T12:07:32+00:00'
  ) RETURNING id
)
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

-- a7181e02 | Butterscotch (M) | QRIS | 2026-06-08T12:07:37+00:00
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
    '2026-06-08T12:07:37+00:00'
  ) RETURNING id
)
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

-- bc0ce726 | Baileys Latte (M) | QRIS | 2026-06-08T12:07:44+00:00
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
    '2026-06-08T12:07:44+00:00'
  ) RETURNING id
)
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

-- 54ae45bc | Cold Brew (M) | CASH | 2026-06-08T12:09:32+00:00
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
    '2026-06-08T12:09:32+00:00'
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

-- 9e6b983b | Butterscotch (M) | QRIS | 2026-06-08T12:10:50+00:00
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
    '2026-06-08T12:10:50+00:00'
  ) RETURNING id
)
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

-- d598bd9e | Butterscotch (M) | QRIS | 2026-06-08T12:14:03+00:00
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
    '2026-06-08T12:14:03+00:00'
  ) RETURNING id
)
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

-- e1b92c27 | Butterscotch (M) | QRIS | 2026-06-08T12:14:33+00:00
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
    '2026-06-08T12:14:33+00:00'
  ) RETURNING id
)
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

-- 6856ca1c | Butterscotch (M) | QRIS | 2026-06-08T12:18:51+00:00
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
    '2026-06-08T12:18:51+00:00'
  ) RETURNING id
)
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

-- e1ac8d0e | Salted Caramel (M) | QRIS | 2026-06-08T12:19:49+00:00
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
    '2026-06-08T12:19:49+00:00'
  ) RETURNING id
)
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

-- c8cc9da5 | Baileys Latte (M) | QRIS | 2026-06-08T12:25:39+00:00
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
    '2026-06-08T12:25:39+00:00'
  ) RETURNING id
)
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

-- d4fcee55 | Hazelnut (M) | CASH | 2026-06-08T12:26:35+00:00
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
    '2026-06-08T12:26:35+00:00'
  ) RETURNING id
)
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

-- d4b4fc27 | Gula Aren (M) | CASH | 2026-06-08T12:26:47+00:00
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
    '2026-06-08T12:26:47+00:00'
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

-- ec145ca0 | Butterscotch (M) | CASH | 2026-06-08T12:27:51+00:00
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
    '2026-06-08T12:27:51+00:00'
  ) RETURNING id
)
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

-- 38fe6dbf | Gula Aren (M) | CASH | 2026-06-08T12:38:56+00:00
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
    '2026-06-08T12:38:56+00:00'
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

-- 6e1c32f0 | Gula Aren (M) | QRIS | 2026-06-08T12:41:38+00:00
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
    '2026-06-08T12:41:38+00:00'
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

-- c53a074b | Gula Aren (M) | CASH | 2026-06-08T12:41:47+00:00
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
    '2026-06-08T12:41:47+00:00'
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

-- 5f1e372e | Baileys Latte (M) | QRIS | 2026-06-08T12:41:51+00:00
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
    '2026-06-08T12:41:51+00:00'
  ) RETURNING id
)
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

-- 4906be9a | Cold Brew (M) | CASH | 2026-06-08T12:45:54+00:00
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
    '2026-06-08T12:45:54+00:00'
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

-- abfb499a | Gula Aren (M) | CASH | 2026-06-08T12:46:34+00:00
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
    '2026-06-08T12:46:34+00:00'
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

-- 71469670 | Gula Aren (M) | CASH | 2026-06-08T12:46:39+00:00
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
    '2026-06-08T12:46:39+00:00'
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

-- c85847a1 | Baileys Latte (M) | CASH | 2026-06-08T12:47:10+00:00
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
    '2026-06-08T12:47:10+00:00'
  ) RETURNING id
)
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

-- e38af48c | Vanilla (M) | QRIS | 2026-06-08T12:47:42+00:00
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
    '2026-06-08T12:47:42+00:00'
  ) RETURNING id
)
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

-- 5f2caeef | Gula Aren (M) | CASH | 2026-06-08T12:48:16+00:00
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
    '2026-06-08T12:48:16+00:00'
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

-- 5a0bcf3d | Butterscotch (M) | CASH | 2026-06-08T12:49:53+00:00
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
    '2026-06-08T12:49:53+00:00'
  ) RETURNING id
)
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

-- 639db33d | Butterscotch (M) | QRIS | 2026-06-08T12:50:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-08T12:50:38+00:00'
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

-- f4f741f7 | Baileys Latte (M) | QRIS | 2026-06-08T12:50:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-08T12:50:45+00:00'
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

-- d56065f2 | Baileys Latte (M) | CASH | 2026-06-08T12:50:51+00:00
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
    '2026-06-08T12:50:51+00:00'
  ) RETURNING id
)
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

-- a1b4a14c | Vanilla (M) | QRIS | 2026-06-08T12:50:53+00:00
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
    '2026-06-08T12:50:53+00:00'
  ) RETURNING id
)
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

-- cfd75c38 | Gula Aren (M) | QRIS | 2026-06-08T12:50:56+00:00
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
    '2026-06-08T12:50:56+00:00'
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

-- e40cd045 | Butterscotch (M) | QRIS | 2026-06-08T12:51:00+00:00
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
    '2026-06-08T12:51:00+00:00'
  ) RETURNING id
)
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

-- 0e24797d | Vanilla (M) | CASH | 2026-06-08T12:47:24+00:00
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
    '2026-06-08T12:47:24+00:00'
  ) RETURNING id
)
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

-- d6360d17 | Salted Caramel (M) | CASH | 2026-06-08T12:52:22+00:00
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
    '2026-06-08T12:52:22+00:00'
  ) RETURNING id
)
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

-- e3537d29 | Baileys Latte (M) | QRIS | 2026-06-08T12:55:06+00:00
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
    '2026-06-08T12:55:06+00:00'
  ) RETURNING id
)
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

-- e99f125b | Butterscotch (M) | CASH | 2026-06-08T12:57:38+00:00
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
    '2026-06-08T12:57:38+00:00'
  ) RETURNING id
)
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

-- 605016f9 | Gula Aren (M) | QRIS | 2026-06-08T13:00:29+00:00
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
    '2026-06-08T13:00:29+00:00'
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

-- 1b04bdb3 | Butterscotch (M) | CASH | 2026-06-08T12:58:50+00:00
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
    '2026-06-08T12:58:50+00:00'
  ) RETURNING id
)
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

-- 17a46a92 | Butterscotch (M) | QRIS | 2026-06-08T13:06:18+00:00
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
    '2026-06-08T13:06:18+00:00'
  ) RETURNING id
)
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

-- 9b5d9485 | Hazelnut (M) | CASH | 2026-06-08T13:06:31+00:00
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
    '2026-06-08T13:06:31+00:00'
  ) RETURNING id
)
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

-- e91f1ffc | Baileys Latte (M) | CASH | 2026-06-08T13:06:40+00:00
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
    '2026-06-08T13:06:40+00:00'
  ) RETURNING id
)
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

-- c75cbaf1 | Butterscotch (M) | QRIS | 2026-06-08T13:11:07+00:00
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
    '2026-06-08T13:11:07+00:00'
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

-- 436879b3 | Gula Aren (M) | CASH | 2026-06-08T13:11:14+00:00
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
    '2026-06-08T13:11:14+00:00'
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

-- b57500bf | Cold Brew (M) | QRIS | 2026-06-08T13:18:16+00:00
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
    '2026-06-08T13:18:16+00:00'
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

-- 75b9585f | Hazelnut (M) | CASH | 2026-06-08T13:23:04+00:00
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
    '2026-06-08T13:23:04+00:00'
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

-- c773150c | Vanilla (M) | CASH | 2026-06-08T13:23:11+00:00
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
    '2026-06-08T13:23:11+00:00'
  ) RETURNING id
)
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

-- 0a742206 | Gula Aren (M) | CASH | 2026-06-08T13:23:14+00:00
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
    '2026-06-08T13:23:14+00:00'
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

-- e300a9e9 | Baileys Latte (M) | QRIS | 2026-06-08T13:26:08+00:00
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
    '2026-06-08T13:26:08+00:00'
  ) RETURNING id
)
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

-- 96d2d965 | Vanilla (M) | CASH | 2026-06-08T13:32:38+00:00
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
    '2026-06-08T13:32:38+00:00'
  ) RETURNING id
)
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

-- 01a0f84e | Baileys Latte (M) | CASH | 2026-06-08T13:32:43+00:00
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
    '2026-06-08T13:32:43+00:00'
  ) RETURNING id
)
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

-- 07ffa8ee | Butterscotch (M) | QRIS | 2026-06-08T13:32:46+00:00
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
    '2026-06-08T13:32:46+00:00'
  ) RETURNING id
)
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

-- e2bbd060 | Cold Brew (M) | QRIS | 2026-06-08T13:39:21+00:00
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
    '2026-06-08T13:39:21+00:00'
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

-- 7c536a7b | Baileys Latte (M) | CASH | 2026-06-08T13:40:13+00:00
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
    20587.00,
    '2026-06-08T13:40:13+00:00'
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

-- 9d242008 | Baileys Latte (M) | CASH | 2026-06-08T13:41:19+00:00
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
    '2026-06-08T13:41:19+00:00'
  ) RETURNING id
)
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

-- 587dae05 | Baileys Latte (M) | QRIS | 2026-06-08T13:43:27+00:00
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
    '2026-06-08T13:43:27+00:00'
  ) RETURNING id
)
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

-- 8c311097 | Butterscotch (M) | CASH | 2026-06-08T14:00:05+00:00
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
    '2026-06-08T14:00:05+00:00'
  ) RETURNING id
)
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

-- c20601c5 | Gula Aren (M) | CASH | 2026-06-08T14:07:49+00:00
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
    '2026-06-08T14:07:49+00:00'
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

-- 40575560 | Baileys Latte (M) | CASH | 2026-06-08T14:08:54+00:00
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
    '2026-06-08T14:08:54+00:00'
  ) RETURNING id
)
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

-- 705fae63 | Butterscotch (M) | QRIS | 2026-06-08T14:13:41+00:00
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
    '2026-06-08T14:13:41+00:00'
  ) RETURNING id
)
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

-- 0e8b6597 | Butterscotch (M) | CASH | 2026-06-08T14:20:13+00:00
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
    '2026-06-08T14:20:13+00:00'
  ) RETURNING id
)
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

-- 7cdef8b8 | Baileys Latte (M) | CASH | 2026-06-08T14:20:18+00:00
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
    '2026-06-08T14:20:18+00:00'
  ) RETURNING id
)
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

-- e8d9f448 | Butterscotch (M) | QRIS | 2026-06-08T14:20:21+00:00
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
    '2026-06-08T14:20:21+00:00'
  ) RETURNING id
)
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

-- f06ce319 | Baileys Latte (M) | QRIS | 2026-06-08T14:20:27+00:00
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
    '2026-06-08T14:20:27+00:00'
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

-- 4acfa774 | Baileys Latte (M) | QRIS | 2026-06-08T14:20:31+00:00
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
    '2026-06-08T14:20:31+00:00'
  ) RETURNING id
)
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

-- 0c7ad39a | Baileys Latte (M) | CASH | 2026-06-08T14:20:37+00:00
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
    '2026-06-08T14:20:37+00:00'
  ) RETURNING id
)
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

-- 12fc258f | Gula Aren (M) | QRIS | 2026-06-08T14:21:21+00:00
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
    '2026-06-08T14:21:21+00:00'
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

-- ea198c06 | Baileys Latte (M) | QRIS | 2026-06-08T14:21:30+00:00
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
    '2026-06-08T14:21:30+00:00'
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

-- 35c465da | Butterscotch (M) | QRIS | 2026-06-08T14:21:49+00:00
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
    '2026-06-08T14:21:49+00:00'
  ) RETURNING id
)
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

-- 9be9a749 | Baileys Latte (M) | QRIS | 2026-06-08T14:21:57+00:00
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
    '2026-06-08T14:21:57+00:00'
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

-- e7b9f2e8 | Hazelnut (M) | QRIS | 2026-06-08T14:23:18+00:00
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
    '2026-06-08T14:23:18+00:00'
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

-- 73980125 | Gula Aren (M) | CASH | 2026-06-08T14:23:39+00:00
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
    '2026-06-08T14:23:39+00:00'
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

-- 053be190 | Butterscotch (M) | CASH | 2026-06-08T14:23:51+00:00
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
    '2026-06-08T14:23:51+00:00'
  ) RETURNING id
)
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

-- 032e40c4 | Butterscotch (M) | CASH | 2026-06-08T14:24:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-08T14:24:49+00:00'
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

-- 042d1a30 | Gula Aren (M) | QRIS | 2026-06-08T14:25:04+00:00
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
    '2026-06-08T14:25:04+00:00'
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

-- 660821a2 | Gula Aren (M) | CASH | 2026-06-08T14:26:05+00:00
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
    '2026-06-08T14:26:05+00:00'
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

-- c3c8c925 | Gula Aren (M) | QRIS | 2026-06-08T14:26:17+00:00
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
    '2026-06-08T14:26:17+00:00'
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

-- 61003421 | Baileys Latte (M) | CASH | 2026-06-08T14:26:25+00:00
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
    '2026-06-08T14:26:25+00:00'
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

-- 20329bfe | Butterscotch (M) | CASH | 2026-06-08T14:28:40+00:00
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
    '2026-06-08T14:28:40+00:00'
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

-- 3944b6b3 | Butterscotch (M) | CASH | 2026-06-08T14:29:15+00:00
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
    '2026-06-08T14:29:15+00:00'
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

-- d57c1ec4 | Butterscotch (M) | CASH | 2026-06-08T14:29:42+00:00
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
    '2026-06-08T14:29:42+00:00'
  ) RETURNING id
)
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

-- 0604b35d | Butterscotch (M) | CASH | 2026-06-08T14:30:11+00:00
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
    '2026-06-08T14:30:11+00:00'
  ) RETURNING id
)
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

-- 74d31975 | Salted Caramel (M) | CASH | 2026-06-08T14:30:16+00:00
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
    '2026-06-08T14:30:16+00:00'
  ) RETURNING id
)
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

-- c5a401ac | Hazelnut (M) | CASH | 2026-06-08T14:30:50+00:00
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
    '2026-06-08T14:30:50+00:00'
  ) RETURNING id
)
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

-- 6a5ea03c | Salted Caramel (M) | CASH | 2026-06-08T14:34:26+00:00
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
    '2026-06-08T14:34:26+00:00'
  ) RETURNING id
)
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

-- 93bfb060 | Butterscotch (M) | QRIS | 2026-06-08T14:44:56+00:00
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
    '2026-06-08T14:44:56+00:00'
  ) RETURNING id
)
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

-- 79776612 | Baileys Latte (M) | CASH | 2026-06-08T14:46:57+00:00
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
    '2026-06-08T14:46:57+00:00'
  ) RETURNING id
)
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

-- 14eaf99d | Gula Aren (M) | QRIS | 2026-06-08T14:53:30+00:00
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
    '2026-06-08T14:53:30+00:00'
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

-- 47d5ffef | Baileys Latte (M) | QRIS | 2026-06-08T14:54:09+00:00
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
    '2026-06-08T14:54:09+00:00'
  ) RETURNING id
)
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

-- 191ba588 | Baileys Latte (M) | QRIS | 2026-06-08T15:00:47+00:00
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
    '2026-06-08T15:00:47+00:00'
  ) RETURNING id
)
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

-- 9501cbe7 | Cold Brew (M) | CASH | 2026-06-08T15:01:29+00:00
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
    '2026-06-08T15:01:29+00:00'
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

-- d9cadac7 | Butterscotch (M) | QRIS | 2026-06-08T15:10:52+00:00
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
    '2026-06-08T15:10:52+00:00'
  ) RETURNING id
)
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

-- 6cc16390 | Gula Aren (M) | QRIS | 2026-06-08T15:11:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-08T15:11:22+00:00'
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

-- a2253dbe | Baileys Latte (M) | QRIS | 2026-06-08T15:15:44+00:00
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
    '2026-06-08T15:15:44+00:00'
  ) RETURNING id
)
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

-- 1224396f | Vanilla (M) | CASH | 2026-06-08T15:21:26+00:00
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
    '2026-06-08T15:21:26+00:00'
  ) RETURNING id
)
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

-- 7d7a34da | Butterscotch (M) | QRIS | 2026-06-08T15:22:17+00:00
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
    '2026-06-08T15:22:17+00:00'
  ) RETURNING id
)
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

-- 10547a8a | Butterscotch (M) | QRIS | 2026-06-08T15:22:12+00:00
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
    '2026-06-08T15:22:12+00:00'
  ) RETURNING id
)
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

-- e16ad213 | Baileys Latte (M) | QRIS | 2026-06-08T15:23:37+00:00
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
    '2026-06-08T15:23:37+00:00'
  ) RETURNING id
)
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

-- 8721c11d | Butterscotch (M) | CASH | 2026-06-08T15:24:56+00:00
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
    '2026-06-08T15:24:56+00:00'
  ) RETURNING id
)
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

-- 9a649be2 | Baileys Latte (M) | QRIS | 2026-06-08T15:34:12+00:00
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
    '2026-06-08T15:34:12+00:00'
  ) RETURNING id
)
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

-- c982249d | Gula Aren (M) | CASH | 2026-06-08T15:37:15+00:00
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
    '2026-06-08T15:37:15+00:00'
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

-- f32f6439 | Cold Brew (M) | QRIS | 2026-06-08T15:41:11+00:00
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
    '2026-06-08T15:41:11+00:00'
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

-- 720b09cb | Baileys Latte (M) | QRIS | 2026-06-08T15:46:52+00:00
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
    '2026-06-08T15:46:52+00:00'
  ) RETURNING id
)
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

-- 140c5107 | Butterscotch (M) | QRIS | 2026-06-08T16:00:17+00:00
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
    '2026-06-08T16:00:17+00:00'
  ) RETURNING id
)
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

-- c3161d12 | Baileys Latte (M) | CASH | 2026-06-08T16:00:24+00:00
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
    '2026-06-08T16:00:24+00:00'
  ) RETURNING id
)
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

-- 9fd7268f | Butterscotch (M) | QRIS | 2026-06-08T16:00:30+00:00
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
    '2026-06-08T16:00:30+00:00'
  ) RETURNING id
)
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

-- 8ba1c59b | Butterscotch (M) | CASH | 2026-06-08T16:03:53+00:00
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
    '2026-06-08T16:03:53+00:00'
  ) RETURNING id
)
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

-- 849d7dad | Gula Aren (M) | QRIS | 2026-06-08T16:08:00+00:00
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
    '2026-06-08T16:08:00+00:00'
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

-- 0d6ff89c | Butterscotch (M) | CASH | 2026-06-08T16:11:30+00:00
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
    '2026-06-08T16:11:30+00:00'
  ) RETURNING id
)
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

-- a74e32c2 | Butterscotch (M) | CASH | 2026-06-08T16:27:28+00:00
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
    '2026-06-08T16:27:28+00:00'
  ) RETURNING id
)
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

-- 02eed6e6 | Baileys Latte (M) | CASH | 2026-06-08T16:27:34+00:00
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
    '2026-06-08T16:27:34+00:00'
  ) RETURNING id
)
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

-- 2151e3a1 | Cold Brew (M) | CASH | 2026-06-08T16:31:32+00:00
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
    '2026-06-08T16:31:32+00:00'
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

-- c33a43ad | Baileys Latte (M) | CASH | 2026-06-08T16:37:05+00:00
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
    '2026-06-08T16:37:05+00:00'
  ) RETURNING id
)
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

-- 51d1d305 | Butterscotch (M) | QRIS | 2026-06-08T16:37:08+00:00
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
    '2026-06-08T16:37:08+00:00'
  ) RETURNING id
)
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

-- 81cb5272 | Baileys Latte (M) | CASH | 2026-06-08T16:37:11+00:00
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
    '2026-06-08T16:37:11+00:00'
  ) RETURNING id
)
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

-- 024fd8c8 | Gula Aren (M) | CASH | 2026-06-08T16:37:58+00:00
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
    '2026-06-08T16:37:58+00:00'
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

-- 2eb9fd09 | Butterscotch (M) | QRIS | 2026-06-08T16:41:12+00:00
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
    '2026-06-08T16:41:12+00:00'
  ) RETURNING id
)
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

-- c8dfb706 | Hazelnut (M) | CASH | 2026-06-08T16:41:53+00:00
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
    '2026-06-08T16:41:53+00:00'
  ) RETURNING id
)
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

-- 498f47f1 | Vanilla (M) | CASH | 2026-06-08T16:42:01+00:00
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
    '2026-06-08T16:42:01+00:00'
  ) RETURNING id
)
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

-- c342a6b5 | Butterscotch (M) | CASH | 2026-06-08T16:47:32+00:00
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
    '2026-06-08T16:47:32+00:00'
  ) RETURNING id
)
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

-- 66865c5d | Butterscotch (M) | QRIS | 2026-06-08T16:52:37+00:00
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
    '2026-06-08T16:52:37+00:00'
  ) RETURNING id
)
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

-- b85c1ec4 | Salted Caramel (M) | QRIS | 2026-06-08T16:52:46+00:00
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
    '2026-06-08T16:52:46+00:00'
  ) RETURNING id
)
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

-- cf262e0e | Baileys Latte (M) | CASH | 2026-06-08T16:53:12+00:00
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
    '2026-06-08T16:53:12+00:00'
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

-- 124342cf | Salted Caramel (M) | QRIS | 2026-06-08T16:54:37+00:00
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
    '2026-06-08T16:54:37+00:00'
  ) RETURNING id
)
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

-- c95e1af7 | Baileys Latte (M) | CASH | 2026-06-08T16:54:42+00:00
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
    '2026-06-08T16:54:42+00:00'
  ) RETURNING id
)
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

-- b9099925 | Hazelnut (M) | CASH | 2026-06-08T16:56:30+00:00
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
    '2026-06-08T16:56:30+00:00'
  ) RETURNING id
)
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

-- 4f90b49b | Cold Brew (M) | CASH | 2026-06-08T16:56:37+00:00
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
    '2026-06-08T16:56:37+00:00'
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

-- f9ac4312 | Salted Caramel (M) | CASH | 2026-06-08T17:01:55+00:00
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
    '2026-06-08T17:01:55+00:00'
  ) RETURNING id
)
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

-- 04f4497a | Vanilla (M) | CASH | 2026-06-08T17:02:53+00:00
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
    '2026-06-08T17:02:53+00:00'
  ) RETURNING id
)
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

-- ae07388d | Hazelnut (M) | QRIS | 2026-06-08T17:03:54+00:00
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
    '2026-06-08T17:03:54+00:00'
  ) RETURNING id
)
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

-- 8bf5386a | Butterscotch (M) | CASH | 2026-06-08T17:04:49+00:00
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
    '2026-06-08T17:04:49+00:00'
  ) RETURNING id
)
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

-- a41ad2f1 | Baileys Latte (M) | CASH | 2026-06-08T17:05:34+00:00
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
    '2026-06-08T17:05:34+00:00'
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

-- 336d8a09 | Baileys Latte (M) | CASH | 2026-06-08T17:10:04+00:00
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
    '2026-06-08T17:10:04+00:00'
  ) RETURNING id
)
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

-- 88ee60f3 | Butterscotch (M) | CASH | 2026-06-08T17:15:44+00:00
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
    '2026-06-08T17:15:44+00:00'
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

-- 0d3ae7f3 | Butterscotch (M) | QRIS | 2026-06-08T17:19:47+00:00
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
    '2026-06-08T17:19:47+00:00'
  ) RETURNING id
)
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

-- 9e0253c2 | Salted Caramel (M) | CASH | 2026-06-08T17:37:50+00:00
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
    '2026-06-08T17:37:50+00:00'
  ) RETURNING id
)
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

-- ad7c4d0c | Butterscotch (M) | QRIS | 2026-06-08T17:41:36+00:00
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
    '2026-06-08T17:41:36+00:00'
  ) RETURNING id
)
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

-- d2229c94 | Cold Brew (M) | QRIS | 2026-06-08T17:46:51+00:00
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
    '2026-06-08T17:46:51+00:00'
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

-- a89e8e95 | Baileys Latte (M) | QRIS | 2026-06-08T17:47:11+00:00
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
    '2026-06-08T17:47:11+00:00'
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

-- 12f453f7 | Butterscotch (M) | QRIS | 2026-06-08T17:47:21+00:00
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
    '2026-06-08T17:47:21+00:00'
  ) RETURNING id
)
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

-- 62b59ccb | Salted Caramel (M) | CASH | 2026-06-08T17:47:52+00:00
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
    '2026-06-08T17:47:52+00:00'
  ) RETURNING id
)
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

-- 79f420d4 | Gula Aren (M) | CASH | 2026-06-08T17:48:54+00:00
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
    '2026-06-08T17:48:54+00:00'
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

-- f31371ac | Baileys Latte (M) | QRIS | 2026-06-08T17:49:33+00:00
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
    '2026-06-08T17:49:33+00:00'
  ) RETURNING id
)
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

-- 205ee046 | Butterscotch (M) | QRIS | 2026-06-08T17:53:33+00:00
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
    '2026-06-08T17:53:33+00:00'
  ) RETURNING id
)
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

-- 4e1e60c8 | Cold Brew (M) | CASH | 2026-06-08T17:55:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-08T17:55:06+00:00'
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

-- 1371b554 | Cold Brew (M) | CASH | 2026-06-08T17:56:22+00:00
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
    '2026-06-08T17:56:22+00:00'
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

-- 02a92c5c | Butterscotch (M) | CASH | 2026-06-08T17:56:33+00:00
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
    '2026-06-08T17:56:33+00:00'
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

-- fefca7a4 | Vanilla (M) | CASH | 2026-06-08T17:57:25+00:00
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
    '2026-06-08T17:57:25+00:00'
  ) RETURNING id
)
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

-- 93d62a0c | Vanilla (M) | QRIS | 2026-06-08T18:02:20+00:00
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
    '2026-06-08T18:02:20+00:00'
  ) RETURNING id
)
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

-- e40fbc01 | Gula Aren (M) | QRIS | 2026-06-08T18:05:14+00:00
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
    '2026-06-08T18:05:14+00:00'
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

-- 0080fa7e | Butterscotch (M) | QRIS | 2026-06-08T18:06:53+00:00
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
    '2026-06-08T18:06:53+00:00'
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

-- c1a2e052 | Vanilla (M) | QRIS | 2026-06-08T18:06:59+00:00
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
    '2026-06-08T18:06:59+00:00'
  ) RETURNING id
)
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

-- 94aee125 | Gula Aren (M) | CASH | 2026-06-08T18:07:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-08T18:07:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d033cfe5 | Vanilla (M) | CASH | 2026-06-08T18:07:36+00:00
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
    '2026-06-08T18:07:36+00:00'
  ) RETURNING id
)
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

-- f2b0a14f | Hazelnut (M) | CASH | 2026-06-08T18:07:59+00:00
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
    '2026-06-08T18:07:59+00:00'
  ) RETURNING id
)
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

-- 901221ab | Baileys Latte (M) | CASH | 2026-06-08T18:08:11+00:00
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
    6862.00,
    '2026-06-08T18:08:11+00:00'
  ) RETURNING id
)
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

-- 59bd6a4f | Butterscotch (M) | QRIS | 2026-06-08T18:21:58+00:00
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
    '2026-06-08T18:21:58+00:00'
  ) RETURNING id
)
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

-- 347c1bd0 | Hazelnut (M) | CASH | 2026-06-08T18:22:28+00:00
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
    '2026-06-08T18:22:28+00:00'
  ) RETURNING id
)
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

-- 914f31a8 | Vanilla (M) | CASH | 2026-06-08T18:22:33+00:00
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
    '2026-06-08T18:22:33+00:00'
  ) RETURNING id
)
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

-- 35f9c3ea | Baileys Latte (M) | QRIS | 2026-06-08T18:27:57+00:00
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
    '2026-06-08T18:27:57+00:00'
  ) RETURNING id
)
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

-- 96f7e1fe | Butterscotch (M) | QRIS | 2026-06-08T18:28:17+00:00
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
    '2026-06-08T18:28:17+00:00'
  ) RETURNING id
)
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

-- 9244ac5c | Vanilla (M) | QRIS | 2026-06-08T18:28:22+00:00
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
    '2026-06-08T18:28:22+00:00'
  ) RETURNING id
)
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

-- ad13f752 | Butterscotch (M) | QRIS | 2026-06-08T18:29:02+00:00
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
    '2026-06-08T18:29:02+00:00'
  ) RETURNING id
)
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

-- e64ee3b1 | Butterscotch (M) | QRIS | 2026-06-08T18:33:45+00:00
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
    '2026-06-08T18:33:45+00:00'
  ) RETURNING id
)
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

-- 5e0e9a4a | Baileys Latte (M) | QRIS | 2026-06-08T18:34:29+00:00
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
    '2026-06-08T18:34:29+00:00'
  ) RETURNING id
)
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

-- 5a9a3557 | Gula Aren (M) | QRIS | 2026-06-08T18:40:41+00:00
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
    '2026-06-08T18:40:41+00:00'
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

-- 7680cef1 | Salted Caramel (M) | QRIS | 2026-06-08T18:41:59+00:00
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
    '2026-06-08T18:41:59+00:00'
  ) RETURNING id
)
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

-- eec5f1fe | Hazelnut (M) | QRIS | 2026-06-08T18:42:06+00:00
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
    '2026-06-08T18:42:06+00:00'
  ) RETURNING id
)
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

-- 71950422 | Butterscotch (M) | CASH | 2026-06-08T18:48:35+00:00
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
    '2026-06-08T18:48:35+00:00'
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

-- b121fec6 | Gula Aren (M) | CASH | 2026-06-08T18:54:13+00:00
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
    '2026-06-08T18:54:13+00:00'
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

-- c79fdc35 | Baileys Latte (M) | CASH | 2026-06-08T19:06:57+00:00
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
    '2026-06-08T19:06:57+00:00'
  ) RETURNING id
)
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

-- 9d016693 | Baileys Latte (M) | CASH | 2026-06-08T19:15:43+00:00
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
    '2026-06-08T19:15:43+00:00'
  ) RETURNING id
)
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

-- ff2442b6 | Vanilla (M) | CASH | 2026-06-08T19:21:41+00:00
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
    '2026-06-08T19:21:41+00:00'
  ) RETURNING id
)
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

-- 85c29091 | Butterscotch (M) | QRIS | 2026-06-08T19:24:01+00:00
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
    '2026-06-08T19:24:01+00:00'
  ) RETURNING id
)
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

-- 84ab72e0 | Butterscotch (M) | CASH | 2026-06-08T19:30:22+00:00
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
    '2026-06-08T19:30:22+00:00'
  ) RETURNING id
)
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

-- 5473db33 | Baileys Latte (M) | QRIS | 2026-06-08T19:51:13+00:00
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
    '2026-06-08T19:51:13+00:00'
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

-- bf7f0f9c | Gula Aren (M) | QRIS | 2026-06-08T19:56:38+00:00
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
    '2026-06-08T19:56:38+00:00'
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

-- 09e16e4c | Baileys Latte (M) | CASH | 2026-06-08T19:56:47+00:00
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
    '2026-06-08T19:56:47+00:00'
  ) RETURNING id
)
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

-- a7e814c3 | Butterscotch (M) | QRIS | 2026-06-08T19:59:46+00:00
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
    '2026-06-08T19:59:46+00:00'
  ) RETURNING id
)
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

-- 1cebbee7 | Butterscotch (M) | CASH | 2026-06-08T19:40:03+00:00
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
    '2026-06-08T19:40:03+00:00'
  ) RETURNING id
)
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

-- fe5809c7 | Baileys Latte (M) | CASH | 2026-06-08T19:40:10+00:00
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
    '2026-06-08T19:40:10+00:00'
  ) RETURNING id
)
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

-- 3c0148d6 | Butterscotch (M) | CASH | 2026-06-08T20:01:18+00:00
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
    '2026-06-08T20:01:18+00:00'
  ) RETURNING id
)
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

-- 608ced06 | Butterscotch (M) | QRIS | 2026-06-08T20:02:26+00:00
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
    '2026-06-08T20:02:26+00:00'
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

-- d2139dbd | Cold Brew (M) | QRIS | 2026-06-08T20:02:50+00:00
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
    '2026-06-08T20:02:50+00:00'
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

-- 56cdbb01 | Gula Aren (M) | QRIS | 2026-06-08T20:03:17+00:00
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
    '2026-06-08T20:03:17+00:00'
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

-- 07c129aa | Gula Aren (M) | CASH | 2026-06-08T20:04:00+00:00
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
    '2026-06-08T20:04:00+00:00'
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

-- d9560e95 | Butterscotch (M) | CASH | 2026-06-08T20:04:09+00:00
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
    '2026-06-08T20:04:09+00:00'
  ) RETURNING id
)
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

-- fbcb1a25 | Vanilla (M) | CASH | 2026-06-08T20:04:17+00:00
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
    '2026-06-08T20:04:17+00:00'
  ) RETURNING id
)
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

-- 0c80127a | Salted Caramel (M) | CASH | 2026-06-08T20:04:27+00:00
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
    '2026-06-08T20:04:27+00:00'
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

-- a04f56c6 | Hazelnut (M) | CASH | 2026-06-08T20:04:33+00:00
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
    '2026-06-08T20:04:33+00:00'
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

-- be82b770 | Cold Brew (M) | CASH | 2026-06-08T20:04:45+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-08T20:04:45+00:00'
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

-- e914929a | Baileys Latte (M) | CASH | 2026-06-08T20:04:57+00:00
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
    '2026-06-08T20:04:57+00:00'
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

-- d41db1a0 | Butterscotch (M) | CASH | 2026-06-08T20:05:19+00:00
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
    21109.00,
    '2026-06-08T20:05:19+00:00'
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

-- babbb9c8 | Salted Caramel (M) | CASH | 2026-06-08T20:06:17+00:00
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
    '2026-06-08T20:06:17+00:00'
  ) RETURNING id
)
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

-- def4166a | Hazelnut (M) | CASH | 2026-06-08T20:06:26+00:00
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
    '2026-06-08T20:06:26+00:00'
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

-- 6480eae6 | Butterscotch (M) | QRIS | 2026-06-08T20:16:10+00:00
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
    '2026-06-08T20:16:10+00:00'
  ) RETURNING id
)
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

-- 81f428a9 | Butterscotch (M) | CASH | 2026-06-08T20:16:43+00:00
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
    '2026-06-08T20:16:43+00:00'
  ) RETURNING id
)
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

-- 12164ca1 | Butterscotch (M) | QRIS | 2026-06-08T20:18:13+00:00
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
    '2026-06-08T20:18:13+00:00'
  ) RETURNING id
)
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

-- 78756d94 | Baileys Latte (M) | QRIS | 2026-06-08T20:18:21+00:00
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
    '2026-06-08T20:18:21+00:00'
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

-- 62dc83e7 | Cold Brew (M) | QRIS | 2026-06-08T20:35:18+00:00
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
    '2026-06-08T20:35:18+00:00'
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

-- 025cc8f5 | Butterscotch (M) | QRIS | 2026-06-08T20:35:24+00:00
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
    '2026-06-08T20:35:24+00:00'
  ) RETURNING id
)
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

-- 1112628a | Cold Brew (M) | CASH | 2026-06-08T20:35:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-08T20:35:31+00:00'
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

-- 84d71b7a | Gula Aren (M) | CASH | 2026-06-08T20:39:06+00:00
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
    '2026-06-08T20:39:06+00:00'
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

-- 6f5b902a | Baileys Latte (M) | CASH | 2026-06-08T20:39:31+00:00
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
    '2026-06-08T20:39:31+00:00'
  ) RETURNING id
)
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

-- 52752fca | Gula Aren (M) | QRIS | 2026-06-08T21:21:56+00:00
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
    '2026-06-08T21:21:56+00:00'
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

-- ff5c87d0 | Butterscotch (M) | QRIS | 2026-06-08T21:25:32+00:00
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
    '2026-06-08T21:25:32+00:00'
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

-- be7c2a75 | Butterscotch (M) | QRIS | 2026-06-08T21:37:06+00:00
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
    '2026-06-08T21:37:06+00:00'
  ) RETURNING id
)
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

-- 79b9bfc0 | Vanilla (M) | QRIS | 2026-06-08T21:37:38+00:00
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
    '2026-06-08T21:37:38+00:00'
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

-- d0e5b613 | Gula Aren (M) | CASH | 2026-06-08T21:38:17+00:00
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
    '2026-06-08T21:38:17+00:00'
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

-- 14e85ce4 | Salted Caramel (M) | CASH | 2026-06-08T21:38:26+00:00
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
    '2026-06-08T21:38:26+00:00'
  ) RETURNING id
)
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

-- e0de48cc | Hazelnut (M) | CASH | 2026-06-08T21:38:32+00:00
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
    '2026-06-08T21:38:32+00:00'
  ) RETURNING id
)
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

-- dd8c81ab | Cold Brew (M) | CASH | 2026-06-08T21:38:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-08T21:38:40+00:00'
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

-- b8c69bda | Baileys Latte (M) | CASH | 2026-06-08T21:38:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '2026-06-08T21:38:54+00:00'
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

-- 128daa62 | Salted Caramel (M) | CASH | 2026-06-08T22:03:45+00:00
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
    '2026-06-08T22:03:45+00:00'
  ) RETURNING id
)
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

-- 85e25b82 | Baileys Latte (M) | CASH | 2026-06-08T22:18:23+00:00
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
    '2026-06-08T22:18:23+00:00'
  ) RETURNING id
)
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

-- 8b683a4a | Gula Aren (M) | QRIS | 2026-06-08T22:25:38+00:00
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
    '2026-06-08T22:25:38+00:00'
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

-- 37e35c3a | Cold Brew (M) | QRIS | 2026-06-08T22:25:46+00:00
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
    '2026-06-08T22:25:46+00:00'
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

-- d81c6ca2 | Butterscotch (M) | QRIS | 2026-06-08T22:25:54+00:00
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
    '2026-06-08T22:25:54+00:00'
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

-- a22e3948 | Gula Aren (M) | CASH | 2026-06-08T22:27:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-08T22:27:39+00:00'
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

-- 255923f2 | Butterscotch (M) | CASH | 2026-06-08T22:27:46+00:00
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
    '2026-06-08T22:27:46+00:00'
  ) RETURNING id
)
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

-- fca4f38d | Vanilla (M) | CASH | 2026-06-08T22:27:52+00:00
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
    '2026-06-08T22:27:52+00:00'
  ) RETURNING id
)
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

-- 06d82e60 | Salted Caramel (M) | CASH | 2026-06-08T22:27:59+00:00
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
    '2026-06-08T22:27:59+00:00'
  ) RETURNING id
)
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

-- d572aa75 | Hazelnut (M) | CASH | 2026-06-08T22:28:07+00:00
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
    '2026-06-08T22:28:07+00:00'
  ) RETURNING id
)
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

-- 91f089a9 | Baileys Latte (M) | CASH | 2026-06-08T22:28:14+00:00
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
    '2026-06-08T22:28:14+00:00'
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

-- 91292f4e | Gula Aren (M) | QRIS | 2026-06-08T22:32:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-08T22:32:51+00:00'
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

-- f8093d37 | Butterscotch (M) | QRIS | 2026-06-08T22:32:57+00:00
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
    '2026-06-08T22:32:57+00:00'
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

-- 4c0cc082 | Gula Aren (M) | CASH | 2026-06-08T22:33:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-08T22:33:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3462d3a8 | Butterscotch (M) | CASH | 2026-06-08T22:33:47+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-08T22:33:47+00:00'
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

-- a3925375 | Hazelnut (M) | CASH | 2026-06-08T22:33:57+00:00
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
    '2026-06-08T22:33:57+00:00'
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

-- ce102d31 | Cold Brew (M) | CASH | 2026-06-08T22:34:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-08T22:34:06+00:00'
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

-- 07ae0f00 | Baileys Latte (M) | CASH | 2026-06-08T22:34:15+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    162500.00,
    0.00,
    0.00,
    89212.00,
    '2026-06-08T22:34:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  13,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 10ca0f28 | Gula Aren (M) | CASH | 2026-06-08T23:02:52+00:00
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
    '2026-06-08T23:02:52+00:00'
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

-- 59da39f8 | Cold Brew (M) | QRIS | 2026-06-09T09:32:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-09T09:32:50+00:00'
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

-- 73cd0ce2 | Vanilla (M) | QRIS | 2026-06-09T09:32:58+00:00
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
    '2026-06-09T09:32:58+00:00'
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

-- 617c7c4f | Gula Aren (M) | CASH | 2026-06-09T09:37:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-09T09:37:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- a334f1bb | Butterscotch (M) | QRIS | 2026-06-09T09:37:16+00:00
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
    '2026-06-09T09:37:16+00:00'
  ) RETURNING id
)
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

-- 91d141f9 | Salted Caramel (M) | QRIS | 2026-06-09T09:37:21+00:00
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
    '2026-06-09T09:37:21+00:00'
  ) RETURNING id
)
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

-- b6bbc0f7 | Butterscotch (M) | CASH | 2026-06-09T09:57:59+00:00
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
    '2026-06-09T09:57:59+00:00'
  ) RETURNING id
)
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

-- 96ef5663 | Salted Caramel (M) | CASH | 2026-06-09T09:58:05+00:00
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
    '2026-06-09T09:58:05+00:00'
  ) RETURNING id
)
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

-- d5ecbdd0 | Butterscotch (M) | QRIS | 2026-06-09T10:09:00+00:00
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
    '2026-06-09T10:09:00+00:00'
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

-- 32331afe | Baileys Latte (M) | QRIS | 2026-06-09T10:09:06+00:00
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
    '2026-06-09T10:09:06+00:00'
  ) RETURNING id
)
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

-- c66550b2 | Gula Aren (M) | QRIS | 2026-06-09T10:22:29+00:00
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
    '2026-06-09T10:22:29+00:00'
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

-- f5f5e84c | Butterscotch (M) | CASH | 2026-06-09T10:24:50+00:00
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
    '2026-06-09T10:24:50+00:00'
  ) RETURNING id
)
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

-- 7663018e | Butterscotch (M) | QRIS | 2026-06-09T10:26:32+00:00
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
    '2026-06-09T10:26:32+00:00'
  ) RETURNING id
)
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

-- 61b5ff56 | Gula Aren (M) | CASH | 2026-06-09T10:36:25+00:00
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
    '2026-06-09T10:36:25+00:00'
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

-- 9777673e | Gula Aren (M) | CASH | 2026-06-09T10:38:10+00:00
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
    '2026-06-09T10:38:10+00:00'
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

-- f489da82 | Baileys Latte (M) | CASH | 2026-06-09T10:39:01+00:00
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
    '2026-06-09T10:39:01+00:00'
  ) RETURNING id
)
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

-- 58f27bad | Butterscotch (M) | QRIS | 2026-06-09T10:41:15+00:00
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
    '2026-06-09T10:41:15+00:00'
  ) RETURNING id
)
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

-- 714b8941 | Butterscotch (M) | QRIS | 2026-06-09T10:41:27+00:00
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
    14073.00,
    '2026-06-09T10:41:27+00:00'
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

-- bb488046 | Baileys Latte (M) | QRIS | 2026-06-09T10:41:44+00:00
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
    '2026-06-09T10:41:44+00:00'
  ) RETURNING id
)
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

-- a7c726bf | Baileys Latte (M) | QRIS | 2026-06-09T10:45:56+00:00
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
    '2026-06-09T10:45:56+00:00'
  ) RETURNING id
)
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

-- 99fe1373 | Butterscotch (M) | QRIS | 2026-06-09T10:46:56+00:00
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
    '2026-06-09T10:46:56+00:00'
  ) RETURNING id
)
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

-- 07d62860 | Salted Caramel (M) | CASH | 2026-06-09T10:47:10+00:00
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
    '2026-06-09T10:47:10+00:00'
  ) RETURNING id
)
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

-- 98bd5b70 | Hazelnut (M) | QRIS | 2026-06-09T10:48:43+00:00
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
    '2026-06-09T10:48:43+00:00'
  ) RETURNING id
)
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

-- 8829bf5f | Butterscotch (M) | QRIS | 2026-06-09T10:48:49+00:00
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
    '2026-06-09T10:48:49+00:00'
  ) RETURNING id
)
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

-- a751549f | Butterscotch (M) | QRIS | 2026-06-09T10:50:39+00:00
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
    '2026-06-09T10:50:39+00:00'
  ) RETURNING id
)
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

-- 7a023229 | Gula Aren (M) | CASH | 2026-06-09T11:07:02+00:00
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
    '2026-06-09T11:07:02+00:00'
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

-- 8acbc29b | Butterscotch (M) | QRIS | 2026-06-09T11:19:21+00:00
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
    '2026-06-09T11:19:21+00:00'
  ) RETURNING id
)
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

-- b0584f4e | Baileys Latte (M) | QRIS | 2026-06-09T11:19:32+00:00
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
    '2026-06-09T11:19:32+00:00'
  ) RETURNING id
)
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

-- 83c11a00 | Butterscotch (M) | CASH | 2026-06-09T11:22:11+00:00
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
    '2026-06-09T11:22:11+00:00'
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

-- fc5883f2 | Gula Aren (M) | CASH | 2026-06-09T11:22:16+00:00
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
    '2026-06-09T11:22:16+00:00'
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

-- 1b2c9a81 | Gula Aren (M) | QRIS | 2026-06-09T11:22:20+00:00
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
    '2026-06-09T11:22:20+00:00'
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

-- 4dbd1c06 | Gula Aren (M) | QRIS | 2026-06-09T11:22:48+00:00
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
    '2026-06-09T11:22:48+00:00'
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

-- 658dd428 | Baileys Latte (M) | QRIS | 2026-06-09T11:27:01+00:00
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
    '2026-06-09T11:27:01+00:00'
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

-- 6f67a870 | Gula Aren (M) | QRIS | 2026-06-09T11:39:56+00:00
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
    '2026-06-09T11:39:56+00:00'
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

-- 39e210fd | Butterscotch (M) | QRIS | 2026-06-09T11:40:28+00:00
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
    '2026-06-09T11:40:28+00:00'
  ) RETURNING id
)
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

-- bc1faf12 | Hazelnut (M) | QRIS | 2026-06-09T11:40:34+00:00
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
    '2026-06-09T11:40:34+00:00'
  ) RETURNING id
)
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

-- 96432770 | Cold Brew (M) | CASH | 2026-06-09T11:41:37+00:00
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
    '2026-06-09T11:41:37+00:00'
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

-- 19db8097 | Baileys Latte (M) | CASH | 2026-06-09T11:41:48+00:00
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
    6862.00,
    '2026-06-09T11:41:48+00:00'
  ) RETURNING id
)
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

-- 861b14aa | Butterscotch (M) | QRIS | 2026-06-09T11:48:26+00:00
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
    '2026-06-09T11:48:26+00:00'
  ) RETURNING id
)
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

-- 7a5ede7f | Butterscotch (M) | QRIS | 2026-06-09T11:48:47+00:00
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
    '2026-06-09T11:48:47+00:00'
  ) RETURNING id
)
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

-- cd730278 | Baileys Latte (M) | QRIS | 2026-06-09T11:54:53+00:00
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
    '2026-06-09T11:54:53+00:00'
  ) RETURNING id
)
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

-- af1d80b0 | Gula Aren (M) | CASH | 2026-06-09T11:57:49+00:00
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
    '2026-06-09T11:57:49+00:00'
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

-- 631cae27 | Butterscotch (M) | CASH | 2026-06-09T11:58:24+00:00
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
    '2026-06-09T11:58:24+00:00'
  ) RETURNING id
)
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

-- 07b690fc | Hazelnut (M) | QRIS | 2026-06-09T11:58:32+00:00
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
    '2026-06-09T11:58:32+00:00'
  ) RETURNING id
)
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

-- 019b03c9 | Gula Aren (M) | CASH | 2026-06-09T11:58:38+00:00
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
    '2026-06-09T11:58:38+00:00'
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

-- 05aded6b | Gula Aren (M) | QRIS | 2026-06-09T12:06:08+00:00
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
    '2026-06-09T12:06:08+00:00'
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

-- 4dc48f16 | Gula Aren (M) | QRIS | 2026-06-09T12:06:42+00:00
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
    '2026-06-09T12:06:42+00:00'
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

-- 6c4e9c95 | Baileys Latte (M) | QRIS | 2026-06-09T12:10:41+00:00
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
    '2026-06-09T12:10:41+00:00'
  ) RETURNING id
)
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

-- 3d3eb2f1 | Gula Aren (M) | CASH | 2026-06-09T12:11:35+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-09T12:11:35+00:00'
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

-- dda3493e | Butterscotch (M) | CASH | 2026-06-09T12:17:34+00:00
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
    '2026-06-09T12:17:34+00:00'
  ) RETURNING id
)
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

-- a2fb6766 | Baileys Latte (M) | CASH | 2026-06-09T12:17:46+00:00
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
    '2026-06-09T12:17:46+00:00'
  ) RETURNING id
)
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

-- 11c6d6b3 | Gula Aren (M) | CASH | 2026-06-09T12:17:51+00:00
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
    '2026-06-09T12:17:51+00:00'
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

-- 760aed88 | Gula Aren (M) | QRIS | 2026-06-09T12:22:32+00:00
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
    '2026-06-09T12:22:32+00:00'
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

-- 7de11803 | Gula Aren (M) | CASH | 2026-06-09T12:22:37+00:00
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
    '2026-06-09T12:22:37+00:00'
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

-- 87c833e1 | Butterscotch (M) | QRIS | 2026-06-09T12:23:09+00:00
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
    '2026-06-09T12:23:09+00:00'
  ) RETURNING id
)
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

-- 84050338 | Butterscotch (M) | QRIS | 2026-06-09T12:23:18+00:00
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
    '2026-06-09T12:23:18+00:00'
  ) RETURNING id
)
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

-- 8b264e4d | Vanilla (M) | QRIS | 2026-06-09T12:23:28+00:00
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
    '2026-06-09T12:23:28+00:00'
  ) RETURNING id
)
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

-- f54b5f81 | Baileys Latte (M) | CASH | 2026-06-09T12:26:48+00:00
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
    '2026-06-09T12:26:48+00:00'
  ) RETURNING id
)
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

-- 49a3cf52 | Vanilla (M) | QRIS | 2026-06-09T12:28:48+00:00
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
    '2026-06-09T12:28:48+00:00'
  ) RETURNING id
)
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

-- 6d213dce | Baileys Latte (M) | QRIS | 2026-06-09T12:34:32+00:00
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
    '2026-06-09T12:34:32+00:00'
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

-- ce07e7ff | Butterscotch (M) | CASH | 2026-06-09T12:38:25+00:00
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
    '2026-06-09T12:38:25+00:00'
  ) RETURNING id
)
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

-- d24db401 | Butterscotch (M) | QRIS | 2026-06-09T12:38:51+00:00
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
    '2026-06-09T12:38:51+00:00'
  ) RETURNING id
)
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

-- bf9efe0c | Butterscotch (M) | QRIS | 2026-06-09T12:40:46+00:00
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
    '2026-06-09T12:40:46+00:00'
  ) RETURNING id
)
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

-- 4d731dbc | Gula Aren (M) | QRIS | 2026-06-09T12:44:10+00:00
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
    '2026-06-09T12:44:10+00:00'
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

-- 0224241c | Butterscotch (M) | CASH | 2026-06-09T12:46:06+00:00
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
    '2026-06-09T12:46:06+00:00'
  ) RETURNING id
)
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

-- 4c6304bc | Baileys Latte (M) | CASH | 2026-06-09T12:53:31+00:00
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
    '2026-06-09T12:53:31+00:00'
  ) RETURNING id
)
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

-- 5660232d | Butterscotch (M) | QRIS | 2026-06-09T12:53:35+00:00
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
    '2026-06-09T12:53:35+00:00'
  ) RETURNING id
)
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

-- 3516d625 | Baileys Latte (M) | QRIS | 2026-06-09T12:54:53+00:00
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
    '2026-06-09T12:54:53+00:00'
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

-- d2616530 | Gula Aren (M) | QRIS | 2026-06-09T13:01:11+00:00
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
    '2026-06-09T13:01:11+00:00'
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

-- c2ff0d5c | Gula Aren (M) | CASH | 2026-06-09T13:01:28+00:00
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
    '2026-06-09T13:01:28+00:00'
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

-- b428cfe1 | Butterscotch (M) | QRIS | 2026-06-09T13:02:49+00:00
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
    '2026-06-09T13:02:49+00:00'
  ) RETURNING id
)
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

-- b59efd08 | Baileys Latte (M) | QRIS | 2026-06-09T13:02:57+00:00
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
    '2026-06-09T13:02:57+00:00'
  ) RETURNING id
)
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

-- 65c935f6 | Gula Aren (M) | CASH | 2026-06-09T13:09:34+00:00
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
    '2026-06-09T13:09:34+00:00'
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

-- 1d17eaad | Baileys Latte (M) | QRIS | 2026-06-09T13:09:40+00:00
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
    '2026-06-09T13:09:40+00:00'
  ) RETURNING id
)
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

-- 616fafcb | Gula Aren (M) | QRIS | 2026-06-09T13:09:49+00:00
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
    '2026-06-09T13:09:49+00:00'
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

-- 511b4a45 | Butterscotch (M) | QRIS | 2026-06-09T13:09:55+00:00
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
    '2026-06-09T13:09:55+00:00'
  ) RETURNING id
)
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

-- 77e89ac8 | Baileys Latte (M) | CASH | 2026-06-09T13:10:03+00:00
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
    '2026-06-09T13:10:03+00:00'
  ) RETURNING id
)
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

-- 8675fb59 | Baileys Latte (M) | CASH | 2026-06-09T13:10:11+00:00
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
    '2026-06-09T13:10:11+00:00'
  ) RETURNING id
)
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

-- 11642b71 | Gula Aren (M) | CASH | 2026-06-09T13:09:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-09T13:09:03+00:00'
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

-- 34b35078 | Baileys Latte (M) | CASH | 2026-06-09T13:11:33+00:00
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
    6862.00,
    '2026-06-09T13:11:33+00:00'
  ) RETURNING id
)
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

-- b72163aa | Butterscotch (M) | CASH | 2026-06-09T13:11:42+00:00
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
    '2026-06-09T13:11:42+00:00'
  ) RETURNING id
)
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

-- 7fa35939 | Gula Aren (M) | CASH | 2026-06-09T13:11:51+00:00
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
    '2026-06-09T13:11:51+00:00'
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

-- 8410bdfd | Gula Aren (M) | CASH | 2026-06-09T13:12:45+00:00
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
    '2026-06-09T13:12:45+00:00'
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

-- 70ff5610 | Gula Aren (M) | CASH | 2026-06-09T13:13:04+00:00
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
    '2026-06-09T13:13:04+00:00'
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

-- 7645e7d4 | Cold Brew (M) | QRIS | 2026-06-09T13:13:41+00:00
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
    '2026-06-09T13:13:41+00:00'
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

-- 7d487e0b | Gula Aren (M) | CASH | 2026-06-09T13:13:51+00:00
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
    '2026-06-09T13:13:51+00:00'
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

-- 14050d3e | Butterscotch (M) | CASH | 2026-06-09T13:14:10+00:00
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
    '2026-06-09T13:14:10+00:00'
  ) RETURNING id
)
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

-- 49417888 | Baileys Latte (M) | CASH | 2026-06-09T13:14:14+00:00
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
    '2026-06-09T13:14:14+00:00'
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

-- ff100ca2 | Gula Aren (M) | QRIS | 2026-06-09T13:15:01+00:00
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
    '2026-06-09T13:15:01+00:00'
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

-- 5d9c506c | Baileys Latte (M) | CASH | 2026-06-09T13:15:50+00:00
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
    '2026-06-09T13:15:50+00:00'
  ) RETURNING id
)
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

-- b0f00c00 | Gula Aren (M) | CASH | 2026-06-09T13:16:12+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-09T13:16:12+00:00'
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

-- 26fb2a2e | Butterscotch (M) | CASH | 2026-06-09T13:20:52+00:00
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
    '2026-06-09T13:20:52+00:00'
  ) RETURNING id
)
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

-- 4277194e | Hazelnut (M) | CASH | 2026-06-09T13:58:16+00:00
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
    '2026-06-09T13:58:16+00:00'
  ) RETURNING id
)
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

-- 292befd1 | Butterscotch (M) | CASH | 2026-06-09T13:58:27+00:00
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
    '2026-06-09T13:58:27+00:00'
  ) RETURNING id
)
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

-- f551c9f3 | Gula Aren (M) | QRIS | 2026-06-09T14:04:59+00:00
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
    '2026-06-09T14:04:59+00:00'
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

-- 118a7dae | Butterscotch (M) | QRIS | 2026-06-09T14:05:09+00:00
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
    '2026-06-09T14:05:09+00:00'
  ) RETURNING id
)
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

-- 6032ad19 | Baileys Latte (M) | QRIS | 2026-06-09T14:06:22+00:00
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
    '2026-06-09T14:06:22+00:00'
  ) RETURNING id
)
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

-- 454ba7af | Butterscotch (M) | QRIS | 2026-06-09T14:08:21+00:00
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
    '2026-06-09T14:08:21+00:00'
  ) RETURNING id
)
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

-- 3fc83b88 | Baileys Latte (M) | CASH | 2026-06-09T14:12:39+00:00
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
    6862.00,
    '2026-06-09T14:12:39+00:00'
  ) RETURNING id
)
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

-- fd04b728 | Gula Aren (M) | CASH | 2026-06-09T14:32:06+00:00
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
    '2026-06-09T14:32:06+00:00'
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

-- 6abf31ea | Baileys Latte (M) | CASH | 2026-06-09T14:33:13+00:00
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
    '2026-06-09T14:33:13+00:00'
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

-- b2f68595 | Gula Aren (M) | QRIS | 2026-06-09T14:33:25+00:00
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
    '2026-06-09T14:33:25+00:00'
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

-- b6a15a84 | Butterscotch (M) | CASH | 2026-06-09T14:40:19+00:00
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
    '2026-06-09T14:40:19+00:00'
  ) RETURNING id
)
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

-- 909c3602 | Baileys Latte (M) | QRIS | 2026-06-09T14:55:53+00:00
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
    '2026-06-09T14:55:53+00:00'
  ) RETURNING id
)
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

-- a10ce99b | Butterscotch (M) | CASH | 2026-06-09T15:09:55+00:00
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
    '2026-06-09T15:09:55+00:00'
  ) RETURNING id
)
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

-- 08a7fa27 | Baileys Latte (M) | QRIS | 2026-06-09T15:12:01+00:00
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
    '2026-06-09T15:12:01+00:00'
  ) RETURNING id
)
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

-- 7c283031 | Butterscotch (M) | QRIS | 2026-06-09T15:13:52+00:00
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
    '2026-06-09T15:13:52+00:00'
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

-- d6ec3bed | Gula Aren (M) | QRIS | 2026-06-09T15:19:53+00:00
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
    '2026-06-09T15:19:53+00:00'
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

-- 5f7a28ec | Butterscotch (M) | QRIS | 2026-06-09T15:21:37+00:00
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
    '2026-06-09T15:21:37+00:00'
  ) RETURNING id
)
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

-- aa68b559 | Baileys Latte (M) | QRIS | 2026-06-09T15:26:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-09T15:26:01+00:00'
  ) RETURNING id
)
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

-- d804c7c9 | Gula Aren (M) | CASH | 2026-06-09T15:26:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-09T15:26:19+00:00'
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

-- b246d34e | Baileys Latte (M) | QRIS | 2026-06-09T15:33:25+00:00
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
    '2026-06-09T15:33:25+00:00'
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

-- c1f90aa8 | Butterscotch (M) | QRIS | 2026-06-09T15:35:08+00:00
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
    '2026-06-09T15:35:08+00:00'
  ) RETURNING id
)
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

-- aa7c7a98 | Butterscotch (M) | CASH | 2026-06-09T15:41:40+00:00
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
    '2026-06-09T15:41:40+00:00'
  ) RETURNING id
)
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

-- 132e3a3f | Salted Caramel (M) | CASH | 2026-06-09T15:41:47+00:00
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
    '2026-06-09T15:41:47+00:00'
  ) RETURNING id
)
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

-- 6903f791 | Gula Aren (M) | CASH | 2026-06-09T15:42:39+00:00
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
    '2026-06-09T15:42:39+00:00'
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

-- a1a9de98 | Gula Aren (M) | CASH | 2026-06-09T15:42:46+00:00
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
    '2026-06-09T15:42:46+00:00'
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

-- 2440be57 | Gula Aren (M) | CASH | 2026-06-09T15:43:06+00:00
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
    '2026-06-09T15:43:06+00:00'
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

-- 8b9ae3aa | Butterscotch (M) | CASH | 2026-06-09T15:43:11+00:00
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
    '2026-06-09T15:43:11+00:00'
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

-- 98cfe2fd | Gula Aren (M) | CASH | 2026-06-09T15:46:56+00:00
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
    '2026-06-09T15:46:56+00:00'
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

-- a57532e0 | Baileys Latte (M) | QRIS | 2026-06-09T15:48:49+00:00
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
    '2026-06-09T15:48:49+00:00'
  ) RETURNING id
)
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

-- 9c6a47af | Gula Aren (M) | CASH | 2026-06-09T15:53:21+00:00
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
    '2026-06-09T15:53:21+00:00'
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

-- a79f34aa | Vanilla (M) | CASH | 2026-06-09T16:02:11+00:00
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
    '2026-06-09T16:02:11+00:00'
  ) RETURNING id
)
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

-- 5ef2fc53 | Baileys Latte (M) | CASH | 2026-06-09T16:03:25+00:00
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
    '2026-06-09T16:03:25+00:00'
  ) RETURNING id
)
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

-- 45298a61 | Salted Caramel (M) | QRIS | 2026-06-09T16:03:57+00:00
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
    '2026-06-09T16:03:57+00:00'
  ) RETURNING id
)
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

-- be4003b0 | Butterscotch (M) | QRIS | 2026-06-09T16:05:24+00:00
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
    '2026-06-09T16:05:24+00:00'
  ) RETURNING id
)
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

-- 6b64ec04 | Butterscotch (M) | CASH | 2026-06-09T16:06:13+00:00
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
    '2026-06-09T16:06:13+00:00'
  ) RETURNING id
)
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

-- 7471ecdb | Butterscotch (M) | CASH | 2026-06-09T16:06:43+00:00
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
    '2026-06-09T16:06:43+00:00'
  ) RETURNING id
)
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

-- b0db1be9 | Butterscotch (M) | QRIS | 2026-06-09T16:08:37+00:00
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
    '2026-06-09T16:08:37+00:00'
  ) RETURNING id
)
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

-- 024e236e | Baileys Latte (M) | CASH | 2026-06-09T16:08:56+00:00
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
    '2026-06-09T16:08:56+00:00'
  ) RETURNING id
)
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

-- c4bcbd92 | Butterscotch (M) | CASH | 2026-06-09T16:13:46+00:00
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
    '2026-06-09T16:13:46+00:00'
  ) RETURNING id
)
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

-- 39d5ba17 | Vanilla (M) | QRIS | 2026-06-09T16:30:09+00:00
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
    '2026-06-09T16:30:09+00:00'
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

-- c62c5ed9 | Baileys Latte (M) | QRIS | 2026-06-09T16:31:35+00:00
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
    '2026-06-09T16:31:35+00:00'
  ) RETURNING id
)
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

-- a81546df | Gula Aren (M) | QRIS | 2026-06-09T16:36:01+00:00
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
    '2026-06-09T16:36:01+00:00'
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

-- 3fd03c04 | Baileys Latte (M) | QRIS | 2026-06-09T16:36:06+00:00
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
    '2026-06-09T16:36:06+00:00'
  ) RETURNING id
)
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

-- 6dd0721c | Baileys Latte (M) | CASH | 2026-06-09T16:42:00+00:00
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
    '2026-06-09T16:42:00+00:00'
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

-- d77b008e | Butterscotch (M) | CASH | 2026-06-09T16:43:20+00:00
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
    '2026-06-09T16:43:20+00:00'
  ) RETURNING id
)
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

-- 7be8d276 | Butterscotch (M) | QRIS | 2026-06-09T16:48:11+00:00
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
    '2026-06-09T16:48:11+00:00'
  ) RETURNING id
)
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

-- da251b9e | Baileys Latte (M) | QRIS | 2026-06-09T16:48:47+00:00
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
    '2026-06-09T16:48:47+00:00'
  ) RETURNING id
)
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

-- 3e4287b5 | Vanilla (M) | CASH | 2026-06-09T16:48:55+00:00
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
    '2026-06-09T16:48:55+00:00'
  ) RETURNING id
)
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

-- 512e69a9 | Butterscotch (M) | QRIS | 2026-06-09T16:49:31+00:00
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
    '2026-06-09T16:49:31+00:00'
  ) RETURNING id
)
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

-- 8b686fc7 | Butterscotch (M) | QRIS | 2026-06-09T16:50:42+00:00
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
    '2026-06-09T16:50:42+00:00'
  ) RETURNING id
)
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

-- cc542752 | Butterscotch (M) | CASH | 2026-06-09T16:53:15+00:00
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
    '2026-06-09T16:53:15+00:00'
  ) RETURNING id
)
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

-- 0d5ca5c3 | Butterscotch (M) | CASH | 2026-06-09T16:53:22+00:00
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
    '2026-06-09T16:53:22+00:00'
  ) RETURNING id
)
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

-- fe49422c | Butterscotch (M) | QRIS | 2026-06-09T17:00:06+00:00
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
    '2026-06-09T17:00:06+00:00'
  ) RETURNING id
)
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

-- 2630dac8 | Baileys Latte (M) | QRIS | 2026-06-09T17:01:37+00:00
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
    '2026-06-09T17:01:37+00:00'
  ) RETURNING id
)
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

-- 6bd3c706 | Butterscotch (M) | QRIS | 2026-06-09T17:16:23+00:00
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
    '2026-06-09T17:16:23+00:00'
  ) RETURNING id
)
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

-- 0444b6ca | Butterscotch (M) | QRIS | 2026-06-09T17:16:28+00:00
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
    '2026-06-09T17:16:28+00:00'
  ) RETURNING id
)
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

-- a9e586b0 | Salted Caramel (M) | QRIS | 2026-06-09T17:16:36+00:00
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
    '2026-06-09T17:16:36+00:00'
  ) RETURNING id
)
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

-- 37145e0e | Butterscotch (M) | QRIS | 2026-06-09T17:17:15+00:00
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
    '2026-06-09T17:17:15+00:00'
  ) RETURNING id
)
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

-- ccb8a833 | Hazelnut (M) | QRIS | 2026-06-09T17:17:21+00:00
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
    '2026-06-09T17:17:21+00:00'
  ) RETURNING id
)
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

-- 35f5d59d | Butterscotch (M) | CASH | 2026-06-09T17:18:57+00:00
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
    '2026-06-09T17:18:57+00:00'
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

-- 3ecbbced | Hazelnut (M) | QRIS | 2026-06-09T17:19:28+00:00
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
    '2026-06-09T17:19:28+00:00'
  ) RETURNING id
)
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

-- d7af5b64 | Butterscotch (M) | CASH | 2026-06-09T17:31:19+00:00
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
    '2026-06-09T17:31:19+00:00'
  ) RETURNING id
)
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

-- 2916c36f | Baileys Latte (M) | QRIS | 2026-06-09T17:33:52+00:00
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
    '2026-06-09T17:33:52+00:00'
  ) RETURNING id
)
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

-- c7d3c71e | Gula Aren (M) | QRIS | 2026-06-09T17:40:53+00:00
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
    '2026-06-09T17:40:53+00:00'
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

-- 172f9151 | Butterscotch (M) | QRIS | 2026-06-09T17:41:13+00:00
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
    '2026-06-09T17:41:13+00:00'
  ) RETURNING id
)
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

-- 436bea55 | Baileys Latte (M) | CASH | 2026-06-09T17:42:04+00:00
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
    '2026-06-09T17:42:04+00:00'
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

-- f1bdc854 | Vanilla (M) | QRIS | 2026-06-09T17:43:28+00:00
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
    '2026-06-09T17:43:28+00:00'
  ) RETURNING id
)
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

-- d58338e1 | Butterscotch (M) | QRIS | 2026-06-09T17:43:46+00:00
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
    '2026-06-09T17:43:46+00:00'
  ) RETURNING id
)
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

-- df071a01 | Gula Aren (M) | CASH | 2026-06-09T17:44:16+00:00
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
    '2026-06-09T17:44:16+00:00'
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

-- 6f64bb32 | Baileys Latte (M) | CASH | 2026-06-09T17:45:55+00:00
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
    '2026-06-09T17:45:55+00:00'
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

-- a9d72b72 | Butterscotch (M) | CASH | 2026-06-09T17:46:51+00:00
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
    '2026-06-09T17:46:51+00:00'
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

-- 305f1651 | Hazelnut (M) | QRIS | 2026-06-09T17:47:43+00:00
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
    '2026-06-09T17:47:43+00:00'
  ) RETURNING id
)
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

-- cc8660ff | Vanilla (M) | QRIS | 2026-06-09T17:47:50+00:00
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
    '2026-06-09T17:47:50+00:00'
  ) RETURNING id
)
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

-- 330dbf61 | Butterscotch (M) | QRIS | 2026-06-09T17:48:45+00:00
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
    14073.00,
    '2026-06-09T17:48:45+00:00'
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

-- 8b59086d | Hazelnut (M) | QRIS | 2026-06-09T17:49:46+00:00
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
    '2026-06-09T17:49:46+00:00'
  ) RETURNING id
)
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

-- 1e8b1ee9 | Butterscotch (M) | QRIS | 2026-06-09T17:50:27+00:00
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
    '2026-06-09T17:50:27+00:00'
  ) RETURNING id
)
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

-- 8d74fccb | Gula Aren (M) | QRIS | 2026-06-09T17:51:42+00:00
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
    '2026-06-09T17:51:42+00:00'
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

-- 76dc7eb8 | Baileys Latte (M) | QRIS | 2026-06-09T17:54:40+00:00
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
    '2026-06-09T17:54:40+00:00'
  ) RETURNING id
)
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

-- 1619a553 | Salted Caramel (M) | QRIS | 2026-06-09T17:54:48+00:00
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
    '2026-06-09T17:54:48+00:00'
  ) RETURNING id
)
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

-- 999e5dbb | Vanilla (M) | QRIS | 2026-06-09T17:56:12+00:00
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
    '2026-06-09T17:56:12+00:00'
  ) RETURNING id
)
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

-- 7d9dae3f | Baileys Latte (M) | QRIS | 2026-06-09T17:58:00+00:00
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
    '2026-06-09T17:58:00+00:00'
  ) RETURNING id
)
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

-- 871e7c9b | Baileys Latte (M) | QRIS | 2026-06-09T18:00:51+00:00
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
    '2026-06-09T18:00:51+00:00'
  ) RETURNING id
)
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

-- cbe043de | Baileys Latte (M) | QRIS | 2026-06-09T18:03:54+00:00
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
    '2026-06-09T18:03:54+00:00'
  ) RETURNING id
)
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

-- 1669770f | Gula Aren (M) | CASH | 2026-06-09T18:06:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-09T18:06:04+00:00'
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

-- 43f72afa | Butterscotch (M) | QRIS | 2026-06-09T18:06:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-09T18:06:33+00:00'
  ) RETURNING id
)
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

-- 61928b6f | Gula Aren (M) | CASH | 2026-06-09T18:06:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-09T18:06:46+00:00'
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

-- 0d0a6fdf | Butterscotch (M) | QRIS | 2026-06-09T18:06:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-09T18:06:57+00:00'
  ) RETURNING id
)
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

-- 4ac866af | Baileys Latte (M) | CASH | 2026-06-09T18:09:34+00:00
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
    '2026-06-09T18:09:34+00:00'
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

-- 7c42f8e0 | Baileys Latte (M) | QRIS | 2026-06-09T18:15:41+00:00
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
    '2026-06-09T18:15:41+00:00'
  ) RETURNING id
)
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

-- d72bc51a | Baileys Latte (M) | QRIS | 2026-06-09T18:16:48+00:00
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
    '2026-06-09T18:16:48+00:00'
  ) RETURNING id
)
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

-- 59dc9ca1 | Gula Aren (M) | QRIS | 2026-06-09T18:16:52+00:00
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
    '2026-06-09T18:16:52+00:00'
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

-- ac2c34e0 | Butterscotch (M) | QRIS | 2026-06-09T18:16:58+00:00
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
    '2026-06-09T18:16:58+00:00'
  ) RETURNING id
)
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

-- 38b00d4a | Gula Aren (M) | QRIS | 2026-06-09T18:17:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-09T18:17:56+00:00'
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

-- 5d30f958 | Butterscotch (M) | QRIS | 2026-06-09T18:18:29+00:00
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
    '2026-06-09T18:18:29+00:00'
  ) RETURNING id
)
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

-- 96bc8bd5 | Salted Caramel (M) | CASH | 2026-06-09T18:24:30+00:00
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
    '2026-06-09T18:24:30+00:00'
  ) RETURNING id
)
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

-- 5210c87f | Baileys Latte (M) | QRIS | 2026-06-09T18:24:39+00:00
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
    '2026-06-09T18:24:39+00:00'
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

-- 1062c170 | Gula Aren (M) | QRIS | 2026-06-09T18:26:01+00:00
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
    '2026-06-09T18:26:01+00:00'
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

-- 5400ebdb | Gula Aren (M) | CASH | 2026-06-09T18:27:20+00:00
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
    '2026-06-09T18:27:20+00:00'
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

-- da378bc8 | Butterscotch (M) | CASH | 2026-06-09T18:27:33+00:00
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
    '2026-06-09T18:27:33+00:00'
  ) RETURNING id
)
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

-- a5488b74 | Vanilla (M) | CASH | 2026-06-09T18:27:37+00:00
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
    '2026-06-09T18:27:37+00:00'
  ) RETURNING id
)
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

-- 3ef55129 | Salted Caramel (M) | CASH | 2026-06-09T18:27:47+00:00
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
    '2026-06-09T18:27:47+00:00'
  ) RETURNING id
)
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

-- ffb81392 | Baileys Latte (M) | QRIS | 2026-06-09T18:28:01+00:00
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
    '2026-06-09T18:28:01+00:00'
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

-- 5bea6f94 | Hazelnut (M) | CASH | 2026-06-09T18:27:59+00:00
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
    '2026-06-09T18:27:59+00:00'
  ) RETURNING id
)
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

-- 0de55f5f | Butterscotch (M) | QRIS | 2026-06-09T18:28:07+00:00
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
    '2026-06-09T18:28:07+00:00'
  ) RETURNING id
)
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

-- 37ba8a67 | Cold Brew (M) | CASH | 2026-06-09T18:28:08+00:00
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
    '2026-06-09T18:28:08+00:00'
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

-- 7405a6d9 | Baileys Latte (M) | CASH | 2026-06-09T18:28:18+00:00
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
    '2026-06-09T18:28:18+00:00'
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

-- 689f9a97 | Salted Caramel (M) | CASH | 2026-06-09T18:29:23+00:00
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
    '2026-06-09T18:29:23+00:00'
  ) RETURNING id
)
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

-- 86d4c7d7 | Baileys Latte (M) | QRIS | 2026-06-09T18:31:04+00:00
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
    '2026-06-09T18:31:04+00:00'
  ) RETURNING id
)
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

-- 671df9ae | Butterscotch (M) | CASH | 2026-06-09T18:40:58+00:00
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
    '2026-06-09T18:40:58+00:00'
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

-- 0312a00c | Baileys Latte (M) | QRIS | 2026-06-09T18:44:31+00:00
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
    '2026-06-09T18:44:31+00:00'
  ) RETURNING id
)
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

-- 15b777ff | Gula Aren (M) | QRIS | 2026-06-09T18:55:33+00:00
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
    '2026-06-09T18:55:33+00:00'
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

-- 64c872e4 | Butterscotch (M) | QRIS | 2026-06-09T18:56:47+00:00
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
    '2026-06-09T18:56:47+00:00'
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

-- af3e18a9 | Butterscotch (M) | CASH | 2026-06-09T19:26:04+00:00
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
    '2026-06-09T19:26:04+00:00'
  ) RETURNING id
)
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

-- c7b86867 | Salted Caramel (M) | CASH | 2026-06-09T19:26:10+00:00
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
    '2026-06-09T19:26:10+00:00'
  ) RETURNING id
)
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

-- c8808129 | Gula Aren (M) | CASH | 2026-06-09T19:33:27+00:00
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
    '2026-06-09T19:33:27+00:00'
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

-- 52a3e387 | Baileys Latte (M) | CASH | 2026-06-09T19:33:53+00:00
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
    '2026-06-09T19:33:53+00:00'
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

-- 4f30ff0e | Baileys Latte (M) | CASH | 2026-06-09T19:34:06+00:00
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
    '2026-06-09T19:34:06+00:00'
  ) RETURNING id
)
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

-- 2334a45b | Salted Caramel (M) | CASH | 2026-06-09T19:34:16+00:00
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
    '2026-06-09T19:34:16+00:00'
  ) RETURNING id
)
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

-- 5ef97df8 | Vanilla (M) | CASH | 2026-06-09T19:34:37+00:00
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
    '2026-06-09T19:34:37+00:00'
  ) RETURNING id
)
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

-- e6fcd79f | Baileys Latte (M) | CASH | 2026-06-09T19:37:33+00:00
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
    '2026-06-09T19:37:33+00:00'
  ) RETURNING id
)
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

-- 6dcddea7 | Salted Caramel (M) | CASH | 2026-06-09T19:37:48+00:00
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
    '2026-06-09T19:37:48+00:00'
  ) RETURNING id
)
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

-- 69a3e7f0 | Hazelnut (M) | CASH | 2026-06-09T19:37:56+00:00
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
    '2026-06-09T19:37:56+00:00'
  ) RETURNING id
)
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

-- a6e579f5 | Butterscotch (M) | CASH | 2026-06-09T19:40:18+00:00
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
    '2026-06-09T19:40:18+00:00'
  ) RETURNING id
)
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

-- bb5f7bac | Salted Caramel (M) | CASH | 2026-06-09T19:49:08+00:00
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
    '2026-06-09T19:49:08+00:00'
  ) RETURNING id
)
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

-- 2506b6c4 | Butterscotch (M) | CASH | 2026-06-09T19:50:09+00:00
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
    '2026-06-09T19:50:09+00:00'
  ) RETURNING id
)
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

-- bd135773 | Salted Caramel (M) | QRIS | 2026-06-09T19:52:42+00:00
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
    '2026-06-09T19:52:42+00:00'
  ) RETURNING id
)
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

-- 3db46947 | Baileys Latte (M) | QRIS | 2026-06-09T19:52:50+00:00
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
    '2026-06-09T19:52:50+00:00'
  ) RETURNING id
)
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

-- 18828019 | Hazelnut (M) | CASH | 2026-06-09T19:52:50+00:00
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
    '2026-06-09T19:52:50+00:00'
  ) RETURNING id
)
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

-- 2e86c284 | Baileys Latte (M) | CASH | 2026-06-09T19:57:34+00:00
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
    '2026-06-09T19:57:34+00:00'
  ) RETURNING id
)
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

-- 198cd99a | Butterscotch (M) | CASH | 2026-06-09T20:01:30+00:00
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
    '2026-06-09T20:01:30+00:00'
  ) RETURNING id
)
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

-- 32ad49e4 | Baileys Latte (M) | CASH | 2026-06-09T20:03:54+00:00
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
    '2026-06-09T20:03:54+00:00'
  ) RETURNING id
)
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

-- 5d4af392 | Butterscotch (M) | CASH | 2026-06-09T20:04:36+00:00
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
    '2026-06-09T20:04:36+00:00'
  ) RETURNING id
)
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

-- f76499ac | Gula Aren (M) | CASH | 2026-06-09T20:04:42+00:00
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
    '2026-06-09T20:04:42+00:00'
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

-- 1694f9d4 | Butterscotch (M) | QRIS | 2026-06-09T20:06:31+00:00
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
    '2026-06-09T20:06:31+00:00'
  ) RETURNING id
)
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

-- df370eb7 | Gula Aren (M) | QRIS | 2026-06-09T20:13:04+00:00
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
    '2026-06-09T20:13:04+00:00'
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

-- e7e43328 | Gula Aren (M) | CASH | 2026-06-09T20:27:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-09T20:27:24+00:00'
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

-- 6fd18f9b | Butterscotch (M) | CASH | 2026-06-09T20:27:47+00:00
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
    '2026-06-09T20:27:47+00:00'
  ) RETURNING id
)
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

-- 538acfcf | Baileys Latte (M) | CASH | 2026-06-09T20:27:52+00:00
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
    '2026-06-09T20:27:52+00:00'
  ) RETURNING id
)
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

-- 5b4dc8a0 | Butterscotch (M) | QRIS | 2026-06-09T20:32:27+00:00
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
    '2026-06-09T20:32:27+00:00'
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

-- f4e15949 | Gula Aren (M) | CASH | 2026-06-09T20:33:05+00:00
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
    '2026-06-09T20:33:05+00:00'
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

-- 1f1b4edc | Butterscotch (M) | CASH | 2026-06-09T20:33:18+00:00
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
    '2026-06-09T20:33:18+00:00'
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

-- e48a654e | Vanilla (M) | CASH | 2026-06-09T20:33:27+00:00
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
    '2026-06-09T20:33:27+00:00'
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

-- 4c3ceffb | Salted Caramel (M) | CASH | 2026-06-09T20:33:36+00:00
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
    '2026-06-09T20:33:36+00:00'
  ) RETURNING id
)
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

-- a48fd9ba | Hazelnut (M) | CASH | 2026-06-09T20:33:45+00:00
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
    '2026-06-09T20:33:45+00:00'
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

-- 6987b03b | Baileys Latte (M) | CASH | 2026-06-09T20:34:01+00:00
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
    13725.00,
    '2026-06-09T20:34:01+00:00'
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

-- 6520f29e | Butterscotch (M) | QRIS | 2026-06-09T20:36:02+00:00
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
    '2026-06-09T20:36:02+00:00'
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

-- f56f4471 | Baileys Latte (M) | QRIS | 2026-06-09T20:42:54+00:00
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
    '2026-06-09T20:42:54+00:00'
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

-- 97f76993 | Butterscotch (M) | QRIS | 2026-06-09T20:49:55+00:00
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
    '2026-06-09T20:49:55+00:00'
  ) RETURNING id
)
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

-- 9a115e41 | Butterscotch (M) | QRIS | 2026-06-09T20:53:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    150000.00,
    0.00,
    0.00,
    84437.00,
    '2026-06-09T20:53:39+00:00'
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
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7b3300c2 | Vanilla (M) | QRIS | 2026-06-09T20:53:49+00:00
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
    '2026-06-09T20:53:49+00:00'
  ) RETURNING id
)
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

-- 2ca090f1 | Gula Aren (M) | QRIS | 2026-06-09T20:54:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-09T20:54:26+00:00'
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

-- fa488f7f | Gula Aren (M) | CASH | 2026-06-09T20:55:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-09T20:55:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0956325e | Salted Caramel (M) | CASH | 2026-06-09T20:55:26+00:00
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
    '2026-06-09T20:55:26+00:00'
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

-- ad3f774c | Cold Brew (M) | CASH | 2026-06-09T20:55:32+00:00
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
    '2026-06-09T20:55:32+00:00'
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

-- eb3f9c63 | Baileys Latte (M) | CASH | 2026-06-09T20:55:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '2026-06-09T20:55:43+00:00'
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

-- 1b98d032 | Vanilla (M) | QRIS | 2026-06-09T20:59:41+00:00
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
    '2026-06-09T20:59:41+00:00'
  ) RETURNING id
)
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

-- 4ea4871e | Hazelnut (M) | QRIS | 2026-06-09T21:07:07+00:00
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
    '2026-06-09T21:07:07+00:00'
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

-- f0e8d82b | Baileys Latte (M) | QRIS | 2026-06-09T21:08:37+00:00
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
    '2026-06-09T21:08:37+00:00'
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

-- 25283243 | Butterscotch (M) | QRIS | 2026-06-09T21:09:10+00:00
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
    '2026-06-09T21:09:10+00:00'
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

-- abd03409 | Gula Aren (M) | CASH | 2026-06-09T21:09:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-09T21:09:42+00:00'
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

-- 4cc98f52 | Butterscotch (M) | CASH | 2026-06-09T21:09:47+00:00
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
    '2026-06-09T21:09:47+00:00'
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

-- 6d8eac1f | Vanilla (M) | CASH | 2026-06-09T21:09:57+00:00
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
    21109.00,
    '2026-06-09T21:09:57+00:00'
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

-- ff276ff5 | Salted Caramel (M) | CASH | 2026-06-09T21:14:15+00:00
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
    '2026-06-09T21:14:15+00:00'
  ) RETURNING id
)
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

-- 2f553c7d | Gula Aren (M) | CASH | 2026-06-09T21:14:33+00:00
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
    '2026-06-09T21:14:33+00:00'
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

-- a73b0a3f | Gula Aren (M) | CASH | 2026-06-09T21:15:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-09T21:15:39+00:00'
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

-- df383bd4 | Butterscotch (M) | CASH | 2026-06-09T21:17:20+00:00
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
    '2026-06-09T21:17:20+00:00'
  ) RETURNING id
)
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

-- b6e22df9 | Baileys Latte (M) | CASH | 2026-06-09T21:17:33+00:00
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
    '2026-06-09T21:17:33+00:00'
  ) RETURNING id
)
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

-- 39438540 | Vanilla (M) | QRIS | 2026-06-09T21:18:45+00:00
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
    '2026-06-09T21:18:45+00:00'
  ) RETURNING id
)
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

-- 5168311e | Butterscotch (M) | CASH | 2026-06-09T21:21:14+00:00
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
    '2026-06-09T21:21:14+00:00'
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

-- 355150dc | Salted Caramel (M) | CASH | 2026-06-09T21:21:20+00:00
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
    '2026-06-09T21:21:20+00:00'
  ) RETURNING id
)
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

-- e657aa43 | Gula Aren (M) | QRIS | 2026-06-09T21:27:38+00:00
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
    '2026-06-09T21:27:38+00:00'
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

-- 2962bce6 | Butterscotch (M) | QRIS | 2026-06-09T21:46:17+00:00
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
    '2026-06-09T21:46:17+00:00'
  ) RETURNING id
)
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

-- ced54f10 | Baileys Latte (M) | CASH | 2026-06-09T21:46:25+00:00
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
    '2026-06-09T21:46:25+00:00'
  ) RETURNING id
)
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

-- c8295622 | Baileys Latte (M) | CASH | 2026-06-09T21:53:59+00:00
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
    '2026-06-09T21:53:59+00:00'
  ) RETURNING id
)
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

-- 22f9eae7 | Vanilla (M) | QRIS | 2026-06-09T21:54:11+00:00
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
    '2026-06-09T21:54:11+00:00'
  ) RETURNING id
)
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

-- cfccfd34 | Baileys Latte (M) | QRIS | 2026-06-09T22:00:53+00:00
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
    '2026-06-09T22:00:53+00:00'
  ) RETURNING id
)
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

-- ff989854 | Butterscotch (M) | CASH | 2026-06-09T22:09:28+00:00
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
    '2026-06-09T22:09:28+00:00'
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

-- 38759bb7 | Butterscotch (M) | CASH | 2026-06-09T22:10:02+00:00
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
    '2026-06-09T22:10:02+00:00'
  ) RETURNING id
)
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

-- fca5d0f6 | Butterscotch 1 ltr | QRIS | 2026-06-09T22:17:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    90000.00,
    0.00,
    0.00,
    44488.00,
    '2026-06-09T22:17:44+00:00'
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

-- 57ed8e50 | Butterscotch (M) | QRIS | 2026-06-09T22:21:59+00:00
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
    '2026-06-09T22:21:59+00:00'
  ) RETURNING id
)
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

-- 7e5eb611 | Vanilla (M) | QRIS | 2026-06-09T22:28:49+00:00
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
    '2026-06-09T22:28:49+00:00'
  ) RETURNING id
)
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

-- 63ef1309 | Baileys Latte (M) | QRIS | 2026-06-09T22:28:54+00:00
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
    '2026-06-09T22:28:54+00:00'
  ) RETURNING id
)
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

-- d23e358d | Hazelnut (M) | CASH | 2026-06-09T22:42:21+00:00
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
    '2026-06-09T22:42:21+00:00'
  ) RETURNING id
)
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

-- b76dd125 | Baileys Latte (M) | CASH | 2026-06-09T22:42:28+00:00
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
    6862.00,
    '2026-06-09T22:42:28+00:00'
  ) RETURNING id
)
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

-- b8963a4c | Baileys Latte (M) | QRIS | 2026-06-10T08:55:09+00:00
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
    '2026-06-10T08:55:09+00:00'
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

-- fa8a57e2 | Gula Aren (M) | QRIS | 2026-06-10T08:55:14+00:00
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
    '2026-06-10T08:55:14+00:00'
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

-- beac15dd | Gula Aren (M) | CASH | 2026-06-10T09:01:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T09:01:54+00:00'
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

-- d67f4036 | Gula Aren (M) | QRIS | 2026-06-10T09:14:13+00:00
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
    '2026-06-10T09:14:13+00:00'
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

-- d1e85355 | Gula Aren (M) | QRIS | 2026-06-10T09:14:22+00:00
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
    '2026-06-10T09:14:22+00:00'
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

-- 0fd3043e | Salted Caramel (M) | QRIS | 2026-06-10T09:14:26+00:00
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
    '2026-06-10T09:14:26+00:00'
  ) RETURNING id
)
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

-- 7414ab5b | Gula Aren (M) | QRIS | 2026-06-10T09:14:34+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-10T09:14:34+00:00'
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

-- 5be62745 | Gula Aren (M) | QRIS | 2026-06-10T09:45:45+00:00
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
    '2026-06-10T09:45:45+00:00'
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

-- 61fb1559 | Gula Aren (M) | CASH | 2026-06-10T09:49:02+00:00
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
    '2026-06-10T09:49:02+00:00'
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

-- 263307db | Butterscotch (M) | CASH | 2026-06-10T10:02:50+00:00
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
    '2026-06-10T10:02:50+00:00'
  ) RETURNING id
)
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

-- 7fd7dff3 | Gula Aren (M) | QRIS | 2026-06-10T10:23:05+00:00
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
    '2026-06-10T10:23:05+00:00'
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

-- 99a4d82f | Salted Caramel (M) | QRIS | 2026-06-10T10:39:20+00:00
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
    '2026-06-10T10:39:20+00:00'
  ) RETURNING id
)
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

-- 39e493d6 | Baileys Latte (M) | QRIS | 2026-06-10T10:52:04+00:00
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
    '2026-06-10T10:52:04+00:00'
  ) RETURNING id
)
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

-- 2589baa0 | Gula Aren (M) | CASH | 2026-06-10T10:54:57+00:00
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
    '2026-06-10T10:54:57+00:00'
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

-- 50a81b76 | Baileys Latte (M) | CASH | 2026-06-10T10:55:07+00:00
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
    6862.00,
    '2026-06-10T10:55:07+00:00'
  ) RETURNING id
)
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

-- a4f09fb7 | Gula Aren (M) | QRIS | 2026-06-10T11:00:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T11:00:05+00:00'
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

-- ab63f122 | Baileys Latte (M) | CASH | 2026-06-10T11:00:25+00:00
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
    '2026-06-10T11:00:25+00:00'
  ) RETURNING id
)
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

-- 544d9951 | Gula Aren (M) | CASH | 2026-06-10T11:01:50+00:00
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
    '2026-06-10T11:01:50+00:00'
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

-- 8d05aad8 | Gula Aren (M) | CASH | 2026-06-10T11:03:40+00:00
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
    '2026-06-10T11:03:40+00:00'
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

-- b4ca0d0b | Butterscotch (M) | QRIS | 2026-06-10T11:04:23+00:00
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
    14073.00,
    '2026-06-10T11:04:23+00:00'
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

-- 084d9158 | Butterscotch (M) | QRIS | 2026-06-10T11:04:46+00:00
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
    '2026-06-10T11:04:46+00:00'
  ) RETURNING id
)
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

-- 1fe7914d | Gula Aren (M) | QRIS | 2026-06-10T11:04:54+00:00
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
    '2026-06-10T11:04:54+00:00'
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

-- a2bc03c4 | Baileys Latte (M) | QRIS | 2026-06-10T11:05:23+00:00
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
    '2026-06-10T11:05:23+00:00'
  ) RETURNING id
)
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

-- 30b62906 | Gula Aren (M) | QRIS | 2026-06-10T09:58:52+00:00
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
    '2026-06-10T09:58:52+00:00'
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

-- 58d57fff | Salted Caramel (M) | QRIS | 2026-06-10T09:58:59+00:00
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
    '2026-06-10T09:58:59+00:00'
  ) RETURNING id
)
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

-- 8f19ce51 | Butterscotch (M) | CASH | 2026-06-10T11:06:56+00:00
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
    '2026-06-10T11:06:56+00:00'
  ) RETURNING id
)
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

-- d6f1fe7d | Gula Aren (M) | CASH | 2026-06-10T11:07:24+00:00
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
    '2026-06-10T11:07:24+00:00'
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

-- 4c2ff1dc | Gula Aren (M) | QRIS | 2026-06-10T11:07:36+00:00
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
    '2026-06-10T11:07:36+00:00'
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

-- 087b60b9 | Baileys Latte (M) | CASH | 2026-06-10T11:10:39+00:00
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
    '2026-06-10T11:10:39+00:00'
  ) RETURNING id
)
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

-- 15abbed1 | Gula Aren (M) | QRIS | 2026-06-10T11:16:05+00:00
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
    '2026-06-10T11:16:05+00:00'
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

-- 1f16c109 | Gula Aren (M) | CASH | 2026-06-10T11:16:15+00:00
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
    '2026-06-10T11:16:15+00:00'
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

-- 1b32cfd0 | Gula Aren (M) | CASH | 2026-06-10T11:19:49+00:00
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
    '2026-06-10T11:19:49+00:00'
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

-- 364c0542 | Gula Aren (M) | QRIS | 2026-06-10T11:19:57+00:00
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
    '2026-06-10T11:19:57+00:00'
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

-- 60c1ddac | Butterscotch (M) | QRIS | 2026-06-10T11:20:06+00:00
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
    '2026-06-10T11:20:06+00:00'
  ) RETURNING id
)
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

-- fc9c1185 | Hazelnut (M) | CASH | 2026-06-10T11:24:00+00:00
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
    '2026-06-10T11:24:00+00:00'
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

-- d6f183f5 | Baileys Latte (M) | CASH | 2026-06-10T11:32:30+00:00
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
    '2026-06-10T11:32:30+00:00'
  ) RETURNING id
)
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

-- a9b42e5a | Butterscotch (M) | CASH | 2026-06-10T11:33:42+00:00
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
    '2026-06-10T11:33:42+00:00'
  ) RETURNING id
)
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

-- 3f773651 | Baileys Latte (M) | CASH | 2026-06-10T11:36:35+00:00
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
    '2026-06-10T11:36:35+00:00'
  ) RETURNING id
)
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

-- 27c1b6ef | Gula Aren (M) | QRIS | 2026-06-10T11:39:14+00:00
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
    '2026-06-10T11:39:14+00:00'
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

-- 1f2b021f | Butterscotch (M) | CASH | 2026-06-10T11:39:25+00:00
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
    '2026-06-10T11:39:25+00:00'
  ) RETURNING id
)
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

-- 6973f94d | Gula Aren (M) | CASH | 2026-06-10T11:46:52+00:00
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
    '2026-06-10T11:46:52+00:00'
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

-- 673640c3 | Vanilla (M) | QRIS | 2026-06-10T11:46:56+00:00
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
    '2026-06-10T11:46:56+00:00'
  ) RETURNING id
)
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

-- 71a6b458 | Baileys Latte (M) | CASH | 2026-06-10T11:47:00+00:00
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
    '2026-06-10T11:47:00+00:00'
  ) RETURNING id
)
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

-- aaa25527 | Vanilla (M) | QRIS | 2026-06-10T11:51:43+00:00
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
    '2026-06-10T11:51:43+00:00'
  ) RETURNING id
)
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

-- 96043cfd | Gula Aren (M) | CASH | 2026-06-10T11:53:15+00:00
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
    '2026-06-10T11:53:15+00:00'
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

-- 1f03741e | Baileys Latte (M) | QRIS | 2026-06-10T11:55:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-10T11:55:20+00:00'
  ) RETURNING id
)
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

-- 02fb8012 | Gula Aren (M) | QRIS | 2026-06-10T11:55:46+00:00
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
    '2026-06-10T11:55:46+00:00'
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

-- d81ec2cf | Salted Caramel (M) | QRIS | 2026-06-10T11:56:33+00:00
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
    '2026-06-10T11:56:33+00:00'
  ) RETURNING id
)
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

-- 7b1ffd44 | Baileys Latte (M) | CASH | 2026-06-10T12:00:43+00:00
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
    20587.00,
    '2026-06-10T12:00:43+00:00'
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

-- 0c9a93fc | Vanilla (M) | QRIS | 2026-06-10T12:07:12+00:00
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
    '2026-06-10T12:07:12+00:00'
  ) RETURNING id
)
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

-- b46d1589 | Butterscotch (M) | QRIS | 2026-06-10T12:07:18+00:00
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
    '2026-06-10T12:07:18+00:00'
  ) RETURNING id
)
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

-- f1b3e8b8 | Salted Caramel (M) | QRIS | 2026-06-10T12:07:24+00:00
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
    '2026-06-10T12:07:24+00:00'
  ) RETURNING id
)
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

-- 5bd188db | Butterscotch (M) | QRIS | 2026-06-10T12:10:15+00:00
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
    '2026-06-10T12:10:15+00:00'
  ) RETURNING id
)
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

-- 7b8f80df | Hazelnut (M) | QRIS | 2026-06-10T12:10:26+00:00
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
    '2026-06-10T12:10:26+00:00'
  ) RETURNING id
)
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

-- 2b2f49de | Baileys Latte (M) | QRIS | 2026-06-10T12:10:32+00:00
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
    '2026-06-10T12:10:32+00:00'
  ) RETURNING id
)
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

-- d5973668 | Gula Aren (M) | CASH | 2026-06-10T12:12:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-10T12:12:32+00:00'
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

-- c5436657 | Baileys Latte (M) | CASH | 2026-06-10T12:12:39+00:00
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
    '2026-06-10T12:12:39+00:00'
  ) RETURNING id
)
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

-- 7b3186f6 | Gula Aren (M) | QRIS | 2026-06-10T12:20:45+00:00
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
    '2026-06-10T12:20:45+00:00'
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

-- 3d4d281a | Butterscotch (M) | CASH | 2026-06-10T12:23:12+00:00
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
    '2026-06-10T12:23:12+00:00'
  ) RETURNING id
)
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

-- 559f8969 | Salted Caramel (M) | CASH | 2026-06-10T12:27:23+00:00
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
    '2026-06-10T12:27:23+00:00'
  ) RETURNING id
)
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

-- fb77fdda | Gula Aren (M) | QRIS | 2026-06-10T12:27:50+00:00
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
    '2026-06-10T12:27:50+00:00'
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

-- 3c14ce8e | Gula Aren (M) | CASH | 2026-06-10T12:27:56+00:00
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
    '2026-06-10T12:27:56+00:00'
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

-- 920df4d4 | Gula Aren (M) | CASH | 2026-06-10T12:30:14+00:00
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
    '2026-06-10T12:30:14+00:00'
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

-- b8212baa | Gula Aren (M) | QRIS | 2026-06-10T12:30:39+00:00
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
    '2026-06-10T12:30:39+00:00'
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

-- e9ff4dc3 | Baileys Latte (M) | QRIS | 2026-06-10T12:30:48+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-10T12:30:48+00:00'
  ) RETURNING id
)
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

-- 0fc21f62 | Salted Caramel (M) | CASH | 2026-06-10T12:32:09+00:00
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
    '2026-06-10T12:32:09+00:00'
  ) RETURNING id
)
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

-- 2e1999ca | Vanilla (M) | QRIS | 2026-06-10T12:32:18+00:00
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
    '2026-06-10T12:32:18+00:00'
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

-- 0ef67b24 | Baileys Latte (M) | QRIS | 2026-06-10T12:32:37+00:00
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
    '2026-06-10T12:32:37+00:00'
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

-- e9ae5637 | Gula Aren (M) | QRIS | 2026-06-10T12:33:55+00:00
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
    '2026-06-10T12:33:55+00:00'
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

-- 1f5495c4 | Baileys Latte (M) | CASH | 2026-06-10T12:36:01+00:00
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
    '2026-06-10T12:36:01+00:00'
  ) RETURNING id
)
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

-- e2038266 | Salted Caramel (M) | CASH | 2026-06-10T12:36:39+00:00
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
    '2026-06-10T12:36:39+00:00'
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

-- e5dc9a90 | Cold Brew (M) | CASH | 2026-06-10T12:39:33+00:00
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
    '2026-06-10T12:39:33+00:00'
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

-- 22abf3ce | Gula Aren (M) | QRIS | 2026-06-10T12:44:48+00:00
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
    '2026-06-10T12:44:48+00:00'
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

-- 864a6bfe | Butterscotch (M) | CASH | 2026-06-10T12:47:15+00:00
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
    '2026-06-10T12:47:15+00:00'
  ) RETURNING id
)
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

-- e58a21c3 | Butterscotch (M) | QRIS | 2026-06-10T12:52:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-10T12:52:25+00:00'
  ) RETURNING id
)
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

-- 36d787a3 | Gula Aren (M) | CASH | 2026-06-10T12:52:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T12:52:32+00:00'
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

-- 99f6f13f | Butterscotch (M) | QRIS | 2026-06-10T12:56:12+00:00
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
    '2026-06-10T12:56:12+00:00'
  ) RETURNING id
)
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

-- cd3c502e | Butterscotch (M) | QRIS | 2026-06-10T12:57:42+00:00
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
    '2026-06-10T12:57:42+00:00'
  ) RETURNING id
)
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

-- e6e81d22 | Hazelnut (M) | QRIS | 2026-06-10T13:00:09+00:00
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
    '2026-06-10T13:00:09+00:00'
  ) RETURNING id
)
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

-- 4e9d4eb0 | Butterscotch (M) | QRIS | 2026-06-10T13:01:00+00:00
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
    '2026-06-10T13:01:00+00:00'
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

-- fa692e30 | Butterscotch (M) | CASH | 2026-06-10T13:01:09+00:00
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
    '2026-06-10T13:01:09+00:00'
  ) RETURNING id
)
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

-- aaa40aef | Baileys Latte (M) | QRIS | 2026-06-10T13:07:06+00:00
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
    '2026-06-10T13:07:06+00:00'
  ) RETURNING id
)
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

-- 23a93f7c | Butterscotch (M) | CASH | 2026-06-10T13:12:05+00:00
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
    '2026-06-10T13:12:05+00:00'
  ) RETURNING id
)
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

-- d87838a8 | Gula Aren (M) | QRIS | 2026-06-10T13:12:13+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T13:12:13+00:00'
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

-- 95901067 | Vanilla (M) | CASH | 2026-06-10T13:12:22+00:00
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
    '2026-06-10T13:12:22+00:00'
  ) RETURNING id
)
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

-- d2091e46 | Baileys Latte (M) | QRIS | 2026-06-10T13:15:09+00:00
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
    '2026-06-10T13:15:09+00:00'
  ) RETURNING id
)
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

-- 3e09b6c4 | Butterscotch (M) | CASH | 2026-06-10T13:15:16+00:00
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
    '2026-06-10T13:15:16+00:00'
  ) RETURNING id
)
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

-- 1f938190 | Baileys Latte (M) | QRIS | 2026-06-10T13:15:59+00:00
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
    '2026-06-10T13:15:59+00:00'
  ) RETURNING id
)
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

-- 89c5cea7 | Hazelnut (M) | CASH | 2026-06-10T13:21:00+00:00
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
    '2026-06-10T13:21:00+00:00'
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

-- 6767b922 | Vanilla (M) | CASH | 2026-06-10T13:21:56+00:00
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
    '2026-06-10T13:21:56+00:00'
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

-- df530c7e | Gula Aren (M) | CASH | 2026-06-10T13:22:40+00:00
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
    '2026-06-10T13:22:40+00:00'
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

-- 195798eb | Gula Aren (M) | QRIS | 2026-06-10T13:28:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T13:28:32+00:00'
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

-- 53673fb3 | Gula Aren (M) | QRIS | 2026-06-10T13:29:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T13:29:08+00:00'
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

-- df0358c0 | Butterscotch (M) | QRIS | 2026-06-10T13:29:33+00:00
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
    '2026-06-10T13:29:33+00:00'
  ) RETURNING id
)
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

-- 379b0401 | Gula Aren (M) | QRIS | 2026-06-10T13:29:44+00:00
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
    '2026-06-10T13:29:44+00:00'
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

-- 2fdd096f | Gula Aren (M) | QRIS | 2026-06-10T13:29:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-10T13:29:52+00:00'
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

-- 50a56b32 | Baileys Latte (M) | QRIS | 2026-06-10T13:30:06+00:00
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
    '2026-06-10T13:30:06+00:00'
  ) RETURNING id
)
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

-- d89b3ae5 | Butterscotch (M) | QRIS | 2026-06-10T13:32:57+00:00
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
    '2026-06-10T13:32:57+00:00'
  ) RETURNING id
)
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

-- 726920eb | Baileys Latte (M) | QRIS | 2026-06-10T13:33:11+00:00
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
    '2026-06-10T13:33:11+00:00'
  ) RETURNING id
)
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

-- 9ab85046 | Baileys Latte (M) | CASH | 2026-06-10T13:35:26+00:00
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
    '2026-06-10T13:35:26+00:00'
  ) RETURNING id
)
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

-- 64ebf875 | Butterscotch (M) | QRIS | 2026-06-10T13:43:17+00:00
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
    '2026-06-10T13:43:17+00:00'
  ) RETURNING id
)
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

-- 347f75fd | Butterscotch (M) | CASH | 2026-06-10T13:49:21+00:00
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
    '2026-06-10T13:49:21+00:00'
  ) RETURNING id
)
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

-- 72b794bd | Baileys Latte (M) | CASH | 2026-06-10T13:49:30+00:00
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
    6862.00,
    '2026-06-10T13:49:30+00:00'
  ) RETURNING id
)
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

-- a577857b | Gula Aren (M) | CASH | 2026-06-10T13:49:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T13:49:37+00:00'
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

-- f578d782 | Butterscotch (M) | CASH | 2026-06-10T13:54:22+00:00
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
    '2026-06-10T13:54:22+00:00'
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

-- 54a30b35 | Butterscotch (M) | QRIS | 2026-06-10T13:59:29+00:00
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
    '2026-06-10T13:59:29+00:00'
  ) RETURNING id
)
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

-- 9015c7ac | Vanilla (M) | CASH | 2026-06-10T13:59:35+00:00
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
    '2026-06-10T13:59:35+00:00'
  ) RETURNING id
)
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

-- c8032ce0 | Salted Caramel (M) | CASH | 2026-06-10T13:59:55+00:00
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
    '2026-06-10T13:59:55+00:00'
  ) RETURNING id
)
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

-- ef587360 | Butterscotch (M) | CASH | 2026-06-10T14:07:39+00:00
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
    '2026-06-10T14:07:39+00:00'
  ) RETURNING id
)
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

-- df989bf3 | Butterscotch (M) | QRIS | 2026-06-10T14:14:41+00:00
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
    '2026-06-10T14:14:41+00:00'
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

-- 969f8d15 | Baileys Latte (M) | CASH | 2026-06-10T14:14:51+00:00
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
    '2026-06-10T14:14:51+00:00'
  ) RETURNING id
)
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

-- e82acc03 | Hazelnut (M) | QRIS | 2026-06-10T14:16:34+00:00
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
    '2026-06-10T14:16:34+00:00'
  ) RETURNING id
)
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

-- 6055dbe8 | Vanilla (M) | QRIS | 2026-06-10T14:18:17+00:00
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
    '2026-06-10T14:18:17+00:00'
  ) RETURNING id
)
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

-- 341d051c | Vanilla (M) | QRIS | 2026-06-10T14:41:32+00:00
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
    '2026-06-10T14:41:32+00:00'
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

-- e5217784 | Salted Caramel (M) | QRIS | 2026-06-10T14:41:38+00:00
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
    '2026-06-10T14:41:38+00:00'
  ) RETURNING id
)
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

-- 65b5ac72 | Butterscotch (M) | QRIS | 2026-06-10T14:42:27+00:00
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
    '2026-06-10T14:42:27+00:00'
  ) RETURNING id
)
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

-- 9137df58 | Gula Aren (M) | QRIS | 2026-06-10T14:45:09+00:00
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
    '2026-06-10T14:45:09+00:00'
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

-- 8ca05889 | Gula Aren (M) | CASH | 2026-06-10T14:55:21+00:00
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
    '2026-06-10T14:55:21+00:00'
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

-- 3a2e0729 | Gula Aren (M) | QRIS | 2026-06-10T14:56:55+00:00
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
    '2026-06-10T14:56:55+00:00'
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

-- e6148a42 | Gula Aren (M) | CASH | 2026-06-10T14:58:33+00:00
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
    '2026-06-10T14:58:33+00:00'
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

-- 4cf908a5 | Gula Aren (M) | CASH | 2026-06-10T14:59:10+00:00
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
    '2026-06-10T14:59:10+00:00'
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

-- 5d5ce7f1 | Salted Caramel (M) | CASH | 2026-06-10T15:06:03+00:00
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
    '2026-06-10T15:06:03+00:00'
  ) RETURNING id
)
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

-- 67f3ed33 | Vanilla (M) | QRIS | 2026-06-10T15:06:28+00:00
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
    '2026-06-10T15:06:28+00:00'
  ) RETURNING id
)
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

-- b466bf84 | Vanilla (M) | CASH | 2026-06-10T15:07:32+00:00
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
    '2026-06-10T15:07:32+00:00'
  ) RETURNING id
)
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

-- e3a21ee1 | Baileys Latte (M) | QRIS | 2026-06-10T15:09:44+00:00
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
    '2026-06-10T15:09:44+00:00'
  ) RETURNING id
)
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

-- a1b12d89 | Butterscotch (M) | QRIS | 2026-06-10T15:14:00+00:00
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
    '2026-06-10T15:14:00+00:00'
  ) RETURNING id
)
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

-- 06427b38 | Gula Aren (M) | QRIS | 2026-06-10T15:17:43+00:00
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
    '2026-06-10T15:17:43+00:00'
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

-- a8165ad6 | Butterscotch (M) | CASH | 2026-06-10T15:21:07+00:00
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
    '2026-06-10T15:21:07+00:00'
  ) RETURNING id
)
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

-- a3aab94a | Salted Caramel (M) | CASH | 2026-06-10T15:21:13+00:00
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
    '2026-06-10T15:21:13+00:00'
  ) RETURNING id
)
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

-- 7f052f2a | Butterscotch (M) | QRIS | 2026-06-10T15:24:07+00:00
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
    '2026-06-10T15:24:07+00:00'
  ) RETURNING id
)
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

-- 51419d05 | Baileys Latte (M) | CASH | 2026-06-10T15:29:33+00:00
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
    '2026-06-10T15:29:33+00:00'
  ) RETURNING id
)
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

-- 93aee8c9 | Butterscotch (M) | QRIS | 2026-06-10T15:30:45+00:00
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
    14073.00,
    '2026-06-10T15:30:45+00:00'
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

-- 395cc180 | Butterscotch (M) | CASH | 2026-06-10T15:30:55+00:00
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
    '2026-06-10T15:30:55+00:00'
  ) RETURNING id
)
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

-- dd91ca25 | Baileys Latte (M) | CASH | 2026-06-10T15:31:07+00:00
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
    '2026-06-10T15:31:07+00:00'
  ) RETURNING id
)
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

-- 1d5f151c | Butterscotch (M) | QRIS | 2026-06-10T15:35:23+00:00
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
    '2026-06-10T15:35:23+00:00'
  ) RETURNING id
)
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

-- 19baca09 | Baileys Latte (M) | QRIS | 2026-06-10T15:35:51+00:00
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
    '2026-06-10T15:35:51+00:00'
  ) RETURNING id
)
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

-- 3f196ff3 | Butterscotch (M) | CASH | 2026-06-10T15:38:35+00:00
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
    '2026-06-10T15:38:35+00:00'
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

-- 694c3171 | Salted Caramel (M) | CASH | 2026-06-10T15:39:45+00:00
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
    '2026-06-10T15:39:45+00:00'
  ) RETURNING id
)
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

-- bfb66d2e | Baileys Latte (M) | QRIS | 2026-06-10T16:08:57+00:00
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
    '2026-06-10T16:08:57+00:00'
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

-- f44137f1 | Butterscotch (M) | CASH | 2026-06-10T16:11:28+00:00
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
    '2026-06-10T16:11:28+00:00'
  ) RETURNING id
)
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

-- 44c95b40 | Butterscotch (M) | CASH | 2026-06-10T16:14:09+00:00
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
    '2026-06-10T16:14:09+00:00'
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

-- 079ea464 | Butterscotch (M) | CASH | 2026-06-10T16:20:31+00:00
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
    '2026-06-10T16:20:31+00:00'
  ) RETURNING id
)
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

-- 9da3a20a | Butterscotch (M) | QRIS | 2026-06-10T16:28:04+00:00
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
    '2026-06-10T16:28:04+00:00'
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

-- 2b73e1be | Gula Aren (M) | CASH | 2026-06-10T16:28:52+00:00
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
    '2026-06-10T16:28:52+00:00'
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

-- 1e4d0b8a | Baileys Latte (M) | CASH | 2026-06-10T16:30:01+00:00
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
    '2026-06-10T16:30:01+00:00'
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

-- 0b74f13b | Baileys Latte (M) | QRIS | 2026-06-10T16:44:57+00:00
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
    '2026-06-10T16:44:57+00:00'
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

-- 31b2c294 | Gula Aren (M) | QRIS | 2026-06-10T16:44:24+00:00
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
    '2026-06-10T16:44:24+00:00'
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

-- d124b67d | Baileys Latte (M) | QRIS | 2026-06-10T16:47:28+00:00
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
    '2026-06-10T16:47:28+00:00'
  ) RETURNING id
)
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

-- a0917b59 | Butterscotch (M) | QRIS | 2026-06-10T16:48:10+00:00
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
    '2026-06-10T16:48:10+00:00'
  ) RETURNING id
)
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

-- 3034051d | Baileys Latte (M) | QRIS | 2026-06-10T16:47:34+00:00
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
    '2026-06-10T16:47:34+00:00'
  ) RETURNING id
)
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

-- 4ba27c17 | Butterscotch (M) | QRIS | 2026-06-10T16:53:15+00:00
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
    '2026-06-10T16:53:15+00:00'
  ) RETURNING id
)
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

-- d72ee645 | Salted Caramel (M) | CASH | 2026-06-10T16:53:24+00:00
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
    '2026-06-10T16:53:24+00:00'
  ) RETURNING id
)
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

-- 8f75e4f8 | Baileys Latte (M) | CASH | 2026-06-10T16:53:32+00:00
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
    '2026-06-10T16:53:32+00:00'
  ) RETURNING id
)
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

-- 93ac649f | Butterscotch (M) | CASH | 2026-06-10T16:56:30+00:00
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
    '2026-06-10T16:56:30+00:00'
  ) RETURNING id
)
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

-- 199259d8 | Butterscotch (M) | QRIS | 2026-06-10T17:00:11+00:00
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
    '2026-06-10T17:00:11+00:00'
  ) RETURNING id
)
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

-- e79b769b | Butterscotch (M) | CASH | 2026-06-10T17:01:27+00:00
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
    '2026-06-10T17:01:27+00:00'
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

-- dcbc717e | Gula Aren (M) | CASH | 2026-06-10T17:03:51+00:00
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
    '2026-06-10T17:03:51+00:00'
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

-- 53571c91 | Butterscotch (M) | CASH | 2026-06-10T17:12:26+00:00
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
    '2026-06-10T17:12:26+00:00'
  ) RETURNING id
)
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

-- f1e4c35a | Baileys Latte (M) | QRIS | 2026-06-10T17:19:36+00:00
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
    '2026-06-10T17:19:36+00:00'
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

-- ead17cb8 | Baileys Latte (M) | QRIS | 2026-06-10T17:19:39+00:00
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
    '2026-06-10T17:19:39+00:00'
  ) RETURNING id
)
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

-- 89bafece | Hazelnut (M) | QRIS | 2026-06-10T17:19:49+00:00
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
    '2026-06-10T17:19:49+00:00'
  ) RETURNING id
)
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

-- 348126fa | Butterscotch (M) | CASH | 2026-06-10T17:24:51+00:00
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
    '2026-06-10T17:24:51+00:00'
  ) RETURNING id
)
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

-- dcf39f3b | Baileys Latte (M) | QRIS | 2026-06-10T17:27:50+00:00
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
    '2026-06-10T17:27:50+00:00'
  ) RETURNING id
)
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

-- 2268f469 | Gula Aren (M) | QRIS | 2026-06-10T17:27:59+00:00
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
    '2026-06-10T17:27:59+00:00'
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

-- f55c0506 | Butterscotch (M) | QRIS | 2026-06-10T17:29:31+00:00
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
    '2026-06-10T17:29:31+00:00'
  ) RETURNING id
)
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

-- 4cc7eb78 | Baileys Latte (M) | QRIS | 2026-06-10T17:29:43+00:00
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
    '2026-06-10T17:29:43+00:00'
  ) RETURNING id
)
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

-- 0afb4df0 | Baileys Latte (M) | QRIS | 2026-06-10T17:34:32+00:00
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
    '2026-06-10T17:34:32+00:00'
  ) RETURNING id
)
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

-- f1a91768 | Baileys Latte (M) | QRIS | 2026-06-10T17:38:07+00:00
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
    '2026-06-10T17:38:07+00:00'
  ) RETURNING id
)
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

-- 6b14054c | Vanilla (M) | CASH | 2026-06-10T17:38:14+00:00
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
    '2026-06-10T17:38:14+00:00'
  ) RETURNING id
)
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

-- 082c4b52 | Baileys Latte (M) | CASH | 2026-06-10T17:38:19+00:00
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
    '2026-06-10T17:38:19+00:00'
  ) RETURNING id
)
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

-- eb142f5f | Vanilla (M) | QRIS | 2026-06-10T17:38:27+00:00
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
    '2026-06-10T17:38:27+00:00'
  ) RETURNING id
)
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

-- 8f75525c | Baileys Latte (M) | QRIS | 2026-06-10T17:39:18+00:00
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
    '2026-06-10T17:39:18+00:00'
  ) RETURNING id
)
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

-- 7b2d295b | Butterscotch (M) | CASH | 2026-06-10T17:39:31+00:00
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
    '2026-06-10T17:39:31+00:00'
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

-- 8ef60a63 | Baileys Latte (M) | CASH | 2026-06-10T17:39:51+00:00
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
    '2026-06-10T17:39:51+00:00'
  ) RETURNING id
)
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

-- b6f39ad6 | Butterscotch (M) | QRIS | 2026-06-10T17:47:48+00:00
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
    '2026-06-10T17:47:48+00:00'
  ) RETURNING id
)
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

-- 60eadc05 | Baileys Latte (M) | QRIS | 2026-06-10T17:47:56+00:00
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
    '2026-06-10T17:47:56+00:00'
  ) RETURNING id
)
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

-- 90fbb938 | Hazelnut (M) | CASH | 2026-06-10T17:48:04+00:00
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
    '2026-06-10T17:48:04+00:00'
  ) RETURNING id
)
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

-- f7e01b83 | Baileys Latte (M) | QRIS | 2026-06-10T17:49:33+00:00
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
    '2026-06-10T17:49:33+00:00'
  ) RETURNING id
)
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

-- 0b8bff30 | Baileys Latte (M) | CASH | 2026-06-10T17:52:17+00:00
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
    '2026-06-10T17:52:17+00:00'
  ) RETURNING id
)
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

-- d858a00b | Baileys Latte (M) | QRIS | 2026-06-10T17:52:44+00:00
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
    '2026-06-10T17:52:44+00:00'
  ) RETURNING id
)
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

-- f871b4b8 | Gula Aren (M) | CASH | 2026-06-10T17:56:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-10T17:56:50+00:00'
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

-- 8e686e5e | Butterscotch (M) | QRIS | 2026-06-10T17:58:03+00:00
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
    '2026-06-10T17:58:03+00:00'
  ) RETURNING id
)
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

-- f2828c4a | Butterscotch (M) | CASH | 2026-06-10T18:04:55+00:00
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
    '2026-06-10T18:04:55+00:00'
  ) RETURNING id
)
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

-- 7b7a64f9 | Butterscotch (M) | QRIS | 2026-06-10T18:06:02+00:00
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
    '2026-06-10T18:06:02+00:00'
  ) RETURNING id
)
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

-- b1c245d0 | Butterscotch (M) | CASH | 2026-06-10T18:06:08+00:00
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
    '2026-06-10T18:06:08+00:00'
  ) RETURNING id
)
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

-- ed20c376 | Baileys Latte (M) | QRIS | 2026-06-10T18:08:58+00:00
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
    '2026-06-10T18:08:58+00:00'
  ) RETURNING id
)
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

-- 07ed443e | Baileys Latte (M) | QRIS | 2026-06-10T18:14:41+00:00
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
    '2026-06-10T18:14:41+00:00'
  ) RETURNING id
)
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

-- 7b2bb4c2 | Baileys Latte (M) | QRIS | 2026-06-10T18:18:58+00:00
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
    '2026-06-10T18:18:58+00:00'
  ) RETURNING id
)
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

-- 6cc5c20b | Baileys Latte (M) | QRIS | 2026-06-10T18:24:32+00:00
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
    '2026-06-10T18:24:32+00:00'
  ) RETURNING id
)
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

-- c1759743 | Butterscotch (M) | QRIS | 2026-06-10T18:26:04+00:00
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
    '2026-06-10T18:26:04+00:00'
  ) RETURNING id
)
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

-- 0cc2e15b | Vanilla (M) | QRIS | 2026-06-10T18:26:10+00:00
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
    '2026-06-10T18:26:10+00:00'
  ) RETURNING id
)
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

-- 7de2f271 | Salted Caramel (M) | QRIS | 2026-06-10T18:29:05+00:00
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
    '2026-06-10T18:29:05+00:00'
  ) RETURNING id
)
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

-- d5e59d89 | Gula Aren (M) | CASH | 2026-06-10T18:29:13+00:00
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
    '2026-06-10T18:29:13+00:00'
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

-- 34df4188 | Gula Aren (M) | CASH | 2026-06-10T18:36:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-10T18:36:18+00:00'
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

-- 592389a8 | Butterscotch (M) | CASH | 2026-06-10T18:46:41+00:00
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
    '2026-06-10T18:46:41+00:00'
  ) RETURNING id
)
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

-- 8e31931a | Baileys Latte (M) | QRIS | 2026-06-10T18:47:01+00:00
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
    '2026-06-10T18:47:01+00:00'
  ) RETURNING id
)
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

-- 1148c779 | Butterscotch (M) | CASH | 2026-06-10T18:47:10+00:00
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
    '2026-06-10T18:47:10+00:00'
  ) RETURNING id
)
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

-- 9fca6d5e | Butterscotch (M) | CASH | 2026-06-10T18:47:15+00:00
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
    '2026-06-10T18:47:15+00:00'
  ) RETURNING id
)
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

-- e32d174b | Baileys Latte (M) | QRIS | 2026-06-10T18:49:56+00:00
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
    '2026-06-10T18:49:56+00:00'
  ) RETURNING id
)
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

-- f586197a | Gula Aren (M) | CASH | 2026-06-10T18:59:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-10T18:59:51+00:00'
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

-- 96d9c201 | Salted Caramel (M) | CASH | 2026-06-10T19:00:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-10T19:00:28+00:00'
  ) RETURNING id
)
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

-- ec7d09d7 | Hazelnut (M) | QRIS | 2026-06-10T19:01:06+00:00
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
    '2026-06-10T19:01:06+00:00'
  ) RETURNING id
)
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

-- 53487413 | Butterscotch (M) | CASH | 2026-06-10T19:01:21+00:00
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
    '2026-06-10T19:01:21+00:00'
  ) RETURNING id
)
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

-- e7a39023 | Butterscotch (M) | CASH | 2026-06-10T19:01:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-10T19:01:31+00:00'
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

-- b795d2d8 | Vanilla (M) | CASH | 2026-06-10T19:07:59+00:00
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
    '2026-06-10T19:07:59+00:00'
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

-- bcf56ce6 | Salted Caramel (M) | CASH | 2026-06-10T19:08:05+00:00
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
    '2026-06-10T19:08:05+00:00'
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

-- d8f82d30 | Baileys Latte (M) | CASH | 2026-06-10T19:08:34+00:00
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
    27450.00,
    '2026-06-10T19:08:34+00:00'
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

-- 340d03dd | Butterscotch (M) | QRIS | 2026-06-10T19:08:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '2026-06-10T19:08:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  13,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a1a158f5 | Baileys Latte (M) | QRIS | 2026-06-10T19:08:55+00:00
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
    '2026-06-10T19:08:55+00:00'
  ) RETURNING id
)
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

-- 31366fb6 | Gula Aren (M) | QRIS | 2026-06-10T19:09:02+00:00
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
    '2026-06-10T19:09:02+00:00'
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

-- da78e4dc | Baileys Latte (M) | CASH | 2026-06-10T19:20:37+00:00
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
    '2026-06-10T19:20:37+00:00'
  ) RETURNING id
)
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

-- 645713a3 | Hazelnut (M) | QRIS | 2026-06-10T19:35:14+00:00
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
    '2026-06-10T19:35:14+00:00'
  ) RETURNING id
)
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

-- fb686785 | Vanilla (M) | QRIS | 2026-06-10T19:35:20+00:00
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
    '2026-06-10T19:35:20+00:00'
  ) RETURNING id
)
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

-- 6555b20c | Butterscotch (M) | QRIS | 2026-06-10T19:56:26+00:00
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
    '2026-06-10T19:56:26+00:00'
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

-- df86ec72 | Butterscotch (M) | CASH | 2026-06-10T19:57:56+00:00
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
    '2026-06-10T19:57:56+00:00'
  ) RETURNING id
)
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

-- cd5cdc0c | Butterscotch (M) | CASH | 2026-06-10T20:02:07+00:00
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
    '2026-06-10T20:02:07+00:00'
  ) RETURNING id
)
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

-- f27d7b9d | Butterscotch (M) | CASH | 2026-06-10T20:04:37+00:00
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
    '2026-06-10T20:04:37+00:00'
  ) RETURNING id
)
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

-- 92b0e361 | Gula Aren (M) | CASH | 2026-06-10T20:04:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T20:04:46+00:00'
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

-- f8bb7cc0 | Baileys Latte (M) | CASH | 2026-06-10T20:05:13+00:00
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
    6862.00,
    '2026-06-10T20:05:13+00:00'
  ) RETURNING id
)
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

-- 7a9c11fd | Baileys Latte (M) | CASH | 2026-06-10T20:05:25+00:00
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
    '2026-06-10T20:05:25+00:00'
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

-- a1d6d9fe | Hazelnut (M) | CASH | 2026-06-10T20:05:37+00:00
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
    '2026-06-10T20:05:37+00:00'
  ) RETURNING id
)
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

-- e8abba8a | Butterscotch (M) | CASH | 2026-06-10T20:05:45+00:00
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
    '2026-06-10T20:05:45+00:00'
  ) RETURNING id
)
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

-- ba938e2a | Baileys Latte (M) | CASH | 2026-06-10T20:05:55+00:00
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
    6862.00,
    '2026-06-10T20:05:55+00:00'
  ) RETURNING id
)
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

-- caf644d2 | Butterscotch (M) | CASH | 2026-06-10T20:06:06+00:00
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
    '2026-06-10T20:06:06+00:00'
  ) RETURNING id
)
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

-- 9fd23643 | Hazelnut (M) | QRIS | 2026-06-10T20:11:55+00:00
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
    '2026-06-10T20:11:55+00:00'
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

-- 049943d0 | Hazelnut (M) | QRIS | 2026-06-10T20:12:36+00:00
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
    '2026-06-10T20:12:36+00:00'
  ) RETURNING id
)
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

-- ee01c3bb | Baileys Latte (M) | CASH | 2026-06-10T20:18:53+00:00
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
    '2026-06-10T20:18:53+00:00'
  ) RETURNING id
)
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

-- d5b9c3b7 | Hazelnut (M) | CASH | 2026-06-10T20:19:01+00:00
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
    '2026-06-10T20:19:01+00:00'
  ) RETURNING id
)
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

-- 0e5e8314 | Baileys Latte (M) | CASH | 2026-06-10T20:20:44+00:00
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
    '2026-06-10T20:20:44+00:00'
  ) RETURNING id
)
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

-- d88e9b9f | Butterscotch (M) | QRIS | 2026-06-10T20:21:01+00:00
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
    '2026-06-10T20:21:01+00:00'
  ) RETURNING id
)
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

-- 5557e55e | Baileys Latte (M) | CASH | 2026-06-10T20:38:09+00:00
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
    '2026-06-10T20:38:09+00:00'
  ) RETURNING id
)
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

-- 0474fba7 | Butterscotch (M) | QRIS | 2026-06-10T20:46:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-10T20:46:19+00:00'
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

-- b28b9285 | Gula Aren (M) | QRIS | 2026-06-10T20:47:37+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-10T20:47:37+00:00'
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

-- ad9924c1 | Gula Aren (M) | CASH | 2026-06-10T20:49:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-10T20:49:03+00:00'
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

-- cabec82f | Butterscotch (M) | CASH | 2026-06-10T20:49:13+00:00
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
    28146.00,
    '2026-06-10T20:49:13+00:00'
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

-- 879f59a5 | Vanilla (M) | CASH | 2026-06-10T20:49:22+00:00
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
    '2026-06-10T20:49:22+00:00'
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

-- 3353facb | Salted Caramel (M) | CASH | 2026-06-10T20:49:31+00:00
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
    '2026-06-10T20:49:31+00:00'
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

-- 09a7034f | Baileys Latte (M) | CASH | 2026-06-10T20:49:44+00:00
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
    '2026-06-10T20:49:44+00:00'
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

-- 028eebfe | Baileys Latte (M) | CASH | 2026-06-10T20:52:56+00:00
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
    '2026-06-10T20:52:56+00:00'
  ) RETURNING id
)
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

-- a9fa019d | Baileys Latte (M) | QRIS | 2026-06-10T21:08:10+00:00
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
    '2026-06-10T21:08:10+00:00'
  ) RETURNING id
)
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

-- 21c64acc | Butterscotch (M) | QRIS | 2026-06-10T21:10:10+00:00
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
    '2026-06-10T21:10:10+00:00'
  ) RETURNING id
)
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

-- 26055682 | Baileys Latte (M) | QRIS | 2026-06-10T21:11:54+00:00
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
    '2026-06-10T21:11:54+00:00'
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

-- c88e03d5 | Gula Aren (M) | CASH | 2026-06-10T21:15:05+00:00
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
    '2026-06-10T21:15:05+00:00'
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

-- 32069949 | Hazelnut (M) | CASH | 2026-06-10T21:16:24+00:00
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
    '2026-06-10T21:16:24+00:00'
  ) RETURNING id
)
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

-- 34f17286 | Gula Aren (M) | QRIS | 2026-06-10T21:20:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-10T21:20:44+00:00'
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

-- 6f2a5a5e | Salted Caramel (M) | CASH | 2026-06-10T21:21:36+00:00
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
    '2026-06-10T21:21:36+00:00'
  ) RETURNING id
)
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

-- 1b15af48 | Butterscotch (M) | QRIS | 2026-06-10T21:20:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '2026-06-10T21:20:59+00:00'
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

-- 36eed41c | Butterscotch (M) | CASH | 2026-06-10T21:22:02+00:00
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
    '2026-06-10T21:22:02+00:00'
  ) RETURNING id
)
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

-- 3834894a | Hazelnut (M) | CASH | 2026-06-10T21:22:06+00:00
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
    '2026-06-10T21:22:06+00:00'
  ) RETURNING id
)
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

-- 97cada66 | Baileys Latte (M) | CASH | 2026-06-10T21:22:10+00:00
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
    '2026-06-10T21:22:10+00:00'
  ) RETURNING id
)
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

-- 258b3ab9 | Gula Aren (M) | CASH | 2026-06-10T21:22:26+00:00
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
    '2026-06-10T21:22:26+00:00'
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

-- c8ba9068 | Butterscotch (M) | CASH | 2026-06-10T21:22:34+00:00
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
    '2026-06-10T21:22:34+00:00'
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

-- fc40f4aa | Vanilla (M) | CASH | 2026-06-10T21:22:55+00:00
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
    '2026-06-10T21:22:55+00:00'
  ) RETURNING id
)
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

-- 9a7d5b01 | Salted Caramel (M) | CASH | 2026-06-10T21:23:03+00:00
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
    '2026-06-10T21:23:03+00:00'
  ) RETURNING id
)
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

-- 9733650b | Hazelnut (M) | CASH | 2026-06-10T21:23:17+00:00
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
    '2026-06-10T21:23:17+00:00'
  ) RETURNING id
)
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

-- 957e3f13 | Baileys Latte (M) | CASH | 2026-06-10T21:23:25+00:00
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
    27450.00,
    '2026-06-10T21:23:25+00:00'
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

-- 59eea795 | Baileys Latte (M) | QRIS | 2026-06-10T21:36:36+00:00
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
    41175.00,
    '2026-06-10T21:36:36+00:00'
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

-- 6f75f7fb | Butterscotch (M) | QRIS | 2026-06-10T21:37:13+00:00
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
    '2026-06-10T21:37:13+00:00'
  ) RETURNING id
)
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

-- 7ca5d8e7 | Butterscotch (M) | CASH | 2026-06-10T21:37:53+00:00
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
    '2026-06-10T21:37:53+00:00'
  ) RETURNING id
)
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

-- 0ae63876 | Butterscotch (M) | QRIS | 2026-06-10T21:42:28+00:00
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
    '2026-06-10T21:42:28+00:00'
  ) RETURNING id
)
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

-- 09a61f09 | Baileys Latte (M) | QRIS | 2026-06-10T21:42:34+00:00
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
    '2026-06-10T21:42:34+00:00'
  ) RETURNING id
)
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

-- 26aa09fa | Butterscotch (M) | CASH | 2026-06-10T21:43:05+00:00
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
    '2026-06-10T21:43:05+00:00'
  ) RETURNING id
)
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

-- 51d0ad10 | Salted Caramel (M) | CASH | 2026-06-10T21:44:21+00:00
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
    '2026-06-10T21:44:21+00:00'
  ) RETURNING id
)
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

-- 074921fc | Vanilla (M) | CASH | 2026-06-10T21:45:07+00:00
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
    21109.00,
    '2026-06-10T21:45:07+00:00'
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

-- 242634f7 | Baileys Latte (M) | CASH | 2026-06-10T21:51:41+00:00
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
    '2026-06-10T21:51:41+00:00'
  ) RETURNING id
)
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

-- de028e59 | Salted Caramel (M) | CASH | 2026-06-10T21:51:46+00:00
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
    '2026-06-10T21:51:46+00:00'
  ) RETURNING id
)
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

-- 56ec398a | Baileys Latte (M) | CASH | 2026-06-10T21:58:43+00:00
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
    '2026-06-10T21:58:43+00:00'
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

-- 39ecda76 | Butterscotch (M) | CASH | 2026-06-10T22:00:02+00:00
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
    '2026-06-10T22:00:02+00:00'
  ) RETURNING id
)
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

-- 41926b6b | Salted Caramel (M) | QRIS | 2026-06-10T22:01:56+00:00
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
    '2026-06-10T22:01:56+00:00'
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

-- 5828b934 | Butterscotch (M) | QRIS | 2026-06-10T22:09:18+00:00
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
    '2026-06-10T22:09:18+00:00'
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

-- 9f175567 | Baileys Latte (M) | CASH | 2026-06-10T22:09:32+00:00
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
    '2026-06-10T22:09:32+00:00'
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

-- 23add6d3 | Baileys Latte (M) | CASH | 2026-06-10T22:11:15+00:00
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
    '2026-06-10T22:11:15+00:00'
  ) RETURNING id
)
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

-- 088aa614 | Vanilla (M) | QRIS | 2026-06-10T22:24:12+00:00
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
    '2026-06-10T22:24:12+00:00'
  ) RETURNING id
)
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

-- 33ba8fed | Hazelnut (M) | CASH | 2026-06-10T22:27:33+00:00
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
    '2026-06-10T22:27:33+00:00'
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

-- 97f4e359 | Butterscotch (M) | CASH | 2026-06-10T22:29:00+00:00
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
    '2026-06-10T22:29:00+00:00'
  ) RETURNING id
)
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

-- 310d3c07 | Baileys Latte (M) | CASH | 2026-06-10T22:31:32+00:00
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
    '2026-06-10T22:31:32+00:00'
  ) RETURNING id
)
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

-- f37feedf | Gula Aren (M) | CASH | 2026-06-10T23:31:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-10T23:31:24+00:00'
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

-- 91ae4f3a | Butterscotch (M) | CASH | 2026-06-10T23:31:33+00:00
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
    '2026-06-10T23:31:33+00:00'
  ) RETURNING id
)
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

-- c5828abd | Baileys Latte (M) | CASH | 2026-06-10T23:31:41+00:00
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
    6862.00,
    '2026-06-10T23:31:41+00:00'
  ) RETURNING id
)
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

-- 4dceaadc | Vanilla (M) | QRIS | 2026-06-11T09:21:47+00:00
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
    '2026-06-11T09:21:47+00:00'
  ) RETURNING id
)
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

-- bf9b85f5 | Butterscotch (M) | CASH | 2026-06-11T09:56:33+00:00
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
    '2026-06-11T09:56:33+00:00'
  ) RETURNING id
)
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

-- b9aeaa5a | Gula Aren (M) | CASH | 2026-06-11T10:13:14+00:00
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
    '2026-06-11T10:13:14+00:00'
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

-- ee813d62 | Gula Aren (M) | QRIS | 2026-06-11T10:27:44+00:00
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
    '2026-06-11T10:27:44+00:00'
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

-- dee72301 | Butterscotch (M) | QRIS | 2026-06-11T10:27:50+00:00
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
    '2026-06-11T10:27:50+00:00'
  ) RETURNING id
)
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

-- 7b169fb0 | Gula Aren (M) | QRIS | 2026-06-11T10:31:17+00:00
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
    '2026-06-11T10:31:17+00:00'
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

-- f6cd2d1c | Gula Aren (M) | CASH | 2026-06-11T10:31:25+00:00
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
    '2026-06-11T10:31:25+00:00'
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

-- 7d6531b3 | Salted Caramel (M) | CASH | 2026-06-11T10:31:31+00:00
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
    '2026-06-11T10:31:31+00:00'
  ) RETURNING id
)
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

-- fe130ed6 | Gula Aren (M) | CASH | 2026-06-11T10:42:35+00:00
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
    '2026-06-11T10:42:35+00:00'
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

-- da52106c | Gula Aren (M) | QRIS | 2026-06-11T10:45:37+00:00
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
    '2026-06-11T10:45:37+00:00'
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

-- efc09e10 | Butterscotch (M) | QRIS | 2026-06-11T10:48:18+00:00
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
    '2026-06-11T10:48:18+00:00'
  ) RETURNING id
)
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

-- dd418e20 | Gula Aren (M) | CASH | 2026-06-11T10:54:29+00:00
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
    '2026-06-11T10:54:29+00:00'
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

-- 7fae8fe6 | Gula Aren (M) | QRIS | 2026-06-11T11:04:01+00:00
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
    '2026-06-11T11:04:01+00:00'
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

-- 8de43d6e | Gula Aren (M) | CASH | 2026-06-11T11:04:10+00:00
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
    '2026-06-11T11:04:10+00:00'
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

-- 37395165 | Baileys Latte (M) | QRIS | 2026-06-11T11:07:11+00:00
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
    '2026-06-11T11:07:11+00:00'
  ) RETURNING id
)
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

-- a01d436e | Butterscotch (M) | CASH | 2026-06-11T11:12:59+00:00
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
    '2026-06-11T11:12:59+00:00'
  ) RETURNING id
)
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

-- 929cf79f | Baileys Latte (M) | QRIS | 2026-06-11T11:13:04+00:00
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
    '2026-06-11T11:13:04+00:00'
  ) RETURNING id
)
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

-- a2881b6c | Baileys Latte (M) | CASH | 2026-06-11T11:27:16+00:00
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
    '2026-06-11T11:27:16+00:00'
  ) RETURNING id
)
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

-- 791af063 | Gula Aren (M) | QRIS | 2026-06-11T11:27:21+00:00
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
    '2026-06-11T11:27:21+00:00'
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

-- 51556d3c | Baileys Latte (M) | CASH | 2026-06-11T11:31:43+00:00
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
    '2026-06-11T11:31:43+00:00'
  ) RETURNING id
)
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

-- 7ef0b693 | Butterscotch (M) | QRIS | 2026-06-11T11:38:02+00:00
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
    '2026-06-11T11:38:02+00:00'
  ) RETURNING id
)
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

-- e76f2b65 | Gula Aren (M) | QRIS | 2026-06-11T11:41:43+00:00
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
    '2026-06-11T11:41:43+00:00'
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

-- 14916de8 | Gula Aren (M) | QRIS | 2026-06-11T11:49:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-11T11:49:23+00:00'
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

-- d0898ec4 | Gula Aren (M) | QRIS | 2026-06-11T11:55:24+00:00
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
    '2026-06-11T11:55:24+00:00'
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

-- fc2000dc | Baileys Latte (M) | CASH | 2026-06-11T12:10:25+00:00
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
    '2026-06-11T12:10:25+00:00'
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

-- 68db98a0 | Butterscotch (M) | CASH | 2026-06-11T12:10:57+00:00
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
    '2026-06-11T12:10:57+00:00'
  ) RETURNING id
)
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

-- 4b340acc | Gula Aren (M) | CASH | 2026-06-11T12:11:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T12:11:08+00:00'
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

-- 5024ef74 | Gula Aren (M) | QRIS | 2026-06-11T12:11:52+00:00
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
    '2026-06-11T12:11:52+00:00'
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

-- cded873a | Gula Aren (M) | QRIS | 2026-06-11T12:16:20+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-11T12:16:20+00:00'
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

-- f0c63aea | Butterscotch (M) | QRIS | 2026-06-11T12:16:32+00:00
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
    '2026-06-11T12:16:32+00:00'
  ) RETURNING id
)
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

-- 515a3e41 | Butterscotch (M) | QRIS | 2026-06-11T12:16:35+00:00
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
    '2026-06-11T12:16:35+00:00'
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

-- 8b86ad4e | Butterscotch (M) | CASH | 2026-06-11T12:16:52+00:00
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
    '2026-06-11T12:16:52+00:00'
  ) RETURNING id
)
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

-- ab874de3 | Baileys Latte (M) | CASH | 2026-06-11T12:17:15+00:00
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
    '2026-06-11T12:17:15+00:00'
  ) RETURNING id
)
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

-- bbb7be87 | Baileys Latte (M) | CASH | 2026-06-11T12:17:32+00:00
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
    '2026-06-11T12:17:32+00:00'
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

-- bae8bef8 | Butterscotch (M) | CASH | 2026-06-11T12:17:53+00:00
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
    '2026-06-11T12:17:53+00:00'
  ) RETURNING id
)
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

-- 282f61d1 | Gula Aren (M) | QRIS | 2026-06-11T12:20:48+00:00
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
    '2026-06-11T12:20:48+00:00'
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

-- 3afde85a | Baileys Latte (M) | CASH | 2026-06-11T12:21:13+00:00
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
    '2026-06-11T12:21:13+00:00'
  ) RETURNING id
)
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

-- 391a5d53 | Baileys Latte (M) | CASH | 2026-06-11T12:21:23+00:00
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
    '2026-06-11T12:21:23+00:00'
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

-- 57f91aa6 | Butterscotch (M) | QRIS | 2026-06-11T12:30:50+00:00
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
    '2026-06-11T12:30:50+00:00'
  ) RETURNING id
)
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

-- 5b8f38b7 | Baileys Latte (M) | QRIS | 2026-06-11T12:31:11+00:00
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
    '2026-06-11T12:31:11+00:00'
  ) RETURNING id
)
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

-- 0cae7e3d | Gula Aren (M) | QRIS | 2026-06-11T12:31:29+00:00
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
    '2026-06-11T12:31:29+00:00'
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

-- 583b4b3a | Baileys Latte (M) | QRIS | 2026-06-11T12:31:36+00:00
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
    '2026-06-11T12:31:36+00:00'
  ) RETURNING id
)
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

-- 09b1ecf1 | Butterscotch (M) | QRIS | 2026-06-11T12:36:45+00:00
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
    '2026-06-11T12:36:45+00:00'
  ) RETURNING id
)
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

-- 6a7bc980 | Butterscotch (M) | QRIS | 2026-06-11T12:36:56+00:00
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
    '2026-06-11T12:36:56+00:00'
  ) RETURNING id
)
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

-- 2564c7a7 | Baileys Latte (M) | QRIS | 2026-06-11T12:37:11+00:00
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
    '2026-06-11T12:37:11+00:00'
  ) RETURNING id
)
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

-- ab4c9452 | Baileys Latte (M) | QRIS | 2026-06-11T12:38:09+00:00
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
    '2026-06-11T12:38:09+00:00'
  ) RETURNING id
)
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

-- 84fe5626 | Gula Aren (M) | CASH | 2026-06-11T12:39:26+00:00
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
    '2026-06-11T12:39:26+00:00'
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

-- a73ddbab | Gula Aren (M) | QRIS | 2026-06-11T12:41:58+00:00
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
    '2026-06-11T12:41:58+00:00'
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

-- 109aa1e0 | Baileys Latte (M) | QRIS | 2026-06-11T12:42:04+00:00
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
    '2026-06-11T12:42:04+00:00'
  ) RETURNING id
)
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

-- 176af811 | Vanilla (M) | QRIS | 2026-06-11T12:42:10+00:00
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
    '2026-06-11T12:42:10+00:00'
  ) RETURNING id
)
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

-- c668ab63 | Gula Aren (M) | CASH | 2026-06-11T12:42:22+00:00
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
    '2026-06-11T12:42:22+00:00'
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

-- bbf0daf6 | Baileys Latte (M) | CASH | 2026-06-11T12:42:27+00:00
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
    '2026-06-11T12:42:27+00:00'
  ) RETURNING id
)
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

-- 98dd2d77 | Butterscotch (M) | QRIS | 2026-06-11T12:42:34+00:00
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
    '2026-06-11T12:42:34+00:00'
  ) RETURNING id
)
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

-- 3ef37359 | Gula Aren (M) | QRIS | 2026-06-11T12:42:39+00:00
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
    '2026-06-11T12:42:39+00:00'
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

-- 2d7095a2 | Butterscotch (M) | QRIS | 2026-06-11T12:46:07+00:00
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
    '2026-06-11T12:46:07+00:00'
  ) RETURNING id
)
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

-- aee59938 | Baileys Latte (M) | QRIS | 2026-06-11T12:46:58+00:00
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
    '2026-06-11T12:46:58+00:00'
  ) RETURNING id
)
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

-- 34ec080f | Hazelnut (M) | CASH | 2026-06-11T12:47:17+00:00
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
    '2026-06-11T12:47:17+00:00'
  ) RETURNING id
)
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

-- f550aca5 | Gula Aren (M) | CASH | 2026-06-11T12:47:19+00:00
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
    '2026-06-11T12:47:19+00:00'
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

-- edc0c64c | Butterscotch (M) | QRIS | 2026-06-11T12:48:10+00:00
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
    '2026-06-11T12:48:10+00:00'
  ) RETURNING id
)
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

-- 6cd8bd5f | Salted Caramel (M) | CASH | 2026-06-11T12:50:20+00:00
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
    '2026-06-11T12:50:20+00:00'
  ) RETURNING id
)
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

-- a894882d | Gula Aren (M) | QRIS | 2026-06-11T12:54:20+00:00
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
    '2026-06-11T12:54:20+00:00'
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

-- d185898f | Hazelnut (M) | QRIS | 2026-06-11T12:54:25+00:00
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
    '2026-06-11T12:54:25+00:00'
  ) RETURNING id
)
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

-- ddee5611 | Butterscotch (M) | QRIS | 2026-06-11T12:57:21+00:00
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
    '2026-06-11T12:57:21+00:00'
  ) RETURNING id
)
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

-- 6a950874 | Hazelnut (M) | QRIS | 2026-06-11T12:57:30+00:00
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
    '2026-06-11T12:57:30+00:00'
  ) RETURNING id
)
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

-- afbfb5c4 | Vanilla (M) | QRIS | 2026-06-11T12:57:37+00:00
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
    '2026-06-11T12:57:37+00:00'
  ) RETURNING id
)
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

-- a414b85c | Hazelnut (M) | QRIS | 2026-06-11T12:59:04+00:00
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
    '2026-06-11T12:59:04+00:00'
  ) RETURNING id
)
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

-- b8e7809e | Butterscotch (M) | CASH | 2026-06-11T13:02:44+00:00
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
    '2026-06-11T13:02:44+00:00'
  ) RETURNING id
)
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

-- d159f615 | Baileys Latte (M) | QRIS | 2026-06-11T13:05:05+00:00
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
    '2026-06-11T13:05:05+00:00'
  ) RETURNING id
)
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

-- bd50c72c | Gula Aren (M) | QRIS | 2026-06-11T13:07:12+00:00
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
    '2026-06-11T13:07:12+00:00'
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

-- c16c81b3 | Gula Aren (M) | CASH | 2026-06-11T13:07:20+00:00
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
    '2026-06-11T13:07:20+00:00'
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

-- 80d4c20e | Butterscotch (M) | QRIS | 2026-06-11T13:11:46+00:00
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
    '2026-06-11T13:11:46+00:00'
  ) RETURNING id
)
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

-- 8dd0337f | Baileys Latte (M) | QRIS | 2026-06-11T13:11:52+00:00
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
    '2026-06-11T13:11:52+00:00'
  ) RETURNING id
)
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

-- 6426fa6b | Hazelnut (M) | QRIS | 2026-06-11T13:11:58+00:00
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
    '2026-06-11T13:11:58+00:00'
  ) RETURNING id
)
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

-- a7a96b10 | Butterscotch (M) | QRIS | 2026-06-11T13:12:46+00:00
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
    '2026-06-11T13:12:46+00:00'
  ) RETURNING id
)
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

-- 3b37f212 | Gula Aren (M) | CASH | 2026-06-11T13:12:45+00:00
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
    '2026-06-11T13:12:45+00:00'
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

-- fc7fba02 | Baileys Latte (M) | QRIS | 2026-06-11T13:12:50+00:00
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
    '2026-06-11T13:12:50+00:00'
  ) RETURNING id
)
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

-- c1f93a03 | Butterscotch (M) | QRIS | 2026-06-11T13:14:41+00:00
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
    '2026-06-11T13:14:41+00:00'
  ) RETURNING id
)
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

-- 1c0c1b67 | Butterscotch (M) | QRIS | 2026-06-11T13:14:50+00:00
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
    '2026-06-11T13:14:50+00:00'
  ) RETURNING id
)
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

-- a766acca | Salted Caramel (M) | CASH | 2026-06-11T13:15:04+00:00
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
    '2026-06-11T13:15:04+00:00'
  ) RETURNING id
)
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

-- fd4b8e5b | Gula Aren (M) | CASH | 2026-06-11T13:15:22+00:00
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
    '2026-06-11T13:15:22+00:00'
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

-- 20a5e9a1 | Gula Aren (M) | QRIS | 2026-06-11T13:15:28+00:00
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
    '2026-06-11T13:15:28+00:00'
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

-- 2b768627 | Salted Caramel (M) | QRIS | 2026-06-11T13:20:44+00:00
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
    '2026-06-11T13:20:44+00:00'
  ) RETURNING id
)
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

-- 735358d4 | Butterscotch (M) | QRIS | 2026-06-11T13:29:08+00:00
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
    '2026-06-11T13:29:08+00:00'
  ) RETURNING id
)
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

-- bb008ef9 | Salted Caramel (M) | CASH | 2026-06-11T13:31:21+00:00
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
    '2026-06-11T13:31:21+00:00'
  ) RETURNING id
)
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

-- 8fdc307a | Gula Aren (M) | QRIS | 2026-06-11T13:38:56+00:00
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
    '2026-06-11T13:38:56+00:00'
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

-- 9a140d1a | Salted Caramel (M) | QRIS | 2026-06-11T13:39:23+00:00
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
    '2026-06-11T13:39:23+00:00'
  ) RETURNING id
)
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

-- 022364c7 | Baileys Latte (M) | QRIS | 2026-06-11T13:39:30+00:00
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
    '2026-06-11T13:39:30+00:00'
  ) RETURNING id
)
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

-- bcbc537f | Butterscotch (M) | QRIS | 2026-06-11T13:40:47+00:00
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
    '2026-06-11T13:40:47+00:00'
  ) RETURNING id
)
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

-- 17ca4711 | Gula Aren (M) | CASH | 2026-06-11T13:55:47+00:00
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
    '2026-06-11T13:55:47+00:00'
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

-- fcd1a07a | Gula Aren (M) | QRIS | 2026-06-11T13:56:02+00:00
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
    '2026-06-11T13:56:02+00:00'
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

-- 75b13ec4 | Gula Aren (M) | CASH | 2026-06-11T13:56:10+00:00
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
    '2026-06-11T13:56:10+00:00'
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

-- ebf53fdc | Butterscotch (M) | QRIS | 2026-06-11T13:56:13+00:00
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
    '2026-06-11T13:56:13+00:00'
  ) RETURNING id
)
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

-- 2e93f0ab | Baileys Latte (M) | QRIS | 2026-06-11T13:56:19+00:00
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
    '2026-06-11T13:56:19+00:00'
  ) RETURNING id
)
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

-- d584e37e | Hazelnut (M) | CASH | 2026-06-11T13:56:25+00:00
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
    '2026-06-11T13:56:25+00:00'
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

-- bd9859fa | Butterscotch (M) | CASH | 2026-06-11T13:56:32+00:00
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
    '2026-06-11T13:56:32+00:00'
  ) RETURNING id
)
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

-- 24d961fb | Butterscotch (M) | CASH | 2026-06-11T14:00:33+00:00
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
    '2026-06-11T14:00:33+00:00'
  ) RETURNING id
)
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

-- 2f909394 | Butterscotch (M) | CASH | 2026-06-11T14:03:16+00:00
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
    '2026-06-11T14:03:16+00:00'
  ) RETURNING id
)
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

-- dc09e9b3 | Butterscotch (M) | CASH | 2026-06-11T14:05:12+00:00
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
    '2026-06-11T14:05:12+00:00'
  ) RETURNING id
)
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

-- 24d0d5f6 | Salted Caramel (M) | QRIS | 2026-06-11T14:08:58+00:00
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
    '2026-06-11T14:08:58+00:00'
  ) RETURNING id
)
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

-- 051fb888 | Butterscotch (M) | CASH | 2026-06-11T14:20:32+00:00
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
    '2026-06-11T14:20:32+00:00'
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

-- 9b328cec | Gula Aren (M) | CASH | 2026-06-11T14:21:10+00:00
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
    '2026-06-11T14:21:10+00:00'
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

-- 02dd5ae7 | Vanilla (M) | QRIS | 2026-06-11T14:21:17+00:00
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
    '2026-06-11T14:21:17+00:00'
  ) RETURNING id
)
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

-- 4d5dce3e | Gula Aren (M) | CASH | 2026-06-11T14:27:29+00:00
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
    '2026-06-11T14:27:29+00:00'
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

-- 933d9afa | Butterscotch (M) | QRIS | 2026-06-11T14:30:19+00:00
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
    '2026-06-11T14:30:19+00:00'
  ) RETURNING id
)
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

-- 94f95bf4 | Baileys Latte (M) | CASH | 2026-06-11T14:32:27+00:00
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
    '2026-06-11T14:32:27+00:00'
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

-- b8da1ec4 | Butterscotch (M) | QRIS | 2026-06-11T14:41:27+00:00
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
    '2026-06-11T14:41:27+00:00'
  ) RETURNING id
)
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

-- 3a9654f7 | Salted Caramel (M) | QRIS | 2026-06-11T14:41:34+00:00
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
    '2026-06-11T14:41:34+00:00'
  ) RETURNING id
)
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

-- 081e1eca | Gula Aren (M) | QRIS | 2026-06-11T14:41:43+00:00
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
    '2026-06-11T14:41:43+00:00'
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

-- 005a1e1c | Gula Aren (M) | CASH | 2026-06-11T14:43:39+00:00
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
    '2026-06-11T14:43:39+00:00'
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

-- 64427447 | Gula Aren (M) | CASH | 2026-06-11T14:44:02+00:00
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
    '2026-06-11T14:44:02+00:00'
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

-- e7f22dcc | Gula Aren (M) | CASH | 2026-06-11T14:44:10+00:00
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
    '2026-06-11T14:44:10+00:00'
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

-- df4fc445 | Baileys Latte (M) | QRIS | 2026-06-11T14:47:02+00:00
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
    '2026-06-11T14:47:02+00:00'
  ) RETURNING id
)
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

-- 6733f1ab | Butterscotch (M) | QRIS | 2026-06-11T14:47:56+00:00
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
    '2026-06-11T14:47:56+00:00'
  ) RETURNING id
)
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

-- 6db24409 | Baileys Latte (M) | QRIS | 2026-06-11T14:49:34+00:00
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
    '2026-06-11T14:49:34+00:00'
  ) RETURNING id
)
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

-- b9aeab83 | Butterscotch (M) | CASH | 2026-06-11T15:01:24+00:00
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
    '2026-06-11T15:01:24+00:00'
  ) RETURNING id
)
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

-- b0ae0c1a | Baileys Latte (M) | QRIS | 2026-06-11T15:06:45+00:00
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
    '2026-06-11T15:06:45+00:00'
  ) RETURNING id
)
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

-- 21fce731 | Butterscotch (M) | QRIS | 2026-06-11T15:13:13+00:00
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
    '2026-06-11T15:13:13+00:00'
  ) RETURNING id
)
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

-- 57606c9e | Baileys Latte (M) | QRIS | 2026-06-11T15:14:06+00:00
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
    '2026-06-11T15:14:06+00:00'
  ) RETURNING id
)
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

-- 1a9602fa | Gula Aren (M) | QRIS | 2026-06-11T15:15:14+00:00
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
    '2026-06-11T15:15:14+00:00'
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

-- 37a42fe6 | Butterscotch (M) | QRIS | 2026-06-11T15:16:04+00:00
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
    '2026-06-11T15:16:04+00:00'
  ) RETURNING id
)
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

-- 090bbe96 | Gula Aren (M) | QRIS | 2026-06-11T15:16:07+00:00
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
    '2026-06-11T15:16:07+00:00'
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

-- cada81b9 | Baileys Latte (M) | QRIS | 2026-06-11T15:16:10+00:00
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
    '2026-06-11T15:16:10+00:00'
  ) RETURNING id
)
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

-- 0d6aa1ee | Salted Caramel (M) | QRIS | 2026-06-11T15:25:10+00:00
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
    '2026-06-11T15:25:10+00:00'
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

-- 188c9a52 | Hazelnut (M) | QRIS | 2026-06-11T15:25:17+00:00
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
    '2026-06-11T15:25:17+00:00'
  ) RETURNING id
)
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

-- b4cd812a | Baileys Latte (M) | QRIS | 2026-06-11T15:29:31+00:00
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
    '2026-06-11T15:29:31+00:00'
  ) RETURNING id
)
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

-- f178b2fb | Baileys Latte (M) | QRIS | 2026-06-11T15:39:24+00:00
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
    '2026-06-11T15:39:24+00:00'
  ) RETURNING id
)
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

-- 2f4a821d | Baileys Latte (M) | QRIS | 2026-06-11T15:40:02+00:00
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
    '2026-06-11T15:40:02+00:00'
  ) RETURNING id
)
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

-- 00d38809 | Butterscotch (M) | CASH | 2026-06-11T15:43:32+00:00
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
    '2026-06-11T15:43:32+00:00'
  ) RETURNING id
)
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

-- 44c53efd | Baileys Latte (M) | CASH | 2026-06-11T16:06:24+00:00
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
    6862.00,
    '2026-06-11T16:06:24+00:00'
  ) RETURNING id
)
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

-- fc480190 | Butterscotch (M) | CASH | 2026-06-11T16:06:41+00:00
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
    '2026-06-11T16:06:41+00:00'
  ) RETURNING id
)
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

-- 41628671 | Gula Aren (M) | CASH | 2026-06-11T16:06:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T16:06:53+00:00'
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

-- 5adfb8a3 | Gula Aren (M) | QRIS | 2026-06-11T16:06:59+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T16:06:59+00:00'
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

-- 053693cd | Vanilla (M) | CASH | 2026-06-11T16:07:25+00:00
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
    '2026-06-11T16:07:25+00:00'
  ) RETURNING id
)
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

-- ddb9c0c7 | Butterscotch (M) | CASH | 2026-06-11T16:07:38+00:00
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
    '2026-06-11T16:07:38+00:00'
  ) RETURNING id
)
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

-- b53bb2a6 | Butterscotch (M) | QRIS | 2026-06-11T16:07:52+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-11T16:07:52+00:00'
  ) RETURNING id
)
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

-- 3c0c6da3 | Butterscotch (M) | QRIS | 2026-06-11T16:08:11+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-11T16:08:11+00:00'
  ) RETURNING id
)
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

-- 1a036c3a | Baileys Latte (M) | QRIS | 2026-06-11T16:08:24+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-11T16:08:24+00:00'
  ) RETURNING id
)
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

-- 438e60c2 | Gula Aren (M) | QRIS | 2026-06-11T16:08:38+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T16:08:38+00:00'
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

-- fc48378f | Butterscotch (M) | CASH | 2026-06-11T16:08:56+00:00
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
    '2026-06-11T16:08:56+00:00'
  ) RETURNING id
)
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

-- 75bc44cb | Gula Aren (M) | CASH | 2026-06-11T16:08:58+00:00
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
    '2026-06-11T16:08:58+00:00'
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

-- 0388c2a3 | Vanilla (M) | CASH | 2026-06-11T16:09:18+00:00
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
    '2026-06-11T16:09:18+00:00'
  ) RETURNING id
)
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

-- a25c10a8 | Vanilla (M) | CASH | 2026-06-11T16:13:38+00:00
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
    '2026-06-11T16:13:38+00:00'
  ) RETURNING id
)
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

-- 82a0f62b | Butterscotch (M) | QRIS | 2026-06-11T16:25:25+00:00
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
    '2026-06-11T16:25:25+00:00'
  ) RETURNING id
)
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

-- 4810e46f | Baileys Latte (M) | QRIS | 2026-06-11T16:25:32+00:00
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
    '2026-06-11T16:25:32+00:00'
  ) RETURNING id
)
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

-- 86eb434b | Vanilla (M) | CASH | 2026-06-11T16:26:38+00:00
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
    '2026-06-11T16:26:38+00:00'
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

-- d4917a0c | Hazelnut (M) | CASH | 2026-06-11T16:26:42+00:00
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
    '2026-06-11T16:26:42+00:00'
  ) RETURNING id
)
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

-- c51ad442 | Butterscotch (M) | CASH | 2026-06-11T16:26:46+00:00
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
    '2026-06-11T16:26:46+00:00'
  ) RETURNING id
)
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

-- 57aac13c | Butterscotch (M) | CASH | 2026-06-11T16:29:12+00:00
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
    '2026-06-11T16:29:12+00:00'
  ) RETURNING id
)
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

-- 916b8b63 | Gula Aren (M) | QRIS | 2026-06-11T16:35:45+00:00
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
    '2026-06-11T16:35:45+00:00'
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

-- b2650b87 | Butterscotch (M) | QRIS | 2026-06-11T16:41:04+00:00
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
    '2026-06-11T16:41:04+00:00'
  ) RETURNING id
)
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

-- 9ad4916d | Baileys Latte (M) | QRIS | 2026-06-11T16:41:10+00:00
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
    '2026-06-11T16:41:10+00:00'
  ) RETURNING id
)
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

-- 7a9eb438 | Baileys Latte (M) | QRIS | 2026-06-11T16:41:16+00:00
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
    '2026-06-11T16:41:16+00:00'
  ) RETURNING id
)
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

-- 40b7189b | Butterscotch (M) | CASH | 2026-06-11T16:41:17+00:00
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
    '2026-06-11T16:41:17+00:00'
  ) RETURNING id
)
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

-- 49b03f31 | Salted Caramel (M) | QRIS | 2026-06-11T16:42:43+00:00
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
    '2026-06-11T16:42:43+00:00'
  ) RETURNING id
)
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

-- bedb1325 | Baileys Latte (M) | QRIS | 2026-06-11T16:42:49+00:00
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
    '2026-06-11T16:42:49+00:00'
  ) RETURNING id
)
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

-- c236a6ac | Baileys Latte (M) | QRIS | 2026-06-11T16:49:31+00:00
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
    '2026-06-11T16:49:31+00:00'
  ) RETURNING id
)
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

-- 5f268697 | Butterscotch (M) | CASH | 2026-06-11T16:54:36+00:00
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
    '2026-06-11T16:54:36+00:00'
  ) RETURNING id
)
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

-- 33d9a47f | Baileys Latte (M) | QRIS | 2026-06-11T16:54:43+00:00
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
    '2026-06-11T16:54:43+00:00'
  ) RETURNING id
)
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

-- 84cbd807 | Hazelnut (M) | CASH | 2026-06-11T16:57:26+00:00
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
    '2026-06-11T16:57:26+00:00'
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

-- 88d84494 | Butterscotch (M) | CASH | 2026-06-11T16:58:40+00:00
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
    '2026-06-11T16:58:40+00:00'
  ) RETURNING id
)
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

-- 344e2f26 | Baileys Latte (M) | CASH | 2026-06-11T16:58:45+00:00
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
    '2026-06-11T16:58:45+00:00'
  ) RETURNING id
)
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

-- dceead82 | Gula Aren (M) | CASH | 2026-06-11T17:02:31+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-11T17:02:31+00:00'
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

-- f91a13a1 | Gula Aren (M) | CASH | 2026-06-11T17:02:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-11T17:02:53+00:00'
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

-- e240b899 | Baileys Latte (M) | CASH | 2026-06-11T17:03:35+00:00
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
    '2026-06-11T17:03:35+00:00'
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

-- 15bd8f4a | Butterscotch (M) | CASH | 2026-06-11T17:04:01+00:00
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
    '2026-06-11T17:04:01+00:00'
  ) RETURNING id
)
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

-- 19e4a718 | Butterscotch (M) | QRIS | 2026-06-11T17:04:08+00:00
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
    '2026-06-11T17:04:08+00:00'
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

-- 718030a9 | Hazelnut (M) | QRIS | 2026-06-11T17:04:14+00:00
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
    '2026-06-11T17:04:14+00:00'
  ) RETURNING id
)
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

-- 93c2a1a4 | Gula Aren (M) | QRIS | 2026-06-11T17:04:18+00:00
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
    '2026-06-11T17:04:18+00:00'
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

-- 19f545a6 | Butterscotch (M) | QRIS | 2026-06-11T16:15:06+00:00
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
    14073.00,
    '2026-06-11T16:15:06+00:00'
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

-- 1d981caf | Hazelnut (M) | QRIS | 2026-06-11T16:15:16+00:00
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
    '2026-06-11T16:15:16+00:00'
  ) RETURNING id
)
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

-- 582a600d | Vanilla (M) | QRIS | 2026-06-11T16:15:26+00:00
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
    '2026-06-11T16:15:26+00:00'
  ) RETURNING id
)
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

-- 542ff2d6 | Baileys Latte (M) | QRIS | 2026-06-11T16:15:58+00:00
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
    '2026-06-11T16:15:58+00:00'
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

-- 234100cf | Baileys Latte (M) | CASH | 2026-06-11T16:16:57+00:00
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
    '2026-06-11T16:16:57+00:00'
  ) RETURNING id
)
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

-- d5cd0fc7 | Baileys Latte (M) | CASH | 2026-06-11T16:17:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-11T16:17:06+00:00'
  ) RETURNING id
)
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

-- 185f8f3d | Butterscotch (M) | CASH | 2026-06-11T16:19:49+00:00
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
    '2026-06-11T16:19:49+00:00'
  ) RETURNING id
)
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

-- 374be601 | Butterscotch (M) | QRIS | 2026-06-11T16:20:12+00:00
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
    '2026-06-11T16:20:12+00:00'
  ) RETURNING id
)
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

-- c5e48202 | Baileys Latte (M) | QRIS | 2026-06-11T16:35:15+00:00
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
    '2026-06-11T16:35:15+00:00'
  ) RETURNING id
)
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

-- fdba8eaa | Baileys Latte (M) | QRIS | 2026-06-11T17:25:45+00:00
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
    '2026-06-11T17:25:45+00:00'
  ) RETURNING id
)
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

-- f570d711 | Vanilla (M) | QRIS | 2026-06-11T17:26:08+00:00
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
    '2026-06-11T17:26:08+00:00'
  ) RETURNING id
)
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

-- c31b1327 | Baileys Latte (M) | QRIS | 2026-06-11T17:26:52+00:00
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
    '2026-06-11T17:26:52+00:00'
  ) RETURNING id
)
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

-- 340b5450 | Butterscotch (M) | CASH | 2026-06-11T17:27:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-11T17:27:08+00:00'
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

-- 9e7885b5 | Vanilla (M) | QRIS | 2026-06-11T17:27:29+00:00
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
    '2026-06-11T17:27:29+00:00'
  ) RETURNING id
)
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

-- 75836b12 | Salted Caramel (M) | CASH | 2026-06-11T17:28:25+00:00
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
    '2026-06-11T17:28:25+00:00'
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

-- 40c2b1ea | Hazelnut (M) | CASH | 2026-06-11T17:28:45+00:00
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
    '2026-06-11T17:28:45+00:00'
  ) RETURNING id
)
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

-- 6501116c | Baileys Latte (M) | CASH | 2026-06-11T17:30:01+00:00
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
    '2026-06-11T17:30:01+00:00'
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

-- 58fa43db | Butterscotch (M) | CASH | 2026-06-11T17:30:04+00:00
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
    '2026-06-11T17:30:04+00:00'
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

-- 07661ec1 | Baileys Latte (M) | QRIS | 2026-06-11T17:30:07+00:00
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
    '2026-06-11T17:30:07+00:00'
  ) RETURNING id
)
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

-- a3d09731 | Baileys Latte (M) | CASH | 2026-06-11T17:30:05+00:00
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
    '2026-06-11T17:30:05+00:00'
  ) RETURNING id
)
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

-- 287b3adf | Butterscotch (M) | CASH | 2026-06-11T17:30:41+00:00
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
    '2026-06-11T17:30:41+00:00'
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

-- 9661d622 | Butterscotch (M) | CASH | 2026-06-11T17:32:14+00:00
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
    '2026-06-11T17:32:14+00:00'
  ) RETURNING id
)
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

-- f379aef3 | Baileys Latte (M) | CASH | 2026-06-11T17:32:49+00:00
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
    '2026-06-11T17:32:49+00:00'
  ) RETURNING id
)
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

-- 12e7018c | Baileys Latte (M) | QRIS | 2026-06-11T17:33:12+00:00
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
    '2026-06-11T17:33:12+00:00'
  ) RETURNING id
)
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

-- fd18b1ff | Gula Aren (M) | QRIS | 2026-06-11T17:36:50+00:00
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
    '2026-06-11T17:36:50+00:00'
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

-- 09f01fb9 | Butterscotch (M) | CASH | 2026-06-11T17:38:36+00:00
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
    '2026-06-11T17:38:36+00:00'
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

-- 120d5d8f | Butterscotch (M) | CASH | 2026-06-11T17:39:02+00:00
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
    '2026-06-11T17:39:02+00:00'
  ) RETURNING id
)
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

-- 61c7cb3b | Gula Aren (M) | CASH | 2026-06-11T17:40:28+00:00
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
    '2026-06-11T17:40:28+00:00'
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

-- ad241a6b | Baileys Latte (M) | QRIS | 2026-06-11T17:43:57+00:00
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
    '2026-06-11T17:43:57+00:00'
  ) RETURNING id
)
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

-- f6ec5260 | Butterscotch (M) | QRIS | 2026-06-11T17:45:07+00:00
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
    '2026-06-11T17:45:07+00:00'
  ) RETURNING id
)
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

-- dfc2f87e | Salted Caramel (M) | QRIS | 2026-06-11T17:45:16+00:00
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
    '2026-06-11T17:45:16+00:00'
  ) RETURNING id
)
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

-- 24cc86a0 | Hazelnut (M) | CASH | 2026-06-11T17:49:48+00:00
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
    '2026-06-11T17:49:48+00:00'
  ) RETURNING id
)
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

-- 79646b4d | Baileys Latte (M) | QRIS | 2026-06-11T17:52:13+00:00
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
    '2026-06-11T17:52:13+00:00'
  ) RETURNING id
)
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

-- 55566521 | Butterscotch (M) | QRIS | 2026-06-11T17:52:55+00:00
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
    '2026-06-11T17:52:55+00:00'
  ) RETURNING id
)
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

-- 509b9399 | Vanilla (M) | CASH | 2026-06-11T17:52:46+00:00
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
    '2026-06-11T17:52:46+00:00'
  ) RETURNING id
)
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

-- ca7c151f | Baileys Latte (M) | CASH | 2026-06-11T17:53:01+00:00
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
    '2026-06-11T17:53:01+00:00'
  ) RETURNING id
)
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

-- 6bdf2353 | Baileys Latte (M) | QRIS | 2026-06-11T17:53:06+00:00
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
    '2026-06-11T17:53:06+00:00'
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

-- f778047e | Butterscotch (M) | QRIS | 2026-06-11T17:53:13+00:00
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
    '2026-06-11T17:53:13+00:00'
  ) RETURNING id
)
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

-- e6bd8085 | Gula Aren (M) | CASH | 2026-06-11T17:54:51+00:00
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
    '2026-06-11T17:54:51+00:00'
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

-- 0de2d41d | Baileys Latte (M) | QRIS | 2026-06-11T17:55:36+00:00
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
    '2026-06-11T17:55:36+00:00'
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

-- 7f2274a4 | Butterscotch (M) | CASH | 2026-06-11T17:57:23+00:00
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
    '2026-06-11T17:57:23+00:00'
  ) RETURNING id
)
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

-- ef3b9920 | Vanilla (M) | QRIS | 2026-06-11T18:01:45+00:00
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
    '2026-06-11T18:01:45+00:00'
  ) RETURNING id
)
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

-- c309557e | Salted Caramel (M) | QRIS | 2026-06-11T18:02:07+00:00
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
    '2026-06-11T18:02:07+00:00'
  ) RETURNING id
)
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

-- c9d1f24f | Butterscotch (M) | CASH | 2026-06-11T18:05:50+00:00
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
    '2026-06-11T18:05:50+00:00'
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

-- f0033d4d | Butterscotch (M) | CASH | 2026-06-11T18:07:33+00:00
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
    '2026-06-11T18:07:33+00:00'
  ) RETURNING id
)
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

-- e9415c99 | Hazelnut (M) | CASH | 2026-06-11T18:07:39+00:00
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
    '2026-06-11T18:07:39+00:00'
  ) RETURNING id
)
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

-- 9654ab1c | Butterscotch (M) | CASH | 2026-06-11T18:07:50+00:00
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
    '2026-06-11T18:07:50+00:00'
  ) RETURNING id
)
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

-- 0c2d88d8 | Gula Aren (M) | CASH | 2026-06-11T18:08:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T18:08:01+00:00'
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

-- 8202dadf | Baileys Latte (M) | CASH | 2026-06-11T18:08:15+00:00
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
    6862.00,
    '2026-06-11T18:08:15+00:00'
  ) RETURNING id
)
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

-- 6684ebb3 | Gula Aren (M) | CASH | 2026-06-11T18:08:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T18:08:26+00:00'
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

-- b76def70 | Baileys Latte (M) | CASH | 2026-06-11T18:08:58+00:00
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
    '2026-06-11T18:08:58+00:00'
  ) RETURNING id
)
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

-- d5ebc88e | Butterscotch (M) | QRIS | 2026-06-11T18:12:56+00:00
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
    '2026-06-11T18:12:56+00:00'
  ) RETURNING id
)
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

-- 9f7eae31 | Gula Aren (M) | QRIS | 2026-06-11T18:18:02+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T18:18:02+00:00'
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

-- 11f82336 | Baileys Latte (M) | QRIS | 2026-06-11T18:29:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '2026-06-11T18:29:56+00:00'
  ) RETURNING id
)
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

-- 76867c3c | Gula Aren (M) | CASH | 2026-06-11T18:50:01+00:00
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
    '2026-06-11T18:50:01+00:00'
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

-- f953e283 | Butterscotch (M) | CASH | 2026-06-11T18:50:17+00:00
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
    '2026-06-11T18:50:17+00:00'
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

-- 6cbe92c5 | Baileys Latte (M) | QRIS | 2026-06-11T18:50:53+00:00
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
    '2026-06-11T18:50:53+00:00'
  ) RETURNING id
)
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

-- eab4005e | Salted Caramel (M) | QRIS | 2026-06-11T18:50:59+00:00
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
    '2026-06-11T18:50:59+00:00'
  ) RETURNING id
)
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

-- 0ca9fec6 | Baileys Latte (M) | QRIS | 2026-06-11T18:59:13+00:00
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
    '2026-06-11T18:59:13+00:00'
  ) RETURNING id
)
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

-- 4bb17f1f | Butterscotch (M) | QRIS | 2026-06-11T18:59:24+00:00
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
    '2026-06-11T18:59:24+00:00'
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

-- 189693d1 | Gula Aren (M) | QRIS | 2026-06-11T19:00:04+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-11T19:00:04+00:00'
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

-- edd2791b | Butterscotch (M) | QRIS | 2026-06-11T19:00:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    150000.00,
    0.00,
    0.00,
    84437.00,
    '2026-06-11T19:00:54+00:00'
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
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ffc0f353 | Salted Caramel (M) | QRIS | 2026-06-11T19:01:02+00:00
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
    '2026-06-11T19:01:02+00:00'
  ) RETURNING id
)
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

-- b8cd1122 | Gula Aren (M) | CASH | 2026-06-11T19:01:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-11T19:01:27+00:00'
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

-- 3b6203dc | Salted Caramel (M) | CASH | 2026-06-11T19:01:37+00:00
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
    '2026-06-11T19:01:37+00:00'
  ) RETURNING id
)
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

-- f505e5b8 | Hazelnut (M) | CASH | 2026-06-11T19:01:45+00:00
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
    '2026-06-11T19:01:45+00:00'
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

-- da08bbd4 | Baileys Latte (M) | CASH | 2026-06-11T19:01:55+00:00
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
    54900.00,
    '2026-06-11T19:01:55+00:00'
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

-- 0ca011f2 | Baileys Latte (M) | CASH | 2026-06-11T19:04:08+00:00
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
    '2026-06-11T19:04:08+00:00'
  ) RETURNING id
)
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

-- 0435a48b | Gula Aren (M) | CASH | 2026-06-11T19:04:16+00:00
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
    '2026-06-11T19:04:16+00:00'
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

-- 44964945 | Baileys Latte (M) | QRIS | 2026-06-11T19:23:09+00:00
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
    '2026-06-11T19:23:09+00:00'
  ) RETURNING id
)
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

-- 79221b07 | Gula Aren (M) | QRIS | 2026-06-11T19:24:48+00:00
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
    '2026-06-11T19:24:48+00:00'
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

-- d85675f6 | Baileys Latte (M) | CASH | 2026-06-11T19:38:18+00:00
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
    '2026-06-11T19:38:18+00:00'
  ) RETURNING id
)
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

-- afd28022 | Baileys Latte (M) | CASH | 2026-06-11T19:45:55+00:00
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
    '2026-06-11T19:45:55+00:00'
  ) RETURNING id
)
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

-- 177bbfa0 | Baileys Latte (M) | CASH | 2026-06-11T20:22:13+00:00
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
    '2026-06-11T20:22:13+00:00'
  ) RETURNING id
)
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

-- 5a686f7f | Gula Aren (M) | QRIS | 2026-06-11T20:22:10+00:00
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
    '2026-06-11T20:22:10+00:00'
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

-- 8e7c9cb2 | Butterscotch (M) | QRIS | 2026-06-11T20:22:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-11T20:22:22+00:00'
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

-- 62a24007 | Gula Aren (M) | CASH | 2026-06-11T20:23:03+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '2026-06-11T20:23:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  8,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 85648ea4 | Butterscotch (M) | CASH | 2026-06-11T20:23:10+00:00
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
    49255.00,
    '2026-06-11T20:23:10+00:00'
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

-- 7d8bc7ac | Salted Caramel (M) | CASH | 2026-06-11T20:23:18+00:00
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
    '2026-06-11T20:23:18+00:00'
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

-- 93ce8e7d | Baileys Latte (M) | CASH | 2026-06-11T20:23:34+00:00
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
    20587.00,
    '2026-06-11T20:23:34+00:00'
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

-- 7c0a199d | Baileys Latte (M) | CASH | 2026-06-11T20:46:01+00:00
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
    '2026-06-11T20:46:01+00:00'
  ) RETURNING id
)
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

-- 80f78842 | Salted Caramel (M) | CASH | 2026-06-11T20:48:28+00:00
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
    '2026-06-11T20:48:28+00:00'
  ) RETURNING id
)
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

-- 1c973f74 | Baileys Latte (M) | QRIS | 2026-06-11T21:06:25+00:00
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
    '2026-06-11T21:06:25+00:00'
  ) RETURNING id
)
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

-- d2208fd8 | Butterscotch (M) | CASH | 2026-06-11T21:06:35+00:00
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
    '2026-06-11T21:06:35+00:00'
  ) RETURNING id
)
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

-- e4939548 | Butterscotch (M) | CASH | 2026-06-11T21:06:40+00:00
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
    '2026-06-11T21:06:40+00:00'
  ) RETURNING id
)
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

-- 2c40b8c5 | Baileys Latte (M) | CASH | 2026-06-11T21:06:45+00:00
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
    '2026-06-11T21:06:45+00:00'
  ) RETURNING id
)
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

-- 2a08b448 | Baileys Latte (M) | CASH | 2026-06-11T21:19:22+00:00
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
    '2026-06-11T21:19:22+00:00'
  ) RETURNING id
)
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

-- 39bee991 | Baileys Latte (M) | QRIS | 2026-06-11T21:35:52+00:00
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
    '2026-06-11T21:35:52+00:00'
  ) RETURNING id
)
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

-- 43d1e67c | Gula Aren (M) | QRIS | 2026-06-11T22:14:34+00:00
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
    '2026-06-11T22:14:34+00:00'
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

-- c9f85743 | Baileys Latte (M) | CASH | 2026-06-11T22:26:37+00:00
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
    '2026-06-11T22:26:37+00:00'
  ) RETURNING id
)
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

-- ab13d40e | Butterscotch (M) | QRIS | 2026-06-11T23:09:27+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-11T23:09:27+00:00'
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

-- 63e17ad8 | Gula Aren (M) | QRIS | 2026-06-11T23:09:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-11T23:09:36+00:00'
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

-- bacfc06d | Gula Aren (M) | CASH | 2026-06-11T23:11:05+00:00
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
    '2026-06-11T23:11:05+00:00'
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

-- b2dfc18d | Butterscotch (M) | CASH | 2026-06-11T23:11:15+00:00
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
    '2026-06-11T23:11:15+00:00'
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

-- 2cee59a7 | Salted Caramel (M) | CASH | 2026-06-11T23:11:36+00:00
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
    '2026-06-11T23:11:36+00:00'
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

-- 2ebcbec1 | Baileys Latte (M) | CASH | 2026-06-11T23:11:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '2026-06-11T23:11:42+00:00'
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

-- 79719867 | Butterscotch (M) | QRIS | 2026-06-11T23:48:56+00:00
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
    '2026-06-11T23:48:56+00:00'
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

-- 4e098a5c | Salted Caramel (M) | QRIS | 2026-06-11T23:49:06+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '2026-06-11T23:49:06+00:00'
  ) RETURNING id
)
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

-- a438a45f | Gula Aren (M) | CASH | 2026-06-11T23:49:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-11T23:49:18+00:00'
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

-- 72220555 | Baileys Latte (M) | CASH | 2026-06-11T23:49:25+00:00
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
    '2026-06-11T23:49:25+00:00'
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

-- 156e12d1 | Gula Aren (M) | CASH | 2026-06-12T09:24:01+00:00
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
    '2026-06-12T09:24:01+00:00'
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

-- e8d695d4 | Gula Aren (M) | QRIS | 2026-06-12T09:24:07+00:00
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
    '2026-06-12T09:24:07+00:00'
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

-- c7fe29be | Gula Aren (M) | CASH | 2026-06-12T09:52:27+00:00
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
    '2026-06-12T09:52:27+00:00'
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

-- 502b4cf3 | Gula Aren (M) | QRIS | 2026-06-12T09:52:36+00:00
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
    '2026-06-12T09:52:36+00:00'
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

-- 3e877ec1 | Butterscotch (M) | QRIS | 2026-06-12T10:01:25+00:00
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
    '2026-06-12T10:01:25+00:00'
  ) RETURNING id
)
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

-- da49fab8 | Butterscotch (M) | QRIS | 2026-06-12T10:02:37+00:00
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
    '2026-06-12T10:02:37+00:00'
  ) RETURNING id
)
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

-- 860c523b | Cold Brew (M) | CASH | 2026-06-12T10:15:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-12T10:15:46+00:00'
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

-- 67782468 | Baileys Latte (M) | CASH | 2026-06-12T10:22:19+00:00
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
    6862.00,
    '2026-06-12T10:22:19+00:00'
  ) RETURNING id
)
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

-- d2bba7f8 | Gula Aren (M) | CASH | 2026-06-12T10:22:29+00:00
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
    '2026-06-12T10:22:29+00:00'
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

-- b4ef5ae6 | Gula Aren (M) | CASH | 2026-06-12T10:28:20+00:00
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
    '2026-06-12T10:28:20+00:00'
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

-- 1242ea24 | Salted Caramel (M) | CASH | 2026-06-12T10:28:26+00:00
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
    '2026-06-12T10:28:26+00:00'
  ) RETURNING id
)
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

-- ac1626bf | Salted Caramel (M) | QRIS | 2026-06-12T10:34:44+00:00
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
    '2026-06-12T10:34:44+00:00'
  ) RETURNING id
)
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

-- 4c268a22 | Gula Aren (M) | QRIS | 2026-06-12T10:34:52+00:00
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
    '2026-06-12T10:34:52+00:00'
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

-- 19f240f0 | Butterscotch (M) | QRIS | 2026-06-12T10:40:20+00:00
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
    '2026-06-12T10:40:20+00:00'
  ) RETURNING id
)
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

-- 01a57739 | Gula Aren (M) | QRIS | 2026-06-12T10:40:25+00:00
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
    '2026-06-12T10:40:25+00:00'
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

-- 422f5e1c | Butterscotch (M) | QRIS | 2026-06-12T10:50:46+00:00
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
    '2026-06-12T10:50:46+00:00'
  ) RETURNING id
)
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

-- 5729f874 | Gula Aren (M) | QRIS | 2026-06-12T10:56:45+00:00
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
    '2026-06-12T10:56:45+00:00'
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

-- 309c2692 | Gula Aren (M) | CASH | 2026-06-12T10:58:52+00:00
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
    '2026-06-12T10:58:52+00:00'
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

-- 1edabe20 | Gula Aren (M) | QRIS | 2026-06-12T10:58:57+00:00
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
    '2026-06-12T10:58:57+00:00'
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

-- 9496a583 | Gula Aren (M) | CASH | 2026-06-12T11:03:54+00:00
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
    '2026-06-12T11:03:54+00:00'
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

-- 611c1648 | Vanilla (M) | CASH | 2026-06-12T11:04:01+00:00
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
    '2026-06-12T11:04:01+00:00'
  ) RETURNING id
)
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

-- bbcb5f91 | Gula Aren (M) | CASH | 2026-06-12T11:10:41+00:00
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
    '2026-06-12T11:10:41+00:00'
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

-- 8cf3b043 | Hazelnut (M) | CASH | 2026-06-12T11:10:46+00:00
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
    '2026-06-12T11:10:46+00:00'
  ) RETURNING id
)
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

-- d86e0e35 | Butterscotch (M) | QRIS | 2026-06-12T11:15:55+00:00
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
    '2026-06-12T11:15:55+00:00'
  ) RETURNING id
)
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

-- 2f5e2ee1 | Gula Aren (M) | QRIS | 2026-06-12T11:20:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-12T11:20:50+00:00'
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

-- e69c7581 | Cold Brew (M) | QRIS | 2026-06-12T11:20:57+00:00
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
    '2026-06-12T11:20:57+00:00'
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

-- c18bc3b1 | Baileys Latte (M) | QRIS | 2026-06-12T11:21:04+00:00
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
    '2026-06-12T11:21:04+00:00'
  ) RETURNING id
)
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

-- a703aedd | Vanilla (M) | CASH | 2026-06-12T11:21:18+00:00
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
    '2026-06-12T11:21:18+00:00'
  ) RETURNING id
)
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

-- 35d68b44 | Baileys Latte (M) | CASH | 2026-06-12T11:21:25+00:00
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
    '2026-06-12T11:21:25+00:00'
  ) RETURNING id
)
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

-- 9762303d | Gula Aren (M) | CASH | 2026-06-12T11:21:54+00:00
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
    '2026-06-12T11:21:54+00:00'
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

-- bdb59299 | Gula Aren (M) | QRIS | 2026-06-12T11:24:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-12T11:24:19+00:00'
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

-- a5389ae2 | Gula Aren (M) | QRIS | 2026-06-12T11:24:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-12T11:24:29+00:00'
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

-- 5fb4ef32 | Gula Aren (M) | CASH | 2026-06-12T11:25:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-12T11:25:19+00:00'
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

-- 489e2f96 | Butterscotch (M) | CASH | 2026-06-12T11:28:31+00:00
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
    '2026-06-12T11:28:31+00:00'
  ) RETURNING id
)
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

-- 4bb1ac9f | Baileys Latte (M) | CASH | 2026-06-12T11:28:36+00:00
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
    '2026-06-12T11:28:36+00:00'
  ) RETURNING id
)
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

-- e71c29c8 | Gula Aren (M) | QRIS | 2026-06-12T11:31:18+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-12T11:31:18+00:00'
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

-- 10680442 | Gula Aren (M) | QRIS | 2026-06-12T11:35:08+00:00
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
    '2026-06-12T11:35:08+00:00'
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

-- 28af4725 | Cold Brew (M) | QRIS | 2026-06-12T11:41:45+00:00
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
    '2026-06-12T11:41:45+00:00'
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

-- f3812355 | Gula Aren (M) | QRIS | 2026-06-12T11:46:57+00:00
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
    '2026-06-12T11:46:57+00:00'
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

-- 7d7156c5 | Gula Aren (M) | CASH | 2026-06-12T11:47:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-12T11:47:51+00:00'
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

-- 01ef57d3 | Butterscotch (M) | CASH | 2026-06-12T11:47:59+00:00
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
    '2026-06-12T11:47:59+00:00'
  ) RETURNING id
)
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

-- cc23d64c | Gula Aren (M) | QRIS | 2026-06-12T11:49:39+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '2026-06-12T11:49:39+00:00'
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

-- 17a329ce | Butterscotch (M) | QRIS | 2026-06-12T11:51:54+00:00
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
    '2026-06-12T11:51:54+00:00'
  ) RETURNING id
)
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

-- eb3eb829 | Baileys Latte (M) | QRIS | 2026-06-12T11:51:58+00:00
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
    '2026-06-12T11:51:58+00:00'
  ) RETURNING id
)
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

-- ddb1e717 | Salted Caramel (M) | CASH | 2026-06-12T11:52:00+00:00
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
    '2026-06-12T11:52:00+00:00'
  ) RETURNING id
)
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

-- 85af2a5e | Baileys Latte (M) | CASH | 2026-06-12T12:17:23+00:00
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
    '2026-06-12T12:17:23+00:00'
  ) RETURNING id
)
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

-- ecdb583f | Cold Brew (M) | QRIS | 2026-06-12T12:23:42+00:00
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
    '2026-06-12T12:23:42+00:00'
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

-- 0f8cc5bd | Gula Aren (M) | CASH | 2026-06-12T12:23:48+00:00
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
    '2026-06-12T12:23:48+00:00'
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

-- 1b0f2238 | Cold Brew (M) | CASH | 2026-06-12T12:23:54+00:00
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
    '2026-06-12T12:23:54+00:00'
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

-- d0ae49fd | Baileys Latte (M) | QRIS | 2026-06-12T12:30:14+00:00
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
    '2026-06-12T12:30:14+00:00'
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

-- 6d352dd0 | Gula Aren (M) | QRIS | 2026-06-12T12:30:22+00:00
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
    '2026-06-12T12:30:22+00:00'
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

-- 53000c89 | Gula Aren (M) | CASH | 2026-06-12T12:30:36+00:00
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
    '2026-06-12T12:30:36+00:00'
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

-- 5296dc1a | Butterscotch (M) | QRIS | 2026-06-12T12:30:43+00:00
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
    '2026-06-12T12:30:43+00:00'
  ) RETURNING id
)
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

-- b9654591 | Gula Aren (M) | CASH | 2026-06-12T12:31:36+00:00
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
    '2026-06-12T12:31:36+00:00'
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

-- 7b2d4107 | Gula Aren (M) | QRIS | 2026-06-12T12:38:10+00:00
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
    '2026-06-12T12:38:10+00:00'
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

-- 14e64df7 | Gula Aren (M) | CASH | 2026-06-12T12:38:45+00:00
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
    '2026-06-12T12:38:45+00:00'
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

-- 60bc652c | Cold Brew (M) | CASH | 2026-06-12T12:42:05+00:00
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
    '2026-06-12T12:42:05+00:00'
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

-- 85ac5441 | Gula Aren (M) | CASH | 2026-06-12T12:42:02+00:00
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
    '2026-06-12T12:42:02+00:00'
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

-- 620156fb | Hazelnut (M) | QRIS | 2026-06-12T12:42:20+00:00
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
    '2026-06-12T12:42:20+00:00'
  ) RETURNING id
)
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

-- 27df7ac5 | Vanilla (M) | QRIS | 2026-06-12T12:42:29+00:00
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
    '2026-06-12T12:42:29+00:00'
  ) RETURNING id
)
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

-- 3dac5323 | Salted Caramel (M) | QRIS | 2026-06-12T12:43:15+00:00
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
    '2026-06-12T12:43:15+00:00'
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

-- 4bfbf820 | Cold Brew (M) | CASH | 2026-06-12T12:44:19+00:00
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
    '2026-06-12T12:44:19+00:00'
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

-- c29a99de | Baileys Latte (M) | QRIS | 2026-06-12T12:44:12+00:00
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
    '2026-06-12T12:44:12+00:00'
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

-- 1ddb652c | Baileys Latte (M) | QRIS | 2026-06-12T12:45:26+00:00
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
    '2026-06-12T12:45:26+00:00'
  ) RETURNING id
)
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

-- b9384d64 | Gula Aren (M) | CASH | 2026-06-12T12:45:35+00:00
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
    '2026-06-12T12:45:35+00:00'
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

-- 90bdbb8a | Butterscotch (M) | CASH | 2026-06-12T12:46:25+00:00
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
    35182.00,
    '2026-06-12T12:46:25+00:00'
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

-- 1b7ea925 | Baileys Latte (M) | CASH | 2026-06-12T12:54:40+00:00
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
    '2026-06-12T12:54:40+00:00'
  ) RETURNING id
)
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

-- 01ba010c | Butterscotch (M) | CASH | 2026-06-12T12:54:46+00:00
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
    '2026-06-12T12:54:46+00:00'
  ) RETURNING id
)
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

-- e4b6bd0a | Baileys Latte (M) | QRIS | 2026-06-12T12:54:49+00:00
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
    '2026-06-12T12:54:49+00:00'
  ) RETURNING id
)
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

-- c71fd877 | Butterscotch (M) | CASH | 2026-06-12T13:00:50+00:00
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
    '2026-06-12T13:00:50+00:00'
  ) RETURNING id
)
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

-- faf7e5c4 | Gula Aren (M) | CASH | 2026-06-12T13:03:05+00:00
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
    '2026-06-12T13:03:05+00:00'
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

-- bd67930b | Butterscotch (M) | CASH | 2026-06-12T13:09:58+00:00
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
    '2026-06-12T13:09:58+00:00'
  ) RETURNING id
)
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

-- ed0b5a5f | Gula Aren (M) | QRIS | 2026-06-12T13:16:50+00:00
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
    '2026-06-12T13:16:50+00:00'
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

-- b343d1c8 | Gula Aren (M) | QRIS | 2026-06-12T13:16:59+00:00
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
    '2026-06-12T13:16:59+00:00'
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

-- a796fc89 | Baileys Latte (M) | QRIS | 2026-06-12T13:17:07+00:00
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
    '2026-06-12T13:17:07+00:00'
  ) RETURNING id
)
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

-- 0d982240 | Butterscotch (M) | QRIS | 2026-06-12T13:17:14+00:00
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
    '2026-06-12T13:17:14+00:00'
  ) RETURNING id
)
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

-- 26aa7f49 | Salted Caramel (M) | QRIS | 2026-06-12T13:17:27+00:00
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
    '2026-06-12T13:17:27+00:00'
  ) RETURNING id
)
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

-- 93515b1e | Baileys Latte (M) | QRIS | 2026-06-12T13:18:05+00:00
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
    '2026-06-12T13:18:05+00:00'
  ) RETURNING id
)
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

-- 3135adb7 | Hazelnut (M) | QRIS | 2026-06-12T13:20:14+00:00
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
    '2026-06-12T13:20:14+00:00'
  ) RETURNING id
)
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

-- 026efcbf | Gula Aren (M) | CASH | 2026-06-12T13:21:00+00:00
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
    '2026-06-12T13:21:00+00:00'
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

-- e314d580 | Butterscotch (M) | CASH | 2026-06-12T13:27:31+00:00
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
    '2026-06-12T13:27:31+00:00'
  ) RETURNING id
)
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

-- 7915cf43 | Salted Caramel (M) | CASH | 2026-06-12T13:33:12+00:00
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
    '2026-06-12T13:33:12+00:00'
  ) RETURNING id
)
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

-- 6438841c | Gula Aren (M) | QRIS | 2026-06-12T13:33:20+00:00
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
    '2026-06-12T13:33:20+00:00'
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

-- 71cbd94e | Gula Aren (M) | CASH | 2026-06-12T13:33:44+00:00
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
    '2026-06-12T13:33:44+00:00'
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

-- fda6a6d4 | Butterscotch (M) | CASH | 2026-06-12T13:35:31+00:00
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
    '2026-06-12T13:35:31+00:00'
  ) RETURNING id
)
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

-- 1974fe54 | Gula Aren (M) | CASH | 2026-06-12T13:45:26+00:00
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
    '2026-06-12T13:45:26+00:00'
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

-- 113eafcb | Gula Aren (M) | QRIS | 2026-06-12T13:59:53+00:00
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
    '2026-06-12T13:59:53+00:00'
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

-- ae5adb79 | Gula Aren (M) | CASH | 2026-06-12T14:01:29+00:00
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
    '2026-06-12T14:01:29+00:00'
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

-- 1b102922 | Cold Brew (M) | CASH | 2026-06-12T14:05:39+00:00
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
    '2026-06-12T14:05:39+00:00'
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

-- 72e41cce | Gula Aren (M) | CASH | 2026-06-12T14:07:06+00:00
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
    '2026-06-12T14:07:06+00:00'
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

-- 7f2c276c | Butterscotch (M) | QRIS | 2026-06-12T14:07:12+00:00
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
    '2026-06-12T14:07:12+00:00'
  ) RETURNING id
)
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

-- 8e0706b2 | Baileys Latte (M) | QRIS | 2026-06-12T14:07:20+00:00
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
    '2026-06-12T14:07:20+00:00'
  ) RETURNING id
)
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

-- 73a09014 | Gula Aren (M) | CASH | 2026-06-12T14:15:25+00:00
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
    '2026-06-12T14:15:25+00:00'
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

-- 3b1d94a6 | Gula Aren (M) | QRIS | 2026-06-12T14:17:23+00:00
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
    '2026-06-12T14:17:23+00:00'
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

-- 0dd108c8 | Butterscotch (M) | QRIS | 2026-06-12T14:17:30+00:00
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
    '2026-06-12T14:17:30+00:00'
  ) RETURNING id
)
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

-- 50b8de1c | Butterscotch (M) | QRIS | 2026-06-12T14:19:16+00:00
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
    '2026-06-12T14:19:16+00:00'
  ) RETURNING id
)
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

-- 8e8d5607 | Salted Caramel (M) | QRIS | 2026-06-12T14:22:29+00:00
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
    '2026-06-12T14:22:29+00:00'
  ) RETURNING id
)
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

-- f5596fe3 | Gula Aren (M) | QRIS | 2026-06-12T14:27:25+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-12T14:27:25+00:00'
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

-- 3e025ddb | Butterscotch (M) | QRIS | 2026-06-12T14:32:34+00:00
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
    '2026-06-12T14:32:34+00:00'
  ) RETURNING id
)
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

-- 72505908 | Butterscotch (M) | QRIS | 2026-06-12T14:36:21+00:00
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
    '2026-06-12T14:36:21+00:00'
  ) RETURNING id
)
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

-- 649faa00 | Baileys Latte (M) | QRIS | 2026-06-12T14:36:31+00:00
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
    '2026-06-12T14:36:31+00:00'
  ) RETURNING id
)
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

-- 11c1c095 | Cold Brew (M) | QRIS | 2026-06-12T14:37:52+00:00
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
    '2026-06-12T14:37:52+00:00'
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

-- f33ec865 | Gula Aren (M) | QRIS | 2026-06-12T14:43:19+00:00
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
    '2026-06-12T14:43:19+00:00'
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

-- d92cbfe9 | Gula Aren (M) | CASH | 2026-06-12T14:43:25+00:00
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
    '2026-06-12T14:43:25+00:00'
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

-- 7efeaf73 | Vanilla (M) | QRIS | 2026-06-12T14:45:52+00:00
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
    '2026-06-12T14:45:52+00:00'
  ) RETURNING id
)
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

-- 9e0efc12 | Gula Aren (M) | QRIS | 2026-06-12T14:46:54+00:00
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
    '2026-06-12T14:46:54+00:00'
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

-- 17bdcd5a | Vanilla (M) | QRIS | 2026-06-12T14:52:12+00:00
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
    '2026-06-12T14:52:12+00:00'
  ) RETURNING id
)
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

-- fa8a7120 | Baileys Latte (M) | CASH | 2026-06-12T14:59:17+00:00
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
    '2026-06-12T14:59:17+00:00'
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

-- c298bc8d | Cold Brew (M) | CASH | 2026-06-12T15:03:13+00:00
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
    '2026-06-12T15:03:13+00:00'
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

-- 567d7f8a | Baileys Latte (M) | QRIS | 2026-06-12T15:11:31+00:00
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
    '2026-06-12T15:11:31+00:00'
  ) RETURNING id
)
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

-- 401b97ce | Butterscotch (M) | QRIS | 2026-06-12T15:11:55+00:00
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
    '2026-06-12T15:11:55+00:00'
  ) RETURNING id
)
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

-- d674e5b5 | Vanilla (M) | QRIS | 2026-06-12T15:14:58+00:00
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
    '2026-06-12T15:14:58+00:00'
  ) RETURNING id
)
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

-- e95eea40 | Butterscotch (M) | QRIS | 2026-06-12T15:16:58+00:00
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
    '2026-06-12T15:16:58+00:00'
  ) RETURNING id
)
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

-- 00f79b62 | Butterscotch (M) | QRIS | 2026-06-12T15:15:05+00:00
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
    '2026-06-12T15:15:05+00:00'
  ) RETURNING id
)
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

-- a8ce3798 | Vanilla (M) | CASH | 2026-06-12T15:38:11+00:00
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
    '2026-06-12T15:38:11+00:00'
  ) RETURNING id
)
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

-- d47433cb | Butterscotch (M) | QRIS | 2026-06-12T15:38:18+00:00
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
    '2026-06-12T15:38:18+00:00'
  ) RETURNING id
)
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

-- 3bbdefd1 | Baileys Latte (M) | QRIS | 2026-06-12T15:38:24+00:00
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
    '2026-06-12T15:38:24+00:00'
  ) RETURNING id
)
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

-- 9a851fd8 | Vanilla (M) | CASH | 2026-06-12T15:38:34+00:00
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
    '2026-06-12T15:38:34+00:00'
  ) RETURNING id
)
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

-- dc15272f | Gula Aren (M) | QRIS | 2026-06-12T15:46:51+00:00
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
    '2026-06-12T15:46:51+00:00'
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

-- 555cab5d | Gula Aren (M) | CASH | 2026-06-12T15:47:06+00:00
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
    '2026-06-12T15:47:06+00:00'
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

-- c493ea22 | Butterscotch (M) | CASH | 2026-06-12T15:47:17+00:00
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
    '2026-06-12T15:47:17+00:00'
  ) RETURNING id
)
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

-- cad6a392 | Baileys Latte (M) | QRIS | 2026-06-12T15:49:09+00:00
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
    '2026-06-12T15:49:09+00:00'
  ) RETURNING id
)
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

-- 5a350319 | Gula Aren (M) | CASH | 2026-06-12T15:49:56+00:00
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
    '2026-06-12T15:49:56+00:00'
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

-- 59c27b12 | Gula Aren (M) | QRIS | 2026-06-12T15:50:04+00:00
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
    '2026-06-12T15:50:04+00:00'
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

-- 7996531e | Butterscotch (M) | CASH | 2026-06-12T15:50:18+00:00
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
    '2026-06-12T15:50:18+00:00'
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

-- c0910960 | Vanilla (M) | CASH | 2026-06-12T15:50:25+00:00
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
    '2026-06-12T15:50:25+00:00'
  ) RETURNING id
)
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

-- 330c8f50 | Salted Caramel (M) | CASH | 2026-06-12T15:50:31+00:00
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
    '2026-06-12T15:50:31+00:00'
  ) RETURNING id
)
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

-- ed9ae049 | Hazelnut (M) | CASH | 2026-06-12T15:50:35+00:00
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
    '2026-06-12T15:50:35+00:00'
  ) RETURNING id
)
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

-- 0eae5765 | Cold Brew (M) | CASH | 2026-06-12T15:50:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'CASH',
    30000.00,
    0.00,
    0.00,
    16086.00,
    '2026-06-12T15:50:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  3,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 7b1c6ab0 | Baileys Latte (M) | QRIS | 2026-06-12T15:51:09+00:00
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
    '2026-06-12T15:51:09+00:00'
  ) RETURNING id
)
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

-- 60ab36ce | Butterscotch (M) | CASH | 2026-06-12T15:56:42+00:00
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
    '2026-06-12T15:56:42+00:00'
  ) RETURNING id
)
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

-- 443ef85e | Baileys Latte (M) | CASH | 2026-06-12T16:01:08+00:00
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
    '2026-06-12T16:01:08+00:00'
  ) RETURNING id
)
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

-- 9ff052e1 | Butterscotch (M) | CASH | 2026-06-12T16:13:13+00:00
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
    '2026-06-12T16:13:13+00:00'
  ) RETURNING id
)
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

-- 3af9d63f | Hazelnut (M) | CASH | 2026-06-12T16:13:19+00:00
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
    '2026-06-12T16:13:19+00:00'
  ) RETURNING id
)
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

-- 52d944d3 | Baileys Latte (M) | CASH | 2026-06-12T16:16:42+00:00
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
    '2026-06-12T16:16:42+00:00'
  ) RETURNING id
)
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

-- e6384d33 | Salted Caramel (M) | QRIS | 2026-06-12T16:20:48+00:00
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
    '2026-06-12T16:20:48+00:00'
  ) RETURNING id
)
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

-- 59931fbd | Salted Caramel (M) | CASH | 2026-06-12T16:22:57+00:00
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
    '2026-06-12T16:22:57+00:00'
  ) RETURNING id
)
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

-- dceb3654 | Hazelnut (M) | CASH | 2026-06-12T16:23:06+00:00
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
    '2026-06-12T16:23:06+00:00'
  ) RETURNING id
)
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

-- 08da6be4 | Gula Aren (M) | QRIS | 2026-06-12T16:34:23+00:00
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
    '2026-06-12T16:34:23+00:00'
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

-- c1819157 | Baileys Latte (M) | CASH | 2026-06-12T16:34:30+00:00
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
    '2026-06-12T16:34:30+00:00'
  ) RETURNING id
)
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

-- a0f9ee6a | Cold Brew (M) | CASH | 2026-06-12T16:36:41+00:00
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
    '2026-06-12T16:36:41+00:00'
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

-- c4387ea1 | Butterscotch (M) | CASH | 2026-06-12T16:46:19+00:00
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
    '2026-06-12T16:46:19+00:00'
  ) RETURNING id
)
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

-- 17059d7c | Gula Aren (M) | CASH | 2026-06-12T16:46:26+00:00
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
    '2026-06-12T16:46:26+00:00'
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

-- a7aeec28 | Gula Aren (M) | CASH | 2026-06-12T16:52:03+00:00
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
    '2026-06-12T16:52:03+00:00'
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

-- 200d654d | Baileys Latte (M) | QRIS | 2026-06-12T16:56:09+00:00
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
    '2026-06-12T16:56:09+00:00'
  ) RETURNING id
)
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

-- be683b16 | Salted Caramel (M) | QRIS | 2026-06-12T17:03:06+00:00
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
    '2026-06-12T17:03:06+00:00'
  ) RETURNING id
)
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

-- 5861cc02 | Butterscotch (M) | CASH | 2026-06-12T17:03:39+00:00
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
    '2026-06-12T17:03:39+00:00'
  ) RETURNING id
)
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

-- efd38216 | Baileys Latte (M) | QRIS | 2026-06-12T17:03:51+00:00
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
    '2026-06-12T17:03:51+00:00'
  ) RETURNING id
)
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

-- 4eaaa2f8 | Baileys Latte (M) | CASH | 2026-06-12T17:04:17+00:00
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
    '2026-06-12T17:04:17+00:00'
  ) RETURNING id
)
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

-- be772dd3 | Butterscotch (M) | QRIS | 2026-06-12T17:12:50+00:00
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
    '2026-06-12T17:12:50+00:00'
  ) RETURNING id
)
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

-- 79c7e5e8 | Baileys Latte (M) | QRIS | 2026-06-12T17:15:30+00:00
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
    '2026-06-12T17:15:30+00:00'
  ) RETURNING id
)
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

-- eb420344 | Baileys Latte (M) | CASH | 2026-06-12T17:15:37+00:00
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
    '2026-06-12T17:15:37+00:00'
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

-- f2b3182a | Gula Aren (M) | CASH | 2026-06-12T17:15:41+00:00
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
    '2026-06-12T17:15:41+00:00'
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

-- 942087d3 | Baileys Latte (M) | QRIS | 2026-06-12T17:25:35+00:00
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
    '2026-06-12T17:25:35+00:00'
  ) RETURNING id
)
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

-- 34b228f2 | Baileys Latte (M) | QRIS | 2026-06-12T17:29:35+00:00
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
    '2026-06-12T17:29:35+00:00'
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

-- 49fc173b | Vanilla (M) | CASH | 2026-06-12T17:34:12+00:00
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
    '2026-06-12T17:34:12+00:00'
  ) RETURNING id
)
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

-- 43696263 | Baileys Latte (M) | QRIS | 2026-06-12T17:34:18+00:00
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
    '2026-06-12T17:34:18+00:00'
  ) RETURNING id
)
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

-- 1d755387 | Salted Caramel (M) | QRIS | 2026-06-12T17:34:23+00:00
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
    '2026-06-12T17:34:23+00:00'
  ) RETURNING id
)
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

-- a1bfa91c | Butterscotch (M) | QRIS | 2026-06-12T17:37:37+00:00
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
    '2026-06-12T17:37:37+00:00'
  ) RETURNING id
)
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

-- e5c6de06 | Gula Aren (M) | CASH | 2026-06-12T17:38:42+00:00
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
    '2026-06-12T17:38:42+00:00'
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

-- 06ca7111 | Butterscotch (M) | CASH | 2026-06-12T17:43:39+00:00
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
    '2026-06-12T17:43:39+00:00'
  ) RETURNING id
)
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

-- c065139e | Baileys Latte (M) | QRIS | 2026-06-12T17:45:02+00:00
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
    '2026-06-12T17:45:02+00:00'
  ) RETURNING id
)
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

-- a25b822e | Gula Aren (M) | CASH | 2026-06-12T17:49:21+00:00
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
    '2026-06-12T17:49:21+00:00'
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

-- 981c86d2 | Baileys Latte (M) | CASH | 2026-06-12T17:52:06+00:00
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
    '2026-06-12T17:52:06+00:00'
  ) RETURNING id
)
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

-- a0686ed9 | Gula Aren (M) | QRIS | 2026-06-12T17:55:38+00:00
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
    '2026-06-12T17:55:38+00:00'
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

-- 2baa45c3 | Salted Caramel (M) | QRIS | 2026-06-12T17:58:12+00:00
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
    '2026-06-12T17:58:12+00:00'
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

-- 4c41c7a0 | Gula Aren (M) | CASH | 2026-06-12T17:58:22+00:00
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
    '2026-06-12T17:58:22+00:00'
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

-- 1ede8144 | Vanilla (M) | CASH | 2026-06-12T17:58:52+00:00
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
    '2026-06-12T17:58:52+00:00'
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

-- 0c2647ed | Baileys Latte (M) | CASH | 2026-06-12T17:59:55+00:00
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
    '2026-06-12T17:59:55+00:00'
  ) RETURNING id
)
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

-- da6862af | Baileys Latte (M) | CASH | 2026-06-12T18:00:27+00:00
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
    '2026-06-12T18:00:27+00:00'
  ) RETURNING id
)
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

-- 6581c0cf | Butterscotch (M) | CASH | 2026-06-12T18:03:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'CASH',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '2026-06-12T18:03:32+00:00'
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

-- 9e71c127 | Gula Aren (M) | CASH | 2026-06-12T18:07:50+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '2026-06-12T18:07:50+00:00'
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

-- d1497114 | Gula Aren (M) | CASH | 2026-06-12T18:08:23+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '2026-06-12T18:08:23+00:00'
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

-- 63a17840 | Butterscotch (M) | QRIS | 2026-06-12T18:10:02+00:00
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
    '2026-06-12T18:10:02+00:00'
  ) RETURNING id
)
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

-- 1bebd9e7 | Gula Aren (M) | CASH | 2026-06-12T18:13:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    80000.00,
    0.00,
    0.00,
    35958.00,
    '2026-06-12T18:13:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  10,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 64f35838 | Gula Aren (M) | CASH | 2026-06-12T18:14:19+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    400000.00,
    0.00,
    0.00,
    179788.00,
    '2026-06-12T18:14:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  50,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 94c50a7c | Cold Brew (M) | CASH | 2026-06-12T18:14:56+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'CASH',
    300000.00,
    0.00,
    0.00,
    160862.00,
    '2026-06-12T18:14:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  30,
  10000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Cold Brew (M)' LIMIT 1
  ) AS p;

-- 5aa7c1bd | Salted Caramel (M) | QRIS | 2026-06-12T18:22:38+00:00
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
    '2026-06-12T18:22:38+00:00'
  ) RETURNING id
)
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

-- cdf99aa2 | Hazelnut (M) | QRIS | 2026-06-12T18:22:45+00:00
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
    '2026-06-12T18:22:45+00:00'
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

-- 99aff61a | Vanilla (M) | QRIS | 2026-06-12T18:22:50+00:00
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
    '2026-06-12T18:22:50+00:00'
  ) RETURNING id
)
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

-- 22ebe61f | Butterscotch (M) | QRIS | 2026-06-12T18:23:15+00:00
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
    '2026-06-12T18:23:15+00:00'
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

-- 53060b16 | Baileys Latte (M) | QRIS | 2026-06-12T18:23:35+00:00
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
    '2026-06-12T18:23:35+00:00'
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

-- 6b6067e3 | Cold Brew (M) | QRIS | 2026-06-12T18:23:55+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '2026-06-12T18:23:55+00:00'
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

-- c9f5360e | Baileys Latte (M) | CASH | 2026-06-12T18:24:38+00:00
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
    '2026-06-12T18:24:38+00:00'
  ) RETURNING id
)
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

-- 6f58f227 | Butterscotch (M) | CASH | 2026-06-12T18:25:42+00:00
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
    '2026-06-12T18:25:42+00:00'
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

-- 74105ff1 | Gula Aren (M) | QRIS | 2026-06-12T18:26:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-12T18:26:16+00:00'
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

-- ee6b73a3 | Vanilla (M) | QRIS | 2026-06-12T18:26:22+00:00
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
    '2026-06-12T18:26:22+00:00'
  ) RETURNING id
)
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

-- 6cf2c646 | Cold Brew (M) | QRIS | 2026-06-12T18:27:09+00:00
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
    '2026-06-12T18:27:09+00:00'
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

-- ad997888 | Cold Brew (M) | CASH | 2026-06-12T18:27:41+00:00
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
    '2026-06-12T18:27:41+00:00'
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

-- 1f65df26 | Hazelnut (M) | CASH | 2026-06-12T18:28:36+00:00
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
    '2026-06-12T18:28:36+00:00'
  ) RETURNING id
)
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

-- 3b875f86 | Salted Caramel (M) | CASH | 2026-06-12T18:29:08+00:00
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
    '2026-06-12T18:29:08+00:00'
  ) RETURNING id
)
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

-- 7f7d77e4 | Baileys Latte (M) | CASH | 2026-06-12T18:31:10+00:00
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
    '2026-06-12T18:31:10+00:00'
  ) RETURNING id
)
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

-- a1e56538 | Baileys Latte (M) | CASH | 2026-06-12T18:33:15+00:00
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
    '2026-06-12T18:33:15+00:00'
  ) RETURNING id
)
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

-- 8573fb45 | Baileys Latte (M) | CASH | 2026-06-12T18:35:56+00:00
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
    '2026-06-12T18:35:56+00:00'
  ) RETURNING id
)
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

-- b7b186fb | Hazelnut (M) | CASH | 2026-06-12T18:37:26+00:00
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
    '2026-06-12T18:37:26+00:00'
  ) RETURNING id
)
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

-- df822f8d | Hazelnut (M) | CASH | 2026-06-12T18:40:06+00:00
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
    '2026-06-12T18:40:06+00:00'
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

-- 0abf795a | Baileys Latte (M) | CASH | 2026-06-12T18:42:21+00:00
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
    '2026-06-12T18:42:21+00:00'
  ) RETURNING id
)
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

-- 5cf667d0 | Baileys Latte (M) | QRIS | 2026-06-12T18:48:50+00:00
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
    '2026-06-12T18:48:50+00:00'
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

-- 45a755b4 | Baileys Latte (M) | CASH | 2026-06-12T18:53:13+00:00
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
    '2026-06-12T18:53:13+00:00'
  ) RETURNING id
)
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

-- c7a2da34 | Baileys Latte (M) | CASH | 2026-06-12T18:56:07+00:00
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
    '2026-06-12T18:56:07+00:00'
  ) RETURNING id
)
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

-- d309ecec | Butterscotch (M) | QRIS | 2026-06-12T18:59:52+00:00
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
    '2026-06-12T18:59:52+00:00'
  ) RETURNING id
)
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

-- 2677ef8e | Butterscotch (M) | QRIS | 2026-06-12T19:00:18+00:00
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
    '2026-06-12T19:00:18+00:00'
  ) RETURNING id
)
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

-- 1c6c3778 | Butterscotch (M) | QRIS | 2026-06-12T19:08:10+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '2026-06-12T19:08:10+00:00'
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

-- 90da20f7 | Gula Aren (M) | QRIS | 2026-06-12T19:08:20+00:00
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
    '2026-06-12T19:08:20+00:00'
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

-- b8e4b77d | Cold Brew (M) | QRIS | 2026-06-12T19:08:26+00:00
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
    '2026-06-12T19:08:26+00:00'
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

-- 1b148d20 | Gula Aren (M) | CASH | 2026-06-12T19:08:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-12T19:08:57+00:00'
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

-- 8ed4e8aa | Butterscotch (M) | CASH | 2026-06-12T19:09:05+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'CASH',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '2026-06-12T19:09:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  13,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ee858eec | Vanilla (M) | CASH | 2026-06-12T19:09:15+00:00
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
    '2026-06-12T19:09:15+00:00'
  ) RETURNING id
)
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

-- 8dbb0e4d | Salted Caramel (M) | CASH | 2026-06-12T19:09:21+00:00
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
    '2026-06-12T19:09:21+00:00'
  ) RETURNING id
)
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

-- d5c9c236 | Hazelnut (M) | CASH | 2026-06-12T19:09:26+00:00
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
    '2026-06-12T19:09:26+00:00'
  ) RETURNING id
)
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

-- aa58ecf3 | Baileys Latte (M) | CASH | 2026-06-12T19:09:31+00:00
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
    20587.00,
    '2026-06-12T19:09:31+00:00'
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

-- 9ba73d98 | Baileys Latte (M) | QRIS | 2026-06-12T19:15:46+00:00
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
    '2026-06-12T19:15:46+00:00'
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

-- 2708379d | Butterscotch (M) | QRIS | 2026-06-12T19:23:46+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '2026-06-12T19:23:46+00:00'
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

-- c0e23136 | Gula Aren (M) | QRIS | 2026-06-12T19:24:01+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '2026-06-12T19:24:01+00:00'
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

-- 72c9ddac | Cold Brew (M) | QRIS | 2026-06-12T19:24:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '2026-06-12T19:24:32+00:00'
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

-- 9b4316fa | Gula Aren (M) | CASH | 2026-06-12T19:25:59+00:00
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
    '2026-06-12T19:25:59+00:00'
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

-- 2ddc432f | Butterscotch (M) | CASH | 2026-06-12T19:26:07+00:00
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
    '2026-06-12T19:26:07+00:00'
  ) RETURNING id
)
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

-- 8f775b3d | Vanilla (M) | CASH | 2026-06-12T19:26:15+00:00
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
    '2026-06-12T19:26:15+00:00'
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

-- d4f8870c | Salted Caramel (M) | CASH | 2026-06-12T19:26:27+00:00
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
    '2026-06-12T19:26:27+00:00'
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

-- 3fc058dd | Hazelnut (M) | CASH | 2026-06-12T19:26:35+00:00
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
    '2026-06-12T19:26:35+00:00'
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

-- 9083b3a3 | Baileys Latte (M) | CASH | 2026-06-12T19:26:42+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '2026-06-12T19:26:42+00:00'
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

-- 7507ba81 | Hazelnut (M) | QRIS | 2026-06-12T19:36:14+00:00
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
    '2026-06-12T19:36:14+00:00'
  ) RETURNING id
)
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

-- 5cfbbffe | Butterscotch (M) | QRIS | 2026-06-12T19:41:20+00:00
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
    '2026-06-12T19:41:20+00:00'
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

-- 54c04a81 | Butterscotch (M) | CASH | 2026-06-12T19:48:44+00:00
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
    '2026-06-12T19:48:44+00:00'
  ) RETURNING id
)
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

-- 02f7bf3b | Butterscotch (M) | CASH | 2026-06-12T20:00:53+00:00
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
    '2026-06-12T20:00:53+00:00'
  ) RETURNING id
)
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

-- 230bb0dc | Baileys Latte (M) | CASH | 2026-06-12T20:16:35+00:00
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
    '2026-06-12T20:16:35+00:00'
  ) RETURNING id
)
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

-- 88e4858b | Butterscotch (M) | CASH | 2026-06-12T20:17:30+00:00
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
    '2026-06-12T20:17:30+00:00'
  ) RETURNING id
)
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

-- ea20c427 | Baileys Latte (M) | CASH | 2026-06-12T20:17:42+00:00
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
    '2026-06-12T20:17:42+00:00'
  ) RETURNING id
)
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

-- f0a5e00a | Salted Caramel (M) | QRIS | 2026-06-12T20:22:09+00:00
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
    '2026-06-12T20:22:09+00:00'
  ) RETURNING id
)
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

-- 84b7bc9f | Baileys Latte (M) | QRIS | 2026-06-12T20:36:34+00:00
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
    '2026-06-12T20:36:34+00:00'
  ) RETURNING id
)
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

-- 0e7f3443 | Baileys Latte (M) | CASH | 2026-06-12T20:46:14+00:00
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
    '2026-06-12T20:46:14+00:00'
  ) RETURNING id
)
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

-- 31e3cfa0 | Butterscotch (M) | CASH | 2026-06-12T20:46:26+00:00
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
    '2026-06-12T20:46:26+00:00'
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

-- b73ff938 | Butterscotch (M) | QRIS | 2026-06-12T20:46:38+00:00
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
    '2026-06-12T20:46:38+00:00'
  ) RETURNING id
)
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

-- 7ee2e10e | Hazelnut (M) | QRIS | 2026-06-12T20:46:49+00:00
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
    '2026-06-12T20:46:49+00:00'
  ) RETURNING id
)
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

-- 39793fe5 | Baileys Latte (M) | CASH | 2026-06-12T20:56:23+00:00
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
    '2026-06-12T20:56:23+00:00'
  ) RETURNING id
)
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

-- 75b34548 | Salted Caramel (M) | CASH | 2026-06-12T21:00:07+00:00
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
    '2026-06-12T21:00:07+00:00'
  ) RETURNING id
)
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

-- e9dcd3f7 | Butterscotch (M) | QRIS | 2026-06-12T21:00:41+00:00
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
    '2026-06-12T21:00:41+00:00'
  ) RETURNING id
)
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

-- ab729872 | Cold Brew (M) | QRIS | 2026-06-12T21:00:51+00:00
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
    '2026-06-12T21:00:51+00:00'
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

-- bd75a888 | Baileys Latte (M) | CASH | 2026-06-12T21:09:45+00:00
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
    '2026-06-12T21:09:45+00:00'
  ) RETURNING id
)
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

-- c209e888 | Butterscotch (M) | QRIS | 2026-06-12T21:16:54+00:00
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
    '2026-06-12T21:16:54+00:00'
  ) RETURNING id
)
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

-- 02680fa5 | Baileys Latte (M) | QRIS | 2026-06-12T21:17:06+00:00
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
    '2026-06-12T21:17:06+00:00'
  ) RETURNING id
)
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

-- e16b1d89 | Butterscotch (M) | CASH | 2026-06-12T21:19:29+00:00
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
    '2026-06-12T21:19:29+00:00'
  ) RETURNING id
)
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

-- 27a1dd37 | Gula Aren (M) | QRIS | 2026-06-12T21:30:48+00:00
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
    '2026-06-12T21:30:48+00:00'
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

-- 2560099a | Gula Aren (M) | CASH | 2026-06-12T21:31:03+00:00
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
    '2026-06-12T21:31:03+00:00'
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

-- be6f438c | Butterscotch (M) | QRIS | 2026-06-12T21:31:16+00:00
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
    '2026-06-12T21:31:16+00:00'
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

-- 2bdc2939 | Butterscotch (M) | CASH | 2026-06-12T21:31:26+00:00
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
    '2026-06-12T21:31:26+00:00'
  ) RETURNING id
)
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

-- 456f7d4e | Vanilla (M) | CASH | 2026-06-12T21:31:34+00:00
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
    '2026-06-12T21:31:34+00:00'
  ) RETURNING id
)
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

-- f74e7a14 | Salted Caramel (M) | CASH | 2026-06-12T21:31:39+00:00
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
    '2026-06-12T21:31:39+00:00'
  ) RETURNING id
)
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

-- 3d228fe1 | Hazelnut (M) | CASH | 2026-06-12T21:31:45+00:00
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
    '2026-06-12T21:31:45+00:00'
  ) RETURNING id
)
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

-- be7a0903 | Baileys Latte (M) | CASH | 2026-06-12T21:31:50+00:00
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
    27450.00,
    '2026-06-12T21:31:50+00:00'
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

-- adb61ff1 | Butterscotch (M) | QRIS | 2026-06-12T21:45:29+00:00
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
    14073.00,
    '2026-06-12T21:45:29+00:00'
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

-- 8da8b822 | Baileys Latte (M) | QRIS | 2026-06-12T21:55:45+00:00
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
    '2026-06-12T21:55:45+00:00'
  ) RETURNING id
)
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

-- bf0af573 | Butterscotch (M) | QRIS | 2026-06-12T21:57:50+00:00
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
    '2026-06-12T21:57:50+00:00'
  ) RETURNING id
)
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

-- 472cc21f | Vanilla (M) | QRIS | 2026-06-12T21:57:59+00:00
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
    '2026-06-12T21:57:59+00:00'
  ) RETURNING id
)
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

-- 4cf34013 | Baileys Latte (M) | QRIS | 2026-06-12T21:58:16+00:00
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
    '2026-06-12T21:58:16+00:00'
  ) RETURNING id
)
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

-- 2733cf0e | Baileys Latte (M) | CASH | 2026-06-12T21:58:31+00:00
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
    '2026-06-12T21:58:31+00:00'
  ) RETURNING id
)
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

-- 51f5d1d0 | Baileys Latte (M) | CASH | 2026-06-12T22:01:52+00:00
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
    '2026-06-12T22:01:52+00:00'
  ) RETURNING id
)
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

-- bdb5c463 | Butterscotch (M) | CASH | 2026-06-12T22:02:31+00:00
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
    '2026-06-12T22:02:31+00:00'
  ) RETURNING id
)
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

-- afa4933d | Butterscotch (M) | QRIS | 2026-06-12T22:31:17+00:00
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
    '2026-06-12T22:31:17+00:00'
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

-- 2e5a441c | Butterscotch (M) | CASH | 2026-06-12T22:31:41+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '2026-06-12T22:31:41+00:00'
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

-- 7ebee9db | Vanilla (M) | CASH | 2026-06-12T22:31:54+00:00
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
    '2026-06-12T22:31:54+00:00'
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

-- a672d17a | Salted Caramel (M) | CASH | 2026-06-12T22:32:07+00:00
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
    '2026-06-12T22:32:07+00:00'
  ) RETURNING id
)
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

-- 60f797f3 | Hazelnut (M) | CASH | 2026-06-12T22:32:16+00:00
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
    '2026-06-12T22:32:16+00:00'
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

-- 8e548ff7 | Baileys Latte (M) | CASH | 2026-06-12T22:32:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '2026-06-12T22:32:28+00:00'
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

-- df3a3908 | Butterscotch (M) | CASH | 2026-06-12T22:37:28+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-12T22:37:28+00:00'
  ) RETURNING id
)
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
