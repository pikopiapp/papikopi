-- Generated from data juni papi kopi.csv
-- Batch for June 2026: 01-05
-- Includes 1174 sales inserts.

-- Generated SQL inserts for June 2026 CSV data
-- Source: ../data juni papi kopi.csv
-- Review carefully before running.
-- This file inserts rows into public.sales and public.sale_items.
-- It uses outlet name lookup via ILIKE and product lookup via exact name.

-- 0001 | Butterscotch (M) | QRIS | 2026-06-01T10:30:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T10:30:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0002 | Butterscotch (M) | QRIS | 2026-06-01T10:34:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T10:34:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0003 | Baileys Latte (M) | QRIS | 2026-06-01T11:25:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-01T11:25:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0004 | Butterscotch (M) | QRIS | 2026-06-01T11:33:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T11:33:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0005 | Baileys Latte (M) | CASH | 2026-06-01T11:34:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T11:34:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0006 | Baileys Latte (M) | CASH | 2026-06-01T11:34:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T11:34:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0007 | Butterscotch (M) | CASH | 2026-06-01T12:02:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:02:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0008 | Salted Caramel (M) | CASH | 2026-06-01T12:05:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:05:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0009 | Baileys Latte (M) | CASH | 2026-06-01T12:06:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:06:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0010 | Butterscotch (M) | QRIS | 2026-06-01T12:06:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:06:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0011 | Baileys Latte (M) | QRIS | 2026-06-01T12:06:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:06:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0012 | Butterscotch (M) | QRIS | 2026-06-01T12:06:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:06:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0013 | Baileys Latte (M) | CASH | 2026-06-01T12:24:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:24:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0014 | Butterscotch (M) | CASH | 2026-06-01T12:30:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:30:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0015 | Butterscotch (M) | CASH | 2026-06-01T12:34:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:34:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0016 | Baileys Latte (M) | QRIS | 2026-06-01T12:39:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:39:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0017 | Baileys Latte (M) | CASH | 2026-06-01T12:49:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:49:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0018 | Baileys Latte (M) | CASH | 2026-06-01T12:49:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T12:49:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0019 | Butterscotch (M) | CASH | 2026-06-01T12:52:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T12:52:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0020 | Butterscotch (M) | CASH | 2026-06-01T13:09:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T13:09:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0021 | Baileys Latte (M) | CASH | 2026-06-01T13:09:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T13:09:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0022 | Butterscotch (M) | CASH | 2026-06-01T13:09:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T13:09:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0023 | Butterscotch (M) | QRIS | 2026-06-01T13:22:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T13:22:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0024 | Baileys Latte (M) | QRIS | 2026-06-01T13:22:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-01T13:22:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0025 | Butterscotch (M) | QRIS | 2026-06-01T13:22:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T13:22:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0026 | Baileys Latte (M) | QRIS | 2026-06-01T13:30:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-01T13:30:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0027 | Butterscotch (M) | CASH | 2026-06-01T13:38:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T13:38:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0028 | Baileys Latte (M) | CASH | 2026-06-01T13:42:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T13:42:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0029 | Baileys Latte (M) | QRIS | 2026-06-01T14:05:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T14:05:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0030 | Cold Brew (M) | QRIS | 2026-06-01T14:21:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T14:21:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0031 | Gula Aren (M) | CASH | 2026-06-01T14:21:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T14:21:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0032 | Butterscotch (M) | CASH | 2026-06-01T14:21:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T14:21:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0033 | Vanilla (M) | CASH | 2026-06-01T14:22:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T14:22:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0034 | Gula Aren (M) | CASH | 2026-06-01T14:22:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T14:22:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0035 | Butterscotch (M) | CASH | 2026-06-01T14:22:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T14:22:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0036 | Cold Brew (M) | QRIS | 2026-06-01T14:23:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-01T14:23:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0037 | Salted Caramel (M) | QRIS | 2026-06-01T14:23:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T14:23:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0038 | Baileys Latte (M) | QRIS | 2026-06-01T14:24:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-01T14:24:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0039 | Butterscotch (M) | QRIS | 2026-06-01T14:24:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-01T14:24:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0040 | Baileys Latte (M) | QRIS | 2026-06-01T14:27:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T14:27:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0041 | Butterscotch (M) | QRIS | 2026-06-01T14:30:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-01T14:30:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0042 | Baileys Latte (M) | QRIS | 2026-06-01T14:30:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-01T14:30:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0043 | Butterscotch (M) | CASH | 2026-06-01T14:37:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T14:37:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0044 | Butterscotch (M) | QRIS | 2026-06-01T14:50:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T14:50:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0045 | Baileys Latte (M) | QRIS | 2026-06-01T14:51:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T14:51:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0046 | Baileys Latte (M) | CASH | 2026-06-01T14:51:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T14:51:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0047 | Cold Brew (M) | CASH | 2026-06-01T14:54:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T14:54:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0048 | Butterscotch (M) | CASH | 2026-06-01T15:06:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:06:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0049 | Butterscotch (M) | QRIS | 2026-06-01T15:11:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:11:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0050 | Butterscotch (M) | QRIS | 2026-06-01T15:17:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:17:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0051 | Vanilla (M) | QRIS | 2026-06-01T15:18:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:18:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0052 | Cold Brew (M) | QRIS | 2026-06-01T15:18:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T15:18:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0053 | Baileys Latte (M) | CASH | 2026-06-01T15:33:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T15:33:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0054 | Butterscotch (M) | CASH | 2026-06-01T15:36:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:36:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0055 | Butterscotch (M) | QRIS | 2026-06-01T15:38:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:38:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0056 | Baileys Latte (M) | QRIS | 2026-06-01T15:38:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T15:38:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0057 | Cold Brew (M) | CASH | 2026-06-01T15:50:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T15:50:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0058 | Cold Brew (M) | CASH | 2026-06-01T15:50:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T15:50:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0059 | Baileys Latte (M) | CASH | 2026-06-01T15:50:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T15:50:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0060 | Butterscotch (M) | QRIS | 2026-06-01T15:52:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T15:52:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0061 | Butterscotch (M) | QRIS | 2026-06-01T16:01:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T16:01:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0062 | Baileys Latte (M) | QRIS | 2026-06-01T16:01:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T16:01:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0063 | Baileys Latte (M) | QRIS | 2026-06-01T16:20:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T16:20:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0064 | Gula Aren (M) | QRIS | 2026-06-01T16:20:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T16:20:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0065 | Gula Aren (M) | QRIS | 2026-06-01T16:22:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T16:22:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0066 | Gula Aren (M) | CASH | 2026-06-01T16:24:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T16:24:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0067 | Butterscotch (M) | CASH | 2026-06-01T16:34:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T16:34:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0068 | Butterscotch (M) | CASH | 2026-06-01T16:57:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T16:57:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0069 | Butterscotch 1 ltr | CASH | 2026-06-01T17:00:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = '19ed6362-3113-4aa8-a33b-c6c99e6e5be6')) * 1,
    0.00,
    44488.00,
    '2026-06-01T17:00:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '19ed6362-3113-4aa8-a33b-c6c99e6e5be6',
  1,
  90000.00,
  (SELECT hpp FROM public.products WHERE id = '19ed6362-3113-4aa8-a33b-c6c99e6e5be6')
FROM inserted_sale;

