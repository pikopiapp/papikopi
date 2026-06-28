-- Generated from split_orders_juni_1_14/*/*.csv
-- Inserts sales and sale_items for 2026-06-13 until 2026-06-14

-- adb73ea6 | Cold Brew (M) | QRIS | 2026-06-13T09:00:32+00:00
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
    '2026-06-13T09:00:32+00:00'
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

-- 21c8d68b | Gula Aren (M) | QRIS | 2026-06-13T09:09:11+00:00
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
    '2026-06-13T09:09:11+00:00'
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

-- 0f4e05d1 | Vanilla (M) | QRIS | 2026-06-13T09:28:18+00:00
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
    '2026-06-13T09:28:18+00:00'
  ) RETURNING id
)
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

-- 202915b2 | Gula Aren (M) | QRIS | 2026-06-13T09:31:17+00:00
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
    '2026-06-13T09:31:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- f3f42349 | Baileys Latte (M) | QRIS | 2026-06-13T09:35:45+00:00
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
    '2026-06-13T09:35:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b4fe26d2 | Vanilla (M) | CASH | 2026-06-13T09:45:19+00:00
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
    '2026-06-13T09:45:19+00:00'
  ) RETURNING id
)
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

-- db73e0d9 | Butterscotch (M) | CASH | 2026-06-13T09:45:24+00:00
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
    '2026-06-13T09:45:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 51e391f6 | Gula Aren (M) | CASH | 2026-06-13T09:59:30+00:00
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
    '2026-06-13T09:59:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5ab415b9 | Butterscotch (M) | QRIS | 2026-06-13T10:01:56+00:00
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
    '2026-06-13T10:01:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c1242ce3 | Gula Aren (M) | QRIS | 2026-06-13T10:12:15+00:00
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
    '2026-06-13T10:12:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 26943c8a | Butterscotch (M) | QRIS | 2026-06-13T10:15:27+00:00
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
    '2026-06-13T10:15:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 72ad39e9 | Butterscotch (M) | QRIS | 2026-06-13T10:19:08+00:00
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
    '2026-06-13T10:19:08+00:00'
  ) RETURNING id
)
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

-- 96fd236a | Butterscotch (M) | CASH | 2026-06-13T10:23:11+00:00
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
    '2026-06-13T10:23:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2cadbf02 | Baileys Latte (M) | QRIS | 2026-06-13T11:17:56+00:00
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
    '2026-06-13T11:17:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d8445ac0 | Gula Aren (M) | CASH | 2026-06-13T11:34:58+00:00
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
    '2026-06-13T11:34:58+00:00'
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

-- efb77806 | Baileys Latte (M) | CASH | 2026-06-13T11:44:49+00:00
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
    '2026-06-13T11:44:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2cc220e8 | Gula Aren (M) | CASH | 2026-06-13T11:44:53+00:00
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
    '2026-06-13T11:44:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 950cd94e | Gula Aren (M) | CASH | 2026-06-13T11:49:25+00:00
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
    '2026-06-13T11:49:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- cc7433ea | Butterscotch (M) | QRIS | 2026-06-13T11:57:51+00:00
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
    '2026-06-13T11:57:51+00:00'
  ) RETURNING id
)
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

-- 1b25113a | Butterscotch (M) | CASH | 2026-06-13T12:01:13+00:00
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
    '2026-06-13T12:01:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6ece462a | Baileys Latte (M) | CASH | 2026-06-13T12:01:19+00:00
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
    '2026-06-13T12:01:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0e4d8704 | Butterscotch (M) | QRIS | 2026-06-13T12:02:00+00:00
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
    '2026-06-13T12:02:00+00:00'
  ) RETURNING id
)
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

-- 73960fac | Gula Aren (M) | QRIS | 2026-06-13T12:09:08+00:00
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
    '2026-06-13T12:09:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0e7f79a6 | Butterscotch (M) | QRIS | 2026-06-13T12:09:13+00:00
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
    '2026-06-13T12:09:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8f0d4e89 | Butterscotch (M) | QRIS | 2026-06-13T12:10:36+00:00
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
    '2026-06-13T12:10:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bc3ebe86 | Cold Brew (M) | QRIS | 2026-06-13T12:38:37+00:00
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
    '2026-06-13T12:38:37+00:00'
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

-- 4a9c232e | Baileys Latte (M) | QRIS | 2026-06-13T12:38:43+00:00
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
    '2026-06-13T12:38:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e23d30c5 | Gula Aren (M) | CASH | 2026-06-13T12:52:37+00:00
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
    '2026-06-13T12:52:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7ec49c43 | Gula Aren (M) | CASH | 2026-06-13T13:10:24+00:00
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
    '2026-06-13T13:10:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- bcbcd4c5 | Butterscotch (M) | CASH | 2026-06-13T13:23:57+00:00
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
    '2026-06-13T13:23:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 93ec9017 | Butterscotch (M) | QRIS | 2026-06-13T13:26:15+00:00
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
    '2026-06-13T13:26:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fac0283b | Gula Aren (M) | QRIS | 2026-06-13T13:26:20+00:00
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
    '2026-06-13T13:26:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- cba9c8ab | Salted Caramel (M) | QRIS | 2026-06-13T13:35:14+00:00
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
    '2026-06-13T13:35:14+00:00'
  ) RETURNING id
)
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

-- 885eeaa2 | Butterscotch (M) | CASH | 2026-06-13T13:35:14+00:00
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
    '2026-06-13T13:35:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d519696f | Hazelnut (M) | CASH | 2026-06-13T13:40:35+00:00
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
    '2026-06-13T13:40:35+00:00'
  ) RETURNING id
)
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

-- 346d2636 | Baileys Latte (M) | CASH | 2026-06-13T13:40:39+00:00
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
    '2026-06-13T13:40:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2b470bd8 | Butterscotch (M) | QRIS | 2026-06-13T13:45:43+00:00
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
    '2026-06-13T13:45:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- dd7c7e8c | Gula Aren (M) | CASH | 2026-06-13T13:51:23+00:00
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
    '2026-06-13T13:51:23+00:00'
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

-- 87bd5e58 | Cold Brew (M) | CASH | 2026-06-13T13:59:24+00:00
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
    '2026-06-13T13:59:24+00:00'
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

-- c48fcd97 | Gula Aren (M) | CASH | 2026-06-13T13:59:35+00:00
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
    '2026-06-13T13:59:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- af0663f4 | Cold Brew (M) | CASH | 2026-06-13T14:02:06+00:00
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
    '2026-06-13T14:02:06+00:00'
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

-- 07d3a823 | Baileys Latte (M) | CASH | 2026-06-13T14:05:06+00:00
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
    '2026-06-13T14:05:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d4cd3fb9 | Vanilla (M) | CASH | 2026-06-13T14:11:23+00:00
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
    '2026-06-13T14:11:23+00:00'
  ) RETURNING id
)
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

-- 776b7ffd | Gula Aren (M) | CASH | 2026-06-13T14:11:33+00:00
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
    '2026-06-13T14:11:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 788da5bd | Butterscotch (M) | QRIS | 2026-06-13T14:11:44+00:00
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
    '2026-06-13T14:11:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 97d2f00d | Butterscotch (M) | QRIS | 2026-06-13T14:17:24+00:00
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
    '2026-06-13T14:17:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 573d67cb | Cold Brew (M) | QRIS | 2026-06-13T14:21:30+00:00
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
    '2026-06-13T14:21:30+00:00'
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

-- 0d916dd0 | Butterscotch (M) | CASH | 2026-06-13T14:21:58+00:00
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
    '2026-06-13T14:21:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4b22f589 | Gula Aren (M) | CASH | 2026-06-13T14:26:45+00:00
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
    '2026-06-13T14:26:45+00:00'
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

-- 54784dc6 | Hazelnut (M) | QRIS | 2026-06-13T14:28:36+00:00
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
    '2026-06-13T14:28:36+00:00'
  ) RETURNING id
)
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

-- 98140517 | Butterscotch (M) | QRIS | 2026-06-13T14:28:55+00:00
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
    '2026-06-13T14:28:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 0a2c1904 | Gula Aren (M) | QRIS | 2026-06-13T14:38:05+00:00
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
    '2026-06-13T14:38:05+00:00'
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

-- 829ab4e4 | Gula Aren (M) | CASH | 2026-06-13T14:42:10+00:00
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
    '2026-06-13T14:42:10+00:00'
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

-- 095a87bc | Gula Aren (M) | CASH | 2026-06-13T14:50:20+00:00
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
    '2026-06-13T14:50:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- fbcb8ba9 | Baileys Latte (M) | CASH | 2026-06-13T14:52:07+00:00
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
    '2026-06-13T14:52:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6f4993ed | Cold Brew (M) | CASH | 2026-06-13T14:52:13+00:00
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
    '2026-06-13T14:52:13+00:00'
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

-- 7689140f | Butterscotch (M) | QRIS | 2026-06-13T15:00:00+00:00
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
    '2026-06-13T15:00:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 03d267c8 | Baileys Latte (M) | QRIS | 2026-06-13T15:00:07+00:00
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
    '2026-06-13T15:00:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 43295c51 | Baileys Latte (M) | QRIS | 2026-06-13T15:02:30+00:00
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
    '2026-06-13T15:02:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- da567f4c | Gula Aren (M) | QRIS | 2026-06-13T15:07:26+00:00
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
    '2026-06-13T15:07:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 92796bf4 | Cold Brew (M) | QRIS | 2026-06-13T15:07:30+00:00
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
    '2026-06-13T15:07:30+00:00'
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

-- 18edd48b | Baileys Latte (M) | QRIS | 2026-06-13T15:20:19+00:00
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
    '2026-06-13T15:20:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6b9fa32f | Baileys Latte (M) | QRIS | 2026-06-13T15:22:31+00:00
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
    '2026-06-13T15:22:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b0d40af9 | Vanilla (M) | CASH | 2026-06-13T15:25:59+00:00
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
    '2026-06-13T15:25:59+00:00'
  ) RETURNING id
)
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

-- 21c1e7a1 | Gula Aren (M) | QRIS | 2026-06-13T16:00:52+00:00
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
    '2026-06-13T16:00:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 17ec3d58 | Gula Aren (M) | CASH | 2026-06-13T16:02:10+00:00
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
    '2026-06-13T16:02:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ebaf8544 | Gula Aren (M) | CASH | 2026-06-13T16:10:07+00:00
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
    '2026-06-13T16:10:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 10d8245d | Gula Aren (M) | CASH | 2026-06-13T16:15:52+00:00
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
    '2026-06-13T16:15:52+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 2ceddecc | Baileys Latte (M) | CASH | 2026-06-13T16:29:58+00:00
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
    '2026-06-13T16:29:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2e02549c | Butterscotch (M) | QRIS | 2026-06-13T16:36:22+00:00
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
    '2026-06-13T16:36:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b9409758 | Baileys Latte (M) | CASH | 2026-06-13T16:37:04+00:00
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
    '2026-06-13T16:37:04+00:00'
  ) RETURNING id
)
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

-- 94246ab8 | Butterscotch (M) | CASH | 2026-06-13T16:37:54+00:00
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
    '2026-06-13T16:37:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a461d41d | Hazelnut (M) | CASH | 2026-06-13T16:38:38+00:00
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
    '2026-06-13T16:38:38+00:00'
  ) RETURNING id
)
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

-- 96e13da3 | Butterscotch (M) | QRIS | 2026-06-13T16:39:24+00:00
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
    '2026-06-13T16:39:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 66617ccc | Gula Aren (M) | CASH | 2026-06-13T16:39:36+00:00
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
    '2026-06-13T16:39:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 44355039 | Butterscotch (M) | CASH | 2026-06-13T16:39:45+00:00
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
    '2026-06-13T16:39:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 94b09f5a | Butterscotch (M) | CASH | 2026-06-13T16:45:11+00:00
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
    '2026-06-13T16:45:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a3914ae2 | Baileys Latte (M) | CASH | 2026-06-13T16:53:07+00:00
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
    '2026-06-13T16:53:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 2d45b54d | Baileys Latte (M) | QRIS | 2026-06-13T16:55:53+00:00
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
    '2026-06-13T16:55:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fe5e7847 | Butterscotch (M) | QRIS | 2026-06-13T16:58:19+00:00
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
    '2026-06-13T16:58:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 55cf753d | Baileys Latte (M) | QRIS | 2026-06-13T16:58:32+00:00
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
    '2026-06-13T16:58:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f9310eb2 | Butterscotch (M) | CASH | 2026-06-13T17:06:25+00:00
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
    '2026-06-13T17:06:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- ca729740 | Vanilla (M) | CASH | 2026-06-13T17:06:32+00:00
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
    '2026-06-13T17:06:32+00:00'
  ) RETURNING id
)
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

-- 5ed671f9 | Butterscotch (M) | QRIS | 2026-06-13T17:12:37+00:00
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
    '2026-06-13T17:12:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2d979995 | Butterscotch (M) | CASH | 2026-06-13T17:17:01+00:00
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
    '2026-06-13T17:17:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c3b697ca | Butterscotch (M) | QRIS | 2026-06-13T17:17:09+00:00
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
    '2026-06-13T17:17:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 56733942 | Butterscotch (M) | CASH | 2026-06-13T17:22:56+00:00
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
    '2026-06-13T17:22:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 03fc8ded | Butterscotch (M) | CASH | 2026-06-13T17:28:18+00:00
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
    '2026-06-13T17:28:18+00:00'
  ) RETURNING id
)
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

-- 5007e8a8 | Gula Aren (M) | CASH | 2026-06-13T17:41:13+00:00
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
    '2026-06-13T17:41:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 771cdaa9 | Butterscotch (M) | QRIS | 2026-06-13T17:41:25+00:00
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
    '2026-06-13T17:41:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3dffade7 | Butterscotch (M) | CASH | 2026-06-13T18:19:35+00:00
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
    '2026-06-13T18:19:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6f954e4d | Baileys Latte (M) | QRIS | 2026-06-13T18:19:44+00:00
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
    '2026-06-13T18:19:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 30a24d1d | Gula Aren (M) | QRIS | 2026-06-13T18:24:44+00:00
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
    '2026-06-13T18:24:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 33d57159 | Hazelnut (M) | QRIS | 2026-06-13T18:25:02+00:00
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
    '2026-06-13T18:25:02+00:00'
  ) RETURNING id
)
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

-- d7a8b2cd | Gula Aren (M) | CASH | 2026-06-13T18:26:06+00:00
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
    '2026-06-13T18:26:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 8f67c4ee | Salted Caramel (M) | CASH | 2026-06-13T18:26:15+00:00
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
    '2026-06-13T18:26:15+00:00'
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
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
  ) AS p;

-- ab6c5d69 | Cold Brew (M) | CASH | 2026-06-13T18:27:11+00:00
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
    '2026-06-13T18:27:11+00:00'
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

-- 476bd048 | Hazelnut (M) | CASH | 2026-06-13T18:36:36+00:00
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
    '2026-06-13T18:36:36+00:00'
  ) RETURNING id
)
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

-- ce31512f | Salted Caramel (M) | QRIS | 2026-06-13T18:54:26+00:00
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
    '2026-06-13T18:54:26+00:00'
  ) RETURNING id
)
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

-- f8685609 | Baileys Latte (M) | QRIS | 2026-06-13T18:54:32+00:00
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
    '2026-06-13T18:54:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 25b19d2b | Baileys Latte (M) | QRIS | 2026-06-13T18:57:12+00:00
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
    '2026-06-13T18:57:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ff7fa746 | Salted Caramel (M) | QRIS | 2026-06-13T18:57:26+00:00
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
    '2026-06-13T18:57:26+00:00'
  ) RETURNING id
)
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

-- e0360924 | Butterscotch (M) | CASH | 2026-06-13T18:57:34+00:00
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
    '2026-06-13T18:57:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1cc27f44 | Salted Caramel (M) | CASH | 2026-06-13T19:02:46+00:00
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
    '2026-06-13T19:02:46+00:00'
  ) RETURNING id
)
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

-- 1f76968f | Salted Caramel (M) | QRIS | 2026-06-13T19:01:35+00:00
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
    '2026-06-13T19:01:35+00:00'
  ) RETURNING id
)
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

-- 78123119 | Baileys Latte (M) | CASH | 2026-06-13T19:13:12+00:00
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
    '2026-06-13T19:13:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 72a68db9 | Baileys Latte (M) | CASH | 2026-06-13T19:13:19+00:00
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
    '2026-06-13T19:13:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 484404b3 | Baileys Latte (M) | CASH | 2026-06-13T19:13:24+00:00
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
    '2026-06-13T19:13:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 91557279 | Butterscotch (M) | QRIS | 2026-06-13T19:13:33+00:00
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
    '2026-06-13T19:13:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 402a589c | Vanilla (M) | QRIS | 2026-06-13T19:16:18+00:00
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
    '2026-06-13T19:16:18+00:00'
  ) RETURNING id
)
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

-- 37e363b0 | Gula Aren (M) | CASH | 2026-06-13T19:17:34+00:00
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
    '2026-06-13T19:17:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ce3fd064 | Hazelnut (M) | QRIS | 2026-06-13T19:24:50+00:00
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
    '2026-06-13T19:24:50+00:00'
  ) RETURNING id
)
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

-- d62dad0d | Butterscotch (M) | CASH | 2026-06-13T19:25:53+00:00
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
    '2026-06-13T19:25:53+00:00'
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

-- 1effaeb8 | Baileys Latte (M) | QRIS | 2026-06-13T19:28:39+00:00
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
    '2026-06-13T19:28:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 727c8c19 | Butterscotch (M) | QRIS | 2026-06-13T19:29:47+00:00
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
    '2026-06-13T19:29:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2a9dc6b8 | Baileys Latte (M) | CASH | 2026-06-13T19:31:56+00:00
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
    '2026-06-13T19:31:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- dc7b0cde | Baileys Latte (M) | CASH | 2026-06-13T19:35:35+00:00
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
    '2026-06-13T19:35:35+00:00'
  ) RETURNING id
)
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

-- ebbc3625 | Gula Aren (M) | QRIS | 2026-06-13T19:38:30+00:00
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
    '2026-06-13T19:38:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 3285e26a | Baileys Latte (M) | CASH | 2026-06-13T19:40:11+00:00
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
    '2026-06-13T19:40:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9c2e4efa | Hazelnut (M) | CASH | 2026-06-13T19:40:25+00:00
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
    '2026-06-13T19:40:25+00:00'
  ) RETURNING id
)
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

-- 6e6a9a8c | Gula Aren (M) | CASH | 2026-06-13T19:43:26+00:00
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
    '2026-06-13T19:43:26+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d4427b68 | Salted Caramel (M) | CASH | 2026-06-13T19:45:52+00:00
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
    '2026-06-13T19:45:52+00:00'
  ) RETURNING id
)
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

-- 03cbcfcc | Baileys Latte (M) | CASH | 2026-06-13T19:51:18+00:00
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
    '2026-06-13T19:51:18+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9fc1d048 | Cold Brew (M) | CASH | 2026-06-13T19:53:19+00:00
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
    '2026-06-13T19:53:19+00:00'
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

-- 919ef77a | Butterscotch (M) | CASH | 2026-06-13T19:56:23+00:00
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
    '2026-06-13T19:56:23+00:00'
  ) RETURNING id
)
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

-- 6695f135 | Butterscotch (M) | CASH | 2026-06-13T20:01:50+00:00
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
    '2026-06-13T20:01:50+00:00'
  ) RETURNING id
)
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

-- 66c0f586 | Baileys Latte (M) | CASH | 2026-06-13T20:01:54+00:00
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
    '2026-06-13T20:01:54+00:00'
  ) RETURNING id
)
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

-- dfb93579 | Butterscotch (M) | CASH | 2026-06-13T20:01:56+00:00
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
    '2026-06-13T20:01:56+00:00'
  ) RETURNING id
)
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

-- 62030329 | Salted Caramel (M) | CASH | 2026-06-13T20:02:00+00:00
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
    '2026-06-13T20:02:00+00:00'
  ) RETURNING id
)
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

-- 8177d4a3 | Baileys Latte (M) | CASH | 2026-06-13T20:02:03+00:00
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
    20587.00,
    '2026-06-13T20:02:03+00:00'
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

-- feed7c33 | Gula Aren (M) | CASH | 2026-06-13T20:04:15+00:00
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
    '2026-06-13T20:04:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- dd396028 | Gula Aren (M) | QRIS | 2026-06-13T20:06:48+00:00
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
    '2026-06-13T20:06:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0caba26f | Butterscotch (M) | CASH | 2026-06-13T20:06:58+00:00
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
    '2026-06-13T20:06:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5b080382 | Butterscotch (M) | QRIS | 2026-06-13T20:16:44+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '2026-06-13T20:16:44+00:00'
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

-- 9c4f4c4e | Salted Caramel (M) | QRIS | 2026-06-13T20:16:54+00:00
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
    '2026-06-13T20:16:54+00:00'
  ) RETURNING id
)
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

-- 5f9ee7eb | Hazelnut (M) | QRIS | 2026-06-13T20:17:07+00:00
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
    '2026-06-13T20:17:07+00:00'
  ) RETURNING id
)
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

-- b550f145 | Cold Brew (M) | QRIS | 2026-06-13T20:17:23+00:00
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
    '2026-06-13T20:17:23+00:00'
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

-- 6186b085 | Butterscotch (M) | CASH | 2026-06-13T20:17:41+00:00
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
    '2026-06-13T20:17:41+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c55ae55 | Salted Caramel (M) | CASH | 2026-06-13T20:17:45+00:00
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
    '2026-06-13T20:17:45+00:00'
  ) RETURNING id
)
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

-- 3d25ff56 | Gula Aren (M) | QRIS | 2026-06-13T20:17:40+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-13T20:17:40+00:00'
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

-- a2b584c2 | Gula Aren (M) | CASH | 2026-06-13T20:18:29+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'CASH',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '2026-06-13T20:18:29+00:00'
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

-- d288de93 | Cold Brew (M) | CASH | 2026-06-13T20:18:37+00:00
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
    '2026-06-13T20:18:37+00:00'
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

-- 0c68b10e | Baileys Latte (M) | CASH | 2026-06-13T20:18:45+00:00
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
    '2026-06-13T20:18:45+00:00'
  ) RETURNING id
)
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

-- fde09669 | Gula Aren (M) | CASH | 2026-06-13T20:18:51+00:00
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
    '2026-06-13T20:18:51+00:00'
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

-- 0ca17c4f | Baileys Latte (M) | CASH | 2026-06-13T20:20:14+00:00
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
    '2026-06-13T20:20:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 79d43338 | Butterscotch (M) | CASH | 2026-06-13T20:22:16+00:00
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
    '2026-06-13T20:22:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c0140efc | Gula Aren (M) | CASH | 2026-06-13T20:27:17+00:00
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
    '2026-06-13T20:27:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9839184c | Butterscotch (M) | CASH | 2026-06-13T20:27:28+00:00
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
    '2026-06-13T20:27:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8a62267e | Butterscotch (M) | CASH | 2026-06-13T20:27:40+00:00
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
    '2026-06-13T20:27:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 966e4afa | Butterscotch (M) | QRIS | 2026-06-13T20:42:49+00:00
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
    '2026-06-13T20:42:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 87a6f2d9 | Baileys Latte (M) | QRIS | 2026-06-13T20:47:13+00:00
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
    '2026-06-13T20:47:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c032ea1c | Baileys Latte (M) | QRIS | 2026-06-13T21:00:45+00:00
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
    '2026-06-13T21:00:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cbc49a1c | Gula Aren (M) | CASH | 2026-06-13T21:01:46+00:00
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
    '2026-06-13T21:01:46+00:00'
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

-- b204c567 | Gula Aren (M) | CASH | 2026-06-13T21:11:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-13T21:11:16+00:00'
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

-- 12f6bb93 | Baileys Latte (M) | QRIS | 2026-06-13T21:18:50+00:00
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
    '2026-06-13T21:18:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0d59e5f5 | Hazelnut (M) | QRIS | 2026-06-13T21:18:56+00:00
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
    '2026-06-13T21:18:56+00:00'
  ) RETURNING id
)
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

-- c2606dca | Butterscotch (M) | CASH | 2026-06-13T21:19:21+00:00
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
    '2026-06-13T21:19:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 23a5ffb9 | Baileys Latte (M) | QRIS | 2026-06-13T21:19:28+00:00
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
    '2026-06-13T21:19:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 0925d6c6 | Baileys Latte (M) | CASH | 2026-06-13T21:25:37+00:00
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
    '2026-06-13T21:25:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b0a3346c | Baileys Latte (M) | CASH | 2026-06-13T21:28:59+00:00
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
    '2026-06-13T21:28:59+00:00'
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

-- 6f98938c | Hazelnut (M) | CASH | 2026-06-13T21:34:02+00:00
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
    '2026-06-13T21:34:02+00:00'
  ) RETURNING id
)
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

-- ede54cd9 | Vanilla (M) | CASH | 2026-06-13T21:34:10+00:00
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
    '2026-06-13T21:34:10+00:00'
  ) RETURNING id
)
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

-- b2583c6c | Butterscotch (M) | QRIS | 2026-06-13T21:40:43+00:00
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
    '2026-06-13T21:40:43+00:00'
  ) RETURNING id
)
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

-- 76df451f | Butterscotch (M) | QRIS | 2026-06-13T21:44:08+00:00
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
    '2026-06-13T21:44:08+00:00'
  ) RETURNING id
)
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

-- 6f407884 | Butterscotch (M) | CASH | 2026-06-13T21:44:34+00:00
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
    '2026-06-13T21:44:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- e35d833d | Vanilla (M) | CASH | 2026-06-13T21:44:42+00:00
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
    '2026-06-13T21:44:42+00:00'
  ) RETURNING id
)
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

-- a2e28f50 | Butterscotch (M) | CASH | 2026-06-13T22:04:36+00:00
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
    '2026-06-13T22:04:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 230490d5 | Butterscotch (M) | QRIS | 2026-06-13T22:04:43+00:00
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
    '2026-06-13T22:04:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c3de8840 | Butterscotch (M) | CASH | 2026-06-13T22:10:04+00:00
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
    '2026-06-13T22:10:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 47142f03 | Gula Aren (M) | QRIS | 2026-06-13T22:16:03+00:00
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
    '2026-06-13T22:16:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c69475f7 | Gula Aren (M) | CASH | 2026-06-13T22:25:58+00:00
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
    '2026-06-13T22:25:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 59ecd547 | Vanilla (M) | CASH | 2026-06-13T22:26:10+00:00
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
    '2026-06-13T22:26:10+00:00'
  ) RETURNING id
)
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

-- fe68cf2e | Baileys Latte (M) | CASH | 2026-06-13T22:26:21+00:00
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
    '2026-06-13T22:26:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 5ea58d97 | Butterscotch (M) | CASH | 2026-06-13T22:32:12+00:00
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
    '2026-06-13T22:32:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b4d74781 | Butterscotch (M) | QRIS | 2026-06-13T22:32:23+00:00
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
    '2026-06-13T22:32:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 32582032 | Butterscotch (M) | QRIS | 2026-06-13T22:32:29+00:00
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
    '2026-06-13T22:32:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 66bce6f7 | Baileys Latte (M) | CASH | 2026-06-13T22:32:59+00:00
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
    '2026-06-13T22:32:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bc611e44 | Baileys Latte (M) | CASH | 2026-06-13T22:33:08+00:00
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
    '2026-06-13T22:33:08+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 982b8f26 | Butterscotch (M) | CASH | 2026-06-13T22:39:53+00:00
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
    '2026-06-13T22:39:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 73384be7 | Butterscotch (M) | QRIS | 2026-06-13T23:02:17+00:00
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
    '2026-06-13T23:02:17+00:00'
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

-- c8fe96b1 | Cold Brew (M) | QRIS | 2026-06-13T23:03:14+00:00
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
    '2026-06-13T23:03:14+00:00'
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

-- 79688d3d | Gula Aren (M) | QRIS | 2026-06-13T23:10:10+00:00
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
    '2026-06-13T23:10:10+00:00'
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

-- 4f7568d9 | Gula Aren (M) | CASH | 2026-06-13T23:11:14+00:00
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
    '2026-06-13T23:11:14+00:00'
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

-- 3a2b939f | Butterscotch (M) | CASH | 2026-06-13T23:11:33+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-13T23:11:33+00:00'
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

-- 8c46306a | Salted Caramel (M) | CASH | 2026-06-13T23:11:44+00:00
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
    '2026-06-13T23:11:44+00:00'
  ) RETURNING id
)
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

-- 78499785 | Cold Brew (M) | CASH | 2026-06-13T23:11:52+00:00
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
    '2026-06-13T23:11:52+00:00'
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

-- 9e0573d1 | Baileys Latte (M) | CASH | 2026-06-13T23:12:02+00:00
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
    '2026-06-13T23:12:02+00:00'
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

-- 7e414b4b | Butterscotch (M) | CASH | 2026-06-13T23:29:38+00:00
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
    '2026-06-13T23:29:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 27221f8f | Baileys Latte (M) | QRIS | 2026-06-13T23:31:26+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '2026-06-13T23:31:26+00:00'
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

-- cbc3b9c1 | Salted Caramel (M) | QRIS | 2026-06-13T23:31:33+00:00
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
    '2026-06-13T23:31:33+00:00'
  ) RETURNING id
)
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

-- c1aec5d4 | Gula Aren (M) | QRIS | 2026-06-13T23:31:50+00:00
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
    '2026-06-13T23:31:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4d060e72 | Hazelnut (M) | CASH | 2026-06-13T23:32:47+00:00
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
    '2026-06-13T23:32:47+00:00'
  ) RETURNING id
)
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

-- 66414de7 | Gula Aren (M) | QRIS | 2026-06-13T23:32:48+00:00
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
    '2026-06-13T23:32:48+00:00'
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

-- 325db9cd | Butterscotch (M) | QRIS | 2026-06-13T23:32:49+00:00
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
    '2026-06-13T23:32:49+00:00'
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

-- d7bfe340 | Butterscotch (M) | CASH | 2026-06-13T23:32:50+00:00
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
    '2026-06-13T23:32:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 059a5634 | Gula Aren (M) | CASH | 2026-06-13T23:32:51+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '2026-06-13T23:32:51+00:00'
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

-- e7e256e6 | Butterscotch (M) | CASH | 2026-06-13T23:32:52+00:00
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
    '2026-06-13T23:32:52+00:00'
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

-- 1e9c0a04 | Vanilla (M) | CASH | 2026-06-13T23:32:53+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '2026-06-13T23:32:53+00:00'
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
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
  ) AS p;

-- 13988ddb | Salted Caramel (M) | CASH | 2026-06-13T23:32:54+00:00
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
    '2026-06-13T23:32:54+00:00'
  ) RETURNING id
)
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

-- c3e203af | Hazelnut (M) | CASH | 2026-06-13T23:32:55+00:00
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
    '2026-06-13T23:32:55+00:00'
  ) RETURNING id
)
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

-- 7b5b5a2b | Cold Brew (M) | CASH | 2026-06-13T23:32:56+00:00
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
    '2026-06-13T23:32:56+00:00'
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

-- 746c81c7 | Baileys Latte (M) | CASH | 2026-06-13T23:32:57+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'CASH',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '2026-06-13T23:32:57+00:00'
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

-- e63b6941 | Gula Aren (M) | CASH | 2026-06-14T09:05:21+00:00
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
    '2026-06-14T09:05:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- abf43a0d | Butterscotch (M) | CASH | 2026-06-14T08:56:55+00:00
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
    '2026-06-14T08:56:55+00:00'
  ) RETURNING id
)
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

-- 3b08b0ea | Gula Aren (M) | QRIS | 2026-06-14T09:03:05+00:00
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
    '2026-06-14T09:03:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 25ade206 | Baileys Latte (M) | QRIS | 2026-06-14T09:03:11+00:00
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
    '2026-06-14T09:03:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c954c9a3 | Hazelnut (M) | CASH | 2026-06-14T09:32:29+00:00
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
    '2026-06-14T09:32:29+00:00'
  ) RETURNING id
)
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

-- 168a445f | Gula Aren (M) | CASH | 2026-06-14T09:33:58+00:00
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
    '2026-06-14T09:33:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 6ce4bac0 | Gula Aren (M) | QRIS | 2026-06-14T09:34:02+00:00
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
    '2026-06-14T09:34:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 87575c40 | Gula Aren (M) | CASH | 2026-06-14T10:00:34+00:00
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
    '2026-06-14T10:00:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 983cebd8 | Gula Aren (M) | QRIS | 2026-06-14T10:06:06+00:00
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
    '2026-06-14T10:06:06+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 10ab99a4 | Salted Caramel (M) | QRIS | 2026-06-14T10:06:13+00:00
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
    '2026-06-14T10:06:13+00:00'
  ) RETURNING id
)
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

-- a5a04c12 | Gula Aren (M) | CASH | 2026-06-14T10:06:21+00:00
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
    '2026-06-14T10:06:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9ec54c3f | Butterscotch (M) | QRIS | 2026-06-14T10:19:09+00:00
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
    '2026-06-14T10:19:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 557d6a06 | Gula Aren (M) | CASH | 2026-06-14T10:48:12+00:00
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
    '2026-06-14T10:48:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c0dcc635 | Butterscotch (M) | QRIS | 2026-06-14T11:06:46+00:00
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
    '2026-06-14T11:06:46+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 5f6031c3 | Salted Caramel (M) | CASH | 2026-06-14T11:19:01+00:00
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
    '2026-06-14T11:19:01+00:00'
  ) RETURNING id
)
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

-- db897bdc | Butterscotch (M) | CASH | 2026-06-14T11:27:10+00:00
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
    '2026-06-14T11:27:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d5ad45ef | Vanilla (M) | QRIS | 2026-06-14T11:27:16+00:00
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
    '2026-06-14T11:27:16+00:00'
  ) RETURNING id
)
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

-- 280eb6a2 | Butterscotch (M) | QRIS | 2026-06-14T11:27:20+00:00
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
    '2026-06-14T11:27:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 78a9e1f8 | Butterscotch (M) | CASH | 2026-06-14T11:27:54+00:00
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
    '2026-06-14T11:27:54+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6ff31747 | Gula Aren (M) | QRIS | 2026-06-14T11:33:16+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '2026-06-14T11:33:16+00:00'
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

-- bdaf2619 | Gula Aren (M) | CASH | 2026-06-14T11:33:27+00:00
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
    '2026-06-14T11:33:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 54200a8e | Gula Aren (M) | QRIS | 2026-06-14T11:38:57+00:00
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
    '2026-06-14T11:38:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 74d0f00b | Butterscotch (M) | CASH | 2026-06-14T11:42:18+00:00
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
    '2026-06-14T11:42:18+00:00'
  ) RETURNING id
)
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

-- 7b142055 | Gula Aren (M) | CASH | 2026-06-14T11:53:03+00:00
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
    '2026-06-14T11:53:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4c72407a | Gula Aren (M) | CASH | 2026-06-14T11:33:03+00:00
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
    '2026-06-14T11:33:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 7b8423b0 | Baileys Latte (M) | QRIS | 2026-06-14T11:39:43+00:00
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
    '2026-06-14T11:39:43+00:00'
  ) RETURNING id
)
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

-- 6379ffbb | Hazelnut (M) | QRIS | 2026-06-14T11:55:12+00:00
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
    '2026-06-14T11:55:12+00:00'
  ) RETURNING id
)
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

-- 5bf6e2d1 | Gula Aren (M) | QRIS | 2026-06-14T11:56:00+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-14T11:56:00+00:00'
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

-- 45973c11 | Vanilla (M) | QRIS | 2026-06-14T11:56:29+00:00
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
    '2026-06-14T11:56:29+00:00'
  ) RETURNING id
)
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

-- ab9607e1 | Butterscotch (M) | CASH | 2026-06-14T11:58:28+00:00
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
    '2026-06-14T11:58:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 37fc8efe | Baileys Latte (M) | QRIS | 2026-06-14T11:58:35+00:00
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
    '2026-06-14T11:58:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4531b913 | Baileys Latte (M) | CASH | 2026-06-14T11:58:40+00:00
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
    '2026-06-14T11:58:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 58414d40 | Gula Aren (M) | CASH | 2026-06-14T12:00:12+00:00
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
    '2026-06-14T12:00:12+00:00'
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

-- 1a97a25b | Gula Aren (M) | QRIS | 2026-06-14T12:13:02+00:00
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
    '2026-06-14T12:13:02+00:00'
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

-- c4a4a576 | Vanilla (M) | QRIS | 2026-06-14T12:28:00+00:00
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
    '2026-06-14T12:28:00+00:00'
  ) RETURNING id
)
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

-- 578046da | Gula Aren (M) | CASH | 2026-06-14T12:42:25+00:00
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
    '2026-06-14T12:42:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5a3d5265 | Salted Caramel (M) | CASH | 2026-06-14T12:42:31+00:00
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
    '2026-06-14T12:42:31+00:00'
  ) RETURNING id
)
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

-- d8198b7a | Butterscotch (M) | QRIS | 2026-06-14T12:43:02+00:00
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
    '2026-06-14T12:43:02+00:00'
  ) RETURNING id
)
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

-- f354d864 | Gula Aren (M) | CASH | 2026-06-14T12:44:51+00:00
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
    '2026-06-14T12:44:51+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 43e7667b | Butterscotch (M) | CASH | 2026-06-14T12:46:02+00:00
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
    '2026-06-14T12:46:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c5ba0194 | Gula Aren (M) | CASH | 2026-06-14T12:46:09+00:00
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
    '2026-06-14T12:46:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 0d62958a | Butterscotch (M) | QRIS | 2026-06-14T12:47:49+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '2026-06-14T12:47:49+00:00'
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

-- 03027aef | Baileys Latte (M) | QRIS | 2026-06-14T12:48:23+00:00
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
    '2026-06-14T12:48:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cf710f2f | Gula Aren (M) | QRIS | 2026-06-14T12:50:46+00:00
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
    '2026-06-14T12:50:46+00:00'
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

-- 30c88136 | Gula Aren (M) | CASH | 2026-06-14T12:54:13+00:00
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
    '2026-06-14T12:54:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- ff1a2c39 | Gula Aren (M) | QRIS | 2026-06-14T12:57:29+00:00
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
    '2026-06-14T12:57:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 79e56de8 | Baileys Latte (M) | QRIS | 2026-06-14T12:57:36+00:00
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
    '2026-06-14T12:57:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3fb3622e | Butterscotch (M) | QRIS | 2026-06-14T13:03:42+00:00
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
    '2026-06-14T13:03:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3e6a9fc5 | Baileys Latte (M) | QRIS | 2026-06-14T13:03:47+00:00
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
    '2026-06-14T13:03:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 63f02353 | Vanilla (M) | CASH | 2026-06-14T13:25:08+00:00
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
    '2026-06-14T13:25:08+00:00'
  ) RETURNING id
)
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

-- 03a1e174 | Butterscotch (M) | QRIS | 2026-06-14T13:26:20+00:00
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
    '2026-06-14T13:26:20+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2832a91c | Baileys Latte (M) | CASH | 2026-06-14T13:26:27+00:00
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
    '2026-06-14T13:26:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cee6e74c | Gula Aren (M) | CASH | 2026-06-14T13:26:36+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'CASH',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '2026-06-14T13:26:36+00:00'
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

-- 616c039f | Baileys Latte (M) | CASH | 2026-06-14T13:33:02+00:00
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
    '2026-06-14T13:33:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 21bf8006 | Butterscotch (M) | CASH | 2026-06-14T13:38:27+00:00
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
    '2026-06-14T13:38:27+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a7474af8 | Butterscotch (M) | QRIS | 2026-06-14T13:38:33+00:00
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
    '2026-06-14T13:38:33+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 3c432ea1 | Baileys Latte (M) | QRIS | 2026-06-14T13:42:21+00:00
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
    '2026-06-14T13:42:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- f825f082 | Butterscotch (M) | QRIS | 2026-06-14T13:44:03+00:00
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
    '2026-06-14T13:44:03+00:00'
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

-- 0f7fd1f2 | Baileys Latte (M) | QRIS | 2026-06-14T13:44:37+00:00
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
    '2026-06-14T13:44:37+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 20376971 | Baileys Latte (M) | CASH | 2026-06-14T13:45:16+00:00
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
    '2026-06-14T13:45:16+00:00'
  ) RETURNING id
)
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

-- 5676250b | Gula Aren (M) | QRIS | 2026-06-14T13:45:22+00:00
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
    '2026-06-14T13:45:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5da1621a | Salted Caramel (M) | CASH | 2026-06-14T13:48:57+00:00
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
    '2026-06-14T13:48:57+00:00'
  ) RETURNING id
)
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

-- 1bafe4bb | Gula Aren (M) | CASH | 2026-06-14T13:51:45+00:00
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
    '2026-06-14T13:51:45+00:00'
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

-- 820b0dbe | Baileys Latte (M) | CASH | 2026-06-14T13:54:40+00:00
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
    '2026-06-14T13:54:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 4e6eb938 | Baileys Latte (M) | QRIS | 2026-06-14T13:58:16+00:00
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
    '2026-06-14T13:58:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 00fa7d2b | Gula Aren (M) | CASH | 2026-06-14T14:23:39+00:00
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
    '2026-06-14T14:23:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- f3e0ac3a | Gula Aren (M) | CASH | 2026-06-14T14:29:21+00:00
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
    '2026-06-14T14:29:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 5b6738d3 | Baileys Latte (M) | QRIS | 2026-06-14T14:46:18+00:00
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
    '2026-06-14T14:46:18+00:00'
  ) RETURNING id
)
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

-- 9fe5aeed | Baileys Latte (M) | CASH | 2026-06-14T14:46:25+00:00
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
    '2026-06-14T14:46:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 50184f07 | Vanilla (M) | CASH | 2026-06-14T14:51:14+00:00
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
    '2026-06-14T14:51:14+00:00'
  ) RETURNING id
)
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

-- b105c62e | Gula Aren (M) | CASH | 2026-06-14T14:51:22+00:00
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
    '2026-06-14T14:51:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d699bbc6 | Salted Caramel (M) | CASH | 2026-06-14T14:52:55+00:00
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
    '2026-06-14T14:52:55+00:00'
  ) RETURNING id
)
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

-- 4c106978 | Hazelnut (M) | CASH | 2026-06-14T14:53:01+00:00
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
    '2026-06-14T14:53:01+00:00'
  ) RETURNING id
)
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

-- 2ee99c7d | Baileys Latte (M) | QRIS | 2026-06-14T14:55:53+00:00
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
    '2026-06-14T14:55:53+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1d39625d | Butterscotch (M) | CASH | 2026-06-14T14:56:10+00:00
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
    '2026-06-14T14:56:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9009c0de | Hazelnut (M) | QRIS | 2026-06-14T14:56:09+00:00
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
    '2026-06-14T14:56:09+00:00'
  ) RETURNING id
)
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

-- 6f8fc1fb | Butterscotch (M) | CASH | 2026-06-14T15:11:29+00:00
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
    '2026-06-14T15:11:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 33096de3 | Butterscotch (M) | CASH | 2026-06-14T15:11:34+00:00
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
    '2026-06-14T15:11:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6916292c | Salted Caramel (M) | CASH | 2026-06-14T15:11:38+00:00
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
    '2026-06-14T15:11:38+00:00'
  ) RETURNING id
)
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

-- b6345e01 | Baileys Latte (M) | CASH | 2026-06-14T15:14:22+00:00
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
    '2026-06-14T15:14:22+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 8fba8f51 | Butterscotch (M) | QRIS | 2026-06-14T15:15:49+00:00
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
    '2026-06-14T15:15:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 267d9cb4 | Baileys Latte (M) | QRIS | 2026-06-14T15:16:30+00:00
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
    '2026-06-14T15:16:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bce920ab | Vanilla (M) | CASH | 2026-06-14T15:16:35+00:00
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
    '2026-06-14T15:16:35+00:00'
  ) RETURNING id
)
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

-- 59548bd2 | Baileys Latte (M) | QRIS | 2026-06-14T15:20:12+00:00
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
    '2026-06-14T15:20:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 87a41d6a | Butterscotch (M) | CASH | 2026-06-14T15:22:30+00:00
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
    '2026-06-14T15:22:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cfa4e00f | Gula Aren (M) | CASH | 2026-06-14T15:27:59+00:00
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
    '2026-06-14T15:27:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 4fe32d1a | Baileys Latte (M) | CASH | 2026-06-14T15:50:38+00:00
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
    '2026-06-14T15:50:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 70ad817c | Butterscotch (M) | QRIS | 2026-06-14T15:57:09+00:00
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
    '2026-06-14T15:57:09+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 690fe9f4 | Baileys Latte (M) | QRIS | 2026-06-14T15:57:55+00:00
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
    '2026-06-14T15:57:55+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 1faae6f1 | Butterscotch (M) | CASH | 2026-06-14T15:57:49+00:00
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
    '2026-06-14T15:57:49+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- f62a6690 | Butterscotch (M) | QRIS | 2026-06-14T16:05:12+00:00
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
    '2026-06-14T16:05:12+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d88a61b4 | Gula Aren (M) | QRIS | 2026-06-14T16:08:40+00:00
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
    '2026-06-14T16:08:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 95d6a8c1 | Baileys Latte (M) | QRIS | 2026-06-14T16:08:45+00:00
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
    '2026-06-14T16:08:45+00:00'
  ) RETURNING id
)
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

-- 5fdd3d92 | Salted Caramel (M) | QRIS | 2026-06-14T16:13:29+00:00
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
    '2026-06-14T16:13:29+00:00'
  ) RETURNING id
)
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

-- 25506913 | Butterscotch (M) | QRIS | 2026-06-14T16:38:04+00:00
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
    '2026-06-14T16:38:04+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1b8ae942 | Butterscotch (M) | CASH | 2026-06-14T16:41:46+00:00
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
    '2026-06-14T16:41:46+00:00'
  ) RETURNING id
)
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

-- a7a89e40 | Butterscotch (M) | CASH | 2026-06-14T16:44:47+00:00
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
    '2026-06-14T16:44:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 387d4625 | Butterscotch (M) | CASH | 2026-06-14T16:44:56+00:00
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
    '2026-06-14T16:44:56+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 86d0741c | Baileys Latte (M) | CASH | 2026-06-14T16:45:02+00:00
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
    '2026-06-14T16:45:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 9803c6ae | Salted Caramel (M) | QRIS | 2026-06-14T16:51:19+00:00
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
    '2026-06-14T16:51:19+00:00'
  ) RETURNING id
)
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

-- e62443cb | Butterscotch (M) | CASH | 2026-06-14T17:08:35+00:00
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
    '2026-06-14T17:08:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b99cbe09 | Salted Caramel (M) | CASH | 2026-06-14T17:15:06+00:00
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
    '2026-06-14T17:15:06+00:00'
  ) RETURNING id
)
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

-- ab6823da | Baileys Latte (M) | CASH | 2026-06-14T17:15:15+00:00
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
    '2026-06-14T17:15:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 472b6325 | Gula Aren (M) | CASH | 2026-06-14T17:16:02+00:00
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
    '2026-06-14T17:16:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 9505ed9c | Baileys Latte (M) | CASH | 2026-06-14T17:37:00+00:00
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
    '2026-06-14T17:37:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- bbbd0fac | Vanilla (M) | CASH | 2026-06-14T17:37:06+00:00
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
    '2026-06-14T17:37:06+00:00'
  ) RETURNING id
)
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

-- b75e8408 | Hazelnut (M) | CASH | 2026-06-14T17:37:11+00:00
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
    '2026-06-14T17:37:11+00:00'
  ) RETURNING id
)
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

-- d9f93347 | Hazelnut (M) | QRIS | 2026-06-14T17:42:37+00:00
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
    '2026-06-14T17:42:37+00:00'
  ) RETURNING id
)
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

-- 49d9f795 | Vanilla (M) | CASH | 2026-06-14T17:43:00+00:00
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
    '2026-06-14T17:43:00+00:00'
  ) RETURNING id
)
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

-- a6aeec0e | Salted Caramel (M) | CASH | 2026-06-14T17:47:15+00:00
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
    '2026-06-14T17:47:15+00:00'
  ) RETURNING id
)
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

-- b4aec18d | Vanilla (M) | CASH | 2026-06-14T17:55:05+00:00
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
    '2026-06-14T17:55:05+00:00'
  ) RETURNING id
)
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

-- ce6714a1 | Hazelnut (M) | CASH | 2026-06-14T17:55:11+00:00
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
    '2026-06-14T17:55:11+00:00'
  ) RETURNING id
)
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

-- a000cf78 | Baileys Latte (M) | CASH | 2026-06-14T18:01:44+00:00
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
    '2026-06-14T18:01:44+00:00'
  ) RETURNING id
)
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

-- e6c36938 | Gula Aren (M) | CASH | 2026-06-14T18:01:57+00:00
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
    '2026-06-14T18:01:57+00:00'
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

-- b58a2c79 | Butterscotch (M) | CASH | 2026-06-14T18:03:38+00:00
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
    '2026-06-14T18:03:38+00:00'
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

-- 79e1e0a8 | Baileys Latte (M) | QRIS | 2026-06-14T18:06:38+00:00
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
    '2026-06-14T18:06:38+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- e89c5529 | Baileys Latte (M) | CASH | 2026-06-14T18:06:47+00:00
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
    '2026-06-14T18:06:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- fe88e873 | Butterscotch (M) | CASH | 2026-06-14T18:07:05+00:00
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
    '2026-06-14T18:07:05+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- b83aabeb | Baileys Latte (M) | QRIS | 2026-06-14T18:09:50+00:00
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
    '2026-06-14T18:09:50+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- cef3c6f3 | Butterscotch (M) | QRIS | 2026-06-14T18:11:45+00:00
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
    '2026-06-14T18:11:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- c344d4b3 | Butterscotch (M) | CASH | 2026-06-14T18:41:14+00:00
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
    '2026-06-14T18:41:14+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- a4aca4fa | Gula Aren (M) | CASH | 2026-06-14T18:41:31+00:00
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
    '2026-06-14T18:41:31+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 93d678c6 | Gula Aren (M) | CASH | 2026-06-14T18:41:48+00:00
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
    '2026-06-14T18:41:48+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- 31f56df3 | Gula Aren (M) | CASH | 2026-06-14T18:42:05+00:00
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
    '2026-06-14T18:42:05+00:00'
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

-- 7b0ede5a | Baileys Latte (M) | CASH | 2026-06-14T18:42:24+00:00
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
    '2026-06-14T18:42:24+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 90ee4d3e | Salted Caramel (M) | CASH | 2026-06-14T18:42:36+00:00
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
    '2026-06-14T18:42:36+00:00'
  ) RETURNING id
)
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

-- c324f536 | Vanilla (M) | CASH | 2026-06-14T18:42:43+00:00
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
    '2026-06-14T18:42:43+00:00'
  ) RETURNING id
)
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

-- d9157410 | Gula Aren (M) | CASH | 2026-06-14T18:42:58+00:00
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
    '2026-06-14T18:42:58+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- d8f98a80 | Butterscotch (M) | QRIS | 2026-06-14T18:43:15+00:00
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
    '2026-06-14T18:43:15+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 91d9e3d6 | Gula Aren (M) | CASH | 2026-06-14T18:43:29+00:00
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
    '2026-06-14T18:43:29+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- eb7ec078 | Baileys Latte (M) | QRIS | 2026-06-14T18:43:43+00:00
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
    '2026-06-14T18:43:43+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- d7c53b3c | Butterscotch (M) | QRIS | 2026-06-14T18:43:59+00:00
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
    '2026-06-14T18:43:59+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 2a5ac214 | Butterscotch (M) | QRIS | 2026-06-14T18:44:01+00:00
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
    '2026-06-14T18:44:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 6013abd8 | Hazelnut (M) | CASH | 2026-06-14T18:44:09+00:00
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
    '2026-06-14T18:44:09+00:00'
  ) RETURNING id
)
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

-- 565e9a56 | Salted Caramel (M) | QRIS | 2026-06-14T18:44:09+00:00
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
    '2026-06-14T18:44:09+00:00'
  ) RETURNING id
)
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

-- 54d24d68 | Baileys Latte (M) | QRIS | 2026-06-14T18:44:16+00:00
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
    '2026-06-14T18:44:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- c3e6f99a | Cold Brew (M) | CASH | 2026-06-14T18:44:27+00:00
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
    '2026-06-14T18:44:27+00:00'
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

-- 3b9fd871 | Baileys Latte (M) | CASH | 2026-06-14T18:44:30+00:00
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
    '2026-06-14T18:44:30+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 261ceab0 | Gula Aren (M) | QRIS | 2026-06-14T18:44:39+00:00
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
    '2026-06-14T18:44:39+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- c2eebb26 | Gula Aren (M) | CASH | 2026-06-14T18:44:51+00:00
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
    '2026-06-14T18:44:51+00:00'
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

-- 846ba4f6 | Baileys Latte (M) | CASH | 2026-06-14T18:45:02+00:00
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
    '2026-06-14T18:45:02+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- becbc0a7 | Cold Brew (M) | CASH | 2026-06-14T18:45:18+00:00
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
    '2026-06-14T18:45:18+00:00'
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

-- 8a5e2941 | Butterscotch (M) | QRIS | 2026-06-14T18:45:32+00:00
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
    '2026-06-14T18:45:32+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 9a9d3bd2 | Gula Aren (M) | CASH | 2026-06-14T18:45:40+00:00
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
    '2026-06-14T18:45:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
  ) AS p;

-- db6ae26d | Vanilla (M) | CASH | 2026-06-14T18:45:48+00:00
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
    '2026-06-14T18:45:48+00:00'
  ) RETURNING id
)
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

-- 9fde7602 | Butterscotch (M) | CASH | 2026-06-14T18:46:03+00:00
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
    '2026-06-14T18:46:03+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4878f190 | Baileys Latte (M) | CASH | 2026-06-14T18:46:10+00:00
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
    '2026-06-14T18:46:10+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 22836945 | Butterscotch (M) | CASH | 2026-06-14T18:46:21+00:00
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
    '2026-06-14T18:46:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 7073eca1 | Butterscotch (M) | QRIS | 2026-06-14T18:46:32+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '2026-06-14T18:46:32+00:00'
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

-- 47bc1db0 | Butterscotch (M) | CASH | 2026-06-14T18:46:42+00:00
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
    '2026-06-14T18:46:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 46441753 | Vanilla (M) | CASH | 2026-06-14T18:46:56+00:00
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
    '2026-06-14T18:46:56+00:00'
  ) RETURNING id
)
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

-- 8a3ae450 | Butterscotch (M) | CASH | 2026-06-14T18:47:07+00:00
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
    '2026-06-14T18:47:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- aca03693 | Hazelnut (M) | CASH | 2026-06-14T18:47:12+00:00
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
    '2026-06-14T18:47:12+00:00'
  ) RETURNING id
)
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

-- cf67ed97 | Butterscotch (M) | CASH | 2026-06-14T18:47:23+00:00
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
    '2026-06-14T18:47:23+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 4b47312c | Hazelnut (M) | CASH | 2026-06-14T18:47:45+00:00
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
    '2026-06-14T18:47:45+00:00'
  ) RETURNING id
)
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

-- e6db2331 | Butterscotch (M) | QRIS | 2026-06-14T18:48:00+00:00
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
    '2026-06-14T18:48:00+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- cab59fa1 | Butterscotch (M) | CASH | 2026-06-14T18:48:34+00:00
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
    '2026-06-14T18:48:34+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 8e6477dd | Baileys Latte (M) | CASH | 2026-06-14T18:48:42+00:00
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
    '2026-06-14T18:48:42+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 45ee34e8 | Baileys Latte (M) | CASH | 2026-06-14T18:49:01+00:00
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
    '2026-06-14T18:49:01+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3a5e1f59 | Baileys Latte (M) | CASH | 2026-06-14T18:49:21+00:00
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
    '2026-06-14T18:49:21+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ef86fd1b | Butterscotch (M) | CASH | 2026-06-14T18:49:35+00:00
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
    '2026-06-14T18:49:35+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- d759613e | Butterscotch (M) | CASH | 2026-06-14T18:49:57+00:00
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
    '2026-06-14T18:49:57+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 1035b8e7 | Butterscotch (M) | CASH | 2026-06-14T18:50:07+00:00
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
    '2026-06-14T18:50:07+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- fb6712db | Baileys Latte (M) | CASH | 2026-06-14T18:50:16+00:00
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
    '2026-06-14T18:50:16+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 6443241e | Butterscotch (M) | CASH | 2026-06-14T18:50:28+00:00
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
    '2026-06-14T18:50:28+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 362f8722 | Baileys Latte (M) | CASH | 2026-06-14T18:50:40+00:00
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
    '2026-06-14T18:50:40+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 3d9c3454 | Salted Caramel (M) | CASH | 2026-06-14T18:52:01+00:00
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
    '2026-06-14T18:52:01+00:00'
  ) RETURNING id
)
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

-- 6470c0c6 | Butterscotch (M) | QRIS | 2026-06-14T18:59:44+00:00
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
    '2026-06-14T18:59:44+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 658f8b81 | Baileys 1 ltr | QRIS | 2026-06-14T19:41:54+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    90000.00,
    0.00,
    0.00,
    39262.00,
    '2026-06-14T19:41:54+00:00'
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

-- 51c3b9dd | Hazelnut (M) | CASH | 2026-06-14T20:08:04+00:00
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
    '2026-06-14T20:08:04+00:00'
  ) RETURNING id
)
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

-- 5a234c21 | Baileys Latte (M) | CASH | 2026-06-14T20:14:11+00:00
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
    '2026-06-14T20:14:11+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- be31619f | Hazelnut (M) | CASH | 2026-06-14T20:14:20+00:00
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
    '2026-06-14T20:14:20+00:00'
  ) RETURNING id
)
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

-- 99d36c8f | Vanilla (M) | CASH | 2026-06-14T20:15:26+00:00
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
    '2026-06-14T20:15:26+00:00'
  ) RETURNING id
)
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

-- cae9d4ed | Butterscotch (M) | CASH | 2026-06-14T20:17:19+00:00
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
    '2026-06-14T20:17:19+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- bd162d14 | Baileys Latte (M) | CASH | 2026-06-14T20:17:25+00:00
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
    '2026-06-14T20:17:25+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- ea050a66 | Baileys Latte (M) | QRIS | 2026-06-14T20:35:13+00:00
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
    '2026-06-14T20:35:13+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- 162513c5 | Baileys Latte (M) | CASH | 2026-06-14T20:40:45+00:00
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
    '2026-06-14T20:40:45+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
  ) AS p;

-- b3b8fd1f | Butterscotch (M) | QRIS | 2026-06-14T21:08:47+00:00
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
    '2026-06-14T21:08:47+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 094afdf0 | Baileys Latte (M) | QRIS | 2026-06-14T21:08:54+00:00
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
    '2026-06-14T21:08:54+00:00'
  ) RETURNING id
)
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

-- 1d838111 | Butterscotch (M) | CASH | 2026-06-14T21:58:36+00:00
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
    '2026-06-14T21:58:36+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 34c1da0a | Gula Aren (M) | QRIS | 2026-06-14T22:58:59+00:00
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
    '2026-06-14T22:58:59+00:00'
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

-- 904bd197 | Butterscotch (M) | QRIS | 2026-06-14T22:59:08+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '2026-06-14T22:59:08+00:00'
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

-- b4c04efc | Butterscotch (M) | CASH | 2026-06-14T22:59:17+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    0.00,
    0.00,
    0.00,
    0.00,
    '2026-06-14T22:59:17+00:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
  ) AS p;

-- 369a3c65 | Gula Aren (M) | CASH | 2026-06-14T22:59:43+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '2026-06-14T22:59:43+00:00'
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

-- 3b5921ff | Butterscotch (M) | CASH | 2026-06-14T22:59:52+00:00
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
    '2026-06-14T22:59:52+00:00'
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

-- 2c7237dc | Vanilla (M) | CASH | 2026-06-14T22:59:59+00:00
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
    '2026-06-14T22:59:59+00:00'
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

-- c63d21a1 | Salted Caramel (M) | CASH | 2026-06-14T23:00:07+00:00
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
    '2026-06-14T23:00:07+00:00'
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

-- 15f32c5e | Hazelnut (M) | CASH | 2026-06-14T23:00:14+00:00
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
    '2026-06-14T23:00:14+00:00'
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
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
  ) AS p;

-- cb042efe | Baileys Latte (M) | CASH | 2026-06-14T23:00:22+00:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'CASH',
    162500.00,
    0.00,
    0.00,
    89212.00,
    '2026-06-14T23:00:22+00:00'
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
