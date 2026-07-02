-- Generated SQL inserts for June 2026 CSV data
-- Source: ../data juni papi kopi.csv
-- Review carefully before running.
-- This file inserts rows into public.sales and public.sale_items.
-- It uses outlet name lookup via ILIKE and product lookup via exact name.

-- 2343 | Butterscotch (M) | CASH | 2026-06-10T18:47:15+07:00
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
    '2026-06-10T18:47:15+07:00'
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

-- 2344 | Baileys Latte (M) | QRIS | 2026-06-10T18:49:56+07:00
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
    '2026-06-10T18:49:56+07:00'
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

-- 2345 | Gula Aren (M) | CASH | 2026-06-10T18:59:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-10T18:59:51+07:00'
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

-- 2346 | Salted Caramel (M) | GRATIS | 2026-06-10T19:00:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-10T19:00:28+07:00'
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

-- 2347 | Hazelnut (M) | QRIS | 2026-06-10T19:01:06+07:00
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
    '2026-06-10T19:01:06+07:00'
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

-- 2348 | Butterscotch (M) | CASH | 2026-06-10T19:01:21+07:00
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
    '2026-06-10T19:01:21+07:00'
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

-- 2349 | Butterscotch (M) | GRATIS | 2026-06-10T19:01:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    0.00,
    '2026-06-10T19:01:31+07:00'
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

-- 2350 | Vanilla (M) | CASH | 2026-06-10T19:07:59+07:00
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
    '2026-06-10T19:07:59+07:00'
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

-- 2351 | Salted Caramel (M) | CASH | 2026-06-10T19:08:05+07:00
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
    '2026-06-10T19:08:05+07:00'
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

-- 2352 | Baileys Latte (M) | CASH | 2026-06-10T19:08:34+07:00
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
    '2026-06-10T19:08:34+07:00'
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

-- 2353 | Butterscotch (M) | QRIS | 2026-06-10T19:08:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    162500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 13,
    0.00,
    91473.00,
    '2026-06-10T19:08:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  13,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2354 | Baileys Latte (M) | QRIS | 2026-06-10T19:08:55+07:00
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
    '2026-06-10T19:08:55+07:00'
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

-- 2355 | Gula Aren (M) | QRIS | 2026-06-10T19:09:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-10T19:09:02+07:00'
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

-- 2356 | Baileys Latte (M) | CASH | 2026-06-10T19:20:37+07:00
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
    '2026-06-10T19:20:37+07:00'
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

-- 2357 | Hazelnut (M) | QRIS | 2026-06-10T19:35:14+07:00
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
    '2026-06-10T19:35:14+07:00'
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

-- 2358 | Vanilla (M) | QRIS | 2026-06-10T19:35:20+07:00
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
    '2026-06-10T19:35:20+07:00'
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

-- 2359 | Butterscotch (M) | QRIS | 2026-06-10T19:56:26+07:00
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
    '2026-06-10T19:56:26+07:00'
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

-- 2360 | Butterscotch (M) | CASH | 2026-06-10T19:57:56+07:00
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
    '2026-06-10T19:57:56+07:00'
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

-- 2361 | Butterscotch (M) | CASH | 2026-06-10T20:02:07+07:00
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
    '2026-06-10T20:02:07+07:00'
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

-- 2362 | Butterscotch (M) | CASH | 2026-06-10T20:04:37+07:00
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
    '2026-06-10T20:04:37+07:00'
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

-- 2363 | Gula Aren (M) | CASH | 2026-06-10T20:04:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-10T20:04:46+07:00'
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

-- 2364 | Baileys Latte (M) | CASH | 2026-06-10T20:05:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-10T20:05:13+07:00'
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

-- 2365 | Baileys Latte (M) | CASH | 2026-06-10T20:05:25+07:00
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
    '2026-06-10T20:05:25+07:00'
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

-- 2366 | Hazelnut (M) | CASH | 2026-06-10T20:05:37+07:00
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
    '2026-06-10T20:05:37+07:00'
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

-- 2367 | Butterscotch (M) | CASH | 2026-06-10T20:05:45+07:00
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
    '2026-06-10T20:05:45+07:00'
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

-- 2368 | Baileys Latte (M) | CASH | 2026-06-10T20:05:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-10T20:05:55+07:00'
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

-- 2369 | Butterscotch (M) | CASH | 2026-06-10T20:06:06+07:00
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
    '2026-06-10T20:06:06+07:00'
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

-- 2370 | Hazelnut (M) | QRIS | 2026-06-10T20:11:55+07:00
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
    '2026-06-10T20:11:55+07:00'
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

-- 2371 | Hazelnut (M) | QRIS | 2026-06-10T20:12:36+07:00
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
    '2026-06-10T20:12:36+07:00'
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

-- 2372 | Baileys Latte (M) | GRATIS | 2026-06-10T20:18:53+07:00
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
    '2026-06-10T20:18:53+07:00'
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

-- 2373 | Hazelnut (M) | CASH | 2026-06-10T20:19:01+07:00
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
    '2026-06-10T20:19:01+07:00'
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

-- 2374 | Baileys Latte (M) | CASH | 2026-06-10T20:20:44+07:00
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
    '2026-06-10T20:20:44+07:00'
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

-- 2375 | Butterscotch (M) | QRIS | 2026-06-10T20:21:01+07:00
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
    '2026-06-10T20:21:01+07:00'
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

-- 2376 | Baileys Latte (M) | CASH | 2026-06-10T20:38:09+07:00
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
    '2026-06-10T20:38:09+07:00'
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

-- 2377 | Butterscotch (M) | QRIS | 2026-06-10T20:46:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-10T20:46:19+07:00'
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

-- 2378 | Gula Aren (M) | QRIS | 2026-06-10T20:47:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-10T20:47:37+07:00'
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

-- 2379 | Gula Aren (M) | CASH | 2026-06-10T20:49:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-10T20:49:03+07:00'
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

-- 2380 | Butterscotch (M) | CASH | 2026-06-10T20:49:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-10T20:49:13+07:00'
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

-- 2381 | Vanilla (M) | CASH | 2026-06-10T20:49:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-10T20:49:22+07:00'
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

-- 2382 | Salted Caramel (M) | CASH | 2026-06-10T20:49:31+07:00
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
    '2026-06-10T20:49:31+07:00'
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

-- 2383 | Baileys Latte (M) | CASH | 2026-06-10T20:49:44+07:00
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
    '2026-06-10T20:49:44+07:00'
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

-- 2384 | Baileys Latte (M) | CASH | 2026-06-10T20:52:56+07:00
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
    '2026-06-10T20:52:56+07:00'
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

-- 2385 | Baileys Latte (M) | QRIS | 2026-06-10T21:08:10+07:00
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
    '2026-06-10T21:08:10+07:00'
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

-- 2386 | Butterscotch (M) | QRIS | 2026-06-10T21:10:10+07:00
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
    '2026-06-10T21:10:10+07:00'
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

-- 2387 | Baileys Latte (M) | QRIS | 2026-06-10T21:11:54+07:00
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
    '2026-06-10T21:11:54+07:00'
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

-- 2388 | Gula Aren (M) | CASH | 2026-06-10T21:15:05+07:00
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
    '2026-06-10T21:15:05+07:00'
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

-- 2389 | Hazelnut (M) | CASH | 2026-06-10T21:16:24+07:00
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
    '2026-06-10T21:16:24+07:00'
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

-- 2390 | Gula Aren (M) | QRIS | 2026-06-10T21:20:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-10T21:20:44+07:00'
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

-- 2391 | Salted Caramel (M) | CASH | 2026-06-10T21:21:36+07:00
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
    '2026-06-10T21:21:36+07:00'
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

-- 2392 | Butterscotch (M) | QRIS | 2026-06-10T21:20:59+07:00
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
    '2026-06-10T21:20:59+07:00'
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

-- 2393 | Butterscotch (M) | CASH | 2026-06-10T21:22:02+07:00
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
    '2026-06-10T21:22:02+07:00'
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

-- 2394 | Hazelnut (M) | CASH | 2026-06-10T21:22:06+07:00
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
    '2026-06-10T21:22:06+07:00'
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

-- 2395 | Baileys Latte (M) | CASH | 2026-06-10T21:22:10+07:00
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
    '2026-06-10T21:22:10+07:00'
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

-- 2396 | Gula Aren (M) | CASH | 2026-06-10T21:22:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-10T21:22:26+07:00'
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

-- 2397 | Butterscotch (M) | CASH | 2026-06-10T21:22:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-10T21:22:34+07:00'
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

-- 2398 | Vanilla (M) | CASH | 2026-06-10T21:22:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-10T21:22:55+07:00'
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

-- 2399 | Salted Caramel (M) | CASH | 2026-06-10T21:23:03+07:00
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
    '2026-06-10T21:23:03+07:00'
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

-- 2400 | Hazelnut (M) | CASH | 2026-06-10T21:23:17+07:00
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
    '2026-06-10T21:23:17+07:00'
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

-- 2401 | Baileys Latte (M) | CASH | 2026-06-10T21:23:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-10T21:23:25+07:00'
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

-- 2402 | Baileys Latte (M) | QRIS | 2026-06-10T21:36:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-10T21:36:36+07:00'
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

-- 2403 | Butterscotch (M) | QRIS | 2026-06-10T21:37:13+07:00
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
    '2026-06-10T21:37:13+07:00'
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

-- 2404 | Butterscotch (M) | CASH | 2026-06-10T21:37:53+07:00
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
    '2026-06-10T21:37:53+07:00'
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

-- 2405 | Butterscotch (M) | QRIS | 2026-06-10T21:42:28+07:00
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
    '2026-06-10T21:42:28+07:00'
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

-- 2406 | Baileys Latte (M) | QRIS | 2026-06-10T21:42:34+07:00
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
    '2026-06-10T21:42:34+07:00'
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

-- 2407 | Butterscotch (M) | CASH | 2026-06-10T21:43:05+07:00
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
    '2026-06-10T21:43:05+07:00'
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

-- 2408 | Salted Caramel (M) | GRATIS | 2026-06-10T21:44:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-10T21:44:21+07:00'
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

-- 2409 | Vanilla (M) | CASH | 2026-06-10T21:45:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-10T21:45:07+07:00'
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

-- 2410 | Baileys Latte (M) | CASH | 2026-06-10T21:51:41+07:00
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
    '2026-06-10T21:51:41+07:00'
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

-- 2411 | Salted Caramel (M) | CASH | 2026-06-10T21:51:46+07:00
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
    '2026-06-10T21:51:46+07:00'
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

-- 2412 | Baileys Latte (M) | CASH | 2026-06-10T21:58:43+07:00
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
    '2026-06-10T21:58:43+07:00'
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

-- 2413 | Butterscotch (M) | CASH | 2026-06-10T22:00:02+07:00
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
    '2026-06-10T22:00:02+07:00'
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

-- 2414 | Salted Caramel (M) | QRIS | 2026-06-10T22:01:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-10T22:01:56+07:00'
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

-- 2415 | Butterscotch (M) | QRIS | 2026-06-10T22:09:18+07:00
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
    '2026-06-10T22:09:18+07:00'
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

-- 2416 | Baileys Latte (M) | CASH | 2026-06-10T22:09:32+07:00
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
    '2026-06-10T22:09:32+07:00'
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

-- 2417 | Baileys Latte (M) | CASH | 2026-06-10T22:11:15+07:00
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
    '2026-06-10T22:11:15+07:00'
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

-- 2418 | Vanilla (M) | QRIS | 2026-06-10T22:24:12+07:00
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
    '2026-06-10T22:24:12+07:00'
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

-- 2419 | Hazelnut (M) | CASH | 2026-06-10T22:27:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-10T22:27:33+07:00'
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

-- 2420 | Butterscotch (M) | CASH | 2026-06-10T22:29:00+07:00
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
    '2026-06-10T22:29:00+07:00'
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

-- 2421 | Baileys Latte (M) | GRATIS | 2026-06-10T22:31:32+07:00
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
    '2026-06-10T22:31:32+07:00'
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

-- 2422 | Gula Aren (M) | CASH | 2026-06-10T23:31:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-10T23:31:24+07:00'
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

-- 2423 | Butterscotch (M) | CASH | 2026-06-10T23:31:33+07:00
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
    '2026-06-10T23:31:33+07:00'
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

-- 2424 | Baileys Latte (M) | CASH | 2026-06-10T23:31:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-10T23:31:41+07:00'
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

-- 2425 | Vanilla (M) | QRIS | 2026-06-11T09:21:47+07:00
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
    '2026-06-11T09:21:47+07:00'
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

-- 2426 | Butterscotch (M) | CASH | 2026-06-11T09:56:33+07:00
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
    '2026-06-11T09:56:33+07:00'
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

-- 2427 | Gula Aren (M) | CASH | 2026-06-11T10:13:14+07:00
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
    '2026-06-11T10:13:14+07:00'
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

-- 2428 | Gula Aren (M) | QRIS | 2026-06-11T10:27:44+07:00
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
    '2026-06-11T10:27:44+07:00'
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

-- 2429 | Butterscotch (M) | QRIS | 2026-06-11T10:27:50+07:00
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
    '2026-06-11T10:27:50+07:00'
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

-- 2430 | Gula Aren (M) | QRIS | 2026-06-11T10:31:17+07:00
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
    '2026-06-11T10:31:17+07:00'
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

-- 2431 | Gula Aren (M) | CASH | 2026-06-11T10:31:25+07:00
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
    '2026-06-11T10:31:25+07:00'
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

-- 2432 | Salted Caramel (M) | CASH | 2026-06-11T10:31:31+07:00
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
    '2026-06-11T10:31:31+07:00'
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

-- 2433 | Gula Aren (M) | CASH | 2026-06-11T10:42:35+07:00
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
    '2026-06-11T10:42:35+07:00'
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

-- 2434 | Gula Aren (M) | QRIS | 2026-06-11T10:45:37+07:00
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
    '2026-06-11T10:45:37+07:00'
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

-- 2435 | Butterscotch (M) | QRIS | 2026-06-11T10:48:18+07:00
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
    '2026-06-11T10:48:18+07:00'
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

-- 2436 | Gula Aren (M) | CASH | 2026-06-11T10:54:29+07:00
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
    '2026-06-11T10:54:29+07:00'
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

-- 2437 | Gula Aren (M) | QRIS | 2026-06-11T11:04:01+07:00
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
    '2026-06-11T11:04:01+07:00'
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

-- 2438 | Gula Aren (M) | CASH | 2026-06-11T11:04:10+07:00
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
    '2026-06-11T11:04:10+07:00'
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

-- 2439 | Baileys Latte (M) | QRIS | 2026-06-11T11:07:11+07:00
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
    '2026-06-11T11:07:11+07:00'
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

-- 2440 | Butterscotch (M) | CASH | 2026-06-11T11:12:59+07:00
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
    '2026-06-11T11:12:59+07:00'
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

-- 2441 | Baileys Latte (M) | QRIS | 2026-06-11T11:13:04+07:00
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
    '2026-06-11T11:13:04+07:00'
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

-- 2442 | Baileys Latte (M) | CASH | 2026-06-11T11:27:16+07:00
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
    '2026-06-11T11:27:16+07:00'
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

-- 2443 | Gula Aren (M) | QRIS | 2026-06-11T11:27:21+07:00
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
    '2026-06-11T11:27:21+07:00'
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

-- 2444 | Baileys Latte (M) | CASH | 2026-06-11T11:31:43+07:00
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
    '2026-06-11T11:31:43+07:00'
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

-- 2445 | Butterscotch (M) | QRIS | 2026-06-11T11:38:02+07:00
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
    '2026-06-11T11:38:02+07:00'
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

-- 2446 | Gula Aren (M) | QRIS | 2026-06-11T11:41:43+07:00
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
    '2026-06-11T11:41:43+07:00'
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

-- 2447 | Gula Aren (M) | QRIS | 2026-06-11T11:49:23+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-11T11:49:23+07:00'
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

-- 2448 | Gula Aren (M) | QRIS | 2026-06-11T11:55:24+07:00
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
    '2026-06-11T11:55:24+07:00'
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

-- 2449 | Baileys Latte (M) | CASH | 2026-06-11T12:10:25+07:00
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
    '2026-06-11T12:10:25+07:00'
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

-- 2450 | Butterscotch (M) | CASH | 2026-06-11T12:10:57+07:00
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
    '2026-06-11T12:10:57+07:00'
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

-- 2451 | Gula Aren (M) | CASH | 2026-06-11T12:11:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T12:11:08+07:00'
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

-- 2452 | Gula Aren (M) | QRIS | 2026-06-11T12:11:52+07:00
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
    '2026-06-11T12:11:52+07:00'
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

-- 2453 | Gula Aren (M) | QRIS | 2026-06-11T12:16:20+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-11T12:16:20+07:00'
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

-- 2454 | Butterscotch (M) | QRIS | 2026-06-11T12:16:32+07:00
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
    '2026-06-11T12:16:32+07:00'
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

-- 2455 | Butterscotch (M) | QRIS | 2026-06-11T12:16:35+07:00
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
    '2026-06-11T12:16:35+07:00'
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

-- 2456 | Butterscotch (M) | CASH | 2026-06-11T12:16:52+07:00
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
    '2026-06-11T12:16:52+07:00'
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

-- 2457 | Baileys Latte (M) | CASH | 2026-06-11T12:17:15+07:00
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
    '2026-06-11T12:17:15+07:00'
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

-- 2458 | Baileys Latte (M) | CASH | 2026-06-11T12:17:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-11T12:17:32+07:00'
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

-- 2459 | Butterscotch (M) | CASH | 2026-06-11T12:17:53+07:00
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
    '2026-06-11T12:17:53+07:00'
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

-- 2460 | Gula Aren (M) | QRIS | 2026-06-11T12:20:48+07:00
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
    '2026-06-11T12:20:48+07:00'
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

-- 2461 | Baileys Latte (M) | CASH | 2026-06-11T12:21:13+07:00
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
    '2026-06-11T12:21:13+07:00'
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

-- 2462 | Baileys Latte (M) | CASH | 2026-06-11T12:21:23+07:00
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
    '2026-06-11T12:21:23+07:00'
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

-- 2463 | Butterscotch (M) | QRIS | 2026-06-11T12:30:50+07:00
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
    '2026-06-11T12:30:50+07:00'
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

-- 2464 | Baileys Latte (M) | QRIS | 2026-06-11T12:31:11+07:00
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
    '2026-06-11T12:31:11+07:00'
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

-- 2465 | Gula Aren (M) | QRIS | 2026-06-11T12:31:29+07:00
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
    '2026-06-11T12:31:29+07:00'
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

-- 2466 | Baileys Latte (M) | QRIS | 2026-06-11T12:31:36+07:00
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
    '2026-06-11T12:31:36+07:00'
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

-- 2467 | Butterscotch (M) | QRIS | 2026-06-11T12:36:45+07:00
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
    '2026-06-11T12:36:45+07:00'
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

-- 2468 | Butterscotch (M) | QRIS | 2026-06-11T12:36:56+07:00
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
    '2026-06-11T12:36:56+07:00'
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

-- 2469 | Baileys Latte (M) | QRIS | 2026-06-11T12:37:11+07:00
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
    '2026-06-11T12:37:11+07:00'
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

-- 2470 | Baileys Latte (M) | QRIS | 2026-06-11T12:38:09+07:00
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
    '2026-06-11T12:38:09+07:00'
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

-- 2471 | Gula Aren (M) | CASH | 2026-06-11T12:39:26+07:00
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
    '2026-06-11T12:39:26+07:00'
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

-- 2472 | Gula Aren (M) | QRIS | 2026-06-11T12:41:58+07:00
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
    '2026-06-11T12:41:58+07:00'
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

-- 2473 | Baileys Latte (M) | QRIS | 2026-06-11T12:42:04+07:00
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
    '2026-06-11T12:42:04+07:00'
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

-- 2474 | Vanilla (M) | QRIS | 2026-06-11T12:42:10+07:00
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
    '2026-06-11T12:42:10+07:00'
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

-- 2475 | Gula Aren (M) | CASH | 2026-06-11T12:42:22+07:00
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
    '2026-06-11T12:42:22+07:00'
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

-- 2476 | Baileys Latte (M) | CASH | 2026-06-11T12:42:27+07:00
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
    '2026-06-11T12:42:27+07:00'
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

-- 2477 | Butterscotch (M) | QRIS | 2026-06-11T12:42:34+07:00
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
    '2026-06-11T12:42:34+07:00'
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

-- 2478 | Gula Aren (M) | QRIS | 2026-06-11T12:42:39+07:00
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
    '2026-06-11T12:42:39+07:00'
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

-- 2479 | Butterscotch (M) | QRIS | 2026-06-11T12:46:07+07:00
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
    '2026-06-11T12:46:07+07:00'
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

-- 2480 | Baileys Latte (M) | QRIS | 2026-06-11T12:46:58+07:00
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
    '2026-06-11T12:46:58+07:00'
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

-- 2481 | Hazelnut (M) | CASH | 2026-06-11T12:47:17+07:00
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
    '2026-06-11T12:47:17+07:00'
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

-- 2482 | Gula Aren (M) | CASH | 2026-06-11T12:47:19+07:00
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
    '2026-06-11T12:47:19+07:00'
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

-- 2483 | Butterscotch (M) | QRIS | 2026-06-11T12:48:10+07:00
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
    '2026-06-11T12:48:10+07:00'
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

-- 2484 | Salted Caramel (M) | CASH | 2026-06-11T12:50:20+07:00
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
    '2026-06-11T12:50:20+07:00'
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

-- 2485 | Gula Aren (M) | QRIS | 2026-06-11T12:54:20+07:00
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
    '2026-06-11T12:54:20+07:00'
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

-- 2486 | Hazelnut (M) | QRIS | 2026-06-11T12:54:25+07:00
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
    '2026-06-11T12:54:25+07:00'
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

-- 2487 | Butterscotch (M) | QRIS | 2026-06-11T12:57:21+07:00
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
    '2026-06-11T12:57:21+07:00'
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

-- 2488 | Hazelnut (M) | QRIS | 2026-06-11T12:57:30+07:00
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
    '2026-06-11T12:57:30+07:00'
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