-- 0070 | Baileys Latte (M) | QRIS | 2026-06-01T17:00:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-01T17:00:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0071 | Gula Aren (M) | QRIS | 2026-06-01T17:00:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T17:00:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0072 | Butterscotch (M) | CASH | 2026-06-01T17:04:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:04:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0073 | Vanilla (M) | QRIS | 2026-06-01T17:05:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:05:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0074 | Butterscotch (M) | QRIS | 2026-06-01T17:05:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:05:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0075 | Butterscotch (M) | CASH | 2026-06-01T17:05:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:05:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0076 | Gula Aren (M) | QRIS | 2026-06-01T17:13:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-01T17:13:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0077 | Gula Aren (M) | CASH | 2026-06-01T17:14:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T17:14:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0078 | Butterscotch (M) | QRIS | 2026-06-01T17:14:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T17:14:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0079 | Gula Aren (M) | CASH | 2026-06-01T17:19:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T17:19:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0080 | Baileys Latte (M) | GRATIS | 2026-06-01T17:21:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-01T17:21:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0081 | Gula Aren (M) | QRIS | 2026-06-01T17:23:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T17:23:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0082 | Butterscotch (M) | QRIS | 2026-06-01T17:23:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:23:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0083 | Butterscotch (M) | CASH | 2026-06-01T17:29:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T17:29:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0084 | Gula Aren (M) | CASH | 2026-06-01T17:43:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T17:43:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0085 | Baileys Latte (M) | CASH | 2026-06-01T17:59:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T17:59:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0086 | Gula Aren (M) | QRIS | 2026-06-01T18:10:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T18:10:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0087 | Butterscotch (M) | CASH | 2026-06-01T18:10:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 10,
    0.00,
    70364.00,
    '2026-06-01T18:10:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  10,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0088 | Gula Aren (M) | CASH | 2026-06-01T18:12:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-01T18:12:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0089 | Baileys Latte (M) | CASH | 2026-06-01T18:12:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-01T18:12:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0090 | Butterscotch (M) | QRIS | 2026-06-01T18:13:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-01T18:13:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0091 | Gula Aren (M) | QRIS | 2026-06-01T18:14:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T18:14:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0092 | Butterscotch (M) | QRIS | 2026-06-01T18:14:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T18:14:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0093 | Gula Aren (M) | CASH | 2026-06-01T18:15:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-01T18:15:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0094 | Butterscotch (M) | CASH | 2026-06-01T18:15:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T18:15:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0095 | Cold Brew (M) | CASH | 2026-06-01T18:15:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T18:15:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0096 | Gula Aren (M) | CASH | 2026-06-01T18:17:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T18:17:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0097 | Baileys Latte (M) | CASH | 2026-06-01T18:17:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T18:17:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0098 | Cold Brew (M) | QRIS | 2026-06-01T18:21:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T18:21:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0099 | Butterscotch (M) | QRIS | 2026-06-01T18:22:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-01T18:22:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0100 | Butterscotch (M) | CASH | 2026-06-01T18:23:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T18:23:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0101 | Hazelnut (M) | CASH | 2026-06-01T18:23:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 4,
    0.00,
    28146.00,
    '2026-06-01T18:23:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0102 | Cold Brew (M) | CASH | 2026-06-01T18:23:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T18:23:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0103 | Baileys Latte (M) | CASH | 2026-06-01T18:23:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    262500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 21,
    0.00,
    144112.00,
    '2026-06-01T18:23:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  21,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0104 | Gula Aren (M) | QRIS | 2026-06-01T18:25:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-01T18:25:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0105 | Gula Aren (M) | QRIS | 2026-06-01T18:46:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T18:46:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0106 | Salted Caramel (M) | QRIS | 2026-06-01T18:46:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T18:46:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0107 | Baileys Latte (M) | QRIS | 2026-06-01T18:46:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T18:46:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0108 | Butterscotch (M) | QRIS | 2026-06-01T19:05:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:05:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0109 | Vanilla (M) | QRIS | 2026-06-01T19:05:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:05:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0110 | Gula Aren (M) | QRIS | 2026-06-01T19:15:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T19:15:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0111 | Butterscotch (M) | CASH | 2026-06-01T19:16:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:16:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0112 | Baileys Latte (M) | CASH | 2026-06-01T19:16:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T19:16:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0113 | Gula Aren (M) | QRIS | 2026-06-01T19:33:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-01T19:33:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0114 | Gula Aren (M) | CASH | 2026-06-01T19:33:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T19:33:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0115 | Vanilla (M) | QRIS | 2026-06-01T19:33:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:33:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0116 | Salted Caramel (M) | QRIS | 2026-06-01T19:33:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:33:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0117 | Hazelnut (M) | QRIS | 2026-06-01T19:34:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:34:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0118 | Butterscotch (M) | QRIS | 2026-06-01T19:34:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-01T19:34:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0119 | Baileys Latte (M) | CASH | 2026-06-01T19:37:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T19:37:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0120 | Gula Aren (M) | CASH | 2026-06-01T19:37:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T19:37:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0121 | Hazelnut (M) | CASH | 2026-06-01T19:37:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:37:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0122 | Salted Caramel (M) | QRIS | 2026-06-01T19:53:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:53:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0123 | Butterscotch (M) | CASH | 2026-06-01T19:59:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:59:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0124 | Baileys Latte (M) | CASH | 2026-06-01T19:59:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T19:59:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0125 | Butterscotch (M) | CASH | 2026-06-01T19:59:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T19:59:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0126 | Butterscotch (M) | QRIS | 2026-06-01T20:07:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-01T20:07:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0127 | Baileys Latte (M) | CASH | 2026-06-01T20:08:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T20:08:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0128 | Butterscotch (M) | GRATIS | 2026-06-01T20:12:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-01T20:12:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0129 | Butterscotch (M) | QRIS | 2026-06-01T20:15:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T20:15:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0130 | Butterscotch (M) | CASH | 2026-06-01T20:15:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-01T20:15:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0131 | Baileys Latte (M) | CASH | 2026-06-01T20:16:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-01T20:16:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0132 | Gula Aren (M) | QRIS | 2026-06-01T20:16:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-01T20:16:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0133 | Hazelnut (M) | QRIS | 2026-06-01T20:20:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-01T20:20:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0134 | Butterscotch (M) | QRIS | 2026-06-01T20:21:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T20:21:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0135 | Cold Brew (M) | QRIS | 2026-06-01T20:22:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T20:22:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0136 | Baileys Latte (M) | QRIS | 2026-06-01T20:23:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-01T20:23:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0137 | Butterscotch (M) | QRIS | 2026-06-01T20:24:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-01T20:24:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0138 | Vanilla (M) | QRIS | 2026-06-01T20:24:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-01T20:24:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0139 | Gula Aren (M) | CASH | 2026-06-01T20:28:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-01T20:28:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0140 | Baileys Latte (M) | QRIS | 2026-06-01T20:32:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-01T20:32:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0141 | Butterscotch (M) | CASH | 2026-06-01T20:32:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T20:32:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0142 | Butterscotch (M) | QRIS | 2026-06-01T20:33:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T20:33:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0143 | Baileys Latte (M) | QRIS | 2026-06-01T20:37:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T20:37:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0144 | Baileys Latte (M) | QRIS | 2026-06-01T20:41:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T20:41:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0145 | Hazelnut (M) | QRIS | 2026-06-01T20:41:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-01T20:41:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0146 | Baileys Latte (M) | QRIS | 2026-06-01T20:45:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T20:45:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0147 | Butterscotch (M) | QRIS | 2026-06-01T20:45:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T20:45:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0148 | Gula Aren (M) | CASH | 2026-06-01T20:52:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-01T20:52:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0149 | Gula Aren (M) | CASH | 2026-06-01T20:54:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-01T20:54:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0150 | Butterscotch (M) | CASH | 2026-06-01T20:56:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T20:56:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0151 | Butterscotch (M) | QRIS | 2026-06-01T21:10:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-01T21:10:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0152 | Baileys Latte (M) | QRIS | 2026-06-01T21:14:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T21:14:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0153 | Baileys Latte (M) | QRIS | 2026-06-01T21:14:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T21:14:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0154 | Butterscotch (M) | CASH | 2026-06-01T21:28:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T21:28:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0155 | Baileys Latte (M) | CASH | 2026-06-01T21:28:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T21:28:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0156 | Butterscotch (M) | QRIS | 2026-06-01T21:40:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T21:40:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0157 | Butterscotch (M) | CASH | 2026-06-01T21:45:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T21:45:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0158 | Butterscotch (M) | QRIS | 2026-06-01T21:47:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T21:47:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0159 | Baileys Latte (M) | QRIS | 2026-06-01T21:55:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T21:55:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0160 | Butterscotch (M) | CASH | 2026-06-01T21:56:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-01T21:56:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0161 | Butterscotch (M) | QRIS | 2026-06-01T22:07:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 10,
    0.00,
    70364.00,
    '2026-06-01T22:07:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  10,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0162 | Baileys Latte (M) | QRIS | 2026-06-01T22:07:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-01T22:07:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0163 | Cold Brew (M) | QRIS | 2026-06-01T22:08:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T22:08:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0164 | Cold Brew (M) | CASH | 2026-06-01T22:08:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-01T22:08:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0165 | Baileys Latte (M) | CASH | 2026-06-01T22:08:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-01T22:08:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0166 | Cold Brew (M) | QRIS | 2026-06-01T22:15:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T22:15:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0167 | Baileys Latte (M) | QRIS | 2026-06-01T22:15:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-01T22:15:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0168 | Baileys Latte (M) | QRIS | 2026-06-01T22:35:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-01T22:35:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0169 | Cold Brew (M) | QRIS | 2026-06-01T22:35:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T22:35:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0170 | Cold Brew (M) | CASH | 2026-06-01T22:42:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-01T22:42:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0171 | Gula Aren (M) | QRIS | 2026-06-01T22:46:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-01T22:46:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  7,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0172 | Cold Brew (M) | QRIS | 2026-06-01T22:47:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    30000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 3,
    0.00,
    16086.00,
    '2026-06-01T22:47:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  3,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0173 | Butterscotch (M) | QRIS | 2026-06-01T22:47:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-01T22:47:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0174 | Baileys Latte (M) | QRIS | 2026-06-01T22:48:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-01T22:48:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0175 | Gula Aren (M) | CASH | 2026-06-01T22:49:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-01T22:49:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0176 | Baileys Latte (M) | CASH | 2026-06-01T22:49:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-01T22:49:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0177 | Butterscotch (M) | GRATIS | 2026-06-01T22:58:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-01T22:58:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0178 | Butterscotch (M) | CASH | 2026-06-02T08:12:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T08:12:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0179 | Butterscotch (M) | CASH | 2026-06-02T09:32:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T09:32:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0180 | Gula Aren (M) | CASH | 2026-06-02T09:50:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T09:50:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0181 | Butterscotch (M) | CASH | 2026-06-02T09:51:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T09:51:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0182 | Baileys Latte (M) | CASH | 2026-06-02T09:51:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T09:51:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0183 | Gula Aren (M) | QRIS | 2026-06-02T09:53:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T09:53:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0184 | Cold Brew (M) | QRIS | 2026-06-02T09:53:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T09:53:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0185 | Baileys Latte (M) | QRIS | 2026-06-02T09:58:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T09:58:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0186 | Butterscotch (M) | QRIS | 2026-06-02T09:58:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T09:58:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0187 | Gula Aren (M) | QRIS | 2026-06-02T10:00:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T10:00:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0188 | Gula Aren (M) | CASH | 2026-06-02T10:00:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T10:00:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0189 | Baileys Latte (M) | CASH | 2026-06-02T10:13:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T10:13:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0190 | Butterscotch (M) | CASH | 2026-06-02T10:39:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T10:39:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0191 | Gula Aren (M) | CASH | 2026-06-02T10:55:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T10:55:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0192 | Hazelnut (M) | CASH | 2026-06-02T10:55:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T10:55:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0193 | Vanilla (M) | QRIS | 2026-06-02T11:00:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:00:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0194 | Vanilla (M) | QRIS | 2026-06-02T11:01:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:01:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0195 | Butterscotch (M) | QRIS | 2026-06-02T11:04:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:04:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0196 | Gula Aren (M) | QRIS | 2026-06-02T11:04:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:04:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0197 | Gula Aren (M) | QRIS | 2026-06-02T11:09:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:09:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0198 | Butterscotch (M) | CASH | 2026-06-02T11:10:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:10:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0199 | Gula Aren (M) | QRIS | 2026-06-02T11:10:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:10:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0200 | Cold Brew (M) | QRIS | 2026-06-02T11:14:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T11:14:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0201 | Cold Brew (M) | QRIS | 2026-06-02T11:14:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T11:14:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0202 | Gula Aren (M) | CASH | 2026-06-02T11:16:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:16:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0203 | Butterscotch (M) | CASH | 2026-06-02T11:19:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:19:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0204 | Baileys Latte (M) | QRIS | 2026-06-02T11:19:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T11:19:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0205 | Butterscotch (M) | QRIS | 2026-06-02T11:20:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:20:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0206 | Salted Caramel (M) | CASH | 2026-06-02T11:38:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:38:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0207 | Gula Aren (M) | QRIS | 2026-06-02T11:42:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:42:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0208 | Baileys Latte (M) | QRIS | 2026-06-02T11:43:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T11:43:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0209 | Baileys Latte (M) | QRIS | 2026-06-02T11:43:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T11:43:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0210 | Hazelnut (M) | QRIS | 2026-06-02T11:43:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:43:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0211 | Gula Aren (M) | QRIS | 2026-06-02T11:43:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T11:43:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0212 | Butterscotch (M) | QRIS | 2026-06-02T11:49:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:49:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0213 | Butterscotch (M) | QRIS | 2026-06-02T11:51:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T11:51:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0214 | Baileys Latte (M) | CASH | 2026-06-02T12:10:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:10:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0215 | Gula Aren (M) | QRIS | 2026-06-02T12:10:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:10:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0216 | Butterscotch (M) | QRIS | 2026-06-02T12:15:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:15:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0217 | Gula Aren (M) | QRIS | 2026-06-02T12:19:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:19:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0218 | Baileys Latte (M) | CASH | 2026-06-02T12:19:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:19:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0219 | Gula Aren (M) | QRIS | 2026-06-02T12:21:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:21:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0220 | Butterscotch (M) | QRIS | 2026-06-02T12:22:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:22:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0221 | Butterscotch (M) | QRIS | 2026-06-02T12:22:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:22:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0222 | Baileys Latte (M) | QRIS | 2026-06-02T12:23:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:23:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0223 | Gula Aren (M) | CASH | 2026-06-02T12:24:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:24:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0224 | Gula Aren (M) | QRIS | 2026-06-02T12:26:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T12:26:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0225 | Baileys Latte (M) | QRIS | 2026-06-02T12:27:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:27:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0226 | Hazelnut (M) | CASH | 2026-06-02T12:27:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:27:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0227 | Vanilla (M) | QRIS | 2026-06-02T12:28:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:28:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0228 | Baileys Latte (M) | QRIS | 2026-06-02T12:28:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:28:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0229 | Baileys Latte (M) | QRIS | 2026-06-02T12:29:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:29:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0230 | Cold Brew (M) | CASH | 2026-06-02T12:29:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T12:29:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0231 | Gula Aren (M) | CASH | 2026-06-02T12:30:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T12:30:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0232 | Vanilla (M) | QRIS | 2026-06-02T12:30:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T12:30:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0233 | Baileys Latte (M) | QRIS | 2026-06-02T12:33:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T12:33:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0234 | Baileys Latte (M) | QRIS | 2026-06-02T12:31:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-02T12:31:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0235 | Butterscotch (M) | QRIS | 2026-06-02T12:41:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-02T12:41:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0236 | Butterscotch (M) | QRIS | 2026-06-02T12:41:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-02T12:41:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0237 | Gula Aren (M) | QRIS | 2026-06-02T12:41:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:41:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0238 | Hazelnut (M) | CASH | 2026-06-02T12:42:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 4,
    0.00,
    28146.00,
    '2026-06-02T12:42:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0239 | Cold Brew (M) | CASH | 2026-06-02T12:46:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T12:46:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0240 | Butterscotch (M) | CASH | 2026-06-02T12:46:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-02T12:46:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0241 | Gula Aren (M) | CASH | 2026-06-02T12:51:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T12:51:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0242 | Butterscotch (M) | CASH | 2026-06-02T12:51:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:51:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0243 | Cold Brew (M) | CASH | 2026-06-02T12:51:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T12:51:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0244 | Salted Caramel (M) | QRIS | 2026-06-02T12:53:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:53:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0245 | Gula Aren (M) | QRIS | 2026-06-02T12:53:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T12:53:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0246 | Butterscotch (M) | QRIS | 2026-06-02T12:53:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:53:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0247 | Vanilla (M) | QRIS | 2026-06-02T12:54:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:54:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0248 | Cold Brew (M) | QRIS | 2026-06-02T12:57:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T12:57:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0249 | Butterscotch (M) | QRIS | 2026-06-02T12:58:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T12:58:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0250 | Butterscotch (M) | QRIS | 2026-06-02T13:01:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:01:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0251 | Baileys Latte (M) | QRIS | 2026-06-02T13:01:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T13:01:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0252 | Butterscotch (M) | CASH | 2026-06-02T13:04:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:04:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0253 | Butterscotch (M) | CASH | 2026-06-02T13:05:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:05:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0254 | Butterscotch (M) | CASH | 2026-06-02T13:05:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:05:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0255 | Butterscotch (M) | CASH | 2026-06-02T13:05:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:05:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0256 | Butterscotch (M) | QRIS | 2026-06-02T13:05:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:05:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0257 | Gula Aren (M) | QRIS | 2026-06-02T13:05:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:05:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0258 | Vanilla (M) | CASH | 2026-06-02T13:05:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:05:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0259 | Butterscotch (M) | CASH | 2026-06-02T13:06:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-02T13:06:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0260 | Cold Brew (M) | CASH | 2026-06-02T13:07:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T13:07:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0261 | Butterscotch (M) | QRIS | 2026-06-02T13:07:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-02T13:07:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0262 | Gula Aren (M) | CASH | 2026-06-02T13:08:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T13:08:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0263 | Gula Aren (M) | CASH | 2026-06-02T13:12:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:12:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0264 | Baileys Latte (M) | CASH | 2026-06-02T13:12:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T13:12:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0265 | Gula Aren (M) | QRIS | 2026-06-02T13:13:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:13:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0266 | Gula Aren (M) | QRIS | 2026-06-02T13:15:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:15:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0267 | Gula Aren (M) | CASH | 2026-06-02T13:22:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T13:22:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0268 | Gula Aren (M) | CASH | 2026-06-02T13:22:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:22:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0269 | Vanilla (M) | CASH | 2026-06-02T13:26:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:26:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0270 | Gula Aren (M) | CASH | 2026-06-02T13:27:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:27:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0271 | Baileys Latte (M) | CASH | 2026-06-02T13:28:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T13:28:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0272 | Vanilla (M) | CASH | 2026-06-02T13:34:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:34:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0273 | Baileys Latte (M) | CASH | 2026-06-02T13:35:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T13:35:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0274 | Salted Caramel (M) | QRIS | 2026-06-02T13:39:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:39:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0275 | Butterscotch (M) | CASH | 2026-06-02T13:39:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:39:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0276 | Butterscotch (M) | CASH | 2026-06-02T13:40:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:40:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0277 | Baileys Latte (M) | QRIS | 2026-06-02T13:42:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T13:42:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0278 | Gula Aren (M) | QRIS | 2026-06-02T13:42:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T13:42:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0279 | Hazelnut (M) | CASH | 2026-06-02T13:45:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T13:45:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0280 | Baileys Latte (M) | CASH | 2026-06-02T13:51:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T13:51:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0281 | Baileys Latte (M) | CASH | 2026-06-02T14:00:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:00:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0282 | Hazelnut (M) | CASH | 2026-06-02T14:02:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:02:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0283 | Baileys Latte (M) | CASH | 2026-06-02T14:07:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:07:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0284 | Butterscotch (M) | QRIS | 2026-06-02T14:09:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:09:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0285 | Gula Aren (M) | QRIS | 2026-06-02T14:10:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T14:10:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0286 | Gula Aren (M) | QRIS | 2026-06-02T14:10:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T14:10:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0287 | Gula Aren (M) | QRIS | 2026-06-02T14:11:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T14:11:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0288 | Salted Caramel (M) | CASH | 2026-06-02T14:11:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:11:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0289 | Gula Aren (M) | QRIS | 2026-06-02T14:11:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T14:11:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0290 | Butterscotch (M) | QRIS | 2026-06-02T14:11:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:11:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0291 | Butterscotch (M) | QRIS | 2026-06-02T14:11:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:11:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0292 | Baileys Latte (M) | QRIS | 2026-06-02T14:11:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:11:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0293 | Gula Aren (M) | CASH | 2026-06-02T14:23:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T14:23:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0294 | Hazelnut (M) | QRIS | 2026-06-02T14:31:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:31:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0295 | Baileys Latte (M) | QRIS | 2026-06-02T14:31:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:31:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0296 | Vanilla (M) | QRIS | 2026-06-02T14:37:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:37:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0297 | Baileys Latte (M) | QRIS | 2026-06-02T14:37:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:37:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0298 | Baileys Latte (M) | QRIS | 2026-06-02T14:40:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T14:40:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0299 | Hazelnut (M) | CASH | 2026-06-02T14:43:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:43:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0300 | Hazelnut (M) | QRIS | 2026-06-02T14:53:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T14:53:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0301 | Baileys Latte (M) | QRIS | 2026-06-02T15:03:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T15:03:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0302 | Hazelnut (M) | QRIS | 2026-06-02T15:19:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:19:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0303 | Butterscotch (M) | CASH | 2026-06-02T15:27:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:27:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0304 | Hazelnut (M) | CASH | 2026-06-02T15:27:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:27:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0305 | Gula Aren (M) | CASH | 2026-06-02T15:27:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T15:27:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0306 | Gula Aren (M) | QRIS | 2026-06-02T15:28:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T15:28:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0307 | Cold Brew (M) | QRIS | 2026-06-02T15:31:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-02T15:31:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0308 | Vanilla (M) | QRIS | 2026-06-02T15:32:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:32:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0309 | Cold Brew (M) | QRIS | 2026-06-02T15:40:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T15:40:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0310 | Hazelnut (M) | QRIS | 2026-06-02T15:40:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:40:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0311 | Gula Aren (M) | QRIS | 2026-06-02T15:56:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T15:56:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0312 | Salted Caramel (M) | QRIS | 2026-06-02T15:57:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T15:57:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0313 | Baileys Latte (M) | QRIS | 2026-06-02T16:00:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T16:00:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0314 | Baileys Latte (M) | GRATIS | 2026-06-02T16:04:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-02T16:04:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0315 | Butterscotch (M) | QRIS | 2026-06-02T16:33:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T16:33:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0316 | Vanilla (M) | QRIS | 2026-06-02T16:33:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T16:33:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0317 | Butterscotch (M) | QRIS | 2026-06-02T16:38:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T16:38:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0318 | Gula Aren (M) | QRIS | 2026-06-02T16:50:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T16:50:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0319 | Gula Aren (M) | CASH | 2026-06-02T16:54:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T16:54:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0320 | Baileys Latte (M) | QRIS | 2026-06-02T16:55:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T16:55:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0321 | Baileys Latte (M) | QRIS | 2026-06-02T17:01:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T17:01:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0322 | Butterscotch (M) | CASH | 2026-06-02T17:06:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-02T17:06:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0323 | Salted Caramel (M) | CASH | 2026-06-02T17:06:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-02T17:06:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0324 | Gula Aren (M) | CASH | 2026-06-02T17:14:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T17:14:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0325 | Salted Caramel (M) | CASH | 2026-06-02T17:14:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:14:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0326 | Hazelnut (M) | QRIS | 2026-06-02T17:14:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:14:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0327 | Salted Caramel (M) | CASH | 2026-06-02T17:15:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:15:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0328 | Butterscotch (M) | CASH | 2026-06-02T17:16:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:16:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0329 | Baileys Latte (M) | CASH | 2026-06-02T17:17:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T17:17:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0330 | Gula Aren (M) | QRIS | 2026-06-02T17:26:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T17:26:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0331 | Butterscotch (M) | QRIS | 2026-06-02T17:28:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:28:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0332 | Baileys Latte (M) | CASH | 2026-06-02T17:32:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T17:32:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0333 | Salted Caramel (M) | QRIS | 2026-06-02T17:33:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:33:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0334 | Baileys Latte (M) | CASH | 2026-06-02T17:33:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-02T17:33:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0335 | Gula Aren (M) | QRIS | 2026-06-02T17:33:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T17:33:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0336 | Butterscotch (M) | QRIS | 2026-06-02T17:36:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T17:36:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0337 | Baileys Latte (M) | QRIS | 2026-06-02T17:42:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T17:42:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0338 | Gula Aren (M) | CASH | 2026-06-02T17:43:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T17:43:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0339 | Baileys Latte (M) | QRIS | 2026-06-02T17:48:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T17:48:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0340 | Hazelnut (M) | QRIS | 2026-06-02T18:03:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:03:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0341 | Baileys Latte (M) | QRIS | 2026-06-02T18:03:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T18:03:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0342 | Vanilla (M) | CASH | 2026-06-02T18:11:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:11:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0343 | Butterscotch (M) | QRIS | 2026-06-02T18:33:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:33:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0344 | Baileys Latte (M) | QRIS | 2026-06-02T18:33:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T18:33:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0345 | Gula Aren (M) | QRIS | 2026-06-02T18:33:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-02T18:33:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0346 | Cold Brew (M) | QRIS | 2026-06-02T18:33:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T18:33:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0347 | Salted Caramel (M) | QRIS | 2026-06-02T18:34:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:34:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0348 | Butterscotch (M) | QRIS | 2026-06-02T18:35:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    137500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 11,
    0.00,
    77400.00,
    '2026-06-02T18:35:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  11,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0349 | Baileys Latte (M) | QRIS | 2026-06-02T18:35:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T18:35:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0350 | Gula Aren (M) | CASH | 2026-06-02T18:36:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T18:36:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0351 | Hazelnut (M) | CASH | 2026-06-02T18:36:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:36:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0352 | Cold Brew (M) | CASH | 2026-06-02T18:36:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T18:36:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0353 | Baileys Latte (M) | CASH | 2026-06-02T18:36:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-02T18:36:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0354 | Vanilla (M) | QRIS | 2026-06-02T18:38:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T18:38:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0355 | Butterscotch (M) | QRIS | 2026-06-02T18:38:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:38:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0356 | Baileys Latte (M) | GRATIS | 2026-06-02T18:49:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-02T18:49:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0357 | Gula Aren (M) | QRIS | 2026-06-02T18:50:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T18:50:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0358 | Hazelnut (M) | CASH | 2026-06-02T18:50:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:50:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0359 | Baileys Latte (M) | CASH | 2026-06-02T18:50:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T18:50:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0360 | Gula Aren (M) | QRIS | 2026-06-02T18:57:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T18:57:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0361 | Cold Brew (M) | CASH | 2026-06-02T18:57:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T18:57:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0362 | Butterscotch (M) | QRIS | 2026-06-02T18:57:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:57:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0363 | Butterscotch (M) | CASH | 2026-06-02T18:58:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T18:58:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0364 | Baileys Latte (M) | QRIS | 2026-06-02T19:03:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T19:03:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0365 | Baileys Latte (M) | CASH | 2026-06-02T19:03:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T19:03:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0366 | Baileys Latte (M) | CASH | 2026-06-02T19:09:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T19:09:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0367 | Butterscotch (M) | QRIS | 2026-06-02T19:15:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T19:15:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0368 | Salted Caramel (M) | QRIS | 2026-06-02T19:15:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T19:15:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0369 | Vanilla (M) | QRIS | 2026-06-02T19:20:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T19:20:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0370 | Gula Aren (M) | CASH | 2026-06-02T19:22:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-02T19:22:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0371 | Hazelnut (M) | CASH | 2026-06-02T19:23:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T19:23:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0372 | Baileys Latte (M) | QRIS | 2026-06-02T19:28:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T19:28:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0373 | Vanilla (M) | CASH | 2026-06-02T19:28:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T19:28:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0374 | Gula Aren (M) | QRIS | 2026-06-02T19:36:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T19:36:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0375 | Baileys Latte (M) | QRIS | 2026-06-02T19:36:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T19:36:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0376 | Butterscotch (M) | QRIS | 2026-06-02T19:46:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T19:46:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0377 | Cold Brew (M) | CASH | 2026-06-02T19:54:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T19:54:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0378 | Vanilla (M) | QRIS | 2026-06-02T19:57:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T19:57:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0379 | Baileys Latte (M) | GRATIS | 2026-06-02T20:02:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-02T20:02:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0380 | Baileys Latte (M) | CASH | 2026-06-02T20:05:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T20:05:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0381 | Hazelnut (M) | CASH | 2026-06-02T20:05:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T20:05:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0382 | Baileys Latte (M) | CASH | 2026-06-02T20:05:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T20:05:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0383 | Baileys Latte (M) | QRIS | 2026-06-02T20:10:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T20:10:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0384 | Hazelnut (M) | CASH | 2026-06-02T20:12:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T20:12:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0385 | Butterscotch (M) | QRIS | 2026-06-02T20:16:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-02T20:16:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0386 | Vanilla (M) | QRIS | 2026-06-02T20:17:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T20:17:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0387 | Gula Aren (M) | QRIS | 2026-06-02T20:17:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-02T20:17:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0388 | Gula Aren (M) | CASH | 2026-06-02T20:18:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-02T20:18:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0389 | Butterscotch (M) | CASH | 2026-06-02T20:18:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-02T20:18:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0390 | Vanilla (M) | CASH | 2026-06-02T20:18:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T20:18:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0391 | Salted Caramel (M) | CASH | 2026-06-02T20:18:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-02T20:18:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0392 | Hazelnut (M) | CASH | 2026-06-02T20:18:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-02T20:18:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0393 | Cold Brew (M) | CASH | 2026-06-02T20:19:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    30000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 3,
    0.00,
    16086.00,
    '2026-06-02T20:19:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  3,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0394 | Baileys Latte (M) | CASH | 2026-06-02T20:19:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-02T20:19:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0395 | Gula Aren (M) | CASH | 2026-06-02T20:27:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T20:27:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0396 | Baileys Latte (M) | CASH | 2026-06-02T20:35:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T20:35:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0397 | Gula Aren (M) | CASH | 2026-06-02T20:45:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-02T20:45:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0398 | Cold Brew (M) | CASH | 2026-06-02T20:45:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T20:45:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0399 | Butterscotch (M) | QRIS | 2026-06-02T20:51:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-02T20:51:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0400 | Gula Aren (M) | QRIS | 2026-06-02T20:51:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T20:51:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0401 | Cold Brew (M) | QRIS | 2026-06-02T20:51:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T20:51:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0402 | Gula Aren (M) | CASH | 2026-06-02T20:52:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 8,
    0.00,
    28766.00,
    '2026-06-02T20:52:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  8,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0403 | Cold Brew (M) | CASH | 2026-06-02T20:52:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T20:52:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0404 | Baileys Latte (M) | CASH | 2026-06-02T20:52:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-02T20:52:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0405 | Salted Caramel (M) | QRIS | 2026-06-02T20:52:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T20:52:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0406 | Gula Aren (M) | QRIS | 2026-06-02T20:56:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T20:56:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0407 | Cold Brew (M) | QRIS | 2026-06-02T20:56:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T20:56:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0408 | Baileys Latte (M) | QRIS | 2026-06-02T20:56:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T20:56:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0409 | Gula Aren (M) | QRIS | 2026-06-02T21:25:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T21:25:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0410 | Baileys Latte (M) | QRIS | 2026-06-02T21:25:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T21:25:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0411 | Hazelnut (M) | CASH | 2026-06-02T21:26:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T21:26:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0412 | Baileys Latte (M) | GRATIS | 2026-06-02T21:26:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-02T21:26:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0413 | Cold Brew (M) | CASH | 2026-06-02T21:31:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-02T21:31:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0414 | Baileys Latte (M) | QRIS | 2026-06-02T21:33:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T21:33:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0415 | Baileys Latte (M) | CASH | 2026-06-02T21:40:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T21:40:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0416 | Butterscotch (M) | GRATIS | 2026-06-02T21:49:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-02T21:49:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0417 | Hazelnut (M) | GRATIS | 2026-06-02T21:51:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    0.00,
    '2026-06-02T21:51:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0418 | Butterscotch (M) | CASH | 2026-06-02T21:52:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-02T21:52:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0419 | Vanilla (M) | QRIS | 2026-06-02T21:56:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T21:56:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0420 | Baileys Latte (M) | QRIS | 2026-06-02T21:57:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-02T21:57:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0421 | Baileys Latte (M) | CASH | 2026-06-02T21:59:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-02T21:59:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0422 | Vanilla (M) | CASH | 2026-06-02T21:59:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-02T21:59:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0423 | Salted Caramel (M) | CASH | 2026-06-02T22:00:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-02T22:00:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0424 | Gula Aren (M) | CASH | 2026-06-02T22:22:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-02T22:22:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0425 | Vanilla (M) | QRIS | 2026-06-02T22:23:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-02T22:23:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0426 | Baileys Latte (M) | QRIS | 2026-06-02T22:23:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T22:23:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0427 | Hazelnut (M) | CASH | 2026-06-02T22:26:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-02T22:26:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0428 | Butterscotch (M) | CASH | 2026-06-02T22:27:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-02T22:27:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0429 | Baileys Latte (M) | CASH | 2026-06-02T22:27:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-02T22:27:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0430 | Baileys Latte (M) | CASH | 2026-06-02T22:28:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-02T22:28:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0431 | Gula Aren (M) | QRIS | 2026-06-03T10:04:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-03T10:04:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0432 | Gula Aren (M) | CASH | 2026-06-03T10:04:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T10:04:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0433 | Gula Aren (M) | QRIS | 2026-06-03T10:10:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T10:10:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0434 | Butterscotch (M) | QRIS | 2026-06-03T10:20:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T10:20:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0435 | Gula Aren (M) | CASH | 2026-06-03T10:20:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T10:20:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0436 | Baileys Latte (M) | CASH | 2026-06-03T10:21:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T10:21:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0437 | Cold Brew (M) | CASH | 2026-06-03T10:25:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T10:25:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0438 | Butterscotch (M) | QRIS | 2026-06-03T10:25:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T10:25:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0439 | Butterscotch (M) | QRIS | 2026-06-03T10:38:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T10:38:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0440 | Baileys Latte (M) | QRIS | 2026-06-03T10:46:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T10:46:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0441 | Cold Brew (M) | CASH | 2026-06-03T10:46:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T10:46:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0442 | Cold Brew (M) | CASH | 2026-06-03T10:49:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T10:49:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0443 | Salted Caramel (M) | CASH | 2026-06-03T10:53:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T10:53:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0444 | Butterscotch (M) | QRIS | 2026-06-03T10:54:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T10:54:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0445 | Gula Aren (M) | CASH | 2026-06-03T10:59:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T10:59:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0446 | Gula Aren (M) | QRIS | 2026-06-03T11:05:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:05:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0447 | Gula Aren (M) | CASH | 2026-06-03T11:11:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:11:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0448 | Gula Aren (M) | QRIS | 2026-06-03T11:10:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:10:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0449 | Cold Brew (M) | QRIS | 2026-06-03T11:18:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T11:18:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0450 | Gula Aren (M) | QRIS | 2026-06-03T11:20:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:20:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0451 | Butterscotch (M) | QRIS | 2026-06-03T11:27:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:27:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0452 | Vanilla (M) | QRIS | 2026-06-03T11:27:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:27:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0453 | Gula Aren (M) | QRIS | 2026-06-03T11:29:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:29:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0454 | Gula Aren (M) | QRIS | 2026-06-03T11:32:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T11:32:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0455 | Butterscotch (M) | QRIS | 2026-06-03T11:33:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:33:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0456 | Gula Aren (M) | CASH | 2026-06-03T11:34:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T11:34:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0457 | Butterscotch (M) | CASH | 2026-06-03T11:45:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:45:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0458 | Baileys Latte (M) | CASH | 2026-06-03T11:45:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T11:45:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0459 | Butterscotch (M) | QRIS | 2026-06-03T11:45:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:45:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0460 | Butterscotch (M) | CASH | 2026-06-03T11:49:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T11:49:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0461 | Baileys Latte (M) | CASH | 2026-06-03T11:49:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T11:49:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0462 | Baileys Latte (M) | QRIS | 2026-06-03T11:52:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T11:52:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0463 | Baileys Latte (M) | CASH | 2026-06-03T12:04:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:04:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0464 | Baileys Latte (M) | QRIS | 2026-06-03T12:04:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:04:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0465 | Gula Aren (M) | CASH | 2026-06-03T12:05:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T12:05:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0466 | Baileys Latte (M) | QRIS | 2026-06-03T12:06:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:06:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0467 | Salted Caramel (M) | QRIS | 2026-06-03T12:06:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T12:06:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0468 | Baileys Latte (M) | QRIS | 2026-06-03T12:12:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:12:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0469 | Butterscotch (M) | QRIS | 2026-06-03T12:12:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:12:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0470 | Hazelnut (M) | QRIS | 2026-06-03T12:12:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:12:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0471 | Butterscotch (M) | CASH | 2026-06-03T12:25:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:25:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0472 | Gula Aren (M) | CASH | 2026-06-03T12:28:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:28:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0473 | Butterscotch (M) | QRIS | 2026-06-03T12:28:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T12:28:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0474 | Baileys Latte (M) | QRIS | 2026-06-03T12:29:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:29:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0475 | Cold Brew (M) | CASH | 2026-06-03T12:29:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T12:29:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0476 | Salted Caramel (M) | CASH | 2026-06-03T12:30:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:30:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0477 | Butterscotch (M) | CASH | 2026-06-03T12:31:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-03T12:31:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0478 | Salted Caramel (M) | CASH | 2026-06-03T12:35:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:35:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0479 | Butterscotch (M) | QRIS | 2026-06-03T12:36:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:36:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0480 | Hazelnut (M) | QRIS | 2026-06-03T12:36:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:36:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0481 | Gula Aren (M) | CASH | 2026-06-03T12:36:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:36:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0482 | Butterscotch (M) | QRIS | 2026-06-03T12:38:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T12:38:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0483 | Vanilla (M) | QRIS | 2026-06-03T12:38:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:38:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0484 | Baileys Latte (M) | QRIS | 2026-06-03T12:39:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:39:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0485 | Vanilla (M) | QRIS | 2026-06-03T12:41:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:41:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0486 | Gula Aren (M) | QRIS | 2026-06-03T12:42:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:42:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0487 | Butterscotch (M) | CASH | 2026-06-03T12:45:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:45:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0488 | Baileys Latte (M) | CASH | 2026-06-03T12:45:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:45:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0489 | Butterscotch (M) | QRIS | 2026-06-03T12:48:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T12:48:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0490 | Baileys Latte (M) | QRIS | 2026-06-03T12:58:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T12:58:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0491 | Gula Aren (M) | CASH | 2026-06-03T12:58:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:58:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0492 | Gula Aren (M) | QRIS | 2026-06-03T12:59:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:59:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0493 | Gula Aren (M) | QRIS | 2026-06-03T12:59:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T12:59:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0494 | Gula Aren (M) | QRIS | 2026-06-03T13:05:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T13:05:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0495 | Baileys Latte (M) | QRIS | 2026-06-03T13:07:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T13:07:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0496 | Cold Brew (M) | CASH | 2026-06-03T13:07:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T13:07:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0497 | Butterscotch (M) | CASH | 2026-06-03T13:09:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T13:09:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0498 | Baileys Latte (M) | CASH | 2026-06-03T13:09:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T13:09:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0499 | Gula Aren (M) | QRIS | 2026-06-03T13:13:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T13:13:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0500 | Vanilla (M) | QRIS | 2026-06-03T13:16:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:16:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0501 | Gula Aren (M) | QRIS | 2026-06-03T13:19:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T13:19:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0502 | Vanilla (M) | CASH | 2026-06-03T13:16:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:16:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0503 | Baileys Latte (M) | QRIS | 2026-06-03T13:24:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-03T13:24:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0504 | Butterscotch (M) | CASH | 2026-06-03T13:39:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:39:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0505 | Gula Aren (M) | CASH | 2026-06-03T13:41:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T13:41:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0506 | Gula Aren (M) | QRIS | 2026-06-03T13:46:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T13:46:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0507 | Hazelnut (M) | CASH | 2026-06-03T13:48:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:48:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0508 | Butterscotch (M) | CASH | 2026-06-03T13:48:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:48:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0509 | Salted Caramel (M) | QRIS | 2026-06-03T13:49:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T13:49:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0510 | Gula Aren (M) | CASH | 2026-06-03T13:49:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T13:49:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0511 | Baileys Latte (M) | CASH | 2026-06-03T13:52:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T13:52:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0512 | Butterscotch (M) | QRIS | 2026-06-03T13:58:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T13:58:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0513 | Butterscotch (M) | QRIS | 2026-06-03T14:04:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:04:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0514 | Salted Caramel (M) | QRIS | 2026-06-03T14:07:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:07:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0515 | Butterscotch (M) | CASH | 2026-06-03T14:09:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:09:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0516 | Butterscotch (M) | QRIS | 2026-06-03T14:09:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:09:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0517 | Vanilla (M) | CASH | 2026-06-03T14:10:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:10:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0518 | Gula Aren (M) | CASH | 2026-06-03T14:10:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T14:10:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0519 | Vanilla (M) | CASH | 2026-06-03T14:12:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:12:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0520 | Butterscotch (M) | QRIS | 2026-06-03T14:15:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:15:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0521 | Salted Caramel (M) | QRIS | 2026-06-03T14:15:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:15:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0522 | Baileys Latte (M) | CASH | 2026-06-03T14:15:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T14:15:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0523 | Gula Aren (M) | CASH | 2026-06-03T14:18:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-03T14:18:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0524 | Cold Brew (M) | CASH | 2026-06-03T14:22:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T14:22:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0525 | Baileys Latte (M) | QRIS | 2026-06-03T14:24:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T14:24:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0526 | Gula Aren (M) | CASH | 2026-06-03T14:24:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-03T14:24:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0527 | Gula Aren (M) | CASH | 2026-06-03T14:34:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T14:34:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0528 | Vanilla (M) | QRIS | 2026-06-03T14:34:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:34:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0529 | Butterscotch (M) | CASH | 2026-06-03T14:35:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:35:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0530 | Butterscotch (M) | CASH | 2026-06-03T14:36:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:36:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0531 | Butterscotch (M) | CASH | 2026-06-03T14:44:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:44:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0532 | Butterscotch (M) | QRIS | 2026-06-03T14:45:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T14:45:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0533 | Baileys Latte (M) | CASH | 2026-06-03T15:05:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T15:05:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0534 | Salted Caramel (M) | QRIS | 2026-06-03T15:12:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T15:12:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0535 | Gula Aren (M) | CASH | 2026-06-03T15:14:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T15:14:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0536 | Butterscotch (M) | QRIS | 2026-06-03T15:17:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T15:17:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0537 | Gula Aren (M) | CASH | 2026-06-03T15:34:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-03T15:34:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0538 | Hazelnut (M) | QRIS | 2026-06-03T15:36:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T15:36:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0539 | Gula Aren (M) | QRIS | 2026-06-03T15:37:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T15:37:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0540 | Butterscotch (M) | QRIS | 2026-06-03T15:38:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T15:38:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0541 | Baileys Latte (M) | CASH | 2026-06-03T15:38:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T15:38:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0542 | Vanilla (M) | QRIS | 2026-06-03T16:05:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:05:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0543 | Butterscotch (M) | CASH | 2026-06-03T16:06:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:06:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0544 | Butterscotch (M) | QRIS | 2026-06-03T16:09:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:09:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0545 | Gula Aren (M) | CASH | 2026-06-03T16:11:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-03T16:11:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0546 | Baileys Latte (M) | QRIS | 2026-06-03T16:12:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T16:12:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0547 | Baileys Latte (M) | QRIS | 2026-06-03T16:14:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T16:14:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0548 | Gula Aren (M) | QRIS | 2026-06-03T16:15:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T16:15:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0549 | Hazelnut (M) | CASH | 2026-06-03T16:15:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:15:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0550 | Salted Caramel (M) | CASH | 2026-06-03T16:18:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:18:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0551 | Gula Aren (M) | CASH | 2026-06-03T16:18:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T16:18:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0552 | Butterscotch (M) | CASH | 2026-06-03T16:38:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T16:38:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0553 | Baileys Latte (M) | CASH | 2026-06-03T16:38:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T16:38:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0554 | Butterscotch (M) | CASH | 2026-06-03T16:38:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:38:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0555 | Butterscotch (M) | QRIS | 2026-06-03T16:38:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:38:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0556 | Butterscotch (M) | CASH | 2026-06-03T16:38:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T16:38:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0557 | Butterscotch (M) | QRIS | 2026-06-03T16:39:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:39:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0558 | Butterscotch (M) | QRIS | 2026-06-03T16:42:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T16:42:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0559 | Gula Aren (M) | CASH | 2026-06-03T16:51:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T16:51:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0560 | Hazelnut (M) | CASH | 2026-06-03T16:52:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T16:52:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0561 | Butterscotch (M) | QRIS | 2026-06-03T17:11:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:11:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0562 | Salted Caramel (M) | QRIS | 2026-06-03T17:11:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:11:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0563 | Gula Aren (M) | CASH | 2026-06-03T17:11:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T17:11:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0564 | Butterscotch (M) | CASH | 2026-06-03T17:11:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-03T17:11:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0565 | Butterscotch (M) | CASH | 2026-06-03T17:12:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-03T17:12:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0566 | Vanilla (M) | CASH | 2026-06-03T17:15:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:15:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0567 | Baileys Latte (M) | QRIS | 2026-06-03T17:20:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-03T17:20:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0568 | Butterscotch (M) | QRIS | 2026-06-03T17:20:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:20:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0569 | Baileys Latte (M) | CASH | 2026-06-03T17:22:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T17:22:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0570 | Vanilla (M) | CASH | 2026-06-03T17:22:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:22:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0571 | Hazelnut (M) | CASH | 2026-06-03T17:22:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-03T17:22:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0572 | Salted Caramel (M) | CASH | 2026-06-03T17:23:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:23:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0573 | Butterscotch (M) | CASH | 2026-06-03T17:23:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T17:23:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0574 | Gula Aren (M) | QRIS | 2026-06-03T17:24:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-03T17:24:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0575 | Butterscotch (M) | QRIS | 2026-06-03T17:24:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-03T17:24:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  9,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0576 | Vanilla (M) | QRIS | 2026-06-03T17:24:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:24:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0577 | Baileys Latte (M) | QRIS | 2026-06-03T17:24:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T17:24:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0578 | Vanilla (M) | CASH | 2026-06-03T17:24:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:24:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0579 | Hazelnut (M) | CASH | 2026-06-03T17:24:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-03T17:24:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0580 | Butterscotch (M) | QRIS | 2026-06-03T17:25:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:25:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0581 | Cold Brew (M) | CASH | 2026-06-03T17:24:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-03T17:24:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0582 | Baileys Latte (M) | CASH | 2026-06-03T17:25:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-03T17:25:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0583 | Butterscotch (M) | QRIS | 2026-06-03T17:26:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:26:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0584 | Gula Aren (M) | CASH | 2026-06-03T17:26:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T17:26:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0585 | Butterscotch (M) | CASH | 2026-06-03T17:27:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T17:27:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0586 | Gula Aren (M) | CASH | 2026-06-03T17:27:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-03T17:27:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0587 | Butterscotch (M) | CASH | 2026-06-03T17:29:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:29:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0588 | Baileys Latte (M) | QRIS | 2026-06-03T17:32:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T17:32:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0589 | Baileys Latte (M) | CASH | 2026-06-03T17:33:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T17:33:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0590 | Butterscotch (M) | QRIS | 2026-06-03T17:34:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T17:34:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0591 | Butterscotch (M) | CASH | 2026-06-03T17:35:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-03T17:35:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0592 | Salted Caramel (M) | CASH | 2026-06-03T17:36:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:36:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0593 | Hazelnut (M) | CASH | 2026-06-03T17:38:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:38:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0594 | Butterscotch (M) | GRATIS | 2026-06-03T17:45:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-03T17:45:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0595 | Gula Aren (M) | CASH | 2026-06-03T17:46:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T17:46:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0596 | Hazelnut (M) | CASH | 2026-06-03T17:47:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:47:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0597 | Vanilla (M) | CASH | 2026-06-03T17:50:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:50:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0598 | Butterscotch (M) | CASH | 2026-06-03T17:52:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:52:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0599 | Baileys Latte (M) | QRIS | 2026-06-03T17:59:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T17:59:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0600 | Cold Brew (M) | CASH | 2026-06-03T17:58:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T17:58:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0601 | Butterscotch (M) | CASH | 2026-06-03T17:58:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T17:58:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0602 | Butterscotch (M) | QRIS | 2026-06-03T17:58:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T17:58:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0603 | Baileys Latte (M) | QRIS | 2026-06-03T17:58:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T17:58:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0604 | Butterscotch (M) | QRIS | 2026-06-03T18:00:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T18:00:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0605 | Butterscotch (M) | CASH | 2026-06-03T18:02:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:02:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0606 | Gula Aren (M) | QRIS | 2026-06-03T18:08:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T18:08:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0607 | Butterscotch (M) | CASH | 2026-06-03T18:11:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:11:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0608 | Vanilla (M) | CASH | 2026-06-03T18:17:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:17:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0609 | Baileys Latte (M) | QRIS | 2026-06-03T18:19:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T18:19:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0610 | Hazelnut (M) | QRIS | 2026-06-03T18:19:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:19:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0611 | Butterscotch (M) | QRIS | 2026-06-03T18:20:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:20:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0612 | Gula Aren (M) | CASH | 2026-06-03T18:20:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T18:20:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0613 | Baileys Latte (M) | CASH | 2026-06-03T18:21:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T18:21:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0614 | Butterscotch (M) | QRIS | 2026-06-03T18:29:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-03T18:29:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0615 | Vanilla (M) | QRIS | 2026-06-03T18:29:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:29:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0616 | Gula Aren (M) | QRIS | 2026-06-03T18:29:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T18:29:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0617 | Cold Brew (M) | CASH | 2026-06-03T18:30:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T18:30:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0618 | Baileys Latte (M) | QRIS | 2026-06-03T18:30:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T18:30:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0619 | Gula Aren (M) | CASH | 2026-06-03T18:30:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-03T18:30:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0620 | Baileys Latte (M) | CASH | 2026-06-03T18:30:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T18:30:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0621 | Salted Caramel (M) | CASH | 2026-06-03T18:31:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T18:31:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0622 | Cold Brew (M) | CASH | 2026-06-03T18:31:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-03T18:31:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0623 | Baileys Latte (M) | CASH | 2026-06-03T18:31:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-03T18:31:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0624 | Butterscotch (M) | CASH | 2026-06-03T18:42:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:42:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0625 | Vanilla (M) | CASH | 2026-06-03T18:43:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T18:43:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0626 | Gula Aren (M) | CASH | 2026-06-03T18:43:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T18:43:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0627 | Baileys Latte (M) | QRIS | 2026-06-03T19:03:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:03:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0628 | Gula Aren (M) | CASH | 2026-06-03T19:12:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T19:12:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0629 | Butterscotch (M) | QRIS | 2026-06-03T19:12:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T19:12:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0630 | Baileys Latte (M) | CASH | 2026-06-03T19:23:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:23:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0631 | Gula Aren (M) | QRIS | 2026-06-03T19:35:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T19:35:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0632 | Butterscotch (M) | QRIS | 2026-06-03T19:36:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T19:36:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0633 | Baileys Latte (M) | QRIS | 2026-06-03T19:36:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:36:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0634 | Gula Aren (M) | CASH | 2026-06-03T19:36:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-03T19:36:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0635 | Butterscotch (M) | CASH | 2026-06-03T19:36:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T19:36:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0636 | Hazelnut (M) | CASH | 2026-06-03T19:36:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T19:36:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0637 | Cold Brew (M) | CASH | 2026-06-03T19:37:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T19:37:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0638 | Baileys Latte (M) | CASH | 2026-06-03T19:37:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-03T19:37:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0639 | Gula Aren (M) | QRIS | 2026-06-03T19:39:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T19:39:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0640 | Baileys Latte (M) | QRIS | 2026-06-03T19:39:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:39:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0641 | Butterscotch (M) | CASH | 2026-06-03T19:44:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T19:44:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0642 | Baileys Latte (M) | CASH | 2026-06-03T19:45:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:45:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0643 | Baileys Latte (M) | CASH | 2026-06-03T19:51:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T19:51:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0644 | Cold Brew (M) | CASH | 2026-06-03T20:00:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T20:00:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0645 | Gula Aren (M) | QRIS | 2026-06-03T20:05:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T20:05:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0646 | Gula Aren (M) | QRIS | 2026-06-03T20:06:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T20:06:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0647 | Butterscotch (M) | QRIS | 2026-06-03T20:07:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T20:07:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0648 | Hazelnut (M) | QRIS | 2026-06-03T20:08:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-03T20:08:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0649 | Vanilla (M) | QRIS | 2026-06-03T20:08:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:08:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0650 | Salted Caramel (M) | QRIS | 2026-06-03T20:09:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:09:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0651 | Gula Aren (M) | CASH | 2026-06-03T20:10:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-03T20:10:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0652 | Gula Aren (M) | CASH | 2026-06-03T20:12:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T20:12:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0653 | Salted Caramel (M) | CASH | 2026-06-03T20:16:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:16:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0654 | Butterscotch (M) | QRIS | 2026-06-03T20:21:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:21:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0655 | Butterscotch (M) | CASH | 2026-06-03T20:27:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:27:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0656 | Butterscotch (M) | QRIS | 2026-06-03T20:30:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T20:30:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0657 | Baileys Latte (M) | CASH | 2026-06-03T20:35:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:35:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0658 | Gula Aren (M) | CASH | 2026-06-03T20:36:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T20:36:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0659 | Baileys Latte (M) | CASH | 2026-06-03T20:39:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:39:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0660 | Baileys Latte (M) | QRIS | 2026-06-03T20:51:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:51:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0661 | Baileys Latte (M) | QRIS | 2026-06-03T20:52:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:52:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0662 | Baileys Latte (M) | QRIS | 2026-06-03T20:52:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:52:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0663 | Butterscotch (M) | QRIS | 2026-06-03T20:52:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:52:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0664 | Butterscotch (M) | QRIS | 2026-06-03T20:55:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:55:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0665 | Butterscotch (M) | CASH | 2026-06-03T20:58:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T20:58:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0666 | Gula Aren (M) | CASH | 2026-06-03T20:58:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-03T20:58:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0667 | Baileys Latte (M) | CASH | 2026-06-03T20:58:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-03T20:58:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0668 | Butterscotch (M) | QRIS | 2026-06-03T20:59:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:59:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0669 | Butterscotch (M) | QRIS | 2026-06-03T20:59:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T20:59:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0670 | Baileys Latte (M) | QRIS | 2026-06-03T20:59:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T20:59:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0671 | Baileys Latte (M) | CASH | 2026-06-03T21:01:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T21:01:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0672 | Salted Caramel (M) | QRIS | 2026-06-03T21:04:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T21:04:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0673 | Butterscotch (M) | CASH | 2026-06-03T21:13:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-03T21:13:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0674 | Salted Caramel (M) | CASH | 2026-06-03T21:13:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-03T21:13:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0675 | Gula Aren (M) | QRIS | 2026-06-03T21:27:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T21:27:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0676 | Baileys Latte (M) | QRIS | 2026-06-03T21:27:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T21:27:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0677 | Vanilla (M) | QRIS | 2026-06-03T21:32:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-03T21:32:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0678 | Gula Aren (M) | QRIS | 2026-06-03T21:32:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-03T21:32:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0679 | Butterscotch (M) | QRIS | 2026-06-03T21:38:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T21:38:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0680 | Hazelnut (M) | QRIS | 2026-06-03T22:07:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-03T22:07:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0681 | Baileys Latte (M) | QRIS | 2026-06-03T22:07:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T22:07:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0682 | Gula Aren (M) | QRIS | 2026-06-03T22:20:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-03T22:20:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0683 | Butterscotch (M) | QRIS | 2026-06-03T22:23:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-03T22:23:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0684 | Gula Aren (M) | CASH | 2026-06-03T22:24:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-03T22:24:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0685 | Butterscotch (M) | CASH | 2026-06-03T22:25:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-03T22:25:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0686 | Vanilla (M) | CASH | 2026-06-03T22:25:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-03T22:25:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0687 | Hazelnut (M) | CASH | 2026-06-03T22:25:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-03T22:25:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0688 | Cold Brew (M) | CASH | 2026-06-03T22:25:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-03T22:25:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0689 | Baileys Latte (M) | CASH | 2026-06-03T22:25:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    187500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 15,
    0.00,
    102937.00,
    '2026-06-03T22:25:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  15,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0690 | Baileys Latte (M) | GRATIS | 2026-06-03T22:25:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-03T22:25:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0691 | Baileys Latte (M) | QRIS | 2026-06-03T22:34:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-03T22:34:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0692 | Baileys Latte (M) | CASH | 2026-06-03T22:34:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-03T22:34:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0693 | Baileys Latte (M) | CASH | 2026-06-03T23:00:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-03T23:00:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0694 | Gula Aren (M) | QRIS | 2026-06-04T09:00:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T09:00:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0695 | Butterscotch (M) | CASH | 2026-06-04T09:49:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T09:49:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0696 | Gula Aren (M) | CASH | 2026-06-04T09:49:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T09:49:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0697 | Gula Aren (M) | CASH | 2026-06-04T10:01:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T10:01:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0698 | Gula Aren (M) | QRIS | 2026-06-04T10:20:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-04T10:20:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0699 | Gula Aren (M) | CASH | 2026-06-04T10:26:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T10:26:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0700 | Baileys Latte (M) | QRIS | 2026-06-04T10:27:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T10:27:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0701 | Salted Caramel (M) | QRIS | 2026-06-04T10:27:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T10:27:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0702 | Butterscotch (M) | CASH | 2026-06-04T10:28:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T10:28:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0703 | Gula Aren (M) | QRIS | 2026-06-04T10:43:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T10:43:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0704 | Gula Aren (M) | CASH | 2026-06-04T10:58:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T10:58:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0705 | Butterscotch (M) | QRIS | 2026-06-04T11:04:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:04:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0706 | Gula Aren (M) | CASH | 2026-06-04T11:04:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-04T11:04:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0707 | Baileys Latte (M) | QRIS | 2026-06-04T11:10:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T11:10:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0708 | Vanilla (M) | CASH | 2026-06-04T11:10:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:10:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0709 | Gula Aren (M) | CASH | 2026-06-04T11:10:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T11:10:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0710 | Gula Aren (M) | QRIS | 2026-06-04T11:18:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T11:18:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0711 | Butterscotch (M) | QRIS | 2026-06-04T11:27:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:27:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0712 | Gula Aren (M) | CASH | 2026-06-04T11:28:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T11:28:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0713 | Baileys Latte (M) | CASH | 2026-06-04T11:39:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T11:39:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0714 | Butterscotch (M) | CASH | 2026-06-04T11:48:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:48:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0715 | Butterscotch (M) | CASH | 2026-06-04T11:48:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:48:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0716 | Baileys Latte (M) | CASH | 2026-06-04T11:48:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T11:48:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0717 | Baileys Latte (M) | CASH | 2026-06-04T11:48:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T11:48:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0718 | Gula Aren (M) | QRIS | 2026-06-04T12:04:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:04:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0719 | Butterscotch (M) | CASH | 2026-06-04T12:04:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:04:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0720 | Baileys Latte (M) | CASH | 2026-06-04T12:04:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T12:04:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0721 | Butterscotch (M) | QRIS | 2026-06-04T11:50:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:50:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0722 | Butterscotch (M) | CASH | 2026-06-04T11:50:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T11:50:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0723 | Vanilla (M) | CASH | 2026-06-04T12:10:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:10:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0724 | Gula Aren (M) | CASH | 2026-06-04T12:10:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:10:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0725 | Gula Aren (M) | QRIS | 2026-06-04T12:10:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:10:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0726 | Butterscotch (M) | QRIS | 2026-06-04T12:13:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:13:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0727 | Salted Caramel (M) | QRIS | 2026-06-04T12:13:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:13:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0728 | Gula Aren (M) | CASH | 2026-06-04T12:16:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-04T12:16:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0729 | Gula Aren (M) | QRIS | 2026-06-04T12:18:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:18:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0730 | Baileys Latte (M) | QRIS | 2026-06-04T12:23:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:23:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0731 | Hazelnut (M) | QRIS | 2026-06-04T12:23:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:23:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0732 | Butterscotch (M) | QRIS | 2026-06-04T12:24:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:24:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0733 | Hazelnut (M) | QRIS | 2026-06-04T12:25:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:25:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0734 | Gula Aren (M) | QRIS | 2026-06-04T12:25:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:25:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0735 | Butterscotch (M) | QRIS | 2026-06-04T12:29:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:29:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0736 | Gula Aren (M) | QRIS | 2026-06-04T12:29:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:29:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0737 | Baileys Latte (M) | QRIS | 2026-06-04T12:34:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:34:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0738 | Baileys Latte (M) | QRIS | 2026-06-04T12:34:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:34:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0739 | Baileys Latte (M) | QRIS | 2026-06-04T12:34:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:34:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0740 | Vanilla (M) | CASH | 2026-06-04T12:34:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-04T12:34:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0741 | Baileys Latte (M) | CASH | 2026-06-04T12:34:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:34:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0742 | Gula Aren (M) | CASH | 2026-06-04T12:35:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:35:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0743 | Salted Caramel (M) | QRIS | 2026-06-04T12:37:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:37:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0744 | Gula Aren (M) | CASH | 2026-06-04T12:51:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:51:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0745 | Salted Caramel (M) | QRIS | 2026-06-04T12:51:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:51:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0746 | Hazelnut (M) | QRIS | 2026-06-04T12:51:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T12:51:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0747 | Baileys Latte (M) | QRIS | 2026-06-04T12:51:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T12:51:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0748 | Gula Aren (M) | QRIS | 2026-06-04T12:58:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:58:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0749 | Gula Aren (M) | QRIS | 2026-06-04T12:58:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T12:58:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0750 | Butterscotch (M) | QRIS | 2026-06-04T13:00:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:00:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0751 | Gula Aren (M) | QRIS | 2026-06-04T13:08:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:08:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0752 | Baileys Latte (M) | QRIS | 2026-06-04T13:12:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:12:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0753 | Vanilla (M) | QRIS | 2026-06-04T13:22:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:22:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0754 | Baileys Latte (M) | QRIS | 2026-06-04T13:23:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:23:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0755 | Butterscotch (M) | QRIS | 2026-06-04T13:31:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:31:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0756 | Baileys Latte (M) | QRIS | 2026-06-04T13:31:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:31:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0757 | Baileys Latte (M) | QRIS | 2026-06-04T13:32:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:32:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0758 | Butterscotch (M) | CASH | 2026-06-04T13:35:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-04T13:35:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0759 | Gula Aren (M) | QRIS | 2026-06-04T13:43:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:43:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0760 | Butterscotch (M) | QRIS | 2026-06-04T13:43:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:43:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0761 | Gula Aren (M) | CASH | 2026-06-04T13:43:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:43:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0762 | Butterscotch (M) | QRIS | 2026-06-04T13:44:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:44:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0763 | Gula Aren (M) | QRIS | 2026-06-04T13:44:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:44:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0764 | Gula Aren (M) | QRIS | 2026-06-04T13:48:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:48:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0765 | Gula Aren (M) | CASH | 2026-06-04T13:48:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-04T13:48:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0766 | Butterscotch (M) | QRIS | 2026-06-04T13:48:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T13:48:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0767 | Baileys Latte (M) | QRIS | 2026-06-04T13:48:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:48:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0768 | Baileys Latte (M) | QRIS | 2026-06-04T13:50:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T13:50:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0769 | Gula Aren (M) | CASH | 2026-06-04T13:56:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T13:56:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0770 | Butterscotch (M) | QRIS | 2026-06-04T13:56:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T13:56:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0771 | Gula Aren (M) | CASH | 2026-06-04T14:01:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T14:01:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0772 | Salted Caramel (M) | QRIS | 2026-06-04T14:02:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:02:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0773 | Hazelnut (M) | QRIS | 2026-06-04T14:06:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:06:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0774 | Vanilla (M) | QRIS | 2026-06-04T14:06:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:06:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0775 | Baileys Latte (M) | QRIS | 2026-06-04T14:06:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T14:06:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0776 | Baileys Latte (M) | CASH | 2026-06-04T14:19:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T14:19:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0777 | Butterscotch (M) | CASH | 2026-06-04T14:24:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:24:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0778 | Baileys Latte (M) | CASH | 2026-06-04T14:24:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T14:24:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0779 | Gula Aren (M) | CASH | 2026-06-04T14:24:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T14:24:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0780 | Butterscotch (M) | QRIS | 2026-06-04T14:35:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:35:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0781 | Butterscotch (M) | QRIS | 2026-06-04T14:51:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T14:51:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0782 | Gula Aren (M) | CASH | 2026-06-04T14:59:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T14:59:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0783 | Gula Aren (M) | QRIS | 2026-06-04T15:09:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T15:09:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0784 | Gula Aren (M) | QRIS | 2026-06-04T15:09:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T15:09:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0785 | Gula Aren (M) | CASH | 2026-06-04T15:09:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-04T15:09:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0786 | Gula Aren (M) | QRIS | 2026-06-04T15:30:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T15:30:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0787 | Baileys Latte (M) | QRIS | 2026-06-04T15:30:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T15:30:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0788 | Baileys Latte (M) | QRIS | 2026-06-04T15:34:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T15:34:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0789 | Butterscotch (M) | CASH | 2026-06-04T15:40:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T15:40:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0790 | Baileys Latte (M) | CASH | 2026-06-04T15:45:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T15:45:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0791 | Hazelnut (M) | QRIS | 2026-06-04T16:06:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:06:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0792 | Baileys Latte (M) | QRIS | 2026-06-04T16:13:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T16:13:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0793 | Butterscotch (M) | CASH | 2026-06-04T16:13:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:13:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0794 | Baileys Latte (M) | CASH | 2026-06-04T16:17:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T16:17:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0795 | Butterscotch (M) | CASH | 2026-06-04T16:18:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:18:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0796 | Vanilla (M) | QRIS | 2026-06-04T16:19:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:19:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0797 | Butterscotch (M) | CASH | 2026-06-04T16:25:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:25:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0798 | Baileys Latte (M) | CASH | 2026-06-04T16:25:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T16:25:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0799 | Salted Caramel (M) | QRIS | 2026-06-04T16:42:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:42:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0800 | Baileys Latte (M) | QRIS | 2026-06-04T16:42:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T16:42:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0801 | Salted Caramel (M) | CASH | 2026-06-04T16:42:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:42:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0802 | Butterscotch (M) | CASH | 2026-06-04T16:42:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:42:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0803 | Gula Aren (M) | CASH | 2026-06-04T16:44:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-04T16:44:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0804 | Baileys Latte (M) | CASH | 2026-06-04T16:44:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T16:44:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0805 | Butterscotch (M) | CASH | 2026-06-04T16:45:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:45:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0806 | Butterscotch (M) | CASH | 2026-06-04T16:46:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:46:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0807 | Salted Caramel (M) | CASH | 2026-06-04T16:47:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:47:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0808 | Gula Aren (M) | QRIS | 2026-06-04T16:50:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T16:50:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0809 | Gula Aren (M) | QRIS | 2026-06-04T16:51:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-04T16:51:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0810 | Cold Brew (M) | CASH | 2026-06-04T16:53:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T16:53:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0811 | Cold Brew (M) | QRIS | 2026-06-04T16:53:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T16:53:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0812 | Salted Caramel (M) | CASH | 2026-06-04T16:56:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:56:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0813 | Hazelnut (M) | CASH | 2026-06-04T16:56:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:56:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0814 | Vanilla (M) | CASH | 2026-06-04T16:56:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-04T16:56:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0815 | Baileys Latte (M) | CASH | 2026-06-04T16:57:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-04T16:57:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0816 | Salted Caramel (M) | CASH | 2026-06-04T16:58:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:58:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0817 | Butterscotch (M) | CASH | 2026-06-04T16:58:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T16:58:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0818 | Butterscotch (M) | QRIS | 2026-06-04T16:58:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-04T16:58:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0819 | Gula Aren (M) | CASH | 2026-06-04T17:00:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-04T17:00:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0820 | Gula Aren (M) | QRIS | 2026-06-04T17:00:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T17:00:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0821 | Butterscotch (M) | QRIS | 2026-06-04T17:08:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T17:08:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0822 | Vanilla (M) | CASH | 2026-06-04T17:13:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:13:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0823 | Butterscotch (M) | CASH | 2026-06-04T17:15:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:15:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0824 | Butterscotch (M) | CASH | 2026-06-04T17:19:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-04T17:19:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0825 | Gula Aren (M) | QRIS | 2026-06-04T17:25:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T17:25:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0826 | Butterscotch (M) | CASH | 2026-06-04T17:28:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:28:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0827 | Hazelnut (M) | QRIS | 2026-06-04T17:29:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:29:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0828 | Vanilla (M) | QRIS | 2026-06-04T17:29:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:29:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0829 | Butterscotch (M) | CASH | 2026-06-04T17:31:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:31:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0830 | Baileys Latte (M) | CASH | 2026-06-04T17:31:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T17:31:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0831 | Butterscotch (M) | CASH | 2026-06-04T17:31:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:31:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0832 | Butterscotch (M) | QRIS | 2026-06-04T17:32:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-04T17:32:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0833 | Gula Aren (M) | CASH | 2026-06-04T17:33:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T17:33:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0834 | Salted Caramel (M) | CASH | 2026-06-04T17:35:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:35:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0835 | Baileys Latte (M) | QRIS | 2026-06-04T17:35:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T17:35:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0836 | Baileys Latte (M) | CASH | 2026-06-04T17:36:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T17:36:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0837 | Cold Brew (M) | CASH | 2026-06-04T17:36:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T17:36:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0838 | Baileys Latte (M) | CASH | 2026-06-04T17:37:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T17:37:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0839 | Baileys Latte (M) | CASH | 2026-06-04T17:39:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T17:39:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0840 | Vanilla (M) | QRIS | 2026-06-04T17:39:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:39:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0841 | Butterscotch (M) | CASH | 2026-06-04T17:39:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-04T17:39:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0842 | Baileys Latte (M) | CASH | 2026-06-04T17:35:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T17:35:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0843 | Baileys Latte (M) | CASH | 2026-06-04T17:40:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-04T17:40:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0844 | Baileys Latte (M) | CASH | 2026-06-04T17:41:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T17:41:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0845 | Hazelnut (M) | CASH | 2026-06-04T17:50:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:50:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0846 | Baileys Latte (M) | QRIS | 2026-06-04T17:52:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T17:52:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0847 | Salted Caramel (M) | QRIS | 2026-06-04T17:58:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:58:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0848 | Butterscotch (M) | QRIS | 2026-06-04T17:57:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:57:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0849 | Vanilla (M) | QRIS | 2026-06-04T17:58:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-04T17:58:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0850 | Gula Aren (M) | CASH | 2026-06-04T17:58:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    72000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 9,
    0.00,
    32362.00,
    '2026-06-04T17:58:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  9,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0851 | Salted Caramel (M) | CASH | 2026-06-04T17:59:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T17:59:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0852 | Hazelnut (M) | CASH | 2026-06-04T17:59:10+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-04T17:59:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0853 | Cold Brew (M) | CASH | 2026-06-04T17:59:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T17:59:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0854 | Butterscotch (M) | QRIS | 2026-06-04T17:59:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T17:59:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0855 | Baileys Latte (M) | CASH | 2026-06-04T18:02:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-04T18:02:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0856 | Baileys Latte (M) | GRATIS | 2026-06-04T18:02:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-04T18:02:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0857 | Baileys Latte (M) | QRIS | 2026-06-04T18:13:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T18:13:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0858 | Butterscotch (M) | QRIS | 2026-06-04T18:14:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T18:14:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0859 | Butterscotch (M) | CASH | 2026-06-04T18:23:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T18:23:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0860 | Butterscotch (M) | QRIS | 2026-06-04T19:03:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-04T19:03:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0861 | Baileys Latte (M) | QRIS | 2026-06-04T19:03:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-04T19:03:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0862 | Baileys 1 ltr | QRIS | 2026-06-04T19:04:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b773d1d6-a92e-457d-ba1a-12ea12929de0')) * 1,
    0.00,
    43039.00,
    '2026-06-04T19:04:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b773d1d6-a92e-457d-ba1a-12ea12929de0',
  1,
  90000.00,
  (SELECT hpp FROM public.products WHERE id = 'b773d1d6-a92e-457d-ba1a-12ea12929de0')
FROM inserted_sale;

-- 0863 | Baileys Latte (M) | QRIS | 2026-06-04T19:24:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-04T19:24:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0864 | Baileys Latte (M) | QRIS | 2026-06-04T19:43:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T19:43:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0865 | Baileys Latte (M) | GRATIS | 2026-06-04T19:44:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-04T19:44:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0866 | Butterscotch (M) | QRIS | 2026-06-04T19:49:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T19:49:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0867 | Gula Aren (M) | QRIS | 2026-06-04T20:02:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T20:02:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0868 | Butterscotch (M) | QRIS | 2026-06-04T20:03:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-04T20:03:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0869 | Gula Aren (M) | CASH | 2026-06-04T20:03:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-04T20:03:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0870 | Vanilla (M) | CASH | 2026-06-04T20:03:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T20:03:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0871 | Hazelnut (M) | CASH | 2026-06-04T20:03:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T20:03:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0872 | Cold Brew (M) | CASH | 2026-06-04T20:12:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T20:12:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0873 | Butterscotch (M) | QRIS | 2026-06-04T20:18:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-04T20:18:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  9,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0874 | Hazelnut (M) | QRIS | 2026-06-04T20:18:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-04T20:18:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0875 | Gula Aren (M) | QRIS | 2026-06-04T20:18:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T20:18:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0876 | Cold Brew (M) | QRIS | 2026-06-04T20:19:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T20:19:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0877 | Gula Aren (M) | CASH | 2026-06-04T20:20:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-04T20:20:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0878 | Salted Caramel (M) | CASH | 2026-06-04T20:20:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T20:20:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0879 | Cold Brew (M) | CASH | 2026-06-04T20:20:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T20:20:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0880 | Baileys Latte (M) | CASH | 2026-06-04T20:20:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-04T20:20:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0881 | Butterscotch (M) | CASH | 2026-06-04T20:31:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T20:31:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0882 | Gula Aren (M) | QRIS | 2026-06-04T21:00:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T21:00:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0883 | Baileys Latte (M) | QRIS | 2026-06-04T21:09:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T21:09:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0884 | Butterscotch (M) | QRIS | 2026-06-04T21:15:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-04T21:15:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  6,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0885 | Butterscotch (M) | QRIS | 2026-06-04T21:16:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-04T21:16:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0886 | Gula Aren (M) | CASH | 2026-06-04T21:17:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-04T21:17:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0887 | Baileys Latte (M) | CASH | 2026-06-04T21:18:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-04T21:18:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0888 | Gula Aren (M) | QRIS | 2026-06-04T21:30:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T21:30:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0889 | Butterscotch (M) | QRIS | 2026-06-04T21:33:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T21:33:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0890 | Cold Brew (M) | QRIS | 2026-06-04T21:45:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-04T21:45:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0891 | Baileys Latte (M) | QRIS | 2026-06-04T21:57:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-04T21:57:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0892 | Vanilla (M) | QRIS | 2026-06-04T21:57:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-04T21:57:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0893 | Salted Caramel (M) | QRIS | 2026-06-04T21:57:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T21:57:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0894 | Gula Aren (M) | QRIS | 2026-06-04T22:01:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T22:01:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0895 | Butterscotch (M) | CASH | 2026-06-04T22:10:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T22:10:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0896 | Butterscotch (M) | CASH | 2026-06-04T22:19:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-04T22:19:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0897 | Gula Aren 1 ltr | CASH | 2026-06-04T22:22:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    70000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f843c55d-43a9-46ce-b955-131e4b7e9088')) * 1,
    0.00,
    32173.00,
    '2026-06-04T22:22:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f843c55d-43a9-46ce-b955-131e4b7e9088',
  1,
  70000.00,
  (SELECT hpp FROM public.products WHERE id = 'f843c55d-43a9-46ce-b955-131e4b7e9088')