-- 2489 | Vanilla (M) | QRIS | 2026-06-11T12:57:37+07:00
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
    '2026-06-11T12:57:37+07:00'
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

-- 2490 | Hazelnut (M) | QRIS | 2026-06-11T12:59:04+07:00
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
    '2026-06-11T12:59:04+07:00'
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

-- 2491 | Butterscotch (M) | CASH | 2026-06-11T13:02:44+07:00
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
    '2026-06-11T13:02:44+07:00'
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

-- 2492 | Baileys Latte (M) | QRIS | 2026-06-11T13:05:05+07:00
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
    '2026-06-11T13:05:05+07:00'
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

-- 2493 | Gula Aren (M) | QRIS | 2026-06-11T13:07:12+07:00
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
    '2026-06-11T13:07:12+07:00'
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

-- 2494 | Gula Aren (M) | CASH | 2026-06-11T13:07:20+07:00
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
    '2026-06-11T13:07:20+07:00'
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

-- 2495 | Butterscotch (M) | QRIS | 2026-06-11T13:11:46+07:00
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
    '2026-06-11T13:11:46+07:00'
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

-- 2496 | Baileys Latte (M) | QRIS | 2026-06-11T13:11:52+07:00
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
    '2026-06-11T13:11:52+07:00'
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

-- 2497 | Hazelnut (M) | QRIS | 2026-06-11T13:11:58+07:00
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
    '2026-06-11T13:11:58+07:00'
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

-- 2498 | Butterscotch (M) | QRIS | 2026-06-11T13:12:46+07:00
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
    '2026-06-11T13:12:46+07:00'
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

-- 2499 | Gula Aren (M) | CASH | 2026-06-11T13:12:45+07:00
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
    '2026-06-11T13:12:45+07:00'
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

-- 2500 | Baileys Latte (M) | QRIS | 2026-06-11T13:12:50+07:00
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
    '2026-06-11T13:12:50+07:00'
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

-- 2501 | Butterscotch (M) | QRIS | 2026-06-11T13:14:41+07:00
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
    '2026-06-11T13:14:41+07:00'
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

-- 2502 | Butterscotch (M) | QRIS | 2026-06-11T13:14:50+07:00
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
    '2026-06-11T13:14:50+07:00'
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

-- 2503 | Salted Caramel (M) | CASH | 2026-06-11T13:15:04+07:00
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
    '2026-06-11T13:15:04+07:00'
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

-- 2504 | Gula Aren (M) | CASH | 2026-06-11T13:15:22+07:00
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
    '2026-06-11T13:15:22+07:00'
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

-- 2505 | Gula Aren (M) | QRIS | 2026-06-11T13:15:28+07:00
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
    '2026-06-11T13:15:28+07:00'
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

-- 2506 | Salted Caramel (M) | QRIS | 2026-06-11T13:20:44+07:00
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
    '2026-06-11T13:20:44+07:00'
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

-- 2507 | Butterscotch (M) | QRIS | 2026-06-11T13:29:08+07:00
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
    '2026-06-11T13:29:08+07:00'
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

-- 2508 | Salted Caramel (M) | CASH | 2026-06-11T13:31:21+07:00
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
    '2026-06-11T13:31:21+07:00'
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

-- 2509 | Gula Aren (M) | QRIS | 2026-06-11T13:38:56+07:00
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
    '2026-06-11T13:38:56+07:00'
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

-- 2510 | Salted Caramel (M) | QRIS | 2026-06-11T13:39:23+07:00
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
    '2026-06-11T13:39:23+07:00'
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

-- 2511 | Baileys Latte (M) | QRIS | 2026-06-11T13:39:30+07:00
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
    '2026-06-11T13:39:30+07:00'
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

-- 2512 | Butterscotch (M) | QRIS | 2026-06-11T13:40:47+07:00
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
    '2026-06-11T13:40:47+07:00'
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

-- 2513 | Gula Aren (M) | CASH | 2026-06-11T13:55:47+07:00
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
    '2026-06-11T13:55:47+07:00'
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

-- 2514 | Gula Aren (M) | QRIS | 2026-06-11T13:56:02+07:00
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
    '2026-06-11T13:56:02+07:00'
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

-- 2515 | Gula Aren (M) | CASH | 2026-06-11T13:56:10+07:00
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
    '2026-06-11T13:56:10+07:00'
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

-- 2516 | Butterscotch (M) | QRIS | 2026-06-11T13:56:13+07:00
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
    '2026-06-11T13:56:13+07:00'
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

-- 2517 | Baileys Latte (M) | QRIS | 2026-06-11T13:56:19+07:00
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
    '2026-06-11T13:56:19+07:00'
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

-- 2518 | Hazelnut (M) | CASH | 2026-06-11T13:56:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-11T13:56:25+07:00'
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

-- 2519 | Butterscotch (M) | CASH | 2026-06-11T13:56:32+07:00
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
    '2026-06-11T13:56:32+07:00'
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

-- 2520 | Butterscotch (M) | CASH | 2026-06-11T14:00:33+07:00
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
    '2026-06-11T14:00:33+07:00'
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

-- 2521 | Butterscotch (M) | CASH | 2026-06-11T14:03:16+07:00
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
    '2026-06-11T14:03:16+07:00'
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

-- 2522 | Butterscotch (M) | CASH | 2026-06-11T14:05:12+07:00
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
    '2026-06-11T14:05:12+07:00'
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

-- 2523 | Salted Caramel (M) | QRIS | 2026-06-11T14:08:58+07:00
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
    '2026-06-11T14:08:58+07:00'
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

-- 2524 | Butterscotch (M) | CASH | 2026-06-11T14:20:32+07:00
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
    '2026-06-11T14:20:32+07:00'
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

-- 2525 | Gula Aren (M) | CASH | 2026-06-11T14:21:10+07:00
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
    '2026-06-11T14:21:10+07:00'
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

-- 2526 | Vanilla (M) | QRIS | 2026-06-11T14:21:17+07:00
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
    '2026-06-11T14:21:17+07:00'
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

-- 2527 | Gula Aren (M) | CASH | 2026-06-11T14:27:29+07:00
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
    '2026-06-11T14:27:29+07:00'
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

-- 2528 | Butterscotch (M) | QRIS | 2026-06-11T14:30:19+07:00
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
    '2026-06-11T14:30:19+07:00'
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

-- 2529 | Baileys Latte (M) | CASH | 2026-06-11T14:32:27+07:00
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
    '2026-06-11T14:32:27+07:00'
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

-- 2530 | Butterscotch (M) | QRIS | 2026-06-11T14:41:27+07:00
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
    '2026-06-11T14:41:27+07:00'
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

-- 2531 | Salted Caramel (M) | QRIS | 2026-06-11T14:41:34+07:00
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
    '2026-06-11T14:41:34+07:00'
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

-- 2532 | Gula Aren (M) | QRIS | 2026-06-11T14:41:43+07:00
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
    '2026-06-11T14:41:43+07:00'
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

-- 2533 | Gula Aren (M) | CASH | 2026-06-11T14:43:39+07:00
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
    '2026-06-11T14:43:39+07:00'
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

-- 2534 | Gula Aren (M) | CASH | 2026-06-11T14:44:02+07:00
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
    '2026-06-11T14:44:02+07:00'
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

-- 2535 | Gula Aren (M) | CASH | 2026-06-11T14:44:10+07:00
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
    '2026-06-11T14:44:10+07:00'
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

-- 2536 | Baileys Latte (M) | QRIS | 2026-06-11T14:47:02+07:00
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
    '2026-06-11T14:47:02+07:00'
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

-- 2537 | Butterscotch (M) | QRIS | 2026-06-11T14:47:56+07:00
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
    '2026-06-11T14:47:56+07:00'
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

-- 2538 | Baileys Latte (M) | QRIS | 2026-06-11T14:49:34+07:00
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
    '2026-06-11T14:49:34+07:00'
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

-- 2539 | Butterscotch (M) | CASH | 2026-06-11T15:01:24+07:00
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
    '2026-06-11T15:01:24+07:00'
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

-- 2540 | Baileys Latte (M) | QRIS | 2026-06-11T15:06:45+07:00
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
    '2026-06-11T15:06:45+07:00'
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

-- 2541 | Butterscotch (M) | QRIS | 2026-06-11T15:13:13+07:00
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
    '2026-06-11T15:13:13+07:00'
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

-- 2542 | Baileys Latte (M) | QRIS | 2026-06-11T15:14:06+07:00
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
    '2026-06-11T15:14:06+07:00'
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

-- 2543 | Gula Aren (M) | QRIS | 2026-06-11T15:15:14+07:00
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
    '2026-06-11T15:15:14+07:00'
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

-- 2544 | Butterscotch (M) | QRIS | 2026-06-11T15:16:04+07:00
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
    '2026-06-11T15:16:04+07:00'
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

-- 2545 | Gula Aren (M) | QRIS | 2026-06-11T15:16:07+07:00
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
    '2026-06-11T15:16:07+07:00'
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

-- 2546 | Baileys Latte (M) | QRIS | 2026-06-11T15:16:10+07:00
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
    '2026-06-11T15:16:10+07:00'
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

-- 2547 | Salted Caramel (M) | QRIS | 2026-06-11T15:25:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-11T15:25:10+07:00'
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

-- 2548 | Hazelnut (M) | QRIS | 2026-06-11T15:25:17+07:00
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
    '2026-06-11T15:25:17+07:00'
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

-- 2549 | Baileys Latte (M) | QRIS | 2026-06-11T15:29:31+07:00
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
    '2026-06-11T15:29:31+07:00'
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

-- 2550 | Baileys Latte (M) | QRIS | 2026-06-11T15:39:24+07:00
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
    '2026-06-11T15:39:24+07:00'
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

-- 2551 | Baileys Latte (M) | QRIS | 2026-06-11T15:40:02+07:00
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
    '2026-06-11T15:40:02+07:00'
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

-- 2552 | Butterscotch (M) | CASH | 2026-06-11T15:43:32+07:00
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
    '2026-06-11T15:43:32+07:00'
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

-- 2553 | Baileys Latte (M) | CASH | 2026-06-11T16:06:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-11T16:06:24+07:00'
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

-- 2554 | Butterscotch (M) | CASH | 2026-06-11T16:06:41+07:00
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
    '2026-06-11T16:06:41+07:00'
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

-- 2555 | Gula Aren (M) | CASH | 2026-06-11T16:06:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T16:06:53+07:00'
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

-- 2556 | Gula Aren (M) | QRIS | 2026-06-11T16:06:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T16:06:59+07:00'
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

-- 2557 | Vanilla (M) | CASH | 2026-06-11T16:07:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-11T16:07:25+07:00'
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

-- 2558 | Butterscotch (M) | CASH | 2026-06-11T16:07:38+07:00
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
    '2026-06-11T16:07:38+07:00'
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

-- 2559 | Butterscotch (M) | QRIS | 2026-06-11T16:07:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-11T16:07:52+07:00'
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

-- 2560 | Butterscotch (M) | QRIS | 2026-06-11T16:08:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-11T16:08:11+07:00'
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

-- 2561 | Baileys Latte (M) | QRIS | 2026-06-11T16:08:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-11T16:08:24+07:00'
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

-- 2562 | Gula Aren (M) | QRIS | 2026-06-11T16:08:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T16:08:38+07:00'
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

-- 2563 | Butterscotch (M) | CASH | 2026-06-11T16:08:56+07:00
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
    '2026-06-11T16:08:56+07:00'
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

-- 2564 | Gula Aren (M) | CASH | 2026-06-11T16:08:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-11T16:08:58+07:00'
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

-- 2565 | Vanilla (M) | CASH | 2026-06-11T16:09:18+07:00
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
    '2026-06-11T16:09:18+07:00'
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

-- 2566 | Vanilla (M) | CASH | 2026-06-11T16:13:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-11T16:13:38+07:00'
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

-- 2567 | Butterscotch (M) | QRIS | 2026-06-11T16:25:25+07:00
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
    '2026-06-11T16:25:25+07:00'
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

-- 2568 | Baileys Latte (M) | QRIS | 2026-06-11T16:25:32+07:00
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
    '2026-06-11T16:25:32+07:00'
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

-- 2569 | Vanilla (M) | CASH | 2026-06-11T16:26:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-11T16:26:38+07:00'
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

-- 2570 | Hazelnut (M) | CASH | 2026-06-11T16:26:42+07:00
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
    '2026-06-11T16:26:42+07:00'
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

-- 2571 | Butterscotch (M) | CASH | 2026-06-11T16:26:46+07:00
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
    '2026-06-11T16:26:46+07:00'
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

-- 2572 | Butterscotch (M) | CASH | 2026-06-11T16:29:12+07:00
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
    '2026-06-11T16:29:12+07:00'
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

-- 2573 | Gula Aren (M) | QRIS | 2026-06-11T16:35:45+07:00
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
    '2026-06-11T16:35:45+07:00'
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

-- 2574 | Butterscotch (M) | QRIS | 2026-06-11T16:41:04+07:00
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
    '2026-06-11T16:41:04+07:00'
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

-- 2575 | Baileys Latte (M) | QRIS | 2026-06-11T16:41:10+07:00
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
    '2026-06-11T16:41:10+07:00'
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

-- 2576 | Baileys Latte (M) | QRIS | 2026-06-11T16:41:16+07:00
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
    '2026-06-11T16:41:16+07:00'
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

-- 2577 | Butterscotch (M) | CASH | 2026-06-11T16:41:17+07:00
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
    '2026-06-11T16:41:17+07:00'
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

-- 2578 | Salted Caramel (M) | QRIS | 2026-06-11T16:42:43+07:00
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
    '2026-06-11T16:42:43+07:00'
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

-- 2579 | Baileys Latte (M) | QRIS | 2026-06-11T16:42:49+07:00
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
    '2026-06-11T16:42:49+07:00'
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

-- 2580 | Baileys Latte (M) | QRIS | 2026-06-11T16:49:31+07:00
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
    '2026-06-11T16:49:31+07:00'
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

-- 2581 | Butterscotch (M) | CASH | 2026-06-11T16:54:36+07:00
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
    '2026-06-11T16:54:36+07:00'
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

-- 2582 | Baileys Latte (M) | QRIS | 2026-06-11T16:54:43+07:00
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
    '2026-06-11T16:54:43+07:00'
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

-- 2583 | Hazelnut (M) | CASH | 2026-06-11T16:57:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-11T16:57:26+07:00'
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

-- 2584 | Butterscotch (M) | CASH | 2026-06-11T16:58:40+07:00
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
    '2026-06-11T16:58:40+07:00'
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

-- 2585 | Baileys Latte (M) | CASH | 2026-06-11T16:58:45+07:00
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
    '2026-06-11T16:58:45+07:00'
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

-- 2586 | Gula Aren (M) | CASH | 2026-06-11T17:02:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-11T17:02:31+07:00'
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

-- 2587 | Gula Aren (M) | CASH | 2026-06-11T17:02:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-11T17:02:53+07:00'
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

-- 2588 | Baileys Latte (M) | CASH | 2026-06-11T17:03:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-11T17:03:35+07:00'
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

-- 2589 | Butterscotch (M) | CASH | 2026-06-11T17:04:01+07:00
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
    '2026-06-11T17:04:01+07:00'
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

-- 2590 | Butterscotch (M) | QRIS | 2026-06-11T17:04:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-11T17:04:08+07:00'
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

-- 2591 | Hazelnut (M) | QRIS | 2026-06-11T17:04:14+07:00
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
    '2026-06-11T17:04:14+07:00'
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

-- 2592 | Gula Aren (M) | QRIS | 2026-06-11T17:04:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-11T17:04:18+07:00'
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

-- 2593 | Butterscotch (M) | QRIS | 2026-06-11T16:15:06+07:00
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
    '2026-06-11T16:15:06+07:00'
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

-- 2594 | Hazelnut (M) | QRIS | 2026-06-11T16:15:16+07:00
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
    '2026-06-11T16:15:16+07:00'
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

-- 2595 | Vanilla (M) | QRIS | 2026-06-11T16:15:26+07:00
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
    '2026-06-11T16:15:26+07:00'
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

-- 2596 | Baileys Latte (M) | QRIS | 2026-06-11T16:15:58+07:00
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
    '2026-06-11T16:15:58+07:00'
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

-- 2597 | Baileys Latte (M) | CASH | 2026-06-11T16:16:57+07:00
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
    '2026-06-11T16:16:57+07:00'
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

-- 2598 | Baileys Latte (M) | GRATIS | 2026-06-11T16:17:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-11T16:17:06+07:00'
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

-- 2599 | Butterscotch (M) | CASH | 2026-06-11T16:19:49+07:00
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
    '2026-06-11T16:19:49+07:00'
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

-- 2600 | Butterscotch (M) | QRIS | 2026-06-11T16:20:12+07:00
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
    '2026-06-11T16:20:12+07:00'
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

-- 2601 | Baileys Latte (M) | QRIS | 2026-06-11T16:35:15+07:00
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
    '2026-06-11T16:35:15+07:00'
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

-- 2602 | Baileys Latte (M) | QRIS | 2026-06-11T17:25:45+07:00
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
    '2026-06-11T17:25:45+07:00'
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

-- 2603 | Vanilla (M) | QRIS | 2026-06-11T17:26:08+07:00
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
    '2026-06-11T17:26:08+07:00'
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

-- 2604 | Baileys Latte (M) | QRIS | 2026-06-11T17:26:52+07:00
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
    '2026-06-11T17:26:52+07:00'
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

-- 2605 | Butterscotch (M) | CASH | 2026-06-11T17:27:08+07:00
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
    '2026-06-11T17:27:08+07:00'
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

-- 2606 | Vanilla (M) | QRIS | 2026-06-11T17:27:29+07:00
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
    '2026-06-11T17:27:29+07:00'
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

-- 2607 | Salted Caramel (M) | CASH | 2026-06-11T17:28:25+07:00
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
    '2026-06-11T17:28:25+07:00'
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

-- 2608 | Hazelnut (M) | CASH | 2026-06-11T17:28:45+07:00
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
    '2026-06-11T17:28:45+07:00'
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

-- 2609 | Baileys Latte (M) | CASH | 2026-06-11T17:30:01+07:00
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
    '2026-06-11T17:30:01+07:00'
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

-- 2610 | Butterscotch (M) | CASH | 2026-06-11T17:30:04+07:00
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
    '2026-06-11T17:30:04+07:00'
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

-- 2611 | Baileys Latte (M) | QRIS | 2026-06-11T17:30:07+07:00
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
    '2026-06-11T17:30:07+07:00'
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

-- 2612 | Baileys Latte (M) | CASH | 2026-06-11T17:30:05+07:00
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
    '2026-06-11T17:30:05+07:00'
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

-- 2613 | Butterscotch (M) | CASH | 2026-06-11T17:30:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-11T17:30:41+07:00'
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

-- 2614 | Butterscotch (M) | CASH | 2026-06-11T17:32:14+07:00
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
    '2026-06-11T17:32:14+07:00'
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

-- 2615 | Baileys Latte (M) | CASH | 2026-06-11T17:32:49+07:00
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
    '2026-06-11T17:32:49+07:00'
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

-- 2616 | Baileys Latte (M) | QRIS | 2026-06-11T17:33:12+07:00
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
    '2026-06-11T17:33:12+07:00'
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

-- 2617 | Gula Aren (M) | QRIS | 2026-06-11T17:36:50+07:00
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
    '2026-06-11T17:36:50+07:00'
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

-- 2618 | Butterscotch (M) | CASH | 2026-06-11T17:38:36+07:00
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
    '2026-06-11T17:38:36+07:00'
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

-- 2619 | Butterscotch (M) | CASH | 2026-06-11T17:39:02+07:00
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
    '2026-06-11T17:39:02+07:00'
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

-- 2620 | Gula Aren (M) | CASH | 2026-06-11T17:40:28+07:00
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
    '2026-06-11T17:40:28+07:00'
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

-- 2621 | Baileys Latte (M) | QRIS | 2026-06-11T17:43:57+07:00
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
    '2026-06-11T17:43:57+07:00'
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

-- 2622 | Butterscotch (M) | QRIS | 2026-06-11T17:45:07+07:00
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
    '2026-06-11T17:45:07+07:00'
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

-- 2623 | Salted Caramel (M) | QRIS | 2026-06-11T17:45:16+07:00
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
    '2026-06-11T17:45:16+07:00'
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

-- 2624 | Hazelnut (M) | GRATIS | 2026-06-11T17:49:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    0.00,
    '2026-06-11T17:49:48+07:00'
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

-- 2625 | Baileys Latte (M) | QRIS | 2026-06-11T17:52:13+07:00
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
    '2026-06-11T17:52:13+07:00'
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

-- 2626 | Butterscotch (M) | QRIS | 2026-06-11T17:52:55+07:00
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
    '2026-06-11T17:52:55+07:00'
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

-- 2627 | Vanilla (M) | CASH | 2026-06-11T17:52:46+07:00
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
    '2026-06-11T17:52:46+07:00'
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

-- 2628 | Baileys Latte (M) | CASH | 2026-06-11T17:53:01+07:00
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
    '2026-06-11T17:53:01+07:00'
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

-- 2629 | Baileys Latte (M) | QRIS | 2026-06-11T17:53:06+07:00
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
    '2026-06-11T17:53:06+07:00'
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

-- 2630 | Butterscotch (M) | QRIS | 2026-06-11T17:53:13+07:00
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
    '2026-06-11T17:53:13+07:00'
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

-- 2631 | Gula Aren (M) | CASH | 2026-06-11T17:54:51+07:00
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
    '2026-06-11T17:54:51+07:00'
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

-- 2632 | Baileys Latte (M) | QRIS | 2026-06-11T17:55:36+07:00
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
    '2026-06-11T17:55:36+07:00'
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

-- 2633 | Butterscotch (M) | CASH | 2026-06-11T17:57:23+07:00
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
    '2026-06-11T17:57:23+07:00'
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

-- 2634 | Vanilla (M) | QRIS | 2026-06-11T18:01:45+07:00
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
    '2026-06-11T18:01:45+07:00'
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

-- 2635 | Salted Caramel (M) | QRIS | 2026-06-11T18:02:07+07:00
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
    '2026-06-11T18:02:07+07:00'
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