FROM inserted_sale;

-- 0898 | Gula Aren (M) | CASH | 2026-06-04T22:29:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-04T22:29:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0899 | Hazelnut (M) | QRIS | 2026-06-04T22:33:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T22:33:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0900 | Baileys Latte (M) | QRIS | 2026-06-04T22:36:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T22:36:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0901 | Baileys Latte (M) | CASH | 2026-06-04T22:38:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-04T22:38:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0902 | Butterscotch (M) | QRIS | 2026-06-04T22:57:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-04T22:57:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0903 | Gula Aren (M) | QRIS | 2026-06-04T22:57:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-04T22:57:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0904 | Gula Aren (M) | CASH | 2026-06-04T22:57:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-04T22:57:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0905 | Hazelnut (M) | CASH | 2026-06-04T22:58:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-04T22:58:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0906 | Baileys Latte (M) | CASH | 2026-06-04T22:58:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-04T22:58:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0907 | Gula Aren (M) | QRIS | 2026-06-05T08:27:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T08:27:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0908 | Butterscotch (M) | QRIS | 2026-06-05T08:33:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T08:33:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0909 | Gula Aren (M) | QRIS | 2026-06-05T08:33:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T08:33:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0910 | Salted Caramel (M) | QRIS | 2026-06-05T09:00:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T09:00:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0911 | Butterscotch (M) | QRIS | 2026-06-05T09:12:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T09:12:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0912 | Gula Aren (M) | QRIS | 2026-06-05T09:12:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T09:12:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0913 | Vanilla (M) | CASH | 2026-06-05T09:12:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T09:12:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0914 | Gula Aren (M) | CASH | 2026-06-05T09:12:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T09:12:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0915 | Cold Brew (M) | QRIS | 2026-06-05T09:17:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T09:17:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0916 | Butterscotch (M) | CASH | 2026-06-05T09:22:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T09:22:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0917 | Cold Brew (M) | CASH | 2026-06-05T09:37:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T09:37:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0918 | Baileys Latte (M) | CASH | 2026-06-05T09:40:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T09:40:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0919 | Gula Aren (M) | QRIS | 2026-06-05T09:43:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T09:43:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0920 | Salted Caramel (M) | QRIS | 2026-06-05T09:43:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T09:43:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0921 | Gula Aren (M) | QRIS | 2026-06-05T09:53:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T09:53:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0922 | Gula Aren (M) | CASH | 2026-06-05T09:53:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T09:53:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0923 | Gula Aren (M) | QRIS | 2026-06-05T09:58:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T09:58:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0924 | Baileys Latte (M) | QRIS | 2026-06-05T09:59:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T09:59:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0925 | Butterscotch (M) | QRIS | 2026-06-05T10:11:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:11:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0926 | Gula Aren (M) | QRIS | 2026-06-05T10:19:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T10:19:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0927 | Baileys Latte (M) | CASH | 2026-06-05T10:19:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T10:19:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0928 | Gula Aren (M) | CASH | 2026-06-05T10:21:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T10:21:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0929 | Butterscotch (M) | CASH | 2026-06-05T10:27:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:27:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0930 | Baileys Latte (M) | CASH | 2026-06-05T10:27:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T10:27:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0931 | Salted Caramel (M) | CASH | 2026-06-05T10:36:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:36:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0932 | Butterscotch (M) | QRIS | 2026-06-05T10:39:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:39:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0933 | Vanilla (M) | QRIS | 2026-06-05T10:40:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:40:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0934 | Butterscotch (M) | QRIS | 2026-06-05T10:43:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:43:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0935 | Baileys Latte (M) | QRIS | 2026-06-05T10:43:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T10:43:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0936 | Gula Aren (M) | CASH | 2026-06-05T10:44:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T10:44:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0937 | Gula Aren (M) | CASH | 2026-06-05T10:55:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T10:55:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0938 | Gula Aren (M) | QRIS | 2026-06-05T10:55:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T10:55:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0939 | Butterscotch (M) | CASH | 2026-06-05T10:57:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T10:57:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0940 | Gula Aren (M) | QRIS | 2026-06-05T10:59:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T10:59:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0941 | Cold Brew (M) | QRIS | 2026-06-05T10:59:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T10:59:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0942 | Baileys Latte (M) | CASH | 2026-06-05T11:00:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T11:00:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0943 | Butterscotch (M) | CASH | 2026-06-05T11:07:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T11:07:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0944 | Gula Aren (M) | QRIS | 2026-06-05T11:11:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:11:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0945 | Baileys Latte (M) | QRIS | 2026-06-05T11:11:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T11:11:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0946 | Gula Aren (M) | QRIS | 2026-06-05T11:12:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:12:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0947 | Gula Aren (M) | CASH | 2026-06-05T11:24:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:24:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0948 | Gula Aren (M) | CASH | 2026-06-05T11:27:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:27:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0949 | Gula Aren (M) | CASH | 2026-06-05T11:28:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:28:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0950 | Gula Aren (M) | QRIS | 2026-06-05T11:29:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T11:29:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0951 | Gula Aren (M) | QRIS | 2026-06-05T11:29:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:29:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0952 | Baileys Latte (M) | QRIS | 2026-06-05T11:29:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-05T11:29:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0953 | Baileys Latte (M) | CASH | 2026-06-05T11:29:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T11:29:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0954 | Vanilla (M) | QRIS | 2026-06-05T11:31:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T11:31:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0955 | Baileys Latte (M) | QRIS | 2026-06-05T11:35:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T11:35:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0956 | Gula Aren (M) | CASH | 2026-06-05T11:36:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T11:36:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0957 | Gula Aren (M) | QRIS | 2026-06-05T11:44:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T11:44:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0958 | Baileys Latte (M) | QRIS | 2026-06-05T11:49:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T11:49:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0959 | Butterscotch (M) | CASH | 2026-06-05T11:49:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T11:49:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0960 | Baileys Latte (M) | QRIS | 2026-06-05T11:50:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T11:50:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0961 | Butterscotch (M) | QRIS | 2026-06-05T11:55:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T11:55:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0962 | Gula Aren (M) | CASH | 2026-06-05T12:04:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T12:04:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0963 | Butterscotch (M) | QRIS | 2026-06-05T12:05:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:05:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0964 | Cold Brew (M) | CASH | 2026-06-05T12:06:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T12:06:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0965 | Baileys Latte (M) | QRIS | 2026-06-05T12:37:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T12:37:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0966 | Butterscotch (M) | QRIS | 2026-06-05T12:41:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:41:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0967 | Butterscotch (M) | CASH | 2026-06-05T12:41:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:41:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0968 | Baileys Latte (M) | CASH | 2026-06-05T12:41:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T12:41:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0969 | Gula Aren (M) | CASH | 2026-06-05T12:41:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T12:41:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0970 | Gula Aren (M) | CASH | 2026-06-05T12:41:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T12:41:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0971 | Vanilla (M) | CASH | 2026-06-05T12:44:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:44:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0972 | Butterscotch (M) | QRIS | 2026-06-05T12:47:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T12:47:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0973 | Vanilla (M) | CASH | 2026-06-05T12:47:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:47:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0974 | Butterscotch (M) | QRIS | 2026-06-05T12:47:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:47:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0975 | Butterscotch (M) | QRIS | 2026-06-05T12:47:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:47:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0976 | Baileys Latte (M) | QRIS | 2026-06-05T12:47:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T12:47:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0977 | Cold Brew (M) | QRIS | 2026-06-05T12:48:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T12:48:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0978 | Salted Caramel (M) | QRIS | 2026-06-05T12:48:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:48:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 0979 | Baileys Latte (M) | QRIS | 2026-06-05T12:49:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T12:49:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0980 | Butterscotch (M) | QRIS | 2026-06-05T12:49:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T12:49:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0981 | Baileys Latte (M) | CASH | 2026-06-05T12:50:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T12:50:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0982 | Gula Aren (M) | QRIS | 2026-06-05T12:53:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T12:53:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0983 | Gula Aren (M) | CASH | 2026-06-05T12:54:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-05T12:54:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0984 | Baileys Latte (M) | QRIS | 2026-06-05T12:56:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-05T12:56:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0985 | Hazelnut (M) | QRIS | 2026-06-05T12:56:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T12:56:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0986 | Vanilla (M) | QRIS | 2026-06-05T12:56:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T12:56:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0987 | Gula Aren (M) | CASH | 2026-06-05T13:03:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T13:03:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 0988 | Butterscotch (M) | QRIS | 2026-06-05T13:04:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-05T13:04:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0989 | Vanilla (M) | QRIS | 2026-06-05T13:04:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T13:04:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0990 | Hazelnut (M) | QRIS | 2026-06-05T13:05:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:05:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 0991 | Butterscotch (M) | CASH | 2026-06-05T13:06:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:06:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 0992 | Baileys Latte (M) | QRIS | 2026-06-05T13:13:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:13:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0993 | Cold Brew (M) | QRIS | 2026-06-05T13:14:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T13:14:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0994 | Baileys Latte (M) | CASH | 2026-06-05T13:14:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:14:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0995 | Baileys Latte (M) | CASH | 2026-06-05T13:17:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:17:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0996 | Vanilla (M) | QRIS | 2026-06-05T13:21:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:21:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 0997 | Baileys Latte (M) | QRIS | 2026-06-05T13:25:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:25:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 0998 | Cold Brew (M) | CASH | 2026-06-05T13:32:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T13:32:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 0999 | Salted Caramel (M) | CASH | 2026-06-05T13:33:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:33:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1000 | Baileys Latte (M) | QRIS | 2026-06-05T13:39:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:39:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1001 | Butterscotch (M) | CASH | 2026-06-05T13:41:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:41:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1002 | Butterscotch (M) | CASH | 2026-06-05T13:41:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:41:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1003 | Butterscotch (M) | QRIS | 2026-06-05T13:46:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T13:46:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1004 | Baileys Latte (M) | QRIS | 2026-06-05T13:46:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:46:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1005 | Gula Aren (M) | QRIS | 2026-06-05T13:53:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T13:53:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1006 | Gula Aren (M) | QRIS | 2026-06-05T13:57:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T13:57:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1007 | Baileys Latte (M) | CASH | 2026-06-05T13:57:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T13:57:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1008 | Baileys Latte (M) | CASH | 2026-06-05T14:02:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T14:02:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1009 | Vanilla (M) | CASH | 2026-06-05T14:03:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T14:03:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1010 | Salted Caramel (M) | CASH | 2026-06-05T14:03:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:03:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1011 | Butterscotch (M) | QRIS | 2026-06-05T14:08:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:08:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1012 | Gula Aren (M) | CASH | 2026-06-05T14:11:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T14:11:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1013 | Gula Aren (M) | CASH | 2026-06-05T14:12:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T14:12:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1014 | Butterscotch (M) | QRIS | 2026-06-05T14:14:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:14:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1015 | Butterscotch (M) | QRIS | 2026-06-05T14:14:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:14:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1016 | Butterscotch (M) | CASH | 2026-06-05T14:15:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:15:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1017 | Butterscotch (M) | QRIS | 2026-06-05T14:41:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T14:41:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1018 | Vanilla (M) | CASH | 2026-06-05T14:59:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T14:59:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1019 | Hazelnut (M) | CASH | 2026-06-05T15:00:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T15:00:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1020 | Butterscotch (M) | CASH | 2026-06-05T15:02:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:02:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1021 | Butterscotch (M) | QRIS | 2026-06-05T15:05:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:05:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1022 | Baileys Latte (M) | QRIS | 2026-06-05T15:22:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T15:22:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1023 | Vanilla (M) | CASH | 2026-06-05T15:23:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T15:23:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1024 | Baileys Latte (M) | CASH | 2026-06-05T15:23:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T15:23:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1025 | Salted Caramel (M) | CASH | 2026-06-05T15:24:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:24:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1026 | Vanilla (M) | CASH | 2026-06-05T15:26:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T15:26:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1027 | Butterscotch (M) | CASH | 2026-06-05T15:27:02+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:27:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1028 | Baileys Latte (M) | QRIS | 2026-06-05T15:29:41+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T15:29:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1029 | Gula Aren (M) | CASH | 2026-06-05T15:49:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-05T15:49:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1030 | Gula Aren (M) | QRIS | 2026-06-05T15:49:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-05T15:49:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1031 | Butterscotch (M) | QRIS | 2026-06-05T15:49:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:49:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1032 | Baileys Latte (M) | QRIS | 2026-06-05T15:50:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T15:50:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1033 | Cold Brew (M) | CASH | 2026-06-05T15:49:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T15:49:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1034 | Cold Brew (M) | QRIS | 2026-06-05T15:50:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-05T15:50:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1035 | Baileys Latte (M) | CASH | 2026-06-05T15:51:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T15:51:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1036 | Vanilla (M) | CASH | 2026-06-05T15:52:05+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-05T15:52:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1037 | Butterscotch (M) | CASH | 2026-06-05T15:52:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-05T15:52:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1038 | Butterscotch (M) | QRIS | 2026-06-05T15:52:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-05T15:52:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  9,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1039 | Salted Caramel (M) | QRIS | 2026-06-05T15:53:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-05T15:53:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1040 | Hazelnut (M) | QRIS | 2026-06-05T15:53:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-05T15:53:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1041 | Vanilla (M) | QRIS | 2026-06-05T15:56:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:56:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1042 | Hazelnut (M) | QRIS | 2026-06-05T15:56:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T15:56:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1043 | Baileys Latte (M) | QRIS | 2026-06-05T15:56:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T15:56:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1044 | Salted Caramel (M) | QRIS | 2026-06-05T16:02:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:02:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1045 | Baileys Latte (M) | CASH | 2026-06-05T16:06:20+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:06:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1046 | Baileys Latte (M) | QRIS | 2026-06-05T16:12:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:12:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1047 | Baileys Latte (M) | QRIS | 2026-06-05T16:13:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:13:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1048 | Cold Brew (M) | QRIS | 2026-06-05T16:40:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T16:40:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1049 | Hazelnut (M) | QRIS | 2026-06-05T16:44:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:44:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1050 | Salted Caramel (M) | QRIS | 2026-06-05T16:45:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:45:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1051 | Vanilla (M) | QRIS | 2026-06-05T16:45:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:45:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1052 | Salted Caramel (M) | QRIS | 2026-06-05T16:46:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:46:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1053 | Baileys Latte (M) | QRIS | 2026-06-05T16:46:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T16:46:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1054 | Gula Aren (M) | CASH | 2026-06-05T16:47:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T16:47:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1055 | Gula Aren (M) | QRIS | 2026-06-05T16:47:59+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T16:47:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1056 | Butterscotch (M) | CASH | 2026-06-05T16:48:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:48:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1057 | Salted Caramel (M) | CASH | 2026-06-05T16:48:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:48:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1058 | Baileys Latte (M) | CASH | 2026-06-05T16:48:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:48:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1059 | Baileys Latte (M) | CASH | 2026-06-05T16:48:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:48:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1060 | Gula Aren (M) | QRIS | 2026-06-05T16:48:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-05T16:48:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1061 | Butterscotch (M) | CASH | 2026-06-05T16:51:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:51:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1062 | Cold Brew (M) | QRIS | 2026-06-05T16:54:12+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T16:54:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1063 | Gula Aren (M) | QRIS | 2026-06-05T16:57:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    240000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 30,
    0.00,
    107873.00,
    '2026-06-05T16:57:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  30,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1064 | Butterscotch (M) | CASH | 2026-06-05T16:57:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T16:57:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1065 | Salted Caramel (M) | CASH | 2026-06-05T16:59:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:59:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1066 | Baileys Latte (M) | CASH | 2026-06-05T16:59:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T16:59:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1067 | Butterscotch (M) | CASH | 2026-06-05T16:59:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T16:59:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1068 | Butterscotch (M) | QRIS | 2026-06-05T17:00:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    375000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 30,
    0.00,
    211092.00,
    '2026-06-05T17:00:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  30,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1069 | Baileys Latte (M) | QRIS | 2026-06-05T17:02:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T17:02:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1070 | Baileys Latte (M) | CASH | 2026-06-05T17:02:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T17:02:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1071 | Baileys Latte (M) | QRIS | 2026-06-05T17:13:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T17:13:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1072 | Butterscotch (M) | QRIS | 2026-06-05T17:19:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T17:19:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1073 | Gula Aren (M) | CASH | 2026-06-05T17:22:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T17:22:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1074 | Hazelnut (M) | QRIS | 2026-06-05T17:23:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T17:23:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1075 | Salted Caramel (M) | QRIS | 2026-06-05T17:23:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:23:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1076 | Butterscotch (M) | CASH | 2026-06-05T17:23:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:23:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1077 | Butterscotch (M) | QRIS | 2026-06-05T17:23:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:23:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1078 | Butterscotch (M) | QRIS | 2026-06-05T17:23:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:23:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1079 | Butterscotch (M) | CASH | 2026-06-05T17:24:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T17:24:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1080 | Vanilla (M) | QRIS | 2026-06-05T17:25:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:25:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1081 | Gula Aren (M) | CASH | 2026-06-05T17:25:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-05T17:25:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  2,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1082 | Gula Aren (M) | CASH | 2026-06-05T17:25:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T17:25:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1083 | Gula Aren (M) | CASH | 2026-06-05T17:27:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T17:27:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1084 | Butterscotch (M) | CASH | 2026-06-05T17:28:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:28:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1085 | Butterscotch (M) | QRIS | 2026-06-05T17:30:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:30:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1086 | Butterscotch (M) | CASH | 2026-06-05T17:30:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:30:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1087 | Baileys Latte (M) | CASH | 2026-06-05T17:31:34+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T17:31:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1088 | Butterscotch (M) | QRIS | 2026-06-05T17:35:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:35:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1089 | Butterscotch (M) | QRIS | 2026-06-05T17:37:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:37:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1090 | Butterscotch (M) | QRIS | 2026-06-05T17:40:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T17:40:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1091 | Baileys Latte (M) | QRIS | 2026-06-05T17:41:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T17:41:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1092 | Butterscotch (M) | CASH | 2026-06-05T17:41:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:41:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1093 | Butterscotch (M) | QRIS | 2026-06-05T17:44:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-05T17:44:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1094 | Butterscotch (M) | QRIS | 2026-06-05T17:46:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:46:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1095 | Butterscotch (M) | CASH | 2026-06-05T17:49:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T17:49:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1096 | Gula Aren (M) | CASH | 2026-06-05T17:55:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T17:55:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1097 | Baileys Latte (M) | CASH | 2026-06-05T17:56:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T17:56:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1098 | Baileys Latte (M) | QRIS | 2026-06-05T18:11:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T18:11:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1099 | Gula Aren (M) | QRIS | 2026-06-05T18:17:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T18:17:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1100 | Cold Brew (M) | QRIS | 2026-06-05T18:18:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-05T18:18:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1101 | Butterscotch (M) | QRIS | 2026-06-05T18:18:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T18:18:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1102 | Vanilla (M) | QRIS | 2026-06-05T18:19:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T18:19:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1103 | Gula Aren (M) | CASH | 2026-06-05T18:20:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-05T18:20:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1104 | Salted Caramel (M) | CASH | 2026-06-05T18:20:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:20:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1105 | Hazelnut (M) | CASH | 2026-06-05T18:20:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T18:20:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1106 | Baileys Latte (M) | CASH | 2026-06-05T18:20:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T18:20:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1107 | Gula Aren (M) | QRIS | 2026-06-05T18:28:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-05T18:28:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  3,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1108 | Cold Brew (M) | QRIS | 2026-06-05T18:28:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-05T18:28:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1109 | Butterscotch (M) | QRIS | 2026-06-05T18:28:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-05T18:28:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1110 | Vanilla (M) | QRIS | 2026-06-05T18:28:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:28:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1111 | Gula Aren (M) | CASH | 2026-06-05T18:29:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-05T18:29:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  5,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1112 | Salted Caramel (M) | CASH | 2026-06-05T18:30:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:30:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1113 | Hazelnut (M) | CASH | 2026-06-05T18:30:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T18:30:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1114 | Baileys Latte (M) | CASH | 2026-06-05T18:30:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-05T18:30:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1115 | Butterscotch (M) | QRIS | 2026-06-05T18:37:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:37:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1116 | Baileys Latte (M) | QRIS | 2026-06-05T18:37:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T18:37:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1117 | Butterscotch (M) | QRIS | 2026-06-05T18:47:06+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:47:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1118 | Butterscotch (M) | QRIS | 2026-06-05T18:47:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:47:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1119 | Hazelnut (M) | QRIS | 2026-06-05T18:47:57+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T18:47:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1120 | Baileys Latte (M) | QRIS | 2026-06-05T18:50:56+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-05T18:50:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1121 | Baileys Latte (M) | CASH | 2026-06-05T19:14:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T19:14:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1122 | Butterscotch (M) | CASH | 2026-06-05T19:15:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T19:15:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1123 | Baileys Latte (M) | CASH | 2026-06-05T19:15:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T19:15:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1124 | Butterscotch (M) | QRIS | 2026-06-05T19:16:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T19:16:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1125 | Hazelnut (M) | QRIS | 2026-06-05T19:16:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T19:16:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1126 | Baileys Latte (M) | CASH | 2026-06-05T19:22:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-05T19:22:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1127 | Hazelnut (M) | CASH | 2026-06-05T19:22:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T19:22:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1128 | Butterscotch (M) | CASH | 2026-06-05T19:31:26+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T19:31:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1129 | Baileys Latte (M) | QRIS | 2026-06-05T19:32:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-05T19:32:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1130 | Cold Brew (M) | QRIS | 2026-06-05T19:52:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T19:52:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1131 | Butterscotch (M) | QRIS | 2026-06-05T19:53:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T19:53:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1132 | Vanilla (M) | QRIS | 2026-06-05T19:54:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T19:54:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1133 | Baileys Latte (M) | GRATIS | 2026-06-05T20:12:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-05T20:12:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1134 | Baileys Latte (M) | CASH | 2026-06-05T20:13:15+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T20:13:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1135 | Butterscotch (M) | CASH | 2026-06-05T20:13:48+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:13:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1136 | Cold Brew (M) | CASH | 2026-06-05T20:18:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-05T20:18:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  2,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1137 | Salted Caramel (M) | CASH | 2026-06-05T20:22:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:22:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1138 | Butterscotch (M) | QRIS | 2026-06-05T20:26:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-05T20:26:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  7,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1139 | Gula Aren (M) | QRIS | 2026-06-05T20:27:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-05T20:27:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1140 | Cold Brew (M) | QRIS | 2026-06-05T20:27:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T20:27:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1141 | Gula Aren (M) | CASH | 2026-06-05T20:28:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-05T20:28:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1142 | Butterscotch (M) | CASH | 2026-06-05T20:28:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:28:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1143 | Vanilla (M) | CASH | 2026-06-05T20:28:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T20:28:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1144 | Salted Caramel (M) | CASH | 2026-06-05T20:28:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:28:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1145 | Hazelnut (M) | CASH | 2026-06-05T20:28:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:28:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1146 | Baileys Latte (M) | CASH | 2026-06-05T20:28:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-05T20:28:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1147 | Vanilla (M) | CASH | 2026-06-05T20:31:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:31:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1148 | Gula Aren 1 ltr | CASH | 2026-06-05T20:35:33+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    70000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f843c55d-43a9-46ce-b955-131e4b7e9088')) * 1,
    0.00,
    32173.00,
    '2026-06-05T20:35:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f843c55d-43a9-46ce-b955-131e4b7e9088',
  1,
  70000.00,
  (SELECT hpp FROM public.products WHERE id = 'f843c55d-43a9-46ce-b955-131e4b7e9088')