-- 2636 | Butterscotch (M) | CASH | 2026-06-11T18:05:50+07:00
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
    '2026-06-11T18:05:50+07:00'
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

-- 2637 | Butterscotch (M) | CASH | 2026-06-11T18:07:33+07:00
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
    '2026-06-11T18:07:33+07:00'
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

-- 2638 | Hazelnut (M) | CASH | 2026-06-11T18:07:39+07:00
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
    '2026-06-11T18:07:39+07:00'
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

-- 2639 | Butterscotch (M) | CASH | 2026-06-11T18:07:50+07:00
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
    '2026-06-11T18:07:50+07:00'
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

-- 2640 | Gula Aren (M) | CASH | 2026-06-11T18:08:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T18:08:01+07:00'
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

-- 2641 | Baileys Latte (M) | CASH | 2026-06-11T18:08:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-11T18:08:15+07:00'
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

-- 2642 | Gula Aren (M) | CASH | 2026-06-11T18:08:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T18:08:26+07:00'
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

-- 2643 | Baileys Latte (M) | CASH | 2026-06-11T18:08:58+07:00
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
    '2026-06-11T18:08:58+07:00'
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

-- 2644 | Butterscotch (M) | QRIS | 2026-06-11T18:12:56+07:00
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
    '2026-06-11T18:12:56+07:00'
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

-- 2645 | Gula Aren (M) | QRIS | 2026-06-11T18:18:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T18:18:02+07:00'
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

-- 2646 | Baileys Latte (M) | QRIS | 2026-06-11T18:29:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-11T18:29:56+07:00'
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

-- 2647 | Gula Aren (M) | CASH | 2026-06-11T18:50:01+07:00
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
    '2026-06-11T18:50:01+07:00'
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

-- 2648 | Butterscotch (M) | CASH | 2026-06-11T18:50:17+07:00
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
    '2026-06-11T18:50:17+07:00'
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

-- 2649 | Baileys Latte (M) | QRIS | 2026-06-11T18:50:53+07:00
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
    '2026-06-11T18:50:53+07:00'
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

-- 2650 | Salted Caramel (M) | QRIS | 2026-06-11T18:50:59+07:00
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
    '2026-06-11T18:50:59+07:00'
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

-- 2651 | Baileys Latte (M) | QRIS | 2026-06-11T18:59:13+07:00
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
    '2026-06-11T18:59:13+07:00'
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

-- 2652 | Butterscotch (M) | QRIS | 2026-06-11T18:59:24+07:00
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
    '2026-06-11T18:59:24+07:00'
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

-- 2653 | Gula Aren (M) | QRIS | 2026-06-11T19:00:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-11T19:00:04+07:00'
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

-- 2654 | Butterscotch (M) | QRIS | 2026-06-11T19:00:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    150000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 12,
    0.00,
    84437.00,
    '2026-06-11T19:00:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  12,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2655 | Salted Caramel (M) | QRIS | 2026-06-11T19:01:02+07:00
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
    '2026-06-11T19:01:02+07:00'
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

-- 2656 | Gula Aren (M) | CASH | 2026-06-11T19:01:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-11T19:01:27+07:00'
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

-- 2657 | Salted Caramel (M) | CASH | 2026-06-11T19:01:37+07:00
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
    '2026-06-11T19:01:37+07:00'
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

-- 2658 | Hazelnut (M) | CASH | 2026-06-11T19:01:45+07:00
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
    '2026-06-11T19:01:45+07:00'
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

-- 2659 | Baileys Latte (M) | CASH | 2026-06-11T19:01:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-11T19:01:55+07:00'
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

-- 2660 | Baileys Latte (M) | CASH | 2026-06-11T19:04:08+07:00
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
    '2026-06-11T19:04:08+07:00'
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

-- 2661 | Gula Aren (M) | CASH | 2026-06-11T19:04:16+07:00
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
    '2026-06-11T19:04:16+07:00'
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

-- 2662 | Baileys Latte (M) | QRIS | 2026-06-11T19:23:09+07:00
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
    '2026-06-11T19:23:09+07:00'
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

-- 2663 | Gula Aren (M) | QRIS | 2026-06-11T19:24:48+07:00
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
    '2026-06-11T19:24:48+07:00'
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

-- 2664 | Baileys Latte (M) | CASH | 2026-06-11T19:38:18+07:00
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
    '2026-06-11T19:38:18+07:00'
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

-- 2665 | Baileys Latte (M) | GRATIS | 2026-06-11T19:45:55+07:00
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
    '2026-06-11T19:45:55+07:00'
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

-- 2666 | Baileys Latte (M) | CASH | 2026-06-11T20:22:13+07:00
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
    '2026-06-11T20:22:13+07:00'
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

-- 2667 | Gula Aren (M) | QRIS | 2026-06-11T20:22:10+07:00
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
    '2026-06-11T20:22:10+07:00'
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

-- 2668 | Butterscotch (M) | QRIS | 2026-06-11T20:22:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-11T20:22:22+07:00'
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

-- 2669 | Gula Aren (M) | CASH | 2026-06-11T20:23:03+07:00
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
    '2026-06-11T20:23:03+07:00'
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

-- 2670 | Butterscotch (M) | CASH | 2026-06-11T20:23:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-11T20:23:10+07:00'
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

-- 2671 | Salted Caramel (M) | CASH | 2026-06-11T20:23:18+07:00
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
    '2026-06-11T20:23:18+07:00'
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

-- 2672 | Baileys Latte (M) | CASH | 2026-06-11T20:23:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-11T20:23:34+07:00'
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

-- 2673 | Baileys Latte (M) | CASH | 2026-06-11T20:46:01+07:00
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
    '2026-06-11T20:46:01+07:00'
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

-- 2674 | Salted Caramel (M) | CASH | 2026-06-11T20:48:28+07:00
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
    '2026-06-11T20:48:28+07:00'
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

-- 2675 | Baileys Latte (M) | QRIS | 2026-06-11T21:06:25+07:00
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
    '2026-06-11T21:06:25+07:00'
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

-- 2676 | Butterscotch (M) | CASH | 2026-06-11T21:06:35+07:00
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
    '2026-06-11T21:06:35+07:00'
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

-- 2677 | Butterscotch (M) | CASH | 2026-06-11T21:06:40+07:00
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
    '2026-06-11T21:06:40+07:00'
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

-- 2678 | Baileys Latte (M) | CASH | 2026-06-11T21:06:45+07:00
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
    '2026-06-11T21:06:45+07:00'
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

-- 2679 | Baileys Latte (M) | CASH | 2026-06-11T21:19:22+07:00
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
    '2026-06-11T21:19:22+07:00'
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

-- 2680 | Baileys Latte (M) | QRIS | 2026-06-11T21:35:52+07:00
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
    '2026-06-11T21:35:52+07:00'
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

-- 2681 | Gula Aren (M) | QRIS | 2026-06-11T22:14:34+07:00
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
    '2026-06-11T22:14:34+07:00'
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

-- 2682 | Baileys Latte (M) | GRATIS | 2026-06-11T22:26:37+07:00
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
    '2026-06-11T22:26:37+07:00'
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

-- 2683 | Butterscotch (M) | QRIS | 2026-06-11T23:09:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-11T23:09:27+07:00'
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

-- 2684 | Gula Aren (M) | QRIS | 2026-06-11T23:09:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-11T23:09:36+07:00'
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

-- 2685 | Gula Aren (M) | CASH | 2026-06-11T23:11:05+07:00
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
    '2026-06-11T23:11:05+07:00'
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

-- 2686 | Butterscotch (M) | CASH | 2026-06-11T23:11:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-11T23:11:15+07:00'
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

-- 2687 | Salted Caramel (M) | CASH | 2026-06-11T23:11:36+07:00
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
    '2026-06-11T23:11:36+07:00'
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

-- 2688 | Baileys Latte (M) | CASH | 2026-06-11T23:11:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-11T23:11:42+07:00'
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

-- 2689 | Butterscotch (M) | QRIS | 2026-06-11T23:48:56+07:00
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
    '2026-06-11T23:48:56+07:00'
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

-- 2690 | Salted Caramel (M) | QRIS | 2026-06-11T23:49:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-11T23:49:06+07:00'
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

-- 2691 | Gula Aren (M) | CASH | 2026-06-11T23:49:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-11T23:49:18+07:00'
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

-- 2692 | Baileys Latte (M) | CASH | 2026-06-11T23:49:25+07:00
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
    '2026-06-11T23:49:25+07:00'
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

-- 2693 | Gula Aren (M) | CASH | 2026-06-12T09:24:01+07:00
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
    '2026-06-12T09:24:01+07:00'
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

-- 2694 | Gula Aren (M) | QRIS | 2026-06-12T09:24:07+07:00
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
    '2026-06-12T09:24:07+07:00'
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

-- 2695 | Gula Aren (M) | CASH | 2026-06-12T09:52:27+07:00
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
    '2026-06-12T09:52:27+07:00'
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

-- 2696 | Gula Aren (M) | QRIS | 2026-06-12T09:52:36+07:00
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
    '2026-06-12T09:52:36+07:00'
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

-- 2697 | Butterscotch (M) | QRIS | 2026-06-12T10:01:25+07:00
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
    '2026-06-12T10:01:25+07:00'
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

-- 2698 | Butterscotch (M) | QRIS | 2026-06-12T10:02:37+07:00
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
    '2026-06-12T10:02:37+07:00'
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

-- 2699 | Cold Brew (M) | CASH | 2026-06-12T10:15:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-12T10:15:46+07:00'
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

-- 2700 | Baileys Latte (M) | CASH | 2026-06-12T10:22:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-12T10:22:19+07:00'
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

-- 2701 | Gula Aren (M) | CASH | 2026-06-12T10:22:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-12T10:22:29+07:00'
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

-- 2702 | Gula Aren (M) | CASH | 2026-06-12T10:28:20+07:00
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
    '2026-06-12T10:28:20+07:00'
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

-- 2703 | Salted Caramel (M) | CASH | 2026-06-12T10:28:26+07:00
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
    '2026-06-12T10:28:26+07:00'
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

-- 2704 | Salted Caramel (M) | QRIS | 2026-06-12T10:34:44+07:00
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
    '2026-06-12T10:34:44+07:00'
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

-- 2705 | Gula Aren (M) | QRIS | 2026-06-12T10:34:52+07:00
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
    '2026-06-12T10:34:52+07:00'
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

-- 2706 | Butterscotch (M) | QRIS | 2026-06-12T10:40:20+07:00
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
    '2026-06-12T10:40:20+07:00'
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

-- 2707 | Gula Aren (M) | QRIS | 2026-06-12T10:40:25+07:00
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
    '2026-06-12T10:40:25+07:00'
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

-- 2708 | Butterscotch (M) | QRIS | 2026-06-12T10:50:46+07:00
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
    '2026-06-12T10:50:46+07:00'
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

-- 2709 | Gula Aren (M) | QRIS | 2026-06-12T10:56:45+07:00
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
    '2026-06-12T10:56:45+07:00'
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

-- 2710 | Gula Aren (M) | CASH | 2026-06-12T10:58:52+07:00
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
    '2026-06-12T10:58:52+07:00'
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

-- 2711 | Gula Aren (M) | QRIS | 2026-06-12T10:58:57+07:00
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
    '2026-06-12T10:58:57+07:00'
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

-- 2712 | Gula Aren (M) | CASH | 2026-06-12T11:03:54+07:00
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
    '2026-06-12T11:03:54+07:00'
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

-- 2713 | Vanilla (M) | CASH | 2026-06-12T11:04:01+07:00
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
    '2026-06-12T11:04:01+07:00'
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

-- 2714 | Gula Aren (M) | CASH | 2026-06-12T11:10:41+07:00
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
    '2026-06-12T11:10:41+07:00'
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

-- 2715 | Hazelnut (M) | CASH | 2026-06-12T11:10:46+07:00
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
    '2026-06-12T11:10:46+07:00'
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

-- 2716 | Butterscotch (M) | QRIS | 2026-06-12T11:15:55+07:00
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
    '2026-06-12T11:15:55+07:00'
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

-- 2717 | Gula Aren (M) | QRIS | 2026-06-12T11:20:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-12T11:20:50+07:00'
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

-- 2718 | Cold Brew (M) | QRIS | 2026-06-12T11:20:57+07:00
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
    '2026-06-12T11:20:57+07:00'
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

-- 2719 | Baileys Latte (M) | QRIS | 2026-06-12T11:21:04+07:00
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
    '2026-06-12T11:21:04+07:00'
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

-- 2720 | Vanilla (M) | CASH | 2026-06-12T11:21:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-12T11:21:18+07:00'
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

-- 2721 | Baileys Latte (M) | CASH | 2026-06-12T11:21:25+07:00
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
    '2026-06-12T11:21:25+07:00'
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

-- 2722 | Gula Aren (M) | CASH | 2026-06-12T11:21:54+07:00
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
    '2026-06-12T11:21:54+07:00'
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

-- 2723 | Gula Aren (M) | QRIS | 2026-06-12T11:24:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-12T11:24:19+07:00'
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

-- 2724 | Gula Aren (M) | QRIS | 2026-06-12T11:24:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-12T11:24:29+07:00'
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

-- 2725 | Gula Aren (M) | CASH | 2026-06-12T11:25:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-12T11:25:19+07:00'
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

-- 2726 | Butterscotch (M) | CASH | 2026-06-12T11:28:31+07:00
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
    '2026-06-12T11:28:31+07:00'
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

-- 2727 | Baileys Latte (M) | CASH | 2026-06-12T11:28:36+07:00
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
    '2026-06-12T11:28:36+07:00'
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

-- 2728 | Gula Aren (M) | QRIS | 2026-06-12T11:31:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-12T11:31:18+07:00'
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

-- 2729 | Gula Aren (M) | QRIS | 2026-06-12T11:35:08+07:00
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
    '2026-06-12T11:35:08+07:00'
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

-- 2730 | Cold Brew (M) | QRIS | 2026-06-12T11:41:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-12T11:41:45+07:00'
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

-- 2731 | Gula Aren (M) | QRIS | 2026-06-12T11:46:57+07:00
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
    '2026-06-12T11:46:57+07:00'
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

-- 2732 | Gula Aren (M) | CASH | 2026-06-12T11:47:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-12T11:47:51+07:00'
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

-- 2733 | Butterscotch (M) | CASH | 2026-06-12T11:47:59+07:00
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
    '2026-06-12T11:47:59+07:00'
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

-- 2734 | Gula Aren (M) | QRIS | 2026-06-12T11:49:39+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-12T11:49:39+07:00'
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

-- 2735 | Butterscotch (M) | QRIS | 2026-06-12T11:51:54+07:00
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
    '2026-06-12T11:51:54+07:00'
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

-- 2736 | Baileys Latte (M) | QRIS | 2026-06-12T11:51:58+07:00
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
    '2026-06-12T11:51:58+07:00'
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

-- 2737 | Salted Caramel (M) | CASH | 2026-06-12T11:52:00+07:00
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
    '2026-06-12T11:52:00+07:00'
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

-- 2738 | Baileys Latte (M) | CASH | 2026-06-12T12:17:23+07:00
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
    '2026-06-12T12:17:23+07:00'
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

-- 2739 | Cold Brew (M) | QRIS | 2026-06-12T12:23:42+07:00
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
    '2026-06-12T12:23:42+07:00'
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

-- 2740 | Gula Aren (M) | CASH | 2026-06-12T12:23:48+07:00
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
    '2026-06-12T12:23:48+07:00'
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

-- 2741 | Cold Brew (M) | CASH | 2026-06-12T12:23:54+07:00
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
    '2026-06-12T12:23:54+07:00'
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

-- 2742 | Baileys Latte (M) | QRIS | 2026-06-12T12:30:14+07:00
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
    '2026-06-12T12:30:14+07:00'
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

-- 2743 | Gula Aren (M) | QRIS | 2026-06-12T12:30:22+07:00
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
    '2026-06-12T12:30:22+07:00'
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

-- 2744 | Gula Aren (M) | CASH | 2026-06-12T12:30:36+07:00
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
    '2026-06-12T12:30:36+07:00'
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

-- 2745 | Butterscotch (M) | QRIS | 2026-06-12T12:30:43+07:00
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
    '2026-06-12T12:30:43+07:00'
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

-- 2746 | Gula Aren (M) | CASH | 2026-06-12T12:31:36+07:00
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
    '2026-06-12T12:31:36+07:00'
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

-- 2747 | Gula Aren (M) | QRIS | 2026-06-12T12:38:10+07:00
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
    '2026-06-12T12:38:10+07:00'
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

-- 2748 | Gula Aren (M) | CASH | 2026-06-12T12:38:45+07:00
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
    '2026-06-12T12:38:45+07:00'
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

-- 2749 | Cold Brew (M) | CASH | 2026-06-12T12:42:05+07:00
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
    '2026-06-12T12:42:05+07:00'
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

-- 2750 | Gula Aren (M) | CASH | 2026-06-12T12:42:02+07:00
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
    '2026-06-12T12:42:02+07:00'
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

-- 2751 | Hazelnut (M) | QRIS | 2026-06-12T12:42:20+07:00
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
    '2026-06-12T12:42:20+07:00'
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

-- 2752 | Vanilla (M) | QRIS | 2026-06-12T12:42:29+07:00
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
    '2026-06-12T12:42:29+07:00'
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

-- 2753 | Salted Caramel (M) | QRIS | 2026-06-12T12:43:15+07:00
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
    '2026-06-12T12:43:15+07:00'
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

-- 2754 | Cold Brew (M) | CASH | 2026-06-12T12:44:19+07:00
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
    '2026-06-12T12:44:19+07:00'
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

-- 2755 | Baileys Latte (M) | QRIS | 2026-06-12T12:44:12+07:00
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
    '2026-06-12T12:44:12+07:00'
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

-- 2756 | Baileys Latte (M) | QRIS | 2026-06-12T12:45:26+07:00
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
    '2026-06-12T12:45:26+07:00'
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

-- 2757 | Gula Aren (M) | CASH | 2026-06-12T12:45:35+07:00
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
    '2026-06-12T12:45:35+07:00'
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

-- 2758 | Butterscotch (M) | CASH | 2026-06-12T12:46:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-12T12:46:25+07:00'
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

-- 2759 | Baileys Latte (M) | CASH | 2026-06-12T12:54:40+07:00
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
    '2026-06-12T12:54:40+07:00'
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

-- 2760 | Butterscotch (M) | CASH | 2026-06-12T12:54:46+07:00
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
    '2026-06-12T12:54:46+07:00'
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

-- 2761 | Baileys Latte (M) | QRIS | 2026-06-12T12:54:49+07:00
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
    '2026-06-12T12:54:49+07:00'
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

-- 2762 | Butterscotch (M) | CASH | 2026-06-12T13:00:50+07:00
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
    '2026-06-12T13:00:50+07:00'
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

-- 2763 | Gula Aren (M) | CASH | 2026-06-12T13:03:05+07:00
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
    '2026-06-12T13:03:05+07:00'
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

-- 2764 | Butterscotch (M) | CASH | 2026-06-12T13:09:58+07:00
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
    '2026-06-12T13:09:58+07:00'
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

-- 2765 | Gula Aren (M) | QRIS | 2026-06-12T13:16:50+07:00
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
    '2026-06-12T13:16:50+07:00'
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

-- 2766 | Gula Aren (M) | QRIS | 2026-06-12T13:16:59+07:00
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
    '2026-06-12T13:16:59+07:00'
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

-- 2767 | Baileys Latte (M) | QRIS | 2026-06-12T13:17:07+07:00
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
    '2026-06-12T13:17:07+07:00'
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

-- 2768 | Butterscotch (M) | QRIS | 2026-06-12T13:17:14+07:00
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
    '2026-06-12T13:17:14+07:00'
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

-- 2769 | Salted Caramel (M) | QRIS | 2026-06-12T13:17:27+07:00
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
    '2026-06-12T13:17:27+07:00'
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

-- 2770 | Baileys Latte (M) | QRIS | 2026-06-12T13:18:05+07:00
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
    '2026-06-12T13:18:05+07:00'
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

-- 2771 | Hazelnut (M) | QRIS | 2026-06-12T13:20:14+07:00
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
    '2026-06-12T13:20:14+07:00'
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

-- 2772 | Gula Aren (M) | CASH | 2026-06-12T13:21:00+07:00
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
    '2026-06-12T13:21:00+07:00'
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

-- 2773 | Butterscotch (M) | CASH | 2026-06-12T13:27:31+07:00
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
    '2026-06-12T13:27:31+07:00'
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

-- 2774 | Salted Caramel (M) | CASH | 2026-06-12T13:33:12+07:00
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
    '2026-06-12T13:33:12+07:00'
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

-- 2775 | Gula Aren (M) | QRIS | 2026-06-12T13:33:20+07:00
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
    '2026-06-12T13:33:20+07:00'
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

-- 2776 | Gula Aren (M) | CASH | 2026-06-12T13:33:44+07:00
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
    '2026-06-12T13:33:44+07:00'
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

-- 2777 | Butterscotch (M) | CASH | 2026-06-12T13:35:31+07:00
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
    '2026-06-12T13:35:31+07:00'
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

-- 2778 | Gula Aren (M) | CASH | 2026-06-12T13:45:26+07:00
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
    '2026-06-12T13:45:26+07:00'
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

-- 2779 | Gula Aren (M) | QRIS | 2026-06-12T13:59:53+07:00
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
    '2026-06-12T13:59:53+07:00'
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

-- 2780 | Gula Aren (M) | CASH | 2026-06-12T14:01:29+07:00
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
    '2026-06-12T14:01:29+07:00'
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

-- 2781 | Cold Brew (M) | CASH | 2026-06-12T14:05:39+07:00
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
    '2026-06-12T14:05:39+07:00'
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

-- 2782 | Gula Aren (M) | CASH | 2026-06-12T14:07:06+07:00
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
    '2026-06-12T14:07:06+07:00'
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

-- 2783 | Butterscotch (M) | QRIS | 2026-06-12T14:07:12+07:00
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
    '2026-06-12T14:07:12+07:00'
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

-- 2784 | Baileys Latte (M) | QRIS | 2026-06-12T14:07:20+07:00
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
    '2026-06-12T14:07:20+07:00'
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

-- 2785 | Gula Aren (M) | CASH | 2026-06-12T14:15:25+07:00
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
    '2026-06-12T14:15:25+07:00'
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

-- 2786 | Gula Aren (M) | QRIS | 2026-06-12T14:17:23+07:00
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
    '2026-06-12T14:17:23+07:00'
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

-- 2787 | Butterscotch (M) | QRIS | 2026-06-12T14:17:30+07:00
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
    '2026-06-12T14:17:30+07:00'
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

-- 2788 | Butterscotch (M) | QRIS | 2026-06-12T14:19:16+07:00
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
    '2026-06-12T14:19:16+07:00'
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

-- 2789 | Salted Caramel (M) | QRIS | 2026-06-12T14:22:29+07:00
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
    '2026-06-12T14:22:29+07:00'
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

-- 2790 | Gula Aren (M) | QRIS | 2026-06-12T14:27:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-12T14:27:25+07:00'
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

-- 2791 | Butterscotch (M) | QRIS | 2026-06-12T14:32:34+07:00
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
    '2026-06-12T14:32:34+07:00'
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

-- 2792 | Butterscotch (M) | QRIS | 2026-06-12T14:36:21+07:00
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
    '2026-06-12T14:36:21+07:00'
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

-- 2793 | Baileys Latte (M) | QRIS | 2026-06-12T14:36:31+07:00
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
    '2026-06-12T14:36:31+07:00'
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

-- 2794 | Cold Brew (M) | QRIS | 2026-06-12T14:37:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-12T14:37:52+07:00'
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

-- 2795 | Gula Aren (M) | QRIS | 2026-06-12T14:43:19+07:00
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
    '2026-06-12T14:43:19+07:00'
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

-- 2796 | Gula Aren (M) | CASH | 2026-06-12T14:43:25+07:00
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
    '2026-06-12T14:43:25+07:00'
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

-- 2797 | Vanilla (M) | QRIS | 2026-06-12T14:45:52+07:00
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
    '2026-06-12T14:45:52+07:00'
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

-- 2798 | Gula Aren (M) | QRIS | 2026-06-12T14:46:54+07:00
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
    '2026-06-12T14:46:54+07:00'
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

-- 2799 | Vanilla (M) | QRIS | 2026-06-12T14:52:12+07:00
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
    '2026-06-12T14:52:12+07:00'
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

-- 2800 | Baileys Latte (M) | CASH | 2026-06-12T14:59:17+07:00
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
    '2026-06-12T14:59:17+07:00'
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

-- 2801 | Cold Brew (M) | CASH | 2026-06-12T15:03:13+07:00
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
    '2026-06-12T15:03:13+07:00'
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

-- 2802 | Baileys Latte (M) | QRIS | 2026-06-12T15:11:31+07:00
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
    '2026-06-12T15:11:31+07:00'
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

-- 2803 | Butterscotch (M) | QRIS | 2026-06-12T15:11:55+07:00
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
    '2026-06-12T15:11:55+07:00'
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

-- 2804 | Vanilla (M) | QRIS | 2026-06-12T15:14:58+07:00
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
    '2026-06-12T15:14:58+07:00'
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

-- 2805 | Butterscotch (M) | QRIS | 2026-06-12T15:16:58+07:00
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
    '2026-06-12T15:16:58+07:00'
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

-- 2806 | Butterscotch (M) | QRIS | 2026-06-12T15:15:05+07:00
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
    '2026-06-12T15:15:05+07:00'
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

-- 2807 | Vanilla (M) | CASH | 2026-06-12T15:38:11+07:00
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
    '2026-06-12T15:38:11+07:00'
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

-- 2808 | Butterscotch (M) | QRIS | 2026-06-12T15:38:18+07:00
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
    '2026-06-12T15:38:18+07:00'
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

-- 2809 | Baileys Latte (M) | QRIS | 2026-06-12T15:38:24+07:00
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
    '2026-06-12T15:38:24+07:00'
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

-- 2810 | Vanilla (M) | GRATIS | 2026-06-12T15:38:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    0.00,
    '2026-06-12T15:38:34+07:00'
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

-- 2811 | Gula Aren (M) | QRIS | 2026-06-12T15:46:51+07:00
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
    '2026-06-12T15:46:51+07:00'
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

-- 2812 | Gula Aren (M) | CASH | 2026-06-12T15:47:06+07:00
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
    '2026-06-12T15:47:06+07:00'
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

-- 2813 | Butterscotch (M) | CASH | 2026-06-12T15:47:17+07:00
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
    '2026-06-12T15:47:17+07:00'
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

-- 2814 | Baileys Latte (M) | QRIS | 2026-06-12T15:49:09+07:00
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
    '2026-06-12T15:49:09+07:00'
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

-- 2815 | Gula Aren (M) | CASH | 2026-06-12T15:49:56+07:00
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
    '2026-06-12T15:49:56+07:00'
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

-- 2816 | Gula Aren (M) | QRIS | 2026-06-12T15:50:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-12T15:50:04+07:00'
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

-- 2817 | Butterscotch (M) | CASH | 2026-06-12T15:50:18+07:00
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
    '2026-06-12T15:50:18+07:00'
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

-- 2818 | Vanilla (M) | CASH | 2026-06-12T15:50:25+07:00
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
    '2026-06-12T15:50:25+07:00'
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

-- 2819 | Salted Caramel (M) | CASH | 2026-06-12T15:50:31+07:00
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
    '2026-06-12T15:50:31+07:00'
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

-- 2820 | Hazelnut (M) | CASH | 2026-06-12T15:50:35+07:00
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
    '2026-06-12T15:50:35+07:00'
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

-- 2821 | Cold Brew (M) | CASH | 2026-06-12T15:50:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    30000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 3,
    0.00,
    16086.00,
    '2026-06-12T15:50:41+07:00'
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

-- 2822 | Baileys Latte (M) | QRIS | 2026-06-12T15:51:09+07:00
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
    '2026-06-12T15:51:09+07:00'
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

-- 2823 | Butterscotch (M) | CASH | 2026-06-12T15:56:42+07:00
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
    '2026-06-12T15:56:42+07:00'
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

-- 2824 | Baileys Latte (M) | CASH | 2026-06-12T16:01:08+07:00
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
    '2026-06-12T16:01:08+07:00'
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

-- 2825 | Butterscotch (M) | CASH | 2026-06-12T16:13:13+07:00
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
    '2026-06-12T16:13:13+07:00'
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

-- 2826 | Hazelnut (M) | CASH | 2026-06-12T16:13:19+07:00
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
    '2026-06-12T16:13:19+07:00'
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

-- 2827 | Baileys Latte (M) | CASH | 2026-06-12T16:16:42+07:00
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
    '2026-06-12T16:16:42+07:00'
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

-- 2828 | Salted Caramel (M) | QRIS | 2026-06-12T16:20:48+07:00
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
    '2026-06-12T16:20:48+07:00'
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

-- 2829 | Salted Caramel (M) | CASH | 2026-06-12T16:22:57+07:00
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
    '2026-06-12T16:22:57+07:00'
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

-- 2830 | Hazelnut (M) | CASH | 2026-06-12T16:23:06+07:00
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
    '2026-06-12T16:23:06+07:00'
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

-- 2831 | Gula Aren (M) | QRIS | 2026-06-12T16:34:23+07:00
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
    '2026-06-12T16:34:23+07:00'
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

-- 2832 | Baileys Latte (M) | CASH | 2026-06-12T16:34:30+07:00
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
    '2026-06-12T16:34:30+07:00'
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

-- 2833 | Cold Brew (M) | CASH | 2026-06-12T16:36:41+07:00
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
    '2026-06-12T16:36:41+07:00'
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

-- 2834 | Butterscotch (M) | CASH | 2026-06-12T16:46:19+07:00
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
    '2026-06-12T16:46:19+07:00'
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

-- 2835 | Gula Aren (M) | CASH | 2026-06-12T16:46:26+07:00
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
    '2026-06-12T16:46:26+07:00'
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

-- 2836 | Gula Aren (M) | CASH | 2026-06-12T16:52:03+07:00
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
    '2026-06-12T16:52:03+07:00'
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

-- 2837 | Baileys Latte (M) | QRIS | 2026-06-12T16:56:09+07:00
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
    '2026-06-12T16:56:09+07:00'
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

-- 2838 | Salted Caramel (M) | QRIS | 2026-06-12T17:03:06+07:00
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
    '2026-06-12T17:03:06+07:00'
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

-- 2839 | Butterscotch (M) | CASH | 2026-06-12T17:03:39+07:00
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
    '2026-06-12T17:03:39+07:00'
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

-- 2840 | Baileys Latte (M) | QRIS | 2026-06-12T17:03:51+07:00
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
    '2026-06-12T17:03:51+07:00'
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

-- 2841 | Baileys Latte (M) | CASH | 2026-06-12T17:04:17+07:00
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
    '2026-06-12T17:04:17+07:00'
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

-- 2842 | Butterscotch (M) | QRIS | 2026-06-12T17:12:50+07:00
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
    '2026-06-12T17:12:50+07:00'
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

-- 2843 | Baileys Latte (M) | QRIS | 2026-06-12T17:15:30+07:00
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
    '2026-06-12T17:15:30+07:00'
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

-- 2844 | Baileys Latte (M) | CASH | 2026-06-12T17:15:37+07:00
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
    '2026-06-12T17:15:37+07:00'
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

-- 2845 | Gula Aren (M) | CASH | 2026-06-12T17:15:41+07:00
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
    '2026-06-12T17:15:41+07:00'
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

-- 2846 | Baileys Latte (M) | QRIS | 2026-06-12T17:25:35+07:00
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
    '2026-06-12T17:25:35+07:00'
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

-- 2847 | Baileys Latte (M) | QRIS | 2026-06-12T17:29:35+07:00
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
    '2026-06-12T17:29:35+07:00'
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

-- 2848 | Vanilla (M) | CASH | 2026-06-12T17:34:12+07:00
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
    '2026-06-12T17:34:12+07:00'
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

-- 2849 | Baileys Latte (M) | QRIS | 2026-06-12T17:34:18+07:00
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
    '2026-06-12T17:34:18+07:00'
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

-- 2850 | Salted Caramel (M) | QRIS | 2026-06-12T17:34:23+07:00
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
    '2026-06-12T17:34:23+07:00'
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

-- 2851 | Butterscotch (M) | QRIS | 2026-06-12T17:37:37+07:00
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
    '2026-06-12T17:37:37+07:00'
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

-- 2852 | Gula Aren (M) | CASH | 2026-06-12T17:38:42+07:00
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
    '2026-06-12T17:38:42+07:00'
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

-- 2853 | Butterscotch (M) | GRATIS | 2026-06-12T17:43:39+07:00
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
    '2026-06-12T17:43:39+07:00'
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

-- 2854 | Baileys Latte (M) | QRIS | 2026-06-12T17:45:02+07:00
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
    '2026-06-12T17:45:02+07:00'
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

-- 2855 | Gula Aren (M) | CASH | 2026-06-12T17:49:21+07:00
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
    '2026-06-12T17:49:21+07:00'
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

-- 2856 | Baileys Latte (M) | CASH | 2026-06-12T17:52:06+07:00
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
    '2026-06-12T17:52:06+07:00'
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

-- 2857 | Gula Aren (M) | QRIS | 2026-06-12T17:55:38+07:00
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
    '2026-06-12T17:55:38+07:00'
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

-- 2858 | Salted Caramel (M) | QRIS | 2026-06-12T17:58:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-12T17:58:12+07:00'
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

-- 2859 | Gula Aren (M) | CASH | 2026-06-12T17:58:22+07:00
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
    '2026-06-12T17:58:22+07:00'
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

-- 2860 | Vanilla (M) | CASH | 2026-06-12T17:58:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-12T17:58:52+07:00'
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

-- 2861 | Baileys Latte (M) | CASH | 2026-06-12T17:59:55+07:00
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
    '2026-06-12T17:59:55+07:00'
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

-- 2862 | Baileys Latte (M) | CASH | 2026-06-12T18:00:27+07:00
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
    '2026-06-12T18:00:27+07:00'
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

-- 2863 | Butterscotch (M) | CASH | 2026-06-12T18:03:32+07:00
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
    '2026-06-12T18:03:32+07:00'
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

-- 2864 | Gula Aren (M) | CASH | 2026-06-12T18:07:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-12T18:07:50+07:00'
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

-- 2865 | Gula Aren (M) | CASH | 2026-06-12T18:08:23+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    72000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 9,
    0.00,
    32362.00,
    '2026-06-12T18:08:23+07:00'
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

-- 2866 | Butterscotch (M) | QRIS | 2026-06-12T18:10:02+07:00
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
    '2026-06-12T18:10:02+07:00'
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