FROM inserted_sale;

-- 1149 | Butterscotch (M) | CASH | 2026-06-05T20:52:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T20:52:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1150 | Baileys Latte (M) | CASH | 2026-06-05T20:52:49+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T20:52:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1151 | Butterscotch (M) | CASH | 2026-06-05T20:55:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-05T20:55:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1152 | Baileys Latte (M) | QRIS | 2026-06-05T20:57:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T20:57:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1153 | Hazelnut (M) | QRIS | 2026-06-05T21:10:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T21:10:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1154 | Baileys Latte (M) | GRATIS | 2026-06-05T21:10:17+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-05T21:10:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1155 | Vanilla (M) | QRIS | 2026-06-05T21:11:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-05T21:11:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1156 | Hazelnut (M) | QRIS | 2026-06-05T21:11:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    7036.00,
    '2026-06-05T21:11:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1157 | Baileys Latte (M) | CASH | 2026-06-05T21:59:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-05T21:59:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  8,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1158 | Butterscotch (M) | CASH | 2026-06-05T22:00:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-05T22:00:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  3,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1159 | Salted Caramel (M) | CASH | 2026-06-05T22:00:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T22:00:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1160 | Butterscotch (M) | QRIS | 2026-06-05T22:07:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T22:07:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1161 | Butterscotch (M) | CASH | 2026-06-05T22:11:29+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T22:11:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1162 | Baileys Latte (M) | CASH | 2026-06-05T22:11:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T22:11:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1163 | Baileys Latte (M) | CASH | 2026-06-05T22:15:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-05T22:15:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1164 | Salted Caramel (M) | CASH | 2026-06-05T22:22:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-05T22:22:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1165 | Butterscotch (M) | QRIS | 2026-06-05T23:02:23+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    175000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 14,
    0.00,
    98509.00,
    '2026-06-05T23:02:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  14,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1166 | Gula Aren (M) | QRIS | 2026-06-05T23:02:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-05T23:02:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  4,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1167 | Cold Brew (M) | QRIS | 2026-06-05T23:03:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T23:03:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1168 | Gula Aren (M) | CASH | 2026-06-05T23:03:51+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-05T23:03:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  6,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1169 | Vanilla (M) | CASH | 2026-06-05T23:04:00+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-05T23:04:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 1170 | Salted Caramel (M) | CASH | 2026-06-05T23:04:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-05T23:04:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 1171 | Hazelnut (M) | CASH | 2026-06-05T23:04:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-05T23:04:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc',
  2,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')
FROM inserted_sale;

-- 1172 | Cold Brew (M) | CASH | 2026-06-05T23:04:32+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-05T23:04:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  1,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 1173 | Baileys Latte (M) | CASH | 2026-06-05T23:04:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 9,
    0.00,
    61762.00,
    '2026-06-05T23:04:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  9,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1174 | Baileys Latte (M) | GRATIS | 2026-06-05T23:04:55+07:00