-- 2867 | Gula Aren (M) | CASH | 2026-06-12T18:13:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    80000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 10,
    0.00,
    35958.00,
    '2026-06-12T18:13:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  10,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2868 | Gula Aren (M) | CASH | 2026-06-12T18:14:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    400000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 50,
    0.00,
    179788.00,
    '2026-06-12T18:14:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  50,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2869 | Cold Brew (M) | CASH | 2026-06-12T18:14:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    300000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 30,
    0.00,
    160862.00,
    '2026-06-12T18:14:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '2bdc286c-6b98-423e-b5c8-c2af18298721',
  30,
  10000.00,
  (SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')
FROM inserted_sale;

-- 2870 | Salted Caramel (M) | QRIS | 2026-06-12T18:22:38+07:00
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
    '2026-06-12T18:22:38+07:00'
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

-- 2871 | Hazelnut (M) | QRIS | 2026-06-12T18:22:45+07:00
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
    '2026-06-12T18:22:45+07:00'
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

-- 2872 | Vanilla (M) | QRIS | 2026-06-12T18:22:50+07:00
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
    '2026-06-12T18:22:50+07:00'
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

-- 2873 | Butterscotch (M) | QRIS | 2026-06-12T18:23:15+07:00
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
    '2026-06-12T18:23:15+07:00'
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

-- 2874 | Baileys Latte (M) | QRIS | 2026-06-12T18:23:35+07:00
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
    '2026-06-12T18:23:35+07:00'
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

-- 2875 | Cold Brew (M) | QRIS | 2026-06-12T18:23:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-12T18:23:55+07:00'
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

-- 2876 | Baileys Latte (M) | CASH | 2026-06-12T18:24:38+07:00
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
    '2026-06-12T18:24:38+07:00'
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

-- 2877 | Butterscotch (M) | CASH | 2026-06-12T18:25:42+07:00
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
    '2026-06-12T18:25:42+07:00'
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

-- 2878 | Gula Aren (M) | QRIS | 2026-06-12T18:26:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-12T18:26:16+07:00'
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

-- 2879 | Vanilla (M) | QRIS | 2026-06-12T18:26:22+07:00
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
    '2026-06-12T18:26:22+07:00'
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

-- 2880 | Cold Brew (M) | QRIS | 2026-06-12T18:27:09+07:00
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
    '2026-06-12T18:27:09+07:00'
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

-- 2881 | Cold Brew (M) | CASH | 2026-06-12T18:27:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-12T18:27:41+07:00'
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

-- 2882 | Hazelnut (M) | CASH | 2026-06-12T18:28:36+07:00
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
    '2026-06-12T18:28:36+07:00'
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

-- 2883 | Salted Caramel (M) | CASH | 2026-06-12T18:29:08+07:00
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
    '2026-06-12T18:29:08+07:00'
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

-- 2884 | Baileys Latte (M) | CASH | 2026-06-12T18:31:10+07:00
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
    '2026-06-12T18:31:10+07:00'
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

-- 2885 | Baileys Latte (M) | CASH | 2026-06-12T18:33:15+07:00
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
    '2026-06-12T18:33:15+07:00'
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

-- 2886 | Baileys Latte (M) | CASH | 2026-06-12T18:35:56+07:00
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
    '2026-06-12T18:35:56+07:00'
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

-- 2887 | Hazelnut (M) | CASH | 2026-06-12T18:37:26+07:00
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
    '2026-06-12T18:37:26+07:00'
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

-- 2888 | Hazelnut (M) | CASH | 2026-06-12T18:40:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-12T18:40:06+07:00'
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

-- 2889 | Baileys Latte (M) | CASH | 2026-06-12T18:42:21+07:00
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
    '2026-06-12T18:42:21+07:00'
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

-- 2890 | Baileys Latte (M) | QRIS | 2026-06-12T18:48:50+07:00
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
    '2026-06-12T18:48:50+07:00'
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

-- 2891 | Baileys Latte (M) | CASH | 2026-06-12T18:53:13+07:00
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
    '2026-06-12T18:53:13+07:00'
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

-- 2892 | Baileys Latte (M) | GRATIS | 2026-06-12T18:56:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-12T18:56:07+07:00'
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

-- 2893 | Butterscotch (M) | QRIS | 2026-06-12T18:59:52+07:00
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
    '2026-06-12T18:59:52+07:00'
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

-- 2894 | Butterscotch (M) | QRIS | 2026-06-12T19:00:18+07:00
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
    '2026-06-12T19:00:18+07:00'
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

-- 2895 | Butterscotch (M) | QRIS | 2026-06-12T19:08:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-12T19:08:10+07:00'
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

-- 2896 | Gula Aren (M) | QRIS | 2026-06-12T19:08:20+07:00
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
    '2026-06-12T19:08:20+07:00'
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

-- 2897 | Cold Brew (M) | QRIS | 2026-06-12T19:08:26+07:00
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
    '2026-06-12T19:08:26+07:00'
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

-- 2898 | Gula Aren (M) | CASH | 2026-06-12T19:08:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-12T19:08:57+07:00'
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

-- 2899 | Butterscotch (M) | CASH | 2026-06-12T19:09:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    162500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 13,
    0.00,
    91473.00,
    '2026-06-12T19:09:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  13,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2900 | Vanilla (M) | CASH | 2026-06-12T19:09:15+07:00
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
    '2026-06-12T19:09:15+07:00'
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

-- 2901 | Salted Caramel (M) | CASH | 2026-06-12T19:09:21+07:00
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
    '2026-06-12T19:09:21+07:00'
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

-- 2902 | Hazelnut (M) | CASH | 2026-06-12T19:09:26+07:00
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
    '2026-06-12T19:09:26+07:00'
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

-- 2903 | Baileys Latte (M) | CASH | 2026-06-12T19:09:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-12T19:09:31+07:00'
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

-- 2904 | Baileys Latte (M) | QRIS | 2026-06-12T19:15:46+07:00
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
    '2026-06-12T19:15:46+07:00'
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

-- 2905 | Butterscotch (M) | QRIS | 2026-06-12T19:23:46+07:00
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
    '2026-06-12T19:23:46+07:00'
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

-- 2906 | Gula Aren (M) | QRIS | 2026-06-12T19:24:01+07:00
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
    '2026-06-12T19:24:01+07:00'
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

-- 2907 | Cold Brew (M) | QRIS | 2026-06-12T19:24:32+07:00
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
    '2026-06-12T19:24:32+07:00'
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

-- 2908 | Gula Aren (M) | CASH | 2026-06-12T19:25:59+07:00
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
    '2026-06-12T19:25:59+07:00'
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

-- 2909 | Butterscotch (M) | CASH | 2026-06-12T19:26:07+07:00
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
    '2026-06-12T19:26:07+07:00'
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

-- 2910 | Vanilla (M) | CASH | 2026-06-12T19:26:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-12T19:26:15+07:00'
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

-- 2911 | Salted Caramel (M) | CASH | 2026-06-12T19:26:27+07:00
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
    '2026-06-12T19:26:27+07:00'
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

-- 2912 | Hazelnut (M) | CASH | 2026-06-12T19:26:35+07:00
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
    '2026-06-12T19:26:35+07:00'
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

-- 2913 | Baileys Latte (M) | CASH | 2026-06-12T19:26:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-12T19:26:42+07:00'
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

-- 2914 | Hazelnut (M) | QRIS | 2026-06-12T19:36:14+07:00
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
    '2026-06-12T19:36:14+07:00'
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

-- 2915 | Butterscotch (M) | QRIS | 2026-06-12T19:41:20+07:00
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
    '2026-06-12T19:41:20+07:00'
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

-- 2916 | Butterscotch (M) | CASH | 2026-06-12T19:48:44+07:00
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
    '2026-06-12T19:48:44+07:00'
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

-- 2917 | Butterscotch (M) | CASH | 2026-06-12T20:00:53+07:00
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
    '2026-06-12T20:00:53+07:00'
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

-- 2918 | Baileys Latte (M) | GRATIS | 2026-06-12T20:16:35+07:00
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
    '2026-06-12T20:16:35+07:00'
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

-- 2919 | Butterscotch (M) | CASH | 2026-06-12T20:17:30+07:00
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
    '2026-06-12T20:17:30+07:00'
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

-- 2920 | Baileys Latte (M) | CASH | 2026-06-12T20:17:42+07:00
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
    '2026-06-12T20:17:42+07:00'
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

-- 2921 | Salted Caramel (M) | QRIS | 2026-06-12T20:22:09+07:00
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
    '2026-06-12T20:22:09+07:00'
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

-- 2922 | Baileys Latte (M) | QRIS | 2026-06-12T20:36:34+07:00
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
    '2026-06-12T20:36:34+07:00'
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

-- 2923 | Baileys Latte (M) | CASH | 2026-06-12T20:46:14+07:00
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
    '2026-06-12T20:46:14+07:00'
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

-- 2924 | Butterscotch (M) | CASH | 2026-06-12T20:46:26+07:00
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
    '2026-06-12T20:46:26+07:00'
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

-- 2925 | Butterscotch (M) | QRIS | 2026-06-12T20:46:38+07:00
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
    '2026-06-12T20:46:38+07:00'
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

-- 2926 | Hazelnut (M) | QRIS | 2026-06-12T20:46:49+07:00
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
    '2026-06-12T20:46:49+07:00'
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

-- 2927 | Baileys Latte (M) | CASH | 2026-06-12T20:56:23+07:00
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
    '2026-06-12T20:56:23+07:00'
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

-- 2928 | Salted Caramel (M) | CASH | 2026-06-12T21:00:07+07:00
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
    '2026-06-12T21:00:07+07:00'
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

-- 2929 | Butterscotch (M) | QRIS | 2026-06-12T21:00:41+07:00
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
    '2026-06-12T21:00:41+07:00'
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

-- 2930 | Cold Brew (M) | QRIS | 2026-06-12T21:00:51+07:00
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
    '2026-06-12T21:00:51+07:00'
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

-- 2931 | Baileys Latte (M) | CASH | 2026-06-12T21:09:45+07:00
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
    '2026-06-12T21:09:45+07:00'
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

-- 2932 | Butterscotch (M) | QRIS | 2026-06-12T21:16:54+07:00
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
    '2026-06-12T21:16:54+07:00'
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

-- 2933 | Baileys Latte (M) | QRIS | 2026-06-12T21:17:06+07:00
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
    '2026-06-12T21:17:06+07:00'
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

-- 2934 | Butterscotch (M) | CASH | 2026-06-12T21:19:29+07:00
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
    '2026-06-12T21:19:29+07:00'
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

-- 2935 | Gula Aren (M) | QRIS | 2026-06-12T21:30:48+07:00
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
    '2026-06-12T21:30:48+07:00'
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

-- 2936 | Gula Aren (M) | CASH | 2026-06-12T21:31:03+07:00
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
    '2026-06-12T21:31:03+07:00'
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

-- 2937 | Butterscotch (M) | QRIS | 2026-06-12T21:31:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    137500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 11,
    0.00,
    77400.00,
    '2026-06-12T21:31:16+07:00'
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

-- 2938 | Butterscotch (M) | CASH | 2026-06-12T21:31:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-12T21:31:26+07:00'
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

-- 2939 | Vanilla (M) | CASH | 2026-06-12T21:31:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-12T21:31:34+07:00'
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

-- 2940 | Salted Caramel (M) | CASH | 2026-06-12T21:31:39+07:00
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
    '2026-06-12T21:31:39+07:00'
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

-- 2941 | Hazelnut (M) | CASH | 2026-06-12T21:31:45+07:00
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
    '2026-06-12T21:31:45+07:00'
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

-- 2942 | Baileys Latte (M) | CASH | 2026-06-12T21:31:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-12T21:31:50+07:00'
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

-- 2943 | Butterscotch (M) | QRIS | 2026-06-12T21:45:29+07:00
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
    '2026-06-12T21:45:29+07:00'
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

-- 2944 | Baileys Latte (M) | QRIS | 2026-06-12T21:55:45+07:00
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
    '2026-06-12T21:55:45+07:00'
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

-- 2945 | Butterscotch (M) | QRIS | 2026-06-12T21:57:50+07:00
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
    '2026-06-12T21:57:50+07:00'
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

-- 2946 | Vanilla (M) | QRIS | 2026-06-12T21:57:59+07:00
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
    '2026-06-12T21:57:59+07:00'
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

-- 2947 | Baileys Latte (M) | QRIS | 2026-06-12T21:58:16+07:00
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
    '2026-06-12T21:58:16+07:00'
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

-- 2948 | Baileys Latte (M) | CASH | 2026-06-12T21:58:31+07:00
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
    '2026-06-12T21:58:31+07:00'
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

-- 2949 | Baileys Latte (M) | CASH | 2026-06-12T22:01:52+07:00
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
    '2026-06-12T22:01:52+07:00'
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

-- 2950 | Butterscotch (M) | CASH | 2026-06-12T22:02:31+07:00
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
    '2026-06-12T22:02:31+07:00'
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

-- 2951 | Butterscotch (M) | QRIS | 2026-06-12T22:31:17+07:00
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
    '2026-06-12T22:31:17+07:00'
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

-- 2952 | Butterscotch (M) | CASH | 2026-06-12T22:31:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 10,
    0.00,
    70364.00,
    '2026-06-12T22:31:41+07:00'
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

-- 2953 | Vanilla (M) | CASH | 2026-06-12T22:31:54+07:00
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
    '2026-06-12T22:31:54+07:00'
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

-- 2954 | Salted Caramel (M) | CASH | 2026-06-12T22:32:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-12T22:32:07+07:00'
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

-- 2955 | Hazelnut (M) | CASH | 2026-06-12T22:32:16+07:00
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
    '2026-06-12T22:32:16+07:00'
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

-- 2956 | Baileys Latte (M) | CASH | 2026-06-12T22:32:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 7,
    0.00,
    48037.00,
    '2026-06-12T22:32:28+07:00'
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

-- 2957 | Butterscotch (M) | GRATIS | 2026-06-12T22:37:28+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-12T22:37:28+07:00'
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

-- 2958 | Cold Brew (M) | QRIS | 2026-06-13T09:00:32+07:00
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
    '2026-06-13T09:00:32+07:00'
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

-- 2959 | Gula Aren (M) | QRIS | 2026-06-13T09:09:11+07:00
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
    '2026-06-13T09:09:11+07:00'
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

-- 2960 | Vanilla (M) | QRIS | 2026-06-13T09:28:18+07:00
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
    '2026-06-13T09:28:18+07:00'
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

-- 2961 | Gula Aren (M) | QRIS | 2026-06-13T09:31:17+07:00
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
    '2026-06-13T09:31:17+07:00'
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

-- 2962 | Baileys Latte (M) | QRIS | 2026-06-13T09:35:45+07:00
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
    '2026-06-13T09:35:45+07:00'
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

-- 2963 | Vanilla (M) | CASH | 2026-06-13T09:45:19+07:00
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
    '2026-06-13T09:45:19+07:00'
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

-- 2964 | Butterscotch (M) | CASH | 2026-06-13T09:45:24+07:00
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
    '2026-06-13T09:45:24+07:00'
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

-- 2965 | Gula Aren (M) | CASH | 2026-06-13T09:59:30+07:00
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
    '2026-06-13T09:59:30+07:00'
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

-- 2966 | Butterscotch (M) | QRIS | 2026-06-13T10:01:56+07:00
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
    '2026-06-13T10:01:56+07:00'
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

-- 2967 | Gula Aren (M) | QRIS | 2026-06-13T10:12:15+07:00
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
    '2026-06-13T10:12:15+07:00'
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

-- 2968 | Butterscotch (M) | QRIS | 2026-06-13T10:15:27+07:00
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
    '2026-06-13T10:15:27+07:00'
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

-- 2969 | Butterscotch (M) | QRIS | 2026-06-13T10:19:08+07:00
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
    '2026-06-13T10:19:08+07:00'
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

-- 2970 | Butterscotch (M) | CASH | 2026-06-13T10:23:11+07:00
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
    '2026-06-13T10:23:11+07:00'
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

-- 2971 | Baileys Latte (M) | QRIS | 2026-06-13T11:17:56+07:00
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
    '2026-06-13T11:17:56+07:00'
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

-- 2972 | Gula Aren (M) | CASH | 2026-06-13T11:34:58+07:00
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
    '2026-06-13T11:34:58+07:00'
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

-- 2973 | Baileys Latte (M) | CASH | 2026-06-13T11:44:49+07:00
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
    '2026-06-13T11:44:49+07:00'
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

-- 2974 | Gula Aren (M) | CASH | 2026-06-13T11:44:53+07:00
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
    '2026-06-13T11:44:53+07:00'
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

-- 2975 | Gula Aren (M) | CASH | 2026-06-13T11:49:25+07:00
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
    '2026-06-13T11:49:25+07:00'
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

-- 2976 | Butterscotch (M) | QRIS | 2026-06-13T11:57:51+07:00
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
    '2026-06-13T11:57:51+07:00'
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

-- 2977 | Butterscotch (M) | CASH | 2026-06-13T12:01:13+07:00
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
    '2026-06-13T12:01:13+07:00'
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

-- 2978 | Baileys Latte (M) | CASH | 2026-06-13T12:01:19+07:00
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
    '2026-06-13T12:01:19+07:00'
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

-- 2979 | Butterscotch (M) | QRIS | 2026-06-13T12:02:00+07:00
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
    '2026-06-13T12:02:00+07:00'
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

-- 2980 | Gula Aren (M) | QRIS | 2026-06-13T12:09:08+07:00
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
    '2026-06-13T12:09:08+07:00'
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

-- 2981 | Butterscotch (M) | QRIS | 2026-06-13T12:09:13+07:00
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
    '2026-06-13T12:09:13+07:00'
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

-- 2982 | Butterscotch (M) | QRIS | 2026-06-13T12:10:36+07:00
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
    '2026-06-13T12:10:36+07:00'
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

-- 2983 | Cold Brew (M) | QRIS | 2026-06-13T12:38:37+07:00
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
    '2026-06-13T12:38:37+07:00'
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

-- 2984 | Baileys Latte (M) | QRIS | 2026-06-13T12:38:43+07:00
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
    '2026-06-13T12:38:43+07:00'
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

-- 2985 | Gula Aren (M) | CASH | 2026-06-13T12:52:37+07:00
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
    '2026-06-13T12:52:37+07:00'
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

-- 2986 | Gula Aren (M) | CASH | 2026-06-13T13:10:24+07:00
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
    '2026-06-13T13:10:24+07:00'
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

-- 2987 | Butterscotch (M) | CASH | 2026-06-13T13:23:57+07:00
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
    '2026-06-13T13:23:57+07:00'
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

-- 2988 | Butterscotch (M) | QRIS | 2026-06-13T13:26:15+07:00
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
    '2026-06-13T13:26:15+07:00'
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

-- 2989 | Gula Aren (M) | QRIS | 2026-06-13T13:26:20+07:00
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
    '2026-06-13T13:26:20+07:00'
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

-- 2990 | Salted Caramel (M) | QRIS | 2026-06-13T13:35:14+07:00
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
    '2026-06-13T13:35:14+07:00'
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

-- 2991 | Butterscotch (M) | CASH | 2026-06-13T13:35:14+07:00
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
    '2026-06-13T13:35:14+07:00'
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

-- 2992 | Hazelnut (M) | CASH | 2026-06-13T13:40:35+07:00
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
    '2026-06-13T13:40:35+07:00'
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

-- 2993 | Baileys Latte (M) | CASH | 2026-06-13T13:40:39+07:00
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
    '2026-06-13T13:40:39+07:00'
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

-- 2994 | Butterscotch (M) | QRIS | 2026-06-13T13:45:43+07:00
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
    '2026-06-13T13:45:43+07:00'
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

-- 2995 | Gula Aren (M) | CASH | 2026-06-13T13:51:23+07:00
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
    '2026-06-13T13:51:23+07:00'
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

-- 2996 | Cold Brew (M) | CASH | 2026-06-13T13:59:24+07:00
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
    '2026-06-13T13:59:24+07:00'
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

-- 2997 | Gula Aren (M) | CASH | 2026-06-13T13:59:35+07:00
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
    '2026-06-13T13:59:35+07:00'
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

-- 2998 | Cold Brew (M) | CASH | 2026-06-13T14:02:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-13T14:02:06+07:00'
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

-- 2999 | Baileys Latte (M) | CASH | 2026-06-13T14:05:06+07:00
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
    '2026-06-13T14:05:06+07:00'
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

-- 3000 | Vanilla (M) | CASH | 2026-06-13T14:11:23+07:00
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
    '2026-06-13T14:11:23+07:00'
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

-- 3001 | Gula Aren (M) | CASH | 2026-06-13T14:11:33+07:00
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
    '2026-06-13T14:11:33+07:00'
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

-- 3002 | Butterscotch (M) | QRIS | 2026-06-13T14:11:44+07:00
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
    '2026-06-13T14:11:44+07:00'
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

-- 3003 | Butterscotch (M) | QRIS | 2026-06-13T14:17:24+07:00
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
    '2026-06-13T14:17:24+07:00'
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

-- 3004 | Cold Brew (M) | QRIS | 2026-06-13T14:21:30+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-13T14:21:30+07:00'
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

-- 3005 | Butterscotch (M) | CASH | 2026-06-13T14:21:58+07:00
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
    '2026-06-13T14:21:58+07:00'
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

-- 3006 | Gula Aren (M) | CASH | 2026-06-13T14:26:45+07:00
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
    '2026-06-13T14:26:45+07:00'
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

-- 3007 | Hazelnut (M) | QRIS | 2026-06-13T14:28:36+07:00
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
    '2026-06-13T14:28:36+07:00'
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

-- 3008 | Butterscotch (M) | QRIS | 2026-06-13T14:28:55+07:00
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
    '2026-06-13T14:28:55+07:00'
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

-- 3009 | Gula Aren (M) | QRIS | 2026-06-13T14:38:05+07:00
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
    '2026-06-13T14:38:05+07:00'
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

-- 3010 | Gula Aren (M) | CASH | 2026-06-13T14:42:10+07:00
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
    '2026-06-13T14:42:10+07:00'
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

-- 3011 | Gula Aren (M) | CASH | 2026-06-13T14:50:20+07:00
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
    '2026-06-13T14:50:20+07:00'
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

-- 3012 | Baileys Latte (M) | CASH | 2026-06-13T14:52:07+07:00
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
    '2026-06-13T14:52:07+07:00'
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

-- 3013 | Cold Brew (M) | CASH | 2026-06-13T14:52:13+07:00
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
    '2026-06-13T14:52:13+07:00'
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

-- 3014 | Butterscotch (M) | QRIS | 2026-06-13T15:00:00+07:00
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
    '2026-06-13T15:00:00+07:00'
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

-- 3015 | Baileys Latte (M) | QRIS | 2026-06-13T15:00:07+07:00
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
    '2026-06-13T15:00:07+07:00'
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

-- 3016 | Baileys Latte (M) | QRIS | 2026-06-13T15:02:30+07:00
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
    '2026-06-13T15:02:30+07:00'
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

-- 3017 | Gula Aren (M) | QRIS | 2026-06-13T15:07:26+07:00
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
    '2026-06-13T15:07:26+07:00'
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

-- 3018 | Cold Brew (M) | QRIS | 2026-06-13T15:07:30+07:00
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
    '2026-06-13T15:07:30+07:00'
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

-- 3019 | Baileys Latte (M) | QRIS | 2026-06-13T15:20:19+07:00
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
    '2026-06-13T15:20:19+07:00'
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

-- 3020 | Baileys Latte (M) | QRIS | 2026-06-13T15:22:31+07:00
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
    '2026-06-13T15:22:31+07:00'
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

-- 3021 | Vanilla (M) | CASH | 2026-06-13T15:25:59+07:00
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
    '2026-06-13T15:25:59+07:00'
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

-- 3022 | Gula Aren (M) | QRIS | 2026-06-13T16:00:52+07:00
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
    '2026-06-13T16:00:52+07:00'
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

-- 3023 | Gula Aren (M) | GRATIS | 2026-06-13T16:02:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    0.00,
    '2026-06-13T16:02:10+07:00'
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

-- 3024 | Gula Aren (M) | CASH | 2026-06-13T16:10:07+07:00
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
    '2026-06-13T16:10:07+07:00'
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

-- 3025 | Gula Aren (M) | CASH | 2026-06-13T16:15:52+07:00
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
    '2026-06-13T16:15:52+07:00'
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

-- 3026 | Baileys Latte (M) | CASH | 2026-06-13T16:29:58+07:00
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
    '2026-06-13T16:29:58+07:00'
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

-- 3027 | Butterscotch (M) | QRIS | 2026-06-13T16:36:22+07:00
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
    '2026-06-13T16:36:22+07:00'
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

-- 3028 | Baileys Latte (M) | CASH | 2026-06-13T16:37:04+07:00
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
    '2026-06-13T16:37:04+07:00'
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

-- 3029 | Butterscotch (M) | CASH | 2026-06-13T16:37:54+07:00
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
    '2026-06-13T16:37:54+07:00'
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

-- 3030 | Hazelnut (M) | CASH | 2026-06-13T16:38:38+07:00
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
    '2026-06-13T16:38:38+07:00'
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

-- 3031 | Butterscotch (M) | QRIS | 2026-06-13T16:39:24+07:00
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
    '2026-06-13T16:39:24+07:00'
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

-- 3032 | Gula Aren (M) | CASH | 2026-06-13T16:39:36+07:00
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
    '2026-06-13T16:39:36+07:00'
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

-- 3033 | Butterscotch (M) | CASH | 2026-06-13T16:39:45+07:00
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
    '2026-06-13T16:39:45+07:00'
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

-- 3034 | Butterscotch (M) | CASH | 2026-06-13T16:45:11+07:00
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
    '2026-06-13T16:45:11+07:00'
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

-- 3035 | Baileys Latte (M) | CASH | 2026-06-13T16:53:07+07:00
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
    '2026-06-13T16:53:07+07:00'
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

-- 3036 | Baileys Latte (M) | QRIS | 2026-06-13T16:55:53+07:00
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
    '2026-06-13T16:55:53+07:00'
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

-- 3037 | Butterscotch (M) | QRIS | 2026-06-13T16:58:19+07:00
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
    '2026-06-13T16:58:19+07:00'
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

-- 3038 | Baileys Latte (M) | QRIS | 2026-06-13T16:58:32+07:00
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
    '2026-06-13T16:58:32+07:00'
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

-- 3039 | Butterscotch (M) | CASH | 2026-06-13T17:06:25+07:00
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
    '2026-06-13T17:06:25+07:00'
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

-- 3040 | Vanilla (M) | CASH | 2026-06-13T17:06:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-13T17:06:32+07:00'
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

-- 3041 | Butterscotch (M) | QRIS | 2026-06-13T17:12:37+07:00
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
    '2026-06-13T17:12:37+07:00'
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

-- 3042 | Butterscotch (M) | CASH | 2026-06-13T17:17:01+07:00
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
    '2026-06-13T17:17:01+07:00'
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

-- 3043 | Butterscotch (M) | QRIS | 2026-06-13T17:17:09+07:00
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
    '2026-06-13T17:17:09+07:00'
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

-- 3044 | Butterscotch (M) | CASH | 2026-06-13T17:22:56+07:00
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
    '2026-06-13T17:22:56+07:00'
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

-- 3045 | Butterscotch (M) | CASH | 2026-06-13T17:28:18+07:00
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
    '2026-06-13T17:28:18+07:00'
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

-- 3046 | Gula Aren (M) | CASH | 2026-06-13T17:41:13+07:00
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
    '2026-06-13T17:41:13+07:00'
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

-- 3047 | Butterscotch (M) | QRIS | 2026-06-13T17:41:25+07:00
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
    '2026-06-13T17:41:25+07:00'
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

-- 3048 | Butterscotch (M) | CASH | 2026-06-13T18:19:35+07:00
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
    '2026-06-13T18:19:35+07:00'
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

-- 3049 | Baileys Latte (M) | QRIS | 2026-06-13T18:19:44+07:00
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
    '2026-06-13T18:19:44+07:00'
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

-- 3050 | Gula Aren (M) | QRIS | 2026-06-13T18:24:44+07:00
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
    '2026-06-13T18:24:44+07:00'
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

-- 3051 | Hazelnut (M) | QRIS | 2026-06-13T18:25:02+07:00
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
    '2026-06-13T18:25:02+07:00'
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

-- 3052 | Gula Aren (M) | CASH | 2026-06-13T18:26:06+07:00
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
    '2026-06-13T18:26:06+07:00'
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

-- 3053 | Salted Caramel (M) | CASH | 2026-06-13T18:26:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 4,
    0.00,
    28146.00,
    '2026-06-13T18:26:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'f192d3f3-9c50-476d-ac4f-c0af1d6de63f',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')
FROM inserted_sale;

-- 3054 | Cold Brew (M) | CASH | 2026-06-13T18:27:11+07:00
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
    '2026-06-13T18:27:11+07:00'
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

-- 3055 | Hazelnut (M) | CASH | 2026-06-13T18:36:36+07:00
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
    '2026-06-13T18:36:36+07:00'
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

-- 3056 | Salted Caramel (M) | QRIS | 2026-06-13T18:54:26+07:00
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
    '2026-06-13T18:54:26+07:00'
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

-- 3057 | Baileys Latte (M) | QRIS | 2026-06-13T18:54:32+07:00
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
    '2026-06-13T18:54:32+07:00'
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

-- 3058 | Baileys Latte (M) | QRIS | 2026-06-13T18:57:12+07:00
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
    '2026-06-13T18:57:12+07:00'
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

-- 3059 | Salted Caramel (M) | QRIS | 2026-06-13T18:57:26+07:00
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
    '2026-06-13T18:57:26+07:00'
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

-- 3060 | Butterscotch (M) | CASH | 2026-06-13T18:57:34+07:00
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
    '2026-06-13T18:57:34+07:00'
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

-- 3061 | Salted Caramel (M) | CASH | 2026-06-13T19:02:46+07:00
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
    '2026-06-13T19:02:46+07:00'
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

-- 3062 | Salted Caramel (M) | QRIS | 2026-06-13T19:01:35+07:00
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
    '2026-06-13T19:01:35+07:00'
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

-- 3063 | Baileys Latte (M) | CASH | 2026-06-13T19:13:12+07:00
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
    '2026-06-13T19:13:12+07:00'
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

-- 3064 | Baileys Latte (M) | CASH | 2026-06-13T19:13:19+07:00
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
    '2026-06-13T19:13:19+07:00'
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

-- 3065 | Baileys Latte (M) | CASH | 2026-06-13T19:13:24+07:00
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
    '2026-06-13T19:13:24+07:00'
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

-- 3066 | Butterscotch (M) | QRIS | 2026-06-13T19:13:33+07:00
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
    '2026-06-13T19:13:33+07:00'
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

-- 3067 | Vanilla (M) | QRIS | 2026-06-13T19:16:18+07:00
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
    '2026-06-13T19:16:18+07:00'
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

-- 3068 | Gula Aren (M) | CASH | 2026-06-13T19:17:34+07:00
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
    '2026-06-13T19:17:34+07:00'
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

-- 3069 | Hazelnut (M) | QRIS | 2026-06-13T19:24:50+07:00
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
    '2026-06-13T19:24:50+07:00'
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

-- 3070 | Butterscotch (M) | CASH | 2026-06-13T19:25:53+07:00
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
    '2026-06-13T19:25:53+07:00'
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

-- 3071 | Baileys Latte (M) | QRIS | 2026-06-13T19:28:39+07:00
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
    '2026-06-13T19:28:39+07:00'
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

-- 3072 | Butterscotch (M) | QRIS | 2026-06-13T19:29:47+07:00
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
    '2026-06-13T19:29:47+07:00'
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

-- 3073 | Baileys Latte (M) | CASH | 2026-06-13T19:31:56+07:00
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
    '2026-06-13T19:31:56+07:00'
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

-- 3074 | Baileys Latte (M) | CASH | 2026-06-13T19:35:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-13T19:35:35+07:00'
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

-- 3075 | Gula Aren (M) | QRIS | 2026-06-13T19:38:30+07:00
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
    '2026-06-13T19:38:30+07:00'
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

-- 3076 | Baileys Latte (M) | CASH | 2026-06-13T19:40:11+07:00
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
    '2026-06-13T19:40:11+07:00'
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

-- 3077 | Hazelnut (M) | CASH | 2026-06-13T19:40:25+07:00
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
    '2026-06-13T19:40:25+07:00'
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

-- 3078 | Gula Aren (M) | CASH | 2026-06-13T19:43:26+07:00
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
    '2026-06-13T19:43:26+07:00'
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

-- 3079 | Salted Caramel (M) | CASH | 2026-06-13T19:45:52+07:00
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
    '2026-06-13T19:45:52+07:00'
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

-- 3080 | Baileys Latte (M) | CASH | 2026-06-13T19:51:18+07:00
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
    '2026-06-13T19:51:18+07:00'
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

-- 3081 | Cold Brew (M) | CASH | 2026-06-13T19:53:19+07:00
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
    '2026-06-13T19:53:19+07:00'
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

-- 3082 | Butterscotch (M) | CASH | 2026-06-13T19:56:23+07:00
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
    '2026-06-13T19:56:23+07:00'
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

-- 3083 | Butterscotch (M) | CASH | 2026-06-13T20:01:50+07:00
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
    '2026-06-13T20:01:50+07:00'
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

-- 3084 | Baileys Latte (M) | CASH | 2026-06-13T20:01:54+07:00
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
    '2026-06-13T20:01:54+07:00'
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

-- 3085 | Butterscotch (M) | CASH | 2026-06-13T20:01:56+07:00
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
    '2026-06-13T20:01:56+07:00'
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

-- 3086 | Salted Caramel (M) | CASH | 2026-06-13T20:02:00+07:00
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
    '2026-06-13T20:02:00+07:00'
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

-- 3087 | Baileys Latte (M) | CASH | 2026-06-13T20:02:03+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-13T20:02:03+07:00'
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

-- 3088 | Gula Aren (M) | CASH | 2026-06-13T20:04:15+07:00
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
    '2026-06-13T20:04:15+07:00'
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

-- 3089 | Gula Aren (M) | QRIS | 2026-06-13T20:06:48+07:00
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
    '2026-06-13T20:06:48+07:00'
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

-- 3090 | Butterscotch (M) | CASH | 2026-06-13T20:06:58+07:00
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
    '2026-06-13T20:06:58+07:00'
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

-- 3091 | Butterscotch (M) | QRIS | 2026-06-13T20:16:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-13T20:16:44+07:00'
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

-- 3092 | Salted Caramel (M) | QRIS | 2026-06-13T20:16:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-13T20:16:54+07:00'
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

-- 3093 | Hazelnut (M) | QRIS | 2026-06-13T20:17:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-13T20:17:07+07:00'
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

-- 3094 | Cold Brew (M) | QRIS | 2026-06-13T20:17:23+07:00
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
    '2026-06-13T20:17:23+07:00'
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

-- 3095 | Butterscotch (M) | CASH | 2026-06-13T20:17:41+07:00
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
    '2026-06-13T20:17:41+07:00'
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

-- 3096 | Salted Caramel (M) | CASH | 2026-06-13T20:17:45+07:00
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
    '2026-06-13T20:17:45+07:00'
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

-- 3097 | Gula Aren (M) | QRIS | 2026-06-13T20:17:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-13T20:17:40+07:00'
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

-- 3098 | Gula Aren (M) | CASH | 2026-06-13T20:18:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-13T20:18:29+07:00'
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

-- 3099 | Cold Brew (M) | CASH | 2026-06-13T20:18:37+07:00
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
    '2026-06-13T20:18:37+07:00'
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

-- 3100 | Baileys Latte (M) | CASH | 2026-06-13T20:18:45+07:00
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
    '2026-06-13T20:18:45+07:00'
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

-- 3101 | Gula Aren (M) | CASH | 2026-06-13T20:18:51+07:00
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
    '2026-06-13T20:18:51+07:00'
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

-- 3102 | Baileys Latte (M) | CASH | 2026-06-13T20:20:14+07:00
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
    '2026-06-13T20:20:14+07:00'
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

-- 3103 | Butterscotch (M) | CASH | 2026-06-13T20:22:16+07:00
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
    '2026-06-13T20:22:16+07:00'
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

-- 3104 | Gula Aren (M) | CASH | 2026-06-13T20:27:17+07:00
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
    '2026-06-13T20:27:17+07:00'
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

-- 3105 | Butterscotch (M) | CASH | 2026-06-13T20:27:28+07:00
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
    '2026-06-13T20:27:28+07:00'
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

-- 3106 | Butterscotch (M) | CASH | 2026-06-13T20:27:40+07:00
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
    '2026-06-13T20:27:40+07:00'
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

-- 3107 | Butterscotch (M) | QRIS | 2026-06-13T20:42:49+07:00
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
    '2026-06-13T20:42:49+07:00'
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

-- 3108 | Baileys Latte (M) | QRIS | 2026-06-13T20:47:13+07:00
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
    '2026-06-13T20:47:13+07:00'
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

-- 3109 | Baileys Latte (M) | QRIS | 2026-06-13T21:00:45+07:00
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
    '2026-06-13T21:00:45+07:00'
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

-- 3110 | Gula Aren (M) | CASH | 2026-06-13T21:01:46+07:00
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
    '2026-06-13T21:01:46+07:00'
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

-- 3111 | Gula Aren (M) | CASH | 2026-06-13T21:11:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-13T21:11:16+07:00'
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

-- 3112 | Baileys Latte (M) | QRIS | 2026-06-13T21:18:50+07:00
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
    '2026-06-13T21:18:50+07:00'
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

-- 3113 | Hazelnut (M) | QRIS | 2026-06-13T21:18:56+07:00
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
    '2026-06-13T21:18:56+07:00'
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

-- 3114 | Butterscotch (M) | CASH | 2026-06-13T21:19:21+07:00
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
    '2026-06-13T21:19:21+07:00'
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

-- 3115 | Baileys Latte (M) | QRIS | 2026-06-13T21:19:28+07:00
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
    '2026-06-13T21:19:28+07:00'
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

-- 3116 | Baileys Latte (M) | GRATIS | 2026-06-13T21:25:37+07:00
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
    '2026-06-13T21:25:37+07:00'
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

-- 3117 | Baileys Latte (M) | CASH | 2026-06-13T21:28:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-13T21:28:59+07:00'
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

-- 3118 | Hazelnut (M) | CASH | 2026-06-13T21:34:02+07:00
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
    '2026-06-13T21:34:02+07:00'
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

-- 3119 | Vanilla (M) | CASH | 2026-06-13T21:34:10+07:00
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
    '2026-06-13T21:34:10+07:00'
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

-- 3120 | Butterscotch (M) | QRIS | 2026-06-13T21:40:43+07:00
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
    '2026-06-13T21:40:43+07:00'
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

-- 3121 | Butterscotch (M) | QRIS | 2026-06-13T21:44:08+07:00
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
    '2026-06-13T21:44:08+07:00'
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

-- 3122 | Butterscotch (M) | CASH | 2026-06-13T21:44:34+07:00
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
    '2026-06-13T21:44:34+07:00'
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

-- 3123 | Vanilla (M) | CASH | 2026-06-13T21:44:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-13T21:44:42+07:00'
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

-- 3124 | Butterscotch (M) | CASH | 2026-06-13T22:04:36+07:00
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
    '2026-06-13T22:04:36+07:00'
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

-- 3125 | Butterscotch (M) | QRIS | 2026-06-13T22:04:43+07:00
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
    '2026-06-13T22:04:43+07:00'
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

-- 3126 | Butterscotch (M) | CASH | 2026-06-13T22:10:04+07:00
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
    '2026-06-13T22:10:04+07:00'
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

-- 3127 | Gula Aren (M) | QRIS | 2026-06-13T22:16:03+07:00
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
    '2026-06-13T22:16:03+07:00'
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

-- 3128 | Gula Aren (M) | CASH | 2026-06-13T22:25:58+07:00
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
    '2026-06-13T22:25:58+07:00'
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

-- 3129 | Vanilla (M) | CASH | 2026-06-13T22:26:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-13T22:26:10+07:00'
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

-- 3130 | Baileys Latte (M) | CASH | 2026-06-13T22:26:21+07:00
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
    '2026-06-13T22:26:21+07:00'
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

-- 3131 | Butterscotch (M) | GRATIS | 2026-06-13T22:32:12+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-13T22:32:12+07:00'
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

-- 3132 | Butterscotch (M) | QRIS | 2026-06-13T22:32:23+07:00
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
    '2026-06-13T22:32:23+07:00'
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

-- 3133 | Butterscotch (M) | QRIS | 2026-06-13T22:32:29+07:00
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
    '2026-06-13T22:32:29+07:00'
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

-- 3134 | Baileys Latte (M) | CASH | 2026-06-13T22:32:59+07:00
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
    '2026-06-13T22:32:59+07:00'
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

-- 3135 | Baileys Latte (M) | CASH | 2026-06-13T22:33:08+07:00
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
    '2026-06-13T22:33:08+07:00'
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

-- 3136 | Butterscotch (M) | CASH | 2026-06-13T22:39:53+07:00
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
    '2026-06-13T22:39:53+07:00'
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

-- 3137 | Butterscotch (M) | QRIS | 2026-06-13T23:02:17+07:00
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
    '2026-06-13T23:02:17+07:00'
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

-- 3138 | Cold Brew (M) | QRIS | 2026-06-13T23:03:14+07:00
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
    '2026-06-13T23:03:14+07:00'
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

-- 3139 | Gula Aren (M) | QRIS | 2026-06-13T23:10:10+07:00
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
    '2026-06-13T23:10:10+07:00'
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

-- 3140 | Gula Aren (M) | CASH | 2026-06-13T23:11:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-13T23:11:14+07:00'
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

-- 3141 | Butterscotch (M) | CASH | 2026-06-13T23:11:33+07:00
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
    '2026-06-13T23:11:33+07:00'
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

-- 3142 | Salted Caramel (M) | CASH | 2026-06-13T23:11:44+07:00
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
    '2026-06-13T23:11:44+07:00'
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

-- 3143 | Cold Brew (M) | CASH | 2026-06-13T23:11:52+07:00
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
    '2026-06-13T23:11:52+07:00'
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

-- 3144 | Baileys Latte (M) | CASH | 2026-06-13T23:12:02+07:00
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
    '2026-06-13T23:12:02+07:00'
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

-- 3145 | Butterscotch (M) | CASH | 2026-06-13T23:29:38+07:00
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
    '2026-06-13T23:29:38+07:00'
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

-- 3146 | Baileys Latte (M) | QRIS | 2026-06-13T23:31:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-13T23:31:26+07:00'
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

-- 3147 | Salted Caramel (M) | QRIS | 2026-06-13T23:31:33+07:00
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
    '2026-06-13T23:31:33+07:00'
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

-- 3148 | Gula Aren (M) | QRIS | 2026-06-13T23:31:50+07:00
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
    '2026-06-13T23:31:50+07:00'
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

-- 3149 | Hazelnut (M) | CASH | 2026-06-13T23:32:47+07:00
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
    '2026-06-13T23:32:47+07:00'
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

-- 3150 | Gula Aren (M) | QRIS | 2026-06-13T23:32:48+07:00
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
    '2026-06-13T23:32:48+07:00'
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

-- 3151 | Butterscotch (M) | QRIS | 2026-06-13T23:32:49+07:00
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
    '2026-06-13T23:32:49+07:00'
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

-- 3152 | Butterscotch (M) | GRATIS | 2026-06-13T23:32:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-13T23:32:50+07:00'
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

-- 3153 | Gula Aren (M) | CASH | 2026-06-13T23:32:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-13T23:32:51+07:00'
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

-- 3154 | Butterscotch (M) | CASH | 2026-06-13T23:32:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-13T23:32:52+07:00'
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

-- 3155 | Vanilla (M) | CASH | 2026-06-13T23:32:53+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 5,
    0.00,
    35182.00,
    '2026-06-13T23:32:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  5,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 3156 | Salted Caramel (M) | CASH | 2026-06-13T23:32:54+07:00
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
    '2026-06-13T23:32:54+07:00'
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

-- 3157 | Hazelnut (M) | CASH | 2026-06-13T23:32:55+07:00
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
    '2026-06-13T23:32:55+07:00'
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

-- 3158 | Cold Brew (M) | CASH | 2026-06-13T23:32:56+07:00
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
    '2026-06-13T23:32:56+07:00'
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

-- 3159 | Baileys Latte (M) | CASH | 2026-06-13T23:32:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 8,
    0.00,
    54900.00,
    '2026-06-13T23:32:57+07:00'
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

-- 3160 | Gula Aren (M) | CASH | 2026-06-14T09:05:21+07:00
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
    '2026-06-14T09:05:21+07:00'
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

-- 3161 | Butterscotch (M) | CASH | 2026-06-14T08:56:55+07:00
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
    '2026-06-14T08:56:55+07:00'
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

-- 3162 | Gula Aren (M) | QRIS | 2026-06-14T09:03:05+07:00
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
    '2026-06-14T09:03:05+07:00'
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

-- 3163 | Baileys Latte (M) | QRIS | 2026-06-14T09:03:11+07:00
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
    '2026-06-14T09:03:11+07:00'
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

-- 3164 | Hazelnut (M) | CASH | 2026-06-14T09:32:29+07:00
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
    '2026-06-14T09:32:29+07:00'
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

-- 3165 | Gula Aren (M) | CASH | 2026-06-14T09:33:58+07:00
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
    '2026-06-14T09:33:58+07:00'
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

-- 3166 | Gula Aren (M) | QRIS | 2026-06-14T09:34:02+07:00
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
    '2026-06-14T09:34:02+07:00'
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

-- 3167 | Gula Aren (M) | CASH | 2026-06-14T10:00:34+07:00
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
    '2026-06-14T10:00:34+07:00'
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

-- 3168 | Gula Aren (M) | QRIS | 2026-06-14T10:06:06+07:00
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
    '2026-06-14T10:06:06+07:00'
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

-- 3169 | Salted Caramel (M) | QRIS | 2026-06-14T10:06:13+07:00
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
    '2026-06-14T10:06:13+07:00'
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

-- 3170 | Gula Aren (M) | CASH | 2026-06-14T10:06:21+07:00
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
    '2026-06-14T10:06:21+07:00'
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

-- 3171 | Butterscotch (M) | QRIS | 2026-06-14T10:19:09+07:00
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
    '2026-06-14T10:19:09+07:00'
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

-- 3172 | Gula Aren (M) | CASH | 2026-06-14T10:48:12+07:00
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
    '2026-06-14T10:48:12+07:00'
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

-- 3173 | Butterscotch (M) | QRIS | 2026-06-14T11:06:46+07:00
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
    '2026-06-14T11:06:46+07:00'
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

-- 3174 | Salted Caramel (M) | CASH | 2026-06-14T11:19:01+07:00
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
    '2026-06-14T11:19:01+07:00'
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

-- 3175 | Butterscotch (M) | CASH | 2026-06-14T11:27:10+07:00
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
    '2026-06-14T11:27:10+07:00'
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

-- 3176 | Vanilla (M) | QRIS | 2026-06-14T11:27:16+07:00
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
    '2026-06-14T11:27:16+07:00'
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

-- 3177 | Butterscotch (M) | QRIS | 2026-06-14T11:27:20+07:00
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
    '2026-06-14T11:27:20+07:00'
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

-- 3178 | Butterscotch (M) | CASH | 2026-06-14T11:27:54+07:00
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
    '2026-06-14T11:27:54+07:00'
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

-- 3179 | Gula Aren (M) | QRIS | 2026-06-14T11:33:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-14T11:33:16+07:00'
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

-- 3180 | Gula Aren (M) | CASH | 2026-06-14T11:33:27+07:00
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
    '2026-06-14T11:33:27+07:00'
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

-- 3181 | Gula Aren (M) | QRIS | 2026-06-14T11:38:57+07:00
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
    '2026-06-14T11:38:57+07:00'
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

-- 3182 | Butterscotch (M) | CASH | 2026-06-14T11:42:18+07:00
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
    '2026-06-14T11:42:18+07:00'
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

-- 3183 | Gula Aren (M) | CASH | 2026-06-14T11:53:03+07:00
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
    '2026-06-14T11:53:03+07:00'
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

-- 3184 | Gula Aren (M) | CASH | 2026-06-14T11:33:03+07:00
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
    '2026-06-14T11:33:03+07:00'
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

-- 3185 | Baileys Latte (M) | QRIS | 2026-06-14T11:39:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-14T11:39:43+07:00'
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

-- 3186 | Hazelnut (M) | QRIS | 2026-06-14T11:55:12+07:00
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
    '2026-06-14T11:55:12+07:00'
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

-- 3187 | Gula Aren (M) | QRIS | 2026-06-14T11:56:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-14T11:56:00+07:00'
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

-- 3188 | Vanilla (M) | QRIS | 2026-06-14T11:56:29+07:00
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
    '2026-06-14T11:56:29+07:00'
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

-- 3189 | Butterscotch (M) | CASH | 2026-06-14T11:58:28+07:00
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
    '2026-06-14T11:58:28+07:00'
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

-- 3190 | Baileys Latte (M) | QRIS | 2026-06-14T11:58:35+07:00
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
    '2026-06-14T11:58:35+07:00'
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

-- 3191 | Baileys Latte (M) | CASH | 2026-06-14T11:58:40+07:00
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
    '2026-06-14T11:58:40+07:00'
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

-- 3192 | Gula Aren (M) | CASH | 2026-06-14T12:00:12+07:00
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
    '2026-06-14T12:00:12+07:00'
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

-- 3193 | Gula Aren (M) | QRIS | 2026-06-14T12:13:02+07:00
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
    '2026-06-14T12:13:02+07:00'
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

-- 3194 | Vanilla (M) | QRIS | 2026-06-14T12:28:00+07:00
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
    '2026-06-14T12:28:00+07:00'
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

-- 3195 | Gula Aren (M) | CASH | 2026-06-14T12:42:25+07:00
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
    '2026-06-14T12:42:25+07:00'
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

-- 3196 | Salted Caramel (M) | CASH | 2026-06-14T12:42:31+07:00
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
    '2026-06-14T12:42:31+07:00'
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

-- 3197 | Butterscotch (M) | QRIS | 2026-06-14T12:43:02+07:00
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
    '2026-06-14T12:43:02+07:00'
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

-- 3198 | Gula Aren (M) | CASH | 2026-06-14T12:44:51+07:00
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
    '2026-06-14T12:44:51+07:00'
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

-- 3199 | Butterscotch (M) | CASH | 2026-06-14T12:46:02+07:00
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
    '2026-06-14T12:46:02+07:00'
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

-- 3200 | Gula Aren (M) | CASH | 2026-06-14T12:46:09+07:00
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
    '2026-06-14T12:46:09+07:00'
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

-- 3201 | Butterscotch (M) | QRIS | 2026-06-14T12:47:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-14T12:47:49+07:00'
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

-- 3202 | Baileys Latte (M) | QRIS | 2026-06-14T12:48:23+07:00
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
    '2026-06-14T12:48:23+07:00'
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

-- 3203 | Gula Aren (M) | QRIS | 2026-06-14T12:50:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-14T12:50:46+07:00'
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

-- 3204 | Gula Aren (M) | CASH | 2026-06-14T12:54:13+07:00
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
    '2026-06-14T12:54:13+07:00'
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

-- 3205 | Gula Aren (M) | QRIS | 2026-06-14T12:57:29+07:00
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
    '2026-06-14T12:57:29+07:00'
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

-- 3206 | Baileys Latte (M) | QRIS | 2026-06-14T12:57:36+07:00
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
    '2026-06-14T12:57:36+07:00'
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

-- 3207 | Butterscotch (M) | QRIS | 2026-06-14T13:03:42+07:00
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
    '2026-06-14T13:03:42+07:00'
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

-- 3208 | Baileys Latte (M) | QRIS | 2026-06-14T13:03:47+07:00
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
    '2026-06-14T13:03:47+07:00'
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

-- 3209 | Vanilla (M) | CASH | 2026-06-14T13:25:08+07:00
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
    '2026-06-14T13:25:08+07:00'
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

-- 3210 | Butterscotch (M) | QRIS | 2026-06-14T13:26:20+07:00
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
    '2026-06-14T13:26:20+07:00'
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

-- 3211 | Baileys Latte (M) | CASH | 2026-06-14T13:26:27+07:00
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
    '2026-06-14T13:26:27+07:00'
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

-- 3212 | Gula Aren (M) | CASH | 2026-06-14T13:26:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-14T13:26:36+07:00'
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

-- 3213 | Baileys Latte (M) | CASH | 2026-06-14T13:33:02+07:00
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
    '2026-06-14T13:33:02+07:00'
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

-- 3214 | Butterscotch (M) | CASH | 2026-06-14T13:38:27+07:00
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
    '2026-06-14T13:38:27+07:00'
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

-- 3215 | Butterscotch (M) | QRIS | 2026-06-14T13:38:33+07:00
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
    '2026-06-14T13:38:33+07:00'
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

-- 3216 | Baileys Latte (M) | QRIS | 2026-06-14T13:42:21+07:00
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
    '2026-06-14T13:42:21+07:00'
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

-- 3217 | Butterscotch (M) | QRIS | 2026-06-14T13:44:03+07:00
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
    '2026-06-14T13:44:03+07:00'
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

-- 3218 | Baileys Latte (M) | QRIS | 2026-06-14T13:44:37+07:00
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
    '2026-06-14T13:44:37+07:00'
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

-- 3219 | Baileys Latte (M) | CASH | 2026-06-14T13:45:16+07:00
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
    '2026-06-14T13:45:16+07:00'
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

-- 3220 | Gula Aren (M) | QRIS | 2026-06-14T13:45:22+07:00
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
    '2026-06-14T13:45:22+07:00'
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

-- 3221 | Salted Caramel (M) | CASH | 2026-06-14T13:48:57+07:00
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
    '2026-06-14T13:48:57+07:00'
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

-- 3222 | Gula Aren (M) | CASH | 2026-06-14T13:51:45+07:00
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
    '2026-06-14T13:51:45+07:00'
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

-- 3223 | Baileys Latte (M) | CASH | 2026-06-14T13:54:40+07:00
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
    '2026-06-14T13:54:40+07:00'
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

-- 3224 | Baileys Latte (M) | QRIS | 2026-06-14T13:58:16+07:00
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
    '2026-06-14T13:58:16+07:00'
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

-- 3225 | Gula Aren (M) | CASH | 2026-06-14T14:23:39+07:00
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
    '2026-06-14T14:23:39+07:00'
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

-- 3226 | Gula Aren (M) | CASH | 2026-06-14T14:29:21+07:00
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
    '2026-06-14T14:29:21+07:00'
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

-- 3227 | Baileys Latte (M) | QRIS | 2026-06-14T14:46:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-14T14:46:18+07:00'
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

-- 3228 | Baileys Latte (M) | CASH | 2026-06-14T14:46:25+07:00
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
    '2026-06-14T14:46:25+07:00'
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

-- 3229 | Vanilla (M) | CASH | 2026-06-14T14:51:14+07:00
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
    '2026-06-14T14:51:14+07:00'
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

-- 3230 | Gula Aren (M) | CASH | 2026-06-14T14:51:22+07:00
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
    '2026-06-14T14:51:22+07:00'
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

-- 3231 | Salted Caramel (M) | CASH | 2026-06-14T14:52:55+07:00
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
    '2026-06-14T14:52:55+07:00'
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

-- 3232 | Hazelnut (M) | CASH | 2026-06-14T14:53:01+07:00
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
    '2026-06-14T14:53:01+07:00'
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

-- 3233 | Baileys Latte (M) | QRIS | 2026-06-14T14:55:53+07:00
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
    '2026-06-14T14:55:53+07:00'
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

-- 3234 | Butterscotch (M) | CASH | 2026-06-14T14:56:10+07:00
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
    '2026-06-14T14:56:10+07:00'
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

-- 3235 | Hazelnut (M) | QRIS | 2026-06-14T14:56:09+07:00
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
    '2026-06-14T14:56:09+07:00'
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

-- 3236 | Butterscotch (M) | CASH | 2026-06-14T15:11:29+07:00
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
    '2026-06-14T15:11:29+07:00'
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

-- 3237 | Butterscotch (M) | CASH | 2026-06-14T15:11:34+07:00
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
    '2026-06-14T15:11:34+07:00'
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

-- 3238 | Salted Caramel (M) | CASH | 2026-06-14T15:11:38+07:00
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
    '2026-06-14T15:11:38+07:00'
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

-- 3239 | Baileys Latte (M) | CASH | 2026-06-14T15:14:22+07:00
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
    '2026-06-14T15:14:22+07:00'
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

-- 3240 | Butterscotch (M) | QRIS | 2026-06-14T15:15:49+07:00
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
    '2026-06-14T15:15:49+07:00'
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

-- 3241 | Baileys Latte (M) | QRIS | 2026-06-14T15:16:30+07:00
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
    '2026-06-14T15:16:30+07:00'
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

-- 3242 | Vanilla (M) | CASH | 2026-06-14T15:16:35+07:00
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
    '2026-06-14T15:16:35+07:00'
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

-- 3243 | Baileys Latte (M) | QRIS | 2026-06-14T15:20:12+07:00
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
    '2026-06-14T15:20:12+07:00'
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

-- 3244 | Butterscotch (M) | CASH | 2026-06-14T15:22:30+07:00
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
    '2026-06-14T15:22:30+07:00'
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

-- 3245 | Gula Aren (M) | CASH | 2026-06-14T15:27:59+07:00
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
    '2026-06-14T15:27:59+07:00'
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

-- 3246 | Baileys Latte (M) | CASH | 2026-06-14T15:50:38+07:00
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
    '2026-06-14T15:50:38+07:00'
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

-- 3247 | Butterscotch (M) | QRIS | 2026-06-14T15:57:09+07:00
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
    '2026-06-14T15:57:09+07:00'
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

-- 3248 | Baileys Latte (M) | QRIS | 2026-06-14T15:57:55+07:00
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
    '2026-06-14T15:57:55+07:00'
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

-- 3249 | Butterscotch (M) | CASH | 2026-06-14T15:57:49+07:00
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
    '2026-06-14T15:57:49+07:00'
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

-- 3250 | Butterscotch (M) | QRIS | 2026-06-14T16:05:12+07:00
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
    '2026-06-14T16:05:12+07:00'
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

-- 3251 | Gula Aren (M) | QRIS | 2026-06-14T16:08:40+07:00
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
    '2026-06-14T16:08:40+07:00'
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

-- 3252 | Baileys Latte (M) | QRIS | 2026-06-14T16:08:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-14T16:08:45+07:00'
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

-- 3253 | Salted Caramel (M) | QRIS | 2026-06-14T16:13:29+07:00
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
    '2026-06-14T16:13:29+07:00'
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

-- 3254 | Butterscotch (M) | QRIS | 2026-06-14T16:38:04+07:00
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
    '2026-06-14T16:38:04+07:00'
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

-- 3255 | Butterscotch (M) | CASH | 2026-06-14T16:41:46+07:00
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
    '2026-06-14T16:41:46+07:00'
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

-- 3256 | Butterscotch (M) | GRATIS | 2026-06-14T16:44:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-14T16:44:47+07:00'
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

-- 3257 | Butterscotch (M) | CASH | 2026-06-14T16:44:56+07:00
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
    '2026-06-14T16:44:56+07:00'
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

-- 3258 | Baileys Latte (M) | CASH | 2026-06-14T16:45:02+07:00
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
    '2026-06-14T16:45:02+07:00'
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

-- 3259 | Salted Caramel (M) | QRIS | 2026-06-14T16:51:19+07:00
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
    '2026-06-14T16:51:19+07:00'
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

-- 3260 | Butterscotch (M) | CASH | 2026-06-14T17:08:35+07:00
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
    '2026-06-14T17:08:35+07:00'
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

-- 3261 | Salted Caramel (M) | CASH | 2026-06-14T17:15:06+07:00
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
    '2026-06-14T17:15:06+07:00'
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

-- 3262 | Baileys Latte (M) | CASH | 2026-06-14T17:15:15+07:00
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
    '2026-06-14T17:15:15+07:00'
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

-- 3263 | Gula Aren (M) | CASH | 2026-06-14T17:16:02+07:00
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
    '2026-06-14T17:16:02+07:00'
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

-- 3264 | Baileys Latte (M) | GRATIS | 2026-06-14T17:37:00+07:00
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
    '2026-06-14T17:37:00+07:00'
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

-- 3265 | Vanilla (M) | CASH | 2026-06-14T17:37:06+07:00
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
    '2026-06-14T17:37:06+07:00'
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

-- 3266 | Hazelnut (M) | CASH | 2026-06-14T17:37:11+07:00
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
    '2026-06-14T17:37:11+07:00'
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

-- 3267 | Hazelnut (M) | QRIS | 2026-06-14T17:42:37+07:00
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
    '2026-06-14T17:42:37+07:00'
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

-- 3268 | Vanilla (M) | CASH | 2026-06-14T17:43:00+07:00
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
    '2026-06-14T17:43:00+07:00'
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

-- 3269 | Salted Caramel (M) | CASH | 2026-06-14T17:47:15+07:00
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
    '2026-06-14T17:47:15+07:00'
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

-- 3270 | Vanilla (M) | CASH | 2026-06-14T17:55:05+07:00
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
    '2026-06-14T17:55:05+07:00'
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

-- 3271 | Hazelnut (M) | CASH | 2026-06-14T17:55:11+07:00
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
    '2026-06-14T17:55:11+07:00'
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

-- 3272 | Baileys Latte (M) | CASH | 2026-06-14T18:01:44+07:00
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
    '2026-06-14T18:01:44+07:00'
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

-- 3273 | Gula Aren (M) | CASH | 2026-06-14T18:01:57+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-14T18:01:57+07:00'
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

-- 3274 | Butterscotch (M) | CASH | 2026-06-14T18:03:38+07:00
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
    '2026-06-14T18:03:38+07:00'
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

-- 3275 | Baileys Latte (M) | QRIS | 2026-06-14T18:06:38+07:00
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
    '2026-06-14T18:06:38+07:00'
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

-- 3276 | Baileys Latte (M) | CASH | 2026-06-14T18:06:47+07:00
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
    '2026-06-14T18:06:47+07:00'
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

-- 3277 | Butterscotch (M) | CASH | 2026-06-14T18:07:05+07:00
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
    '2026-06-14T18:07:05+07:00'
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

-- 3278 | Baileys Latte (M) | QRIS | 2026-06-14T18:09:50+07:00
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
    '2026-06-14T18:09:50+07:00'
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

-- 3279 | Butterscotch (M) | QRIS | 2026-06-14T18:11:45+07:00
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
    '2026-06-14T18:11:45+07:00'
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

-- 3280 | Butterscotch (M) | CASH | 2026-06-14T18:41:14+07:00
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
    '2026-06-14T18:41:14+07:00'
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

-- 3281 | Gula Aren (M) | CASH | 2026-06-14T18:41:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:41:31+07:00'
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

-- 3282 | Gula Aren (M) | CASH | 2026-06-14T18:41:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:41:48+07:00'
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

-- 3283 | Gula Aren (M) | CASH | 2026-06-14T18:42:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-14T18:42:05+07:00'
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

-- 3284 | Baileys Latte (M) | CASH | 2026-06-14T18:42:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:42:24+07:00'
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

-- 3285 | Salted Caramel (M) | CASH | 2026-06-14T18:42:36+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:42:36+07:00'
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

-- 3286 | Vanilla (M) | CASH | 2026-06-14T18:42:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:42:43+07:00'
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

-- 3287 | Gula Aren (M) | CASH | 2026-06-14T18:42:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:42:58+07:00'
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

-- 3288 | Butterscotch (M) | QRIS | 2026-06-14T18:43:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:43:15+07:00'
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

-- 3289 | Gula Aren (M) | CASH | 2026-06-14T18:43:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:43:29+07:00'
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

-- 3290 | Baileys Latte (M) | QRIS | 2026-06-14T18:43:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:43:43+07:00'
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

-- 3291 | Butterscotch (M) | QRIS | 2026-06-14T18:43:59+07:00
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
    '2026-06-14T18:43:59+07:00'
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

-- 3292 | Butterscotch (M) | QRIS | 2026-06-14T18:44:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:44:01+07:00'
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

-- 3293 | Hazelnut (M) | CASH | 2026-06-14T18:44:09+07:00
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
    '2026-06-14T18:44:09+07:00'
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

-- 3294 | Salted Caramel (M) | QRIS | 2026-06-14T18:44:09+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:44:09+07:00'
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

-- 3295 | Baileys Latte (M) | QRIS | 2026-06-14T18:44:16+07:00
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
    '2026-06-14T18:44:16+07:00'
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

-- 3296 | Cold Brew (M) | CASH | 2026-06-14T18:44:27+07:00
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
    '2026-06-14T18:44:27+07:00'
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

-- 3297 | Baileys Latte (M) | CASH | 2026-06-14T18:44:30+07:00
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
    '2026-06-14T18:44:30+07:00'
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

-- 3298 | Gula Aren (M) | QRIS | 2026-06-14T18:44:39+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:44:39+07:00'
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

-- 3299 | Gula Aren (M) | CASH | 2026-06-14T18:44:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-14T18:44:51+07:00'
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

-- 3300 | Baileys Latte (M) | CASH | 2026-06-14T18:45:02+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:45:02+07:00'
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

-- 3301 | Cold Brew (M) | CASH | 2026-06-14T18:45:18+07:00
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
    '2026-06-14T18:45:18+07:00'
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

-- 3302 | Butterscotch (M) | QRIS | 2026-06-14T18:45:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:45:32+07:00'
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

-- 3303 | Gula Aren (M) | CASH | 2026-06-14T18:45:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-14T18:45:40+07:00'
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

-- 3304 | Vanilla (M) | CASH | 2026-06-14T18:45:48+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:45:48+07:00'
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

-- 3305 | Butterscotch (M) | CASH | 2026-06-14T18:46:03+07:00
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
    '2026-06-14T18:46:03+07:00'
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

-- 3306 | Baileys Latte (M) | CASH | 2026-06-14T18:46:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:46:10+07:00'
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

-- 3307 | Butterscotch (M) | CASH | 2026-06-14T18:46:21+07:00
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
    '2026-06-14T18:46:21+07:00'
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

-- 3308 | Butterscotch (M) | QRIS | 2026-06-14T18:46:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-14T18:46:32+07:00'
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

-- 3309 | Butterscotch (M) | CASH | 2026-06-14T18:46:42+07:00
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
    '2026-06-14T18:46:42+07:00'
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

-- 3310 | Vanilla (M) | CASH | 2026-06-14T18:46:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:46:56+07:00'
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

-- 3311 | Butterscotch (M) | CASH | 2026-06-14T18:47:07+07:00
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
    '2026-06-14T18:47:07+07:00'
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

-- 3312 | Hazelnut (M) | CASH | 2026-06-14T18:47:12+07:00
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
    '2026-06-14T18:47:12+07:00'
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

-- 3313 | Butterscotch (M) | CASH | 2026-06-14T18:47:23+07:00
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
    '2026-06-14T18:47:23+07:00'
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

-- 3314 | Hazelnut (M) | CASH | 2026-06-14T18:47:45+07:00
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
    '2026-06-14T18:47:45+07:00'
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

-- 3315 | Butterscotch (M) | QRIS | 2026-06-14T18:48:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:48:00+07:00'
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

-- 3316 | Butterscotch (M) | CASH | 2026-06-14T18:48:34+07:00
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
    '2026-06-14T18:48:34+07:00'
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

-- 3317 | Baileys Latte (M) | CASH | 2026-06-14T18:48:42+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:48:42+07:00'
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

-- 3318 | Baileys Latte (M) | CASH | 2026-06-14T18:49:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:49:01+07:00'
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

-- 3319 | Baileys Latte (M) | CASH | 2026-06-14T18:49:21+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:49:21+07:00'
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

-- 3320 | Butterscotch (M) | CASH | 2026-06-14T18:49:35+07:00
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
    '2026-06-14T18:49:35+07:00'
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

-- 3321 | Butterscotch (M) | CASH | 2026-06-14T18:49:57+07:00
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
    '2026-06-14T18:49:57+07:00'
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

-- 3322 | Butterscotch (M) | CASH | 2026-06-14T18:50:07+07:00
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
    '2026-06-14T18:50:07+07:00'
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

-- 3323 | Baileys Latte (M) | CASH | 2026-06-14T18:50:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-14T18:50:16+07:00'
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

-- 3324 | Butterscotch (M) | CASH | 2026-06-14T18:50:28+07:00
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
    '2026-06-14T18:50:28+07:00'
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

-- 3325 | Baileys Latte (M) | GRATIS | 2026-06-14T18:50:40+07:00
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
    '2026-06-14T18:50:40+07:00'
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

-- 3326 | Salted Caramel (M) | CASH | 2026-06-14T18:52:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-14T18:52:01+07:00'
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

-- 3327 | Butterscotch (M) | QRIS | 2026-06-14T18:59:44+07:00
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
    '2026-06-14T18:59:44+07:00'
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

-- 3328 | Baileys 1 ltr | QRIS | 2026-06-14T19:41:54+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b773d1d6-a92e-457d-ba1a-12ea12929de0')) * 1,
    0.00,
    39262.00,
    '2026-06-14T19:41:54+07:00'
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

-- 3329 | Hazelnut (M) | GRATIS | 2026-06-14T20:08:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    0.00,
    '2026-06-14T20:08:04+07:00'
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

-- 3330 | Baileys Latte (M) | GRATIS | 2026-06-14T20:14:11+07:00
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
    '2026-06-14T20:14:11+07:00'
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

-- 3331 | Hazelnut (M) | CASH | 2026-06-14T20:14:20+07:00
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
    '2026-06-14T20:14:20+07:00'
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

-- 3332 | Vanilla (M) | CASH | 2026-06-14T20:15:26+07:00
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
    '2026-06-14T20:15:26+07:00'
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

-- 3333 | Butterscotch (M) | CASH | 2026-06-14T20:17:19+07:00
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
    '2026-06-14T20:17:19+07:00'
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

-- 3334 | Baileys Latte (M) | CASH | 2026-06-14T20:17:25+07:00
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
    '2026-06-14T20:17:25+07:00'
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

-- 3335 | Baileys Latte (M) | QRIS | 2026-06-14T20:35:13+07:00
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
    '2026-06-14T20:35:13+07:00'
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

-- 3336 | Baileys Latte (M) | CASH | 2026-06-14T20:40:45+07:00
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
    '2026-06-14T20:40:45+07:00'
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

-- 3337 | Butterscotch (M) | QRIS | 2026-06-14T21:08:47+07:00
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
    '2026-06-14T21:08:47+07:00'
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

-- 3338 | Baileys Latte (M) | QRIS | 2026-06-14T21:08:54+07:00
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
    '2026-06-14T21:08:54+07:00'
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

-- 3339 | Butterscotch (M) | CASH | 2026-06-14T21:58:36+07:00
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
    '2026-06-14T21:58:36+07:00'
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

-- 3340 | Gula Aren (M) | QRIS | 2026-06-14T22:58:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-14T22:58:59+07:00'
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

-- 3341 | Butterscotch (M) | QRIS | 2026-06-14T22:59:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    162500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 13,
    0.00,
    91473.00,
    '2026-06-14T22:59:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  13,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 3342 | Butterscotch (M) | GRATIS | 2026-06-14T22:59:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-14T22:59:17+07:00'
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

-- 3343 | Gula Aren (M) | CASH | 2026-06-14T22:59:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    72000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 9,
    0.00,
    32362.00,
    '2026-06-14T22:59:43+07:00'
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

-- 3344 | Butterscotch (M) | CASH | 2026-06-14T22:59:52+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-14T22:59:52+07:00'
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

-- 3345 | Vanilla (M) | CASH | 2026-06-14T22:59:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 4,
    0.00,
    28146.00,
    '2026-06-14T22:59:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '3fd1ac8f-a004-485c-82b5-a196a1e0364d',
  4,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')
FROM inserted_sale;

-- 3346 | Salted Caramel (M) | CASH | 2026-06-14T23:00:07+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-14T23:00:07+07:00'
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

-- 3347 | Hazelnut (M) | CASH | 2026-06-14T23:00:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 4,
    0.00,
    28146.00,
    '2026-06-14T23:00:14+07:00'
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

-- 3348 | Baileys Latte (M) | CASH | 2026-06-14T23:00:22+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    162500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 13,
    0.00,
    89212.00,
    '2026-06-14T23:00:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  13,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 3349 | Gula Aren (M) | CASH | 2026-06-15T08:53:14+07:00
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
    '2026-06-15T08:53:14+07:00'
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

-- 3350 | Butterscotch (M) | CASH | 2026-06-15T08:53:18+07:00
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
    '2026-06-15T08:53:18+07:00'
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

-- 3351 | Hazelnut (M) | CASH | 2026-06-15T09:10:36+07:00
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
    '2026-06-15T09:10:36+07:00'
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

-- 3352 | Butterscotch (M) | QRIS | 2026-06-15T09:24:39+07:00
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
    '2026-06-15T09:24:39+07:00'
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

-- 3353 | Baileys Latte (M) | CASH | 2026-06-15T09:28:35+07:00
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
    '2026-06-15T09:28:35+07:00'
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

-- 3354 | Gula Aren (M) | QRIS | 2026-06-15T09:41:30+07:00
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
    '2026-06-15T09:41:30+07:00'
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

-- 3355 | Cold Brew (M) | QRIS | 2026-06-15T10:14:26+07:00
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
    '2026-06-15T10:14:26+07:00'
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

-- 3356 | Gula Aren (M) | CASH | 2026-06-15T10:49:11+07:00
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
    '2026-06-15T10:49:11+07:00'
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

-- 3357 | Gula Aren (M) | QRIS | 2026-06-15T11:08:56+07:00
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
    '2026-06-15T11:08:56+07:00'
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

-- 3358 | Butterscotch (M) | CASH | 2026-06-15T11:12:25+07:00
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
    '2026-06-15T11:12:25+07:00'
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

-- 3359 | Baileys Latte (M) | CASH | 2026-06-15T11:12:30+07:00
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
    '2026-06-15T11:12:30+07:00'
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

-- 3360 | Gula Aren (M) | CASH | 2026-06-15T11:12:51+07:00
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
    '2026-06-15T11:12:51+07:00'
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

-- 3361 | Gula Aren (M) | QRIS | 2026-06-15T11:13:14+07:00
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
    '2026-06-15T11:13:14+07:00'
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

-- 3362 | Butterscotch (M) | QRIS | 2026-06-15T11:13:38+07:00
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
    '2026-06-15T11:13:38+07:00'
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

-- 3363 | Gula Aren (M) | QRIS | 2026-06-15T11:13:54+07:00
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
    '2026-06-15T11:13:54+07:00'
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

-- 3364 | Butterscotch (M) | QRIS | 2026-06-15T11:14:43+07:00
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
    '2026-06-15T11:14:43+07:00'
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

-- 3365 | Baileys Latte (M) | CASH | 2026-06-15T11:15:06+07:00
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
    '2026-06-15T11:15:06+07:00'
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

-- 3366 | Gula Aren (M) | QRIS | 2026-06-15T11:15:23+07:00
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
    '2026-06-15T11:15:23+07:00'
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

-- 3367 | Baileys Latte (M) | QRIS | 2026-06-15T11:15:39+07:00
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
    '2026-06-15T11:15:39+07:00'
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

-- 3368 | Gula Aren (M) | CASH | 2026-06-15T11:16:03+07:00
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
    '2026-06-15T11:16:03+07:00'
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

-- 3369 | Gula Aren (M) | QRIS | 2026-06-15T11:18:38+07:00
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
    '2026-06-15T11:18:38+07:00'
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

-- 3370 | Gula Aren (M) | CASH | 2026-06-15T11:18:55+07:00
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
    '2026-06-15T11:18:55+07:00'
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

-- 3371 | Butterscotch (M) | CASH | 2026-06-15T11:20:40+07:00
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
    '2026-06-15T11:20:40+07:00'
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

-- 3372 | Baileys Latte (M) | QRIS | 2026-06-15T11:20:46+07:00
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
    '2026-06-15T11:20:46+07:00'
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

-- 3373 | Butterscotch (M) | QRIS | 2026-06-15T11:22:25+07:00
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
    '2026-06-15T11:22:25+07:00'
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

-- 3374 | Butterscotch (M) | QRIS | 2026-06-15T11:27:14+07:00
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
    '2026-06-15T11:27:14+07:00'
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

-- 3375 | Gula Aren (M) | CASH | 2026-06-15T11:29:00+07:00
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
    '2026-06-15T11:29:00+07:00'
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

-- 3376 | Baileys Latte (M) | QRIS | 2026-06-15T11:29:49+07:00
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
    '2026-06-15T11:29:49+07:00'
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

-- 3377 | Gula Aren (M) | QRIS | 2026-06-15T11:30:51+07:00
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
    '2026-06-15T11:30:51+07:00'
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

-- 3378 | Cold Brew (M) | CASH | 2026-06-15T11:35:05+07:00
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
    '2026-06-15T11:35:05+07:00'
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

-- 3379 | Vanilla (M) | CASH | 2026-06-15T11:35:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-15T11:35:14+07:00'
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

-- 3380 | Butterscotch (M) | CASH | 2026-06-15T11:41:41+07:00
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
    '2026-06-15T11:41:41+07:00'
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

-- 3381 | Gula Aren (M) | CASH | 2026-06-15T11:46:26+07:00
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
    '2026-06-15T11:46:26+07:00'
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

-- 3382 | Vanilla (M) | CASH | 2026-06-15T11:46:32+07:00
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
    '2026-06-15T11:46:32+07:00'
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

-- 3383 | Hazelnut (M) | CASH | 2026-06-15T11:46:29+07:00
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
    '2026-06-15T11:46:29+07:00'
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

-- 3384 | Cold Brew (M) | CASH | 2026-06-15T11:46:36+07:00
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
    '2026-06-15T11:46:36+07:00'
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

-- 3385 | Gula Aren (M) | QRIS | 2026-06-15T11:46:41+07:00
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
    '2026-06-15T11:46:41+07:00'
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

-- 3386 | Butterscotch (M) | CASH | 2026-06-15T11:48:00+07:00
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
    '2026-06-15T11:48:00+07:00'
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

-- 3387 | Butterscotch (M) | CASH | 2026-06-15T11:48:10+07:00
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
    '2026-06-15T11:48:10+07:00'
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

-- 3388 | Gula Aren (M) | QRIS | 2026-06-15T11:50:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-15T11:50:45+07:00'
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

-- 3389 | Cold Brew (M) | QRIS | 2026-06-15T11:51:04+07:00
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
    '2026-06-15T11:51:04+07:00'
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

-- 3390 | Butterscotch (M) | CASH | 2026-06-15T12:06:50+07:00
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
    '2026-06-15T12:06:50+07:00'
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

-- 3391 | Butterscotch (M) | QRIS | 2026-06-15T12:06:56+07:00
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
    '2026-06-15T12:06:56+07:00'
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

-- 3392 | Hazelnut (M) | CASH | 2026-06-15T12:08:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 4,
    0.00,
    28146.00,
    '2026-06-15T12:08:55+07:00'
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

-- 3393 | Butterscotch (M) | QRIS | 2026-06-15T12:15:23+07:00
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
    '2026-06-15T12:15:23+07:00'
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

-- 3394 | Gula Aren (M) | QRIS | 2026-06-15T12:15:29+07:00
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
    '2026-06-15T12:15:29+07:00'
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

-- 3395 | Gula Aren (M) | CASH | 2026-06-15T12:15:34+07:00
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
    '2026-06-15T12:15:34+07:00'
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

-- 3396 | Gula Aren (M) | QRIS | 2026-06-15T12:18:54+07:00
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
    '2026-06-15T12:18:54+07:00'
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

-- 3397 | Salted Caramel (M) | QRIS | 2026-06-15T12:19:10+07:00
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
    '2026-06-15T12:19:10+07:00'
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

-- 3398 | Baileys Latte (M) | QRIS | 2026-06-15T12:19:21+07:00
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
    '2026-06-15T12:19:21+07:00'
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

-- 3399 | Butterscotch (M) | QRIS | 2026-06-15T12:19:28+07:00
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
    '2026-06-15T12:19:28+07:00'
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

-- 3400 | Butterscotch (M) | CASH | 2026-06-15T12:20:22+07:00
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
    '2026-06-15T12:20:22+07:00'
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

-- 3401 | Gula Aren (M) | QRIS | 2026-06-15T12:22:39+07:00
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
    '2026-06-15T12:22:39+07:00'
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

-- 3402 | Butterscotch (M) | QRIS | 2026-06-15T12:25:21+07:00
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
    '2026-06-15T12:25:21+07:00'
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

-- 3403 | Gula Aren (M) | CASH | 2026-06-15T12:25:43+07:00
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
    '2026-06-15T12:25:43+07:00'
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

-- 3404 | Salted Caramel (M) | CASH | 2026-06-15T12:28:58+07:00
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
    '2026-06-15T12:28:58+07:00'
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

-- 3405 | Gula Aren (M) | CASH | 2026-06-15T12:29:47+07:00
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
    '2026-06-15T12:29:47+07:00'
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

-- 3406 | Gula Aren (M) | QRIS | 2026-06-15T12:32:26+07:00
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
    '2026-06-15T12:32:26+07:00'
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

-- 3407 | Gula Aren (M) | CASH | 2026-06-15T12:34:13+07:00
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
    '2026-06-15T12:34:13+07:00'
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

-- 3408 | Butterscotch (M) | QRIS | 2026-06-15T12:34:17+07:00
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
    '2026-06-15T12:34:17+07:00'
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

-- 3409 | Butterscotch (M) | QRIS | 2026-06-15T12:41:02+07:00
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
    '2026-06-15T12:41:02+07:00'
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

-- 3410 | Butterscotch (M) | CASH | 2026-06-15T12:45:10+07:00
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
    '2026-06-15T12:45:10+07:00'
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

-- 3411 | Salted Caramel (M) | CASH | 2026-06-15T12:45:15+07:00
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
    '2026-06-15T12:45:15+07:00'
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

-- 3412 | Gula Aren (M) | QRIS | 2026-06-15T12:56:01+07:00
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
    '2026-06-15T12:56:01+07:00'
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

-- 3413 | Baileys Latte (M) | QRIS | 2026-06-15T12:56:06+07:00
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
    '2026-06-15T12:56:06+07:00'
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

-- 3414 | Gula Aren (M) | QRIS | 2026-06-15T12:55:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-15T12:55:38+07:00'
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

-- 3415 | Vanilla (M) | CASH | 2026-06-15T12:57:55+07:00
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
    '2026-06-15T12:57:55+07:00'
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

-- 3416 | Butterscotch (M) | QRIS | 2026-06-15T12:58:00+07:00
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
    '2026-06-15T12:58:00+07:00'
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

-- 3417 | Butterscotch (M) | CASH | 2026-06-15T13:01:50+07:00
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
    '2026-06-15T13:01:50+07:00'
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

-- 3418 | Gula Aren (M) | QRIS | 2026-06-15T13:02:43+07:00
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
    '2026-06-15T13:02:43+07:00'
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

-- 3419 | Butterscotch (M) | CASH | 2026-06-15T13:03:58+07:00
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
    '2026-06-15T13:03:58+07:00'
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

-- 3420 | Cold Brew (M) | QRIS | 2026-06-15T13:07:46+07:00
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
    '2026-06-15T13:07:46+07:00'
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

-- 3421 | Butterscotch (M) | QRIS | 2026-06-15T13:07:53+07:00
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
    '2026-06-15T13:07:53+07:00'
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

-- 3422 | Baileys Latte (M) | CASH | 2026-06-15T13:09:54+07:00
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
    '2026-06-15T13:09:54+07:00'
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

-- 3423 | Baileys Latte (M) | QRIS | 2026-06-15T13:11:38+07:00
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
    '2026-06-15T13:11:38+07:00'
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

-- 3424 | Baileys Latte (M) | QRIS | 2026-06-15T13:11:51+07:00
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
    '2026-06-15T13:11:51+07:00'
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

-- 3425 | Gula Aren (M) | CASH | 2026-06-15T13:19:15+07:00
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
    '2026-06-15T13:19:15+07:00'
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

-- 3426 | Cold Brew (M) | CASH | 2026-06-15T13:19:28+07:00
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
    '2026-06-15T13:19:28+07:00'
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

-- 3427 | Butterscotch (M) | QRIS | 2026-06-15T13:22:36+07:00
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
    '2026-06-15T13:22:36+07:00'
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

-- 3428 | Gula Aren (M) | QRIS | 2026-06-15T13:22:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-15T13:22:44+07:00'
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

-- 3429 | Gula Aren (M) | CASH | 2026-06-15T13:26:10+07:00
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
    '2026-06-15T13:26:10+07:00'
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

-- 3430 | Butterscotch (M) | CASH | 2026-06-15T13:27:17+07:00
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
    '2026-06-15T13:27:17+07:00'
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

-- 3431 | Baileys Latte (M) | CASH | 2026-06-15T13:27:22+07:00
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
    '2026-06-15T13:27:22+07:00'
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

-- 3432 | Cold Brew (M) | CASH | 2026-06-15T13:27:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    10000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    5362.00,
    '2026-06-15T13:27:31+07:00'
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

-- 3433 | Salted Caramel (M) | CASH | 2026-06-15T13:27:27+07:00
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
    '2026-06-15T13:27:27+07:00'
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

-- 3434 | Butterscotch (M) | CASH | 2026-06-15T13:32:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-15T13:32:19+07:00'
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

-- 3435 | Gula Aren (M) | QRIS | 2026-06-15T13:34:15+07:00
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
    '2026-06-15T13:34:15+07:00'
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

-- 3436 | Baileys Latte (M) | QRIS | 2026-06-15T13:35:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-15T13:35:46+07:00'
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

-- 3437 | Hazelnut (M) | QRIS | 2026-06-15T13:35:01+07:00
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
    '2026-06-15T13:35:01+07:00'
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

-- 3438 | Gula Aren (M) | QRIS | 2026-06-15T13:42:49+07:00
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
    '2026-06-15T13:42:49+07:00'
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

-- 3439 | Butterscotch (M) | CASH | 2026-06-15T13:46:25+07:00
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
    '2026-06-15T13:46:25+07:00'
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

-- 3440 | Butterscotch (M) | CASH | 2026-06-15T13:48:53+07:00
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
    '2026-06-15T13:48:53+07:00'
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

-- 3441 | Gula Aren (M) | QRIS | 2026-06-15T13:49:05+07:00
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
    '2026-06-15T13:49:05+07:00'
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

-- 3442 | Butterscotch (M) | QRIS | 2026-06-15T13:49:22+07:00
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
    '2026-06-15T13:49:22+07:00'
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

-- 3443 | Vanilla (M) | QRIS | 2026-06-15T13:49:50+07:00
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
    '2026-06-15T13:49:50+07:00'
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

-- 3444 | Gula Aren (M) | QRIS | 2026-06-15T13:51:17+07:00
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
    '2026-06-15T13:51:17+07:00'
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

-- 3445 | Gula Aren (M) | CASH | 2026-06-15T13:54:31+07:00
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
    '2026-06-15T13:54:31+07:00'
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

-- 3446 | Salted Caramel (M) | QRIS | 2026-06-15T13:56:04+07:00
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
    '2026-06-15T13:56:04+07:00'
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

-- 3447 | Gula Aren (M) | CASH | 2026-06-15T13:59:08+07:00
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
    '2026-06-15T13:59:08+07:00'
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

-- 3448 | Cold Brew (M) | QRIS | 2026-06-15T13:59:42+07:00
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
    '2026-06-15T13:59:42+07:00'
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

-- 3449 | Salted Caramel (M) | QRIS | 2026-06-15T14:00:11+07:00
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
    '2026-06-15T14:00:11+07:00'
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

-- 3450 | Butterscotch (M) | QRIS | 2026-06-15T14:00:44+07:00
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
    '2026-06-15T14:00:44+07:00'
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

-- 3451 | Butterscotch (M) | CASH | 2026-06-15T14:06:24+07:00
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
    '2026-06-15T14:06:24+07:00'
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

-- 3452 | Butterscotch (M) | CASH | 2026-06-15T14:07:04+07:00
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
    '2026-06-15T14:07:04+07:00'
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

-- 3453 | Baileys Latte (M) | CASH | 2026-06-15T14:06:33+07:00
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
    '2026-06-15T14:06:33+07:00'
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

-- 3454 | Salted Caramel (M) | CASH | 2026-06-15T14:06:42+07:00
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
    '2026-06-15T14:06:42+07:00'
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

-- 3455 | Baileys Latte (M) | QRIS | 2026-06-15T14:15:08+07:00
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
    '2026-06-15T14:15:08+07:00'
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

-- 3456 | Gula Aren (M) | QRIS | 2026-06-15T14:15:43+07:00
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
    '2026-06-15T14:15:43+07:00'
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

-- 3457 | Butterscotch (M) | CASH | 2026-06-15T14:40:42+07:00
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
    '2026-06-15T14:40:42+07:00'
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

-- 3458 | Salted Caramel (M) | CASH | 2026-06-15T14:46:11+07:00
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
    '2026-06-15T14:46:11+07:00'
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

-- 3459 | Baileys Latte (M) | QRIS | 2026-06-15T14:46:16+07:00
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
    '2026-06-15T14:46:16+07:00'
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

-- 3460 | Gula Aren (M) | CASH | 2026-06-15T14:46:42+07:00
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
    '2026-06-15T14:46:42+07:00'
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

-- 3461 | Vanilla (M) | CASH | 2026-06-15T14:46:48+07:00
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
    '2026-06-15T14:46:48+07:00'
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

-- 3462 | Salted Caramel (M) | QRIS | 2026-06-15T14:46:55+07:00
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
    '2026-06-15T14:46:55+07:00'
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

-- 3463 | Hazelnut (M) | QRIS | 2026-06-15T14:47:01+07:00
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
    '2026-06-15T14:47:01+07:00'
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

-- 3464 | Gula Aren (M) | CASH | 2026-06-15T14:50:25+07:00
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
    '2026-06-15T14:50:25+07:00'
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

-- 3465 | Butterscotch (M) | QRIS | 2026-06-15T14:53:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-15T14:53:38+07:00'
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

-- 3466 | Salted Caramel (M) | CASH | 2026-06-15T14:55:35+07:00
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
    '2026-06-15T14:55:35+07:00'
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

-- 3467 | Hazelnut (M) | CASH | 2026-06-15T14:55:43+07:00
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
    '2026-06-15T14:55:43+07:00'
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

-- 3468 | Butterscotch (M) | QRIS | 2026-06-15T14:58:26+07:00
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
    '2026-06-15T14:58:26+07:00'
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

-- 3469 | Butterscotch (M) | QRIS | 2026-06-15T15:00:37+07:00
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
    '2026-06-15T15:00:37+07:00'
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

-- 3470 | Butterscotch (M) | QRIS | 2026-06-15T15:01:27+07:00
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
    '2026-06-15T15:01:27+07:00'
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

-- 3471 | Vanilla (M) | QRIS | 2026-06-15T15:03:10+07:00
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
    '2026-06-15T15:03:10+07:00'
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

-- 3472 | Baileys Latte (M) | GRATIS | 2026-06-15T15:08:40+07:00
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
    '2026-06-15T15:08:40+07:00'
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

-- 3473 | Vanilla (M) | CASH | 2026-06-15T15:08:49+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    7036.00,
    '2026-06-15T15:08:49+07:00'
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

-- 3474 | Butterscotch (M) | CASH | 2026-06-15T15:10:19+07:00
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
    '2026-06-15T15:10:19+07:00'
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

-- 3475 | Butterscotch (M) | CASH | 2026-06-15T15:11:11+07:00
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
    '2026-06-15T15:11:11+07:00'
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

-- 3476 | Cold Brew (M) | QRIS | 2026-06-15T15:11:58+07:00
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
    '2026-06-15T15:11:58+07:00'
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

-- 3477 | Baileys Latte (M) | CASH | 2026-06-15T15:13:06+07:00
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
    '2026-06-15T15:13:06+07:00'
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

-- 3478 | Butterscotch (M) | CASH | 2026-06-15T15:24:27+07:00
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
    '2026-06-15T15:24:27+07:00'
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

-- 3479 | Butterscotch (M) | QRIS | 2026-06-15T15:20:12+07:00
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
    '2026-06-15T15:20:12+07:00'
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

-- 3480 | Baileys Latte (M) | QRIS | 2026-06-15T15:25:01+07:00
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
    '2026-06-15T15:25:01+07:00'
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

-- 3481 | Baileys Latte (M) | CASH | 2026-06-15T15:29:04+07:00
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
    '2026-06-15T15:29:04+07:00'
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

-- 3482 | Gula Aren (M) | QRIS | 2026-06-15T15:34:06+07:00
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
    '2026-06-15T15:34:06+07:00'
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

-- 3483 | Butterscotch (M) | QRIS | 2026-06-15T15:34:26+07:00
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
    '2026-06-15T15:34:26+07:00'
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

-- 3484 | Butterscotch (M) | CASH | 2026-06-15T15:34:45+07:00
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
    '2026-06-15T15:34:45+07:00'
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

-- 3485 | Baileys Latte (M) | CASH | 2026-06-15T15:41:53+07:00
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
    '2026-06-15T15:41:53+07:00'
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

-- 3486 | Salted Caramel (M) | CASH | 2026-06-15T15:44:58+07:00
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
    '2026-06-15T15:44:58+07:00'
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

-- 3487 | Butterscotch (M) | QRIS | 2026-06-15T15:52:51+07:00
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
    '2026-06-15T15:52:51+07:00'
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

-- 3488 | Butterscotch (M) | CASH | 2026-06-15T15:53:22+07:00
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
    '2026-06-15T15:53:22+07:00'
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

-- 3489 | Gula Aren (M) | QRIS | 2026-06-15T15:59:23+07:00
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
    '2026-06-15T15:59:23+07:00'
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

-- 3490 | Baileys Latte (M) | QRIS | 2026-06-15T15:59:51+07:00
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
    '2026-06-15T15:59:51+07:00'
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

-- 3491 | Gula Aren (M) | CASH | 2026-06-15T16:01:56+07:00
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
    '2026-06-15T16:01:56+07:00'
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

-- 3492 | Butterscotch (M) | CASH | 2026-06-15T16:02:02+07:00
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
    '2026-06-15T16:02:02+07:00'
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

-- 3493 | Butterscotch (M) | GRATIS | 2026-06-15T16:04:42+07:00
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
    '2026-06-15T16:04:42+07:00'
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

-- 3494 | Gula Aren (M) | CASH | 2026-06-15T16:13:10+07:00
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
    '2026-06-15T16:13:10+07:00'
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

-- 3495 | Gula Aren (M) | QRIS | 2026-06-15T16:13:21+07:00
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
    '2026-06-15T16:13:21+07:00'
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

-- 3496 | Baileys Latte (M) | QRIS | 2026-06-15T16:14:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-15T16:14:19+07:00'
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

-- 3497 | Butterscotch (M) | CASH | 2026-06-15T16:14:41+07:00
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
    '2026-06-15T16:14:41+07:00'
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

-- 3498 | Baileys Latte (M) | CASH | 2026-06-15T16:15:24+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-15T16:15:24+07:00'
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

-- 3499 | Salted Caramel (M) | QRIS | 2026-06-15T16:15:49+07:00
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
    '2026-06-15T16:15:49+07:00'
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

-- 3500 | Hazelnut (M) | QRIS | 2026-06-15T16:15:55+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-15T16:15:55+07:00'
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

-- 3501 | Vanilla (M) | CASH | 2026-06-15T16:18:55+07:00
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
    '2026-06-15T16:18:55+07:00'
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

-- 3502 | Baileys Latte (M) | QRIS | 2026-06-15T16:20:22+07:00
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
    '2026-06-15T16:20:22+07:00'
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

-- 3503 | Butterscotch (M) | CASH | 2026-06-15T16:22:40+07:00
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
    '2026-06-15T16:22:40+07:00'
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

-- 3504 | Butterscotch (M) | QRIS | 2026-06-15T16:38:13+07:00
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
    '2026-06-15T16:38:13+07:00'
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

-- 3505 | Gula Aren (M) | QRIS | 2026-06-15T16:48:37+07:00
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
    '2026-06-15T16:48:37+07:00'
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

-- 3506 | Baileys Latte (M) | CASH | 2026-06-15T16:48:34+07:00
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
    '2026-06-15T16:48:34+07:00'
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

-- 3507 | Butterscotch (M) | CASH | 2026-06-15T16:47:32+07:00
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
    '2026-06-15T16:47:32+07:00'
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

-- 3508 | Vanilla (M) | CASH | 2026-06-15T16:51:43+07:00
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
    '2026-06-15T16:51:43+07:00'
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

-- 3509 | Hazelnut (M) | CASH | 2026-06-15T16:51:48+07:00
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
    '2026-06-15T16:51:48+07:00'
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

-- 3510 | Salted Caramel (M) | CASH | 2026-06-15T16:51:56+07:00
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
    '2026-06-15T16:51:56+07:00'
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

-- 3511 | Butterscotch (M) | QRIS | 2026-06-15T16:52:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-15T16:52:58+07:00'
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

-- 3512 | Salted Caramel (M) | QRIS | 2026-06-15T16:53:06+07:00
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
    '2026-06-15T16:53:06+07:00'
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

-- 3513 | Butterscotch (M) | QRIS | 2026-06-15T16:57:06+07:00
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
    '2026-06-15T16:57:06+07:00'
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
