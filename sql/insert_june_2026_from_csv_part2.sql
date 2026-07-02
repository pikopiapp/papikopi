-- Generated SQL inserts for June 2026 CSV data
-- Source: ../data juni papi kopi.csv
-- Review carefully before running.
-- This file inserts rows into public.sales and public.sale_items.
-- It uses outlet name lookup via ILIKE and product lookup via exact name.

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
    '2026-06-05T23:04:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1175 | Butterscotch (M) | QRIS | 2026-06-06T08:16:33+07:00
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
    '2026-06-06T08:16:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1176 | Gula Aren (M) | QRIS | 2026-06-06T08:45:30+07:00
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
    '2026-06-06T08:45:30+07:00'
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

-- 1177 | Gula Aren (M) | QRIS | 2026-06-06T08:55:59+07:00
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
    '2026-06-06T08:55:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1178 | Butterscotch (M) | CASH | 2026-06-06T09:36:04+07:00
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
    '2026-06-06T09:36:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1179 | Gula Aren (M) | QRIS | 2026-06-06T09:43:38+07:00
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
    '2026-06-06T09:43:38+07:00'
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

-- 1180 | Butterscotch (M) | CASH | 2026-06-06T09:45:44+07:00
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
    '2026-06-06T09:45:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1181 | Butterscotch (M) | CASH | 2026-06-06T09:57:37+07:00
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
    '2026-06-06T09:57:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1182 | Baileys Latte (M) | CASH | 2026-06-06T09:57:41+07:00
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
    '2026-06-06T09:57:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1183 | Butterscotch (M) | QRIS | 2026-06-06T10:01:56+07:00
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
    '2026-06-06T10:01:56+07:00'
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

-- 1184 | Gula Aren (M) | CASH | 2026-06-06T10:04:07+07:00
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
    '2026-06-06T10:04:07+07:00'
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

-- 1185 | Gula Aren (M) | CASH | 2026-06-06T10:06:00+07:00
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
    '2026-06-06T10:06:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1186 | Gula Aren (M) | CASH | 2026-06-06T10:07:52+07:00
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
    '2026-06-06T10:07:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1187 | Gula Aren (M) | CASH | 2026-06-06T10:12:45+07:00
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
    '2026-06-06T10:12:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1188 | Baileys Latte (M) | CASH | 2026-06-06T10:16:25+07:00
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
    '2026-06-06T10:16:25+07:00'
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

-- 1189 | Hazelnut (M) | CASH | 2026-06-06T10:41:52+07:00
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
    '2026-06-06T10:41:52+07:00'
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

-- 1190 | Baileys Latte (M) | CASH | 2026-06-06T10:48:38+07:00
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
    '2026-06-06T10:48:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1191 | Gula Aren (M) | QRIS | 2026-06-06T11:14:38+07:00
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
    '2026-06-06T11:14:38+07:00'
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

-- 1192 | Vanilla (M) | CASH | 2026-06-06T11:16:09+07:00
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
    '2026-06-06T11:16:09+07:00'
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

-- 1193 | Baileys Latte (M) | QRIS | 2026-06-06T11:16:26+07:00
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
    '2026-06-06T11:16:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1194 | Butterscotch (M) | QRIS | 2026-06-06T11:16:33+07:00
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
    '2026-06-06T11:16:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1195 | Butterscotch (M) | CASH | 2026-06-06T11:26:45+07:00
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
    '2026-06-06T11:26:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1196 | Baileys Latte (M) | CASH | 2026-06-06T11:33:00+07:00
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
    '2026-06-06T11:33:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1197 | Salted Caramel (M) | CASH | 2026-06-06T11:33:06+07:00
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
    '2026-06-06T11:33:06+07:00'
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

-- 1198 | Cold Brew (M) | CASH | 2026-06-06T11:45:48+07:00
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
    '2026-06-06T11:45:48+07:00'
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

-- 1199 | Vanilla (M) | QRIS | 2026-06-06T11:47:37+07:00
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
    '2026-06-06T11:47:37+07:00'
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

-- 1200 | Butterscotch (M) | QRIS | 2026-06-06T11:55:05+07:00
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
    '2026-06-06T11:55:05+07:00'
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

-- 1201 | Vanilla (M) | QRIS | 2026-06-06T11:55:10+07:00
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
    '2026-06-06T11:55:10+07:00'
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

-- 1202 | Baileys Latte (M) | CASH | 2026-06-06T11:55:26+07:00
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
    '2026-06-06T11:55:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1203 | Gula Aren (M) | QRIS | 2026-06-06T12:10:54+07:00
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
    '2026-06-06T12:10:54+07:00'
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

-- 1204 | Hazelnut (M) | CASH | 2026-06-06T12:22:04+07:00
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
    '2026-06-06T12:22:04+07:00'
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

-- 1205 | Butterscotch (M) | QRIS | 2026-06-06T12:25:55+07:00
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
    '2026-06-06T12:25:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1206 | Baileys Latte (M) | CASH | 2026-06-06T12:36:41+07:00
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
    '2026-06-06T12:36:41+07:00'
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

-- 1207 | Vanilla (M) | CASH | 2026-06-06T12:36:46+07:00
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
    '2026-06-06T12:36:46+07:00'
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

-- 1208 | Baileys Latte (M) | CASH | 2026-06-06T12:41:20+07:00
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
    '2026-06-06T12:41:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1209 | Butterscotch (M) | CASH | 2026-06-06T12:48:47+07:00
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
    '2026-06-06T12:48:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1210 | Baileys Latte (M) | CASH | 2026-06-06T12:49:50+07:00
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
    '2026-06-06T12:49:50+07:00'
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

-- 1211 | Gula Aren (M) | CASH | 2026-06-06T12:55:23+07:00
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
    '2026-06-06T12:55:23+07:00'
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

-- 1212 | Gula Aren (M) | CASH | 2026-06-06T12:55:27+07:00
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
    '2026-06-06T12:55:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1213 | Baileys Latte (M) | CASH | 2026-06-06T12:55:30+07:00
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
    '2026-06-06T12:55:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1214 | Butterscotch (M) | QRIS | 2026-06-06T12:55:48+07:00
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
    '2026-06-06T12:55:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1215 | Butterscotch (M) | CASH | 2026-06-06T12:56:14+07:00
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
    '2026-06-06T12:56:14+07:00'
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

-- 1216 | Butterscotch (M) | CASH | 2026-06-06T12:59:28+07:00
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
    '2026-06-06T12:59:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1217 | Baileys Latte (M) | CASH | 2026-06-06T12:59:41+07:00
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
    '2026-06-06T12:59:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1218 | Butterscotch (M) | QRIS | 2026-06-06T13:02:24+07:00
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
    '2026-06-06T13:02:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1219 | Hazelnut (M) | QRIS | 2026-06-06T13:03:04+07:00
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
    '2026-06-06T13:03:04+07:00'
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

-- 1220 | Cold Brew (M) | QRIS | 2026-06-06T13:05:02+07:00
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
    '2026-06-06T13:05:02+07:00'
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

-- 1221 | Gula Aren (M) | CASH | 2026-06-06T13:21:05+07:00
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
    '2026-06-06T13:21:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1222 | Gula Aren (M) | QRIS | 2026-06-06T13:41:47+07:00
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
    '2026-06-06T13:41:47+07:00'
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

-- 1223 | Butterscotch (M) | CASH | 2026-06-06T13:52:54+07:00
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
    '2026-06-06T13:52:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1224 | Cold Brew (M) | QRIS | 2026-06-06T13:53:19+07:00
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
    '2026-06-06T13:53:19+07:00'
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

-- 1225 | Gula Aren (M) | QRIS | 2026-06-06T13:53:27+07:00
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
    '2026-06-06T13:53:27+07:00'
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

-- 1226 | Gula Aren (M) | CASH | 2026-06-06T13:56:10+07:00
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
    '2026-06-06T13:56:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1227 | Butterscotch (M) | QRIS | 2026-06-06T14:12:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-06T14:12:31+07:00'
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

-- 1228 | Hazelnut (M) | QRIS | 2026-06-06T14:12:39+07:00
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
    '2026-06-06T14:12:39+07:00'
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

-- 1229 | Baileys Latte (M) | CASH | 2026-06-06T14:19:33+07:00
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
    '2026-06-06T14:19:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1230 | Butterscotch (M) | QRIS | 2026-06-06T14:20:50+07:00
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
    '2026-06-06T14:20:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1231 | Butterscotch (M) | CASH | 2026-06-06T14:26:39+07:00
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
    '2026-06-06T14:26:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1232 | Vanilla (M) | CASH | 2026-06-06T14:26:40+07:00
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
    '2026-06-06T14:26:40+07:00'
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

-- 1233 | Butterscotch (M) | CASH | 2026-06-06T14:33:30+07:00
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
    '2026-06-06T14:33:30+07:00'
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

-- 1234 | Baileys Latte (M) | QRIS | 2026-06-06T14:36:50+07:00
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
    '2026-06-06T14:36:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1235 | Baileys Latte (M) | CASH | 2026-06-06T14:40:13+07:00
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
    '2026-06-06T14:40:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1236 | Butterscotch (M) | CASH | 2026-06-06T14:48:04+07:00
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
    '2026-06-06T14:48:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1237 | Butterscotch (M) | QRIS | 2026-06-06T14:49:52+07:00
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
    '2026-06-06T14:49:52+07:00'
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

-- 1238 | Gula Aren (M) | QRIS | 2026-06-06T14:49:58+07:00
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
    '2026-06-06T14:49:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1239 | Butterscotch (M) | CASH | 2026-06-06T14:50:23+07:00
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
    '2026-06-06T14:50:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1240 | Baileys Latte (M) | QRIS | 2026-06-06T14:50:27+07:00
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
    '2026-06-06T14:50:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1241 | Hazelnut (M) | CASH | 2026-06-06T15:05:32+07:00
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
    '2026-06-06T15:05:32+07:00'
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

-- 1242 | Butterscotch (M) | CASH | 2026-06-06T15:08:59+07:00
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
    '2026-06-06T15:08:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1243 | Salted Caramel (M) | CASH | 2026-06-06T15:10:49+07:00
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
    '2026-06-06T15:10:49+07:00'
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

-- 1244 | Hazelnut (M) | QRIS | 2026-06-06T15:32:03+07:00
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
    '2026-06-06T15:32:03+07:00'
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

-- 1245 | Hazelnut (M) | CASH | 2026-06-06T15:32:07+07:00
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
    '2026-06-06T15:32:07+07:00'
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

-- 1246 | Baileys Latte (M) | QRIS | 2026-06-06T15:33:18+07:00
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
    '2026-06-06T15:33:18+07:00'
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

-- 1247 | Butterscotch (M) | CASH | 2026-06-06T15:38:38+07:00
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
    '2026-06-06T15:38:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1248 | Gula Aren (M) | CASH | 2026-06-06T15:40:17+07:00
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
    '2026-06-06T15:40:17+07:00'
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

-- 1249 | Baileys Latte (M) | QRIS | 2026-06-06T15:41:47+07:00
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
    '2026-06-06T15:41:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1250 | Butterscotch (M) | CASH | 2026-06-06T15:56:00+07:00
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
    '2026-06-06T15:56:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1251 | Gula Aren (M) | CASH | 2026-06-06T15:58:59+07:00
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
    '2026-06-06T15:58:59+07:00'
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

-- 1252 | Butterscotch (M) | QRIS | 2026-06-06T16:17:29+07:00
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
    '2026-06-06T16:17:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1253 | Baileys Latte (M) | QRIS | 2026-06-06T16:17:35+07:00
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
    '2026-06-06T16:17:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1254 | Baileys Latte (M) | CASH | 2026-06-06T16:17:57+07:00
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
    '2026-06-06T16:17:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1255 | Butterscotch (M) | QRIS | 2026-06-06T16:22:51+07:00
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
    '2026-06-06T16:22:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1256 | Butterscotch (M) | QRIS | 2026-06-06T16:23:00+07:00
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
    '2026-06-06T16:23:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1257 | Gula Aren (M) | QRIS | 2026-06-06T16:23:07+07:00
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
    '2026-06-06T16:23:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1258 | Baileys Latte (M) | CASH | 2026-06-06T16:23:14+07:00
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
    '2026-06-06T16:23:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1259 | Baileys Latte (M) | CASH | 2026-06-06T16:23:25+07:00
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
    '2026-06-06T16:23:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1260 | Gula Aren (M) | QRIS | 2026-06-06T16:26:43+07:00
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
    '2026-06-06T16:26:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1261 | Gula Aren (M) | CASH | 2026-06-06T16:30:58+07:00
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
    '2026-06-06T16:30:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1262 | Gula Aren (M) | CASH | 2026-06-06T16:42:26+07:00
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
    '2026-06-06T16:42:26+07:00'
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

-- 1263 | Butterscotch (M) | QRIS | 2026-06-06T16:43:04+07:00
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
    '2026-06-06T16:43:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1264 | Baileys Latte (M) | CASH | 2026-06-06T16:43:11+07:00
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
    '2026-06-06T16:43:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1265 | Gula Aren (M) | CASH | 2026-06-06T16:54:42+07:00
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
    '2026-06-06T16:54:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1266 | Baileys Latte (M) | QRIS | 2026-06-06T16:56:38+07:00
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
    '2026-06-06T16:56:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1267 | Gula Aren (M) | CASH | 2026-06-06T17:04:27+07:00
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
    '2026-06-06T17:04:27+07:00'
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

-- 1268 | Hazelnut (M) | QRIS | 2026-06-06T17:07:25+07:00
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
    '2026-06-06T17:07:25+07:00'
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

-- 1269 | Baileys Latte (M) | QRIS | 2026-06-06T17:11:48+07:00
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
    '2026-06-06T17:11:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1270 | Baileys Latte (M) | QRIS | 2026-06-06T17:13:00+07:00
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
    '2026-06-06T17:13:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1271 | Gula Aren (M) | CASH | 2026-06-06T17:13:07+07:00
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
    '2026-06-06T17:13:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1272 | Baileys Latte (M) | CASH | 2026-06-06T17:14:18+07:00
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
    '2026-06-06T17:14:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1273 | Baileys Latte (M) | QRIS | 2026-06-06T17:17:02+07:00
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
    '2026-06-06T17:17:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1274 | Gula Aren (M) | QRIS | 2026-06-06T17:18:24+07:00
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
    '2026-06-06T17:18:24+07:00'
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

-- 1275 | Butterscotch (M) | CASH | 2026-06-06T17:20:12+07:00
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
    '2026-06-06T17:20:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1276 | Butterscotch (M) | CASH | 2026-06-06T17:23:27+07:00
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
    '2026-06-06T17:23:27+07:00'
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

-- 1277 | Baileys Latte (M) | CASH | 2026-06-06T17:23:36+07:00
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
    '2026-06-06T17:23:36+07:00'
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

-- 1278 | Hazelnut (M) | CASH | 2026-06-06T17:24:15+07:00
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
    '2026-06-06T17:24:15+07:00'
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

-- 1279 | Gula Aren (M) | CASH | 2026-06-06T17:24:42+07:00
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
    '2026-06-06T17:24:42+07:00'
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

-- 1280 | Baileys Latte (M) | QRIS | 2026-06-06T17:25:42+07:00
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
    '2026-06-06T17:25:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1281 | Vanilla (M) | CASH | 2026-06-06T17:27:27+07:00
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
    '2026-06-06T17:27:27+07:00'
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

-- 1282 | Butterscotch (M) | GRATIS | 2026-06-06T17:28:49+07:00
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
    '2026-06-06T17:28:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1283 | Baileys Latte (M) | CASH | 2026-06-06T17:39:56+07:00
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
    '2026-06-06T17:39:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1284 | Butterscotch (M) | QRIS | 2026-06-06T17:40:59+07:00
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
    '2026-06-06T17:40:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1285 | Butterscotch (M) | QRIS | 2026-06-06T17:42:47+07:00
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
    '2026-06-06T17:42:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1286 | Butterscotch (M) | CASH | 2026-06-06T17:42:53+07:00
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
    '2026-06-06T17:42:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1287 | Baileys Latte (M) | CASH | 2026-06-06T17:42:57+07:00
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
    '2026-06-06T17:42:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1288 | Gula Aren (M) | CASH | 2026-06-06T17:43:03+07:00
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
    '2026-06-06T17:43:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1289 | Baileys Latte (M) | QRIS | 2026-06-06T17:48:16+07:00
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
    '2026-06-06T17:48:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1290 | Baileys Latte (M) | QRIS | 2026-06-06T17:49:49+07:00
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
    '2026-06-06T17:49:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1291 | Butterscotch (M) | QRIS | 2026-06-06T17:54:24+07:00
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
    '2026-06-06T17:54:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1292 | Hazelnut (M) | QRIS | 2026-06-06T17:55:15+07:00
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
    '2026-06-06T17:55:15+07:00'
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

-- 1293 | Butterscotch (M) | QRIS | 2026-06-06T18:00:10+07:00
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
    '2026-06-06T18:00:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1294 | Vanilla (M) | CASH | 2026-06-06T18:00:24+07:00
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
    '2026-06-06T18:00:24+07:00'
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

-- 1295 | Vanilla (M) | QRIS | 2026-06-06T18:01:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 4,
    0.00,
    28146.00,
    '2026-06-06T18:01:50+07:00'
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

-- 1296 | Hazelnut (M) | QRIS | 2026-06-06T18:02:03+07:00
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
    '2026-06-06T18:02:03+07:00'
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

-- 1297 | Butterscotch (M) | QRIS | 2026-06-06T18:02:12+07:00
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
    '2026-06-06T18:02:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1298 | Gula Aren (M) | QRIS | 2026-06-06T18:02:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-06T18:02:37+07:00'
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

-- 1299 | Butterscotch (M) | QRIS | 2026-06-06T18:02:43+07:00
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
    '2026-06-06T18:02:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1300 | Gula Aren (M) | CASH | 2026-06-06T18:02:58+07:00
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
    '2026-06-06T18:02:58+07:00'
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

-- 1301 | Gula Aren (M) | CASH | 2026-06-06T18:03:11+07:00
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
    '2026-06-06T18:03:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1302 | Butterscotch (M) | CASH | 2026-06-06T18:03:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    100000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 8,
    0.00,
    56291.00,
    '2026-06-06T18:03:06+07:00'
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

-- 1303 | Baileys Latte (M) | CASH | 2026-06-06T18:03:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-06T18:03:16+07:00'
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

-- 1304 | Butterscotch (M) | QRIS | 2026-06-06T18:04:42+07:00
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
    '2026-06-06T18:04:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1305 | Baileys Latte (M) | QRIS | 2026-06-06T18:06:23+07:00
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
    '2026-06-06T18:06:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1306 | Butterscotch (M) | CASH | 2026-06-06T18:06:40+07:00
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
    '2026-06-06T18:06:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1307 | Baileys Latte (M) | QRIS | 2026-06-06T18:08:03+07:00
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
    '2026-06-06T18:08:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1308 | Vanilla (M) | CASH | 2026-06-06T18:11:20+07:00
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
    '2026-06-06T18:11:20+07:00'
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

-- 1309 | Butterscotch (M) | CASH | 2026-06-06T18:11:39+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    175000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 14,
    0.00,
    98509.00,
    '2026-06-06T18:11:39+07:00'
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

-- 1310 | Butterscotch (M) | CASH | 2026-06-06T18:18:13+07:00
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
    '2026-06-06T18:18:13+07:00'
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

-- 1311 | Vanilla (M) | CASH | 2026-06-06T18:18:33+07:00
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
    '2026-06-06T18:18:33+07:00'
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

-- 1312 | Gula Aren (M) | CASH | 2026-06-06T18:26:08+07:00
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
    '2026-06-06T18:26:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1313 | Baileys Latte (M) | QRIS | 2026-06-06T18:37:47+07:00
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
    '2026-06-06T18:37:47+07:00'
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

-- 1314 | Vanilla (M) | CASH | 2026-06-06T18:44:54+07:00
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
    '2026-06-06T18:44:54+07:00'
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

-- 1315 | Gula Aren (M) | CASH | 2026-06-06T18:44:46+07:00
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
    '2026-06-06T18:44:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1316 | Baileys Latte (M) | CASH | 2026-06-06T18:45:08+07:00
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
    '2026-06-06T18:45:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1317 | Baileys Latte (M) | QRIS | 2026-06-06T18:45:16+07:00
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
    '2026-06-06T18:45:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1318 | Gula Aren (M) | QRIS | 2026-06-06T18:45:23+07:00
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
    '2026-06-06T18:45:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1319 | Butterscotch (M) | QRIS | 2026-06-06T18:46:59+07:00
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
    '2026-06-06T18:46:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1320 | Butterscotch (M) | QRIS | 2026-06-06T18:47:21+07:00
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
    '2026-06-06T18:47:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1321 | Gula Aren (M) | QRIS | 2026-06-06T18:50:26+07:00
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
    '2026-06-06T18:50:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1322 | Baileys Latte (M) | QRIS | 2026-06-06T18:54:29+07:00
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
    '2026-06-06T18:54:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1323 | Baileys Latte (M) | CASH | 2026-06-06T18:55:37+07:00
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
    '2026-06-06T18:55:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1324 | Gula Aren (M) | CASH | 2026-06-06T18:59:06+07:00
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
    '2026-06-06T18:59:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1325 | Butterscotch (M) | GRATIS | 2026-06-06T19:02:11+07:00
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
    '2026-06-06T19:02:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1326 | Gula Aren (M) | CASH | 2026-06-06T19:02:19+07:00
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
    '2026-06-06T19:02:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1327 | Butterscotch (M) | QRIS | 2026-06-06T19:02:24+07:00
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
    '2026-06-06T19:02:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1328 | Butterscotch (M) | QRIS | 2026-06-06T19:08:24+07:00
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
    '2026-06-06T19:08:24+07:00'
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

-- 1329 | Baileys Latte (M) | QRIS | 2026-06-06T19:08:38+07:00
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
    '2026-06-06T19:08:38+07:00'
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

-- 1330 | Baileys Latte (M) | QRIS | 2026-06-06T19:13:03+07:00
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
    '2026-06-06T19:13:03+07:00'
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

-- 1331 | Baileys Latte (M) | CASH | 2026-06-06T19:16:41+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-06T19:16:41+07:00'
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

-- 1332 | Gula Aren (M) | QRIS | 2026-06-06T19:19:09+07:00
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
    '2026-06-06T19:19:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1333 | Gula Aren (M) | QRIS | 2026-06-06T19:20:57+07:00
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
    '2026-06-06T19:20:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1334 | Baileys Latte (M) | QRIS | 2026-06-06T19:22:42+07:00
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
    '2026-06-06T19:22:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1335 | Baileys Latte (M) | QRIS | 2026-06-06T19:29:13+07:00
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
    '2026-06-06T19:29:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1336 | Baileys Latte (M) | CASH | 2026-06-06T19:29:13+07:00
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
    '2026-06-06T19:29:13+07:00'
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

-- 1337 | Baileys Latte (M) | CASH | 2026-06-06T19:29:20+07:00
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
    '2026-06-06T19:29:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1338 | Butterscotch (M) | QRIS | 2026-06-06T19:31:36+07:00
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
    '2026-06-06T19:31:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1339 | Hazelnut (M) | QRIS | 2026-06-06T19:41:37+07:00
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
    '2026-06-06T19:41:37+07:00'
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

-- 1340 | Butterscotch (M) | CASH | 2026-06-06T19:41:36+07:00
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
    '2026-06-06T19:41:36+07:00'
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

-- 1341 | Gula Aren (M) | CASH | 2026-06-06T19:42:23+07:00
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
    '2026-06-06T19:42:23+07:00'
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

-- 1342 | Butterscotch (M) | CASH | 2026-06-06T19:42:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-06T19:42:31+07:00'
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

-- 1343 | Butterscotch (M) | QRIS | 2026-06-06T19:44:35+07:00
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
    '2026-06-06T19:44:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1344 | Baileys Latte (M) | QRIS | 2026-06-06T19:47:01+07:00
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
    '2026-06-06T19:47:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1345 | Butterscotch (M) | CASH | 2026-06-06T19:48:30+07:00
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
    '2026-06-06T19:48:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1346 | Butterscotch (M) | QRIS | 2026-06-06T19:49:45+07:00
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
    '2026-06-06T19:49:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1347 | Butterscotch (M) | QRIS | 2026-06-06T19:54:38+07:00
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
    '2026-06-06T19:54:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1348 | Butterscotch (M) | CASH | 2026-06-06T19:55:04+07:00
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
    '2026-06-06T19:55:04+07:00'
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

-- 1349 | Baileys Latte (M) | GRATIS | 2026-06-06T19:55:10+07:00
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
    '2026-06-06T19:55:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1350 | Baileys Latte (M) | QRIS | 2026-06-06T19:57:02+07:00
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
    '2026-06-06T19:57:02+07:00'
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

-- 1351 | Butterscotch (M) | QRIS | 2026-06-06T19:57:09+07:00
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
    '2026-06-06T19:57:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1352 | Butterscotch (M) | CASH | 2026-06-06T19:58:05+07:00
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
    '2026-06-06T19:58:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1353 | Butterscotch (M) | QRIS | 2026-06-06T20:01:38+07:00
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
    '2026-06-06T20:01:38+07:00'
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

-- 1354 | Gula Aren (M) | QRIS | 2026-06-06T20:02:10+07:00
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
    '2026-06-06T20:02:10+07:00'
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

-- 1355 | Gula Aren (M) | CASH | 2026-06-06T20:03:23+07:00
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
    '2026-06-06T20:03:23+07:00'
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

-- 1356 | Butterscotch (M) | CASH | 2026-06-06T20:03:38+07:00
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
    '2026-06-06T20:03:38+07:00'
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

-- 1357 | Hazelnut (M) | CASH | 2026-06-06T20:03:48+07:00
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
    '2026-06-06T20:03:48+07:00'
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

-- 1358 | Baileys Latte (M) | CASH | 2026-06-06T20:03:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    150000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 12,
    0.00,
    82349.00,
    '2026-06-06T20:03:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  12,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1359 | Butterscotch (M) | CASH | 2026-06-06T20:05:07+07:00
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
    '2026-06-06T20:05:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1360 | Baileys Latte (M) | CASH | 2026-06-06T20:05:16+07:00
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
    '2026-06-06T20:05:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1361 | Gula Aren (M) | CASH | 2026-06-06T20:07:13+07:00
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
    '2026-06-06T20:07:13+07:00'
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

-- 1362 | Baileys Latte (M) | QRIS | 2026-06-06T20:07:40+07:00
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
    '2026-06-06T20:07:40+07:00'
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

-- 1363 | Butterscotch (M) | CASH | 2026-06-06T20:12:08+07:00
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
    '2026-06-06T20:12:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1364 | Butterscotch (M) | QRIS | 2026-06-06T20:12:12+07:00
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
    '2026-06-06T20:12:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1365 | Butterscotch (M) | CASH | 2026-06-06T20:17:26+07:00
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
    '2026-06-06T20:17:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1366 | Butterscotch (M) | CASH | 2026-06-06T20:20:55+07:00
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
    '2026-06-06T20:20:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1367 | Butterscotch (M) | QRIS | 2026-06-06T20:38:53+07:00
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
    '2026-06-06T20:38:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1368 | Baileys Latte (M) | CASH | 2026-06-06T20:46:08+07:00
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
    '2026-06-06T20:46:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1369 | Vanilla (M) | CASH | 2026-06-06T20:46:14+07:00
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
    '2026-06-06T20:46:14+07:00'
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

-- 1370 | Butterscotch (M) | CASH | 2026-06-06T20:46:21+07:00
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
    '2026-06-06T20:46:21+07:00'
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

-- 1371 | Butterscotch (M) | QRIS | 2026-06-06T20:51:15+07:00
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
    '2026-06-06T20:51:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1372 | Vanilla (M) | QRIS | 2026-06-06T20:51:23+07:00
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
    '2026-06-06T20:51:23+07:00'
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

-- 1373 | Butterscotch (M) | CASH | 2026-06-06T20:51:52+07:00
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
    '2026-06-06T20:51:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1374 | Butterscotch (M) | QRIS | 2026-06-06T21:05:35+07:00
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
    '2026-06-06T21:05:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1375 | Baileys Latte (M) | QRIS | 2026-06-06T21:05:43+07:00
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
    '2026-06-06T21:05:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1376 | Gula Aren (M) | QRIS | 2026-06-06T21:09:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-06T21:09:00+07:00'
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

-- 1377 | Butterscotch (M) | QRIS | 2026-06-06T21:09:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    7036.00,
    '2026-06-06T21:09:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1378 | Gula Aren (M) | CASH | 2026-06-06T21:09:41+07:00
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
    '2026-06-06T21:09:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1379 | Butterscotch (M) | CASH | 2026-06-06T21:09:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-06T21:09:51+07:00'
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

-- 1380 | Baileys Latte (M) | CASH | 2026-06-06T21:10:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-06T21:10:00+07:00'
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

-- 1381 | Butterscotch (M) | QRIS | 2026-06-06T21:10:26+07:00
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
    '2026-06-06T21:10:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1382 | Baileys Latte (M) | QRIS | 2026-06-06T21:10:36+07:00
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
    '2026-06-06T21:10:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1383 | Butterscotch (M) | CASH | 2026-06-06T21:12:16+07:00
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
    '2026-06-06T21:12:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1384 | Butterscotch (M) | QRIS | 2026-06-06T21:14:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 10,
    0.00,
    70364.00,
    '2026-06-06T21:14:05+07:00'
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

-- 1385 | Gula Aren (M) | QRIS | 2026-06-06T21:16:05+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-06T21:16:05+07:00'
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

-- 1386 | Butterscotch (M) | CASH | 2026-06-06T21:16:14+07:00
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
    '2026-06-06T21:16:14+07:00'
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

-- 1387 | Baileys Latte (M) | CASH | 2026-06-06T21:16:21+07:00
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
    '2026-06-06T21:16:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1388 | Butterscotch (M) | CASH | 2026-06-06T21:21:50+07:00
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
    '2026-06-06T21:21:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1389 | Vanilla (M) | QRIS | 2026-06-06T21:23:53+07:00
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
    '2026-06-06T21:23:53+07:00'
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

-- 1390 | Butterscotch (M) | CASH | 2026-06-06T21:25:00+07:00
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
    '2026-06-06T21:25:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1391 | Baileys Latte (M) | CASH | 2026-06-06T21:26:20+07:00
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
    '2026-06-06T21:26:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1392 | Hazelnut (M) | CASH | 2026-06-06T21:26:25+07:00
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
    '2026-06-06T21:26:25+07:00'
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

-- 1393 | Gula Aren (M) | CASH | 2026-06-06T21:28:10+07:00
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
    '2026-06-06T21:28:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1394 | Hazelnut (M) | QRIS | 2026-06-06T21:28:47+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-06T21:28:47+07:00'
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

-- 1395 | Vanilla (M) | CASH | 2026-06-06T21:28:59+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-06T21:28:59+07:00'
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

-- 1396 | Gula Aren (M) | CASH | 2026-06-06T21:29:23+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    48000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 6,
    0.00,
    21575.00,
    '2026-06-06T21:29:23+07:00'
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

-- 1397 | Gula Aren (M) | QRIS | 2026-06-06T21:35:31+07:00
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
    '2026-06-06T21:35:31+07:00'
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

-- 1398 | Baileys Latte (M) | CASH | 2026-06-06T21:35:43+07:00
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
    '2026-06-06T21:35:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1399 | Baileys Latte (M) | QRIS | 2026-06-06T21:37:54+07:00
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
    '2026-06-06T21:37:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1400 | Butterscotch (M) | QRIS | 2026-06-06T21:39:44+07:00
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
    '2026-06-06T21:39:44+07:00'
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

-- 1401 | Butterscotch (M) | QRIS | 2026-06-06T21:39:59+07:00
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
    '2026-06-06T21:39:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1402 | Vanilla (M) | CASH | 2026-06-06T21:40:18+07:00
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
    '2026-06-06T21:40:18+07:00'
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

-- 1403 | Baileys Latte (M) | CASH | 2026-06-06T21:40:20+07:00
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
    '2026-06-06T21:40:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1404 | Butterscotch (M) | QRIS | 2026-06-06T21:43:18+07:00
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
    '2026-06-06T21:43:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1405 | Salted Caramel (M) | QRIS | 2026-06-06T21:43:41+07:00
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
    '2026-06-06T21:43:41+07:00'
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

-- 1406 | Butterscotch (M) | CASH | 2026-06-06T21:54:01+07:00
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
    '2026-06-06T21:54:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1407 | Baileys Latte (M) | CASH | 2026-06-06T21:54:05+07:00
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
    '2026-06-06T21:54:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1408 | Butterscotch (M) | CASH | 2026-06-06T21:55:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-06T21:55:13+07:00'
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

-- 1409 | Baileys Latte (M) | GRATIS | 2026-06-06T21:55:23+07:00
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
    '2026-06-06T21:55:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1410 | Butterscotch (M) | CASH | 2026-06-06T21:57:09+07:00
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
    '2026-06-06T21:57:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1411 | Hazelnut (M) | QRIS | 2026-06-06T22:05:00+07:00
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
    '2026-06-06T22:05:00+07:00'
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

-- 1412 | Vanilla (M) | CASH | 2026-06-06T22:06:52+07:00
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
    '2026-06-06T22:06:52+07:00'
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

-- 1413 | Baileys Latte (M) | CASH | 2026-06-06T22:07:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    175000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 14,
    0.00,
    96074.00,
    '2026-06-06T22:07:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  14,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1414 | Baileys Latte (M) | QRIS | 2026-06-06T22:07:46+07:00
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
    '2026-06-06T22:07:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1415 | Baileys Latte (M) | CASH | 2026-06-06T22:10:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-06T22:10:46+07:00'
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

-- 1416 | Hazelnut (M) | CASH | 2026-06-06T22:11:06+07:00
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
    '2026-06-06T22:11:06+07:00'
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

-- 1417 | Baileys Latte (M) | CASH | 2026-06-06T22:13:41+07:00
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
    '2026-06-06T22:13:41+07:00'
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

-- 1418 | Butterscotch (M) | QRIS | 2026-06-06T22:18:29+07:00
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
    '2026-06-06T22:18:29+07:00'
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

-- 1419 | Butterscotch (M) | CASH | 2026-06-06T22:18:58+07:00
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
    '2026-06-06T22:18:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1420 | Butterscotch (M) | CASH | 2026-06-06T22:19:10+07:00
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
    '2026-06-06T22:19:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1421 | Vanilla (M) | QRIS | 2026-06-06T22:19:22+07:00
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
    '2026-06-06T22:19:22+07:00'
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

-- 1422 | Baileys Latte (M) | QRIS | 2026-06-06T22:19:46+07:00
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
    '2026-06-06T22:19:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1423 | Butterscotch (M) | CASH | 2026-06-06T22:19:55+07:00
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
    '2026-06-06T22:19:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1424 | Baileys Latte (M) | CASH | 2026-06-06T22:21:09+07:00
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
    '2026-06-06T22:21:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1425 | Baileys Latte (M) | CASH | 2026-06-06T22:25:39+07:00
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
    '2026-06-06T22:25:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1426 | Hazelnut (M) | QRIS | 2026-06-06T22:48:46+07:00
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
    '2026-06-06T22:48:46+07:00'
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

-- 1427 | Butterscotch (M) | CASH | 2026-06-06T22:49:19+07:00
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
    '2026-06-06T22:49:19+07:00'
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

-- 1428 | Butterscotch (M) | CASH | 2026-06-06T22:51:28+07:00
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
    '2026-06-06T22:51:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1429 | Baileys Latte (M) | QRIS | 2026-06-06T22:58:32+07:00
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
    '2026-06-06T22:58:32+07:00'
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

-- 1430 | Baileys Latte (M) | CASH | 2026-06-06T23:06:56+07:00
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
    '2026-06-06T23:06:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1431 | Butterscotch (M) | CASH | 2026-06-06T23:08:04+07:00
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
    '2026-06-06T23:08:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1432 | Hazelnut (M) | CASH | 2026-06-06T23:16:20+07:00
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
    '2026-06-06T23:16:20+07:00'
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

-- 1433 | Baileys Latte (M) | CASH | 2026-06-06T23:16:28+07:00
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
    '2026-06-06T23:16:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1434 | Butterscotch (M) | QRIS | 2026-06-06T23:35:44+07:00
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
    '2026-06-06T23:35:44+07:00'
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

-- 1435 | Gula Aren (M) | QRIS | 2026-06-06T23:35:52+07:00
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
    '2026-06-06T23:35:52+07:00'
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

-- 1436 | Gula Aren (M) | CASH | 2026-06-06T23:36:17+07:00
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
    '2026-06-06T23:36:17+07:00'
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

-- 1437 | Butterscotch (M) | CASH | 2026-06-06T23:36:33+07:00
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
    '2026-06-06T23:36:33+07:00'
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

-- 1438 | Vanilla (M) | CASH | 2026-06-06T23:36:39+07:00
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
    '2026-06-06T23:36:39+07:00'
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

-- 1439 | Salted Caramel (M) | CASH | 2026-06-06T23:36:50+07:00
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
    '2026-06-06T23:36:50+07:00'
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

-- 1440 | Hazelnut (M) | CASH | 2026-06-06T23:37:02+07:00
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
    '2026-06-06T23:37:02+07:00'
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

-- 1441 | Cold Brew (M) | CASH | 2026-06-06T23:37:12+07:00
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
    '2026-06-06T23:37:12+07:00'
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

-- 1442 | Baileys Latte (M) | CASH | 2026-06-06T23:37:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    200000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 16,
    0.00,
    109799.00,
    '2026-06-06T23:37:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  16,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1443 | Baileys Latte (M) | QRIS | 2026-06-06T23:42:04+07:00
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
    '2026-06-06T23:42:04+07:00'
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

-- 1444 | Butterscotch (M) | QRIS | 2026-06-06T23:42:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-06T23:42:14+07:00'
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

-- 1445 | Baileys Latte (M) | CASH | 2026-06-07T08:48:05+07:00
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
    '2026-06-07T08:48:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1446 | Gula Aren (M) | CASH | 2026-06-07T09:41:54+07:00
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
    '2026-06-07T09:41:54+07:00'
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

-- 1447 | Butterscotch (M) | QRIS | 2026-06-07T09:41:58+07:00
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
    '2026-06-07T09:41:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1448 | Baileys Latte (M) | QRIS | 2026-06-07T09:42:03+07:00
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
    '2026-06-07T09:42:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1449 | Baileys Latte (M) | QRIS | 2026-06-07T09:52:02+07:00
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
    '2026-06-07T09:52:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1450 | Gula Aren (M) | CASH | 2026-06-07T09:52:10+07:00
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
    '2026-06-07T09:52:10+07:00'
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

-- 1451 | Gula Aren (M) | CASH | 2026-06-07T09:57:12+07:00
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
    '2026-06-07T09:57:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1452 | Butterscotch (M) | CASH | 2026-06-07T10:00:19+07:00
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
    '2026-06-07T10:00:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1453 | Gula Aren (M) | CASH | 2026-06-07T10:18:32+07:00
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
    '2026-06-07T10:18:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1454 | Gula Aren (M) | QRIS | 2026-06-07T10:18:36+07:00
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
    '2026-06-07T10:18:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1455 | Gula Aren (M) | CASH | 2026-06-07T10:26:36+07:00
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
    '2026-06-07T10:26:36+07:00'
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

-- 1456 | Baileys Latte (M) | CASH | 2026-06-07T10:26:41+07:00
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
    '2026-06-07T10:26:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1457 | Gula Aren (M) | CASH | 2026-06-07T10:47:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-07T10:47:06+07:00'
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

-- 1458 | Gula Aren (M) | CASH | 2026-06-07T10:51:29+07:00
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
    '2026-06-07T10:51:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1459 | Butterscotch (M) | CASH | 2026-06-07T10:58:45+07:00
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
    '2026-06-07T10:58:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1460 | Butterscotch (M) | QRIS | 2026-06-07T10:58:52+07:00
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
    '2026-06-07T10:58:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1461 | Gula Aren (M) | CASH | 2026-06-07T11:09:12+07:00
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
    '2026-06-07T11:09:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1462 | Gula Aren (M) | CASH | 2026-06-07T11:18:29+07:00
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
    '2026-06-07T11:18:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1463 | Gula Aren (M) | CASH | 2026-06-07T11:26:16+07:00
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
    '2026-06-07T11:26:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1464 | Butterscotch (M) | QRIS | 2026-06-07T11:26:28+07:00
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
    '2026-06-07T11:26:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1465 | Butterscotch (M) | QRIS | 2026-06-07T11:36:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-07T11:36:13+07:00'
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

-- 1466 | Butterscotch (M) | CASH | 2026-06-07T11:36:20+07:00
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
    '2026-06-07T11:36:20+07:00'
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

-- 1467 | Butterscotch (M) | CASH | 2026-06-07T11:36:43+07:00
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
    '2026-06-07T11:36:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1468 | Butterscotch (M) | QRIS | 2026-06-07T11:37:52+07:00
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
    '2026-06-07T11:37:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1469 | Gula Aren (M) | CASH | 2026-06-07T11:39:37+07:00
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
    '2026-06-07T11:39:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1470 | Butterscotch (M) | CASH | 2026-06-07T11:44:30+07:00
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
    '2026-06-07T11:44:30+07:00'
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

-- 1471 | Gula Aren (M) | QRIS | 2026-06-07T11:45:58+07:00
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
    '2026-06-07T11:45:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1472 | Salted Caramel (M) | QRIS | 2026-06-07T11:46:02+07:00
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
    '2026-06-07T11:46:02+07:00'
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

-- 1473 | Vanilla (M) | CASH | 2026-06-07T11:46:09+07:00
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
    '2026-06-07T11:46:09+07:00'
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

-- 1474 | Gula Aren (M) | CASH | 2026-06-07T11:58:26+07:00
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
    '2026-06-07T11:58:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1475 | Baileys Latte (M) | CASH | 2026-06-07T12:02:03+07:00
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
    '2026-06-07T12:02:03+07:00'
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

-- 1476 | Gula Aren (M) | QRIS | 2026-06-07T12:02:07+07:00
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
    '2026-06-07T12:02:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1477 | Butterscotch (M) | GRATIS | 2026-06-07T12:03:54+07:00
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
    '2026-06-07T12:03:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1478 | Gula Aren (M) | CASH | 2026-06-07T12:07:18+07:00
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
    '2026-06-07T12:07:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1479 | Butterscotch (M) | QRIS | 2026-06-07T12:17:53+07:00
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
    '2026-06-07T12:17:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1480 | Hazelnut (M) | CASH | 2026-06-07T12:22:59+07:00
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
    '2026-06-07T12:22:59+07:00'
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

-- 1481 | Butterscotch (M) | CASH | 2026-06-07T12:23:07+07:00
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
    '2026-06-07T12:23:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1482 | Baileys Latte (M) | QRIS | 2026-06-07T12:23:18+07:00
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
    '2026-06-07T12:23:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1483 | Hazelnut (M) | QRIS | 2026-06-07T12:23:25+07:00
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
    '2026-06-07T12:23:25+07:00'
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

-- 1484 | Gula Aren (M) | CASH | 2026-06-07T12:27:58+07:00
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
    '2026-06-07T12:27:58+07:00'
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

-- 1485 | Hazelnut (M) | CASH | 2026-06-07T12:28:08+07:00
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
    '2026-06-07T12:28:08+07:00'
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

-- 1486 | Vanilla (M) | CASH | 2026-06-07T12:28:25+07:00
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
    '2026-06-07T12:28:25+07:00'
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

-- 1487 | Butterscotch (M) | CASH | 2026-06-07T12:28:50+07:00
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
    '2026-06-07T12:28:50+07:00'
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

-- 1488 | Butterscotch (M) | QRIS | 2026-06-07T12:25:09+07:00
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
    '2026-06-07T12:25:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1489 | Gula Aren (M) | QRIS | 2026-06-07T12:29:05+07:00
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
    '2026-06-07T12:29:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1490 | Gula Aren (M) | QRIS | 2026-06-07T12:29:21+07:00
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
    '2026-06-07T12:29:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1491 | Hazelnut (M) | QRIS | 2026-06-07T12:33:32+07:00
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
    '2026-06-07T12:33:32+07:00'
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

-- 1492 | Butterscotch (M) | CASH | 2026-06-07T12:33:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-07T12:33:38+07:00'
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

-- 1493 | Baileys Latte (M) | QRIS | 2026-06-07T12:45:21+07:00
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
    '2026-06-07T12:45:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1494 | Cold Brew (M) | QRIS | 2026-06-07T12:51:12+07:00
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
    '2026-06-07T12:51:12+07:00'
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

-- 1495 | Vanilla (M) | CASH | 2026-06-07T12:55:27+07:00
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
    '2026-06-07T12:55:27+07:00'
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

-- 1496 | Gula Aren (M) | CASH | 2026-06-07T12:56:59+07:00
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
    '2026-06-07T12:56:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1497 | Butterscotch (M) | CASH | 2026-06-07T13:02:54+07:00
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
    '2026-06-07T13:02:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1498 | Butterscotch (M) | CASH | 2026-06-07T13:03:55+07:00
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
    '2026-06-07T13:03:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1499 | Baileys Latte (M) | QRIS | 2026-06-07T13:08:40+07:00
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
    '2026-06-07T13:08:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1500 | Butterscotch (M) | QRIS | 2026-06-07T13:17:55+07:00
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
    '2026-06-07T13:17:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1501 | Hazelnut (M) | QRIS | 2026-06-07T13:18:00+07:00
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
    '2026-06-07T13:18:00+07:00'
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

-- 1502 | Baileys Latte (M) | QRIS | 2026-06-07T13:18:03+07:00
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
    '2026-06-07T13:18:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1503 | Baileys Latte (M) | QRIS | 2026-06-07T13:19:25+07:00
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
    '2026-06-07T13:19:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1504 | Baileys Latte (M) | QRIS | 2026-06-07T13:22:47+07:00
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
    '2026-06-07T13:22:47+07:00'
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

-- 1505 | Butterscotch (M) | QRIS | 2026-06-07T13:24:20+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 10,
    0.00,
    70364.00,
    '2026-06-07T13:24:20+07:00'
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

-- 1506 | Butterscotch (M) | QRIS | 2026-06-07T13:27:22+07:00
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
    '2026-06-07T13:27:22+07:00'
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

-- 1507 | Vanilla (M) | CASH | 2026-06-07T13:27:32+07:00
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
    '2026-06-07T13:27:32+07:00'
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

-- 1508 | Gula Aren (M) | CASH | 2026-06-07T13:28:10+07:00
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
    '2026-06-07T13:28:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1509 | Hazelnut (M) | CASH | 2026-06-07T13:28:23+07:00
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
    '2026-06-07T13:28:23+07:00'
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

-- 1510 | Vanilla (M) | CASH | 2026-06-07T13:36:44+07:00
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
    '2026-06-07T13:36:44+07:00'
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

-- 1511 | Butterscotch (M) | QRIS | 2026-06-07T13:39:05+07:00
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
    '2026-06-07T13:39:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1512 | Baileys Latte (M) | QRIS | 2026-06-07T13:39:10+07:00
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
    '2026-06-07T13:39:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1513 | Baileys Latte (M) | CASH | 2026-06-07T13:45:58+07:00
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
    '2026-06-07T13:45:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1514 | Gula Aren (M) | CASH | 2026-06-07T13:55:41+07:00
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
    '2026-06-07T13:55:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1515 | Hazelnut (M) | QRIS | 2026-06-07T13:58:29+07:00
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
    '2026-06-07T13:58:29+07:00'
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

-- 1516 | Baileys Latte (M) | CASH | 2026-06-07T14:00:30+07:00
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
    '2026-06-07T14:00:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1517 | Butterscotch (M) | CASH | 2026-06-07T14:00:43+07:00
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
    '2026-06-07T14:00:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1518 | Baileys Latte (M) | CASH | 2026-06-07T14:02:15+07:00
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
    '2026-06-07T14:02:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1519 | Butterscotch (M) | QRIS | 2026-06-07T14:23:02+07:00
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
    '2026-06-07T14:23:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1520 | Baileys Latte (M) | CASH | 2026-06-07T14:24:16+07:00
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
    '2026-06-07T14:24:16+07:00'
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

-- 1521 | Hazelnut (M) | CASH | 2026-06-07T14:24:21+07:00
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
    '2026-06-07T14:24:21+07:00'
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

-- 1522 | Butterscotch (M) | QRIS | 2026-06-07T14:39:16+07:00
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
    '2026-06-07T14:39:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1523 | Vanilla (M) | QRIS | 2026-06-07T14:43:58+07:00
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
    '2026-06-07T14:43:58+07:00'
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

-- 1524 | Butterscotch (M) | QRIS | 2026-06-07T14:57:47+07:00
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
    '2026-06-07T14:57:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1525 | Baileys Latte (M) | CASH | 2026-06-07T15:05:47+07:00
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
    '2026-06-07T15:05:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1526 | Butterscotch (M) | CASH | 2026-06-07T15:19:41+07:00
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
    '2026-06-07T15:19:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1527 | Baileys Latte (M) | CASH | 2026-06-07T15:19:46+07:00
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
    '2026-06-07T15:19:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1528 | Vanilla (M) | CASH | 2026-06-07T15:23:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-07T15:23:00+07:00'
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

-- 1529 | Hazelnut (M) | CASH | 2026-06-07T15:25:55+07:00
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
    '2026-06-07T15:25:55+07:00'
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

-- 1530 | Butterscotch (M) | QRIS | 2026-06-07T15:28:18+07:00
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
    '2026-06-07T15:28:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1531 | Hazelnut (M) | QRIS | 2026-06-07T15:48:54+07:00
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
    '2026-06-07T15:48:54+07:00'
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

-- 1532 | Butterscotch (M) | CASH | 2026-06-07T15:50:34+07:00
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
    '2026-06-07T15:50:34+07:00'
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

-- 1533 | Baileys Latte (M) | QRIS | 2026-06-07T16:03:22+07:00
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
    '2026-06-07T16:03:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1534 | Butterscotch (M) | CASH | 2026-06-07T16:03:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-07T16:03:27+07:00'
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

-- 1535 | Gula Aren (M) | CASH | 2026-06-07T16:03:32+07:00
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
    '2026-06-07T16:03:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1536 | Butterscotch (M) | QRIS | 2026-06-07T16:06:58+07:00
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
    '2026-06-07T16:06:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1537 | Butterscotch (M) | CASH | 2026-06-07T16:09:15+07:00
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
    '2026-06-07T16:09:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1538 | Baileys Latte (M) | CASH | 2026-06-07T16:14:22+07:00
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
    '2026-06-07T16:14:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1539 | Butterscotch (M) | QRIS | 2026-06-07T16:23:27+07:00
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
    '2026-06-07T16:23:27+07:00'
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

-- 1540 | Baileys Latte (M) | QRIS | 2026-06-07T16:32:49+07:00
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
    '2026-06-07T16:32:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1541 | Butterscotch (M) | CASH | 2026-06-07T16:35:53+07:00
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
    '2026-06-07T16:35:53+07:00'
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

-- 1542 | Butterscotch (M) | GRATIS | 2026-06-07T16:49:33+07:00
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
    '2026-06-07T16:49:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1543 | Butterscotch (M) | QRIS | 2026-06-07T16:50:59+07:00
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
    '2026-06-07T16:50:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1544 | Baileys Latte (M) | CASH | 2026-06-07T17:03:29+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-07T17:03:29+07:00'
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

-- 1545 | Baileys Latte (M) | CASH | 2026-06-07T17:07:03+07:00
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
    '2026-06-07T17:07:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1546 | Gula Aren (M) | CASH | 2026-06-07T17:08:01+07:00
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
    '2026-06-07T17:08:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1547 | Hazelnut (M) | QRIS | 2026-06-07T17:11:01+07:00
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
    '2026-06-07T17:11:01+07:00'
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

-- 1548 | Baileys Latte (M) | QRIS | 2026-06-07T17:12:50+07:00
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
    '2026-06-07T17:12:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1549 | Butterscotch (M) | CASH | 2026-06-07T17:24:15+07:00
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
    '2026-06-07T17:24:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1550 | Baileys Latte (M) | QRIS | 2026-06-07T17:31:27+07:00
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
    '2026-06-07T17:31:27+07:00'
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

-- 1551 | Baileys Latte (M) | CASH | 2026-06-07T17:32:39+07:00
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
    '2026-06-07T17:32:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1552 | Butterscotch (M) | QRIS | 2026-06-07T17:32:52+07:00
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
    '2026-06-07T17:32:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1553 | Butterscotch (M) | CASH | 2026-06-07T17:33:03+07:00
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
    '2026-06-07T17:33:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1554 | Baileys Latte (M) | CASH | 2026-06-07T17:40:21+07:00
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
    '2026-06-07T17:40:21+07:00'
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

-- 1555 | Gula Aren (M) | CASH | 2026-06-07T17:42:31+07:00
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
    '2026-06-07T17:42:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1556 | Butterscotch (M) | QRIS | 2026-06-07T17:42:36+07:00
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
    '2026-06-07T17:42:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1557 | Baileys Latte (M) | QRIS | 2026-06-07T18:04:12+07:00
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
    '2026-06-07T18:04:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1558 | Butterscotch (M) | CASH | 2026-06-07T18:10:06+07:00
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
    '2026-06-07T18:10:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1559 | Butterscotch (M) | QRIS | 2026-06-07T18:15:45+07:00
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
    '2026-06-07T18:15:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1560 | Baileys Latte (M) | CASH | 2026-06-07T18:17:08+07:00
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
    '2026-06-07T18:17:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1561 | Vanilla (M) | GRATIS | 2026-06-07T18:22:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    0.00,
    '2026-06-07T18:22:58+07:00'
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

-- 1562 | Butterscotch (M) | QRIS | 2026-06-07T18:22:58+07:00
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
    '2026-06-07T18:22:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1563 | Vanilla (M) | CASH | 2026-06-07T18:23:04+07:00
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
    '2026-06-07T18:23:04+07:00'
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

-- 1564 | Butterscotch (M) | QRIS | 2026-06-07T18:23:04+07:00
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
    '2026-06-07T18:23:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1565 | Butterscotch (M) | QRIS | 2026-06-07T18:23:10+07:00
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
    '2026-06-07T18:23:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1566 | Baileys Latte (M) | CASH | 2026-06-07T18:26:17+07:00
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
    '2026-06-07T18:26:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1567 | Baileys Latte (M) | QRIS | 2026-06-07T18:32:47+07:00
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
    '2026-06-07T18:32:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1568 | Baileys Latte (M) | CASH | 2026-06-07T18:43:06+07:00
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
    '2026-06-07T18:43:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1569 | Butterscotch (M) | CASH | 2026-06-07T18:50:55+07:00
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
    '2026-06-07T18:50:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1570 | Butterscotch (M) | CASH | 2026-06-07T19:01:03+07:00
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
    '2026-06-07T19:01:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1571 | Baileys Latte (M) | CASH | 2026-06-07T19:04:01+07:00
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
    '2026-06-07T19:04:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1572 | Vanilla (M) | QRIS | 2026-06-07T19:13:53+07:00
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
    '2026-06-07T19:13:53+07:00'
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

-- 1573 | Butterscotch (M) | QRIS | 2026-06-07T19:14:01+07:00
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
    '2026-06-07T19:14:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1574 | Butterscotch (M) | QRIS | 2026-06-07T19:18:23+07:00
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
    '2026-06-07T19:18:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1575 | Hazelnut (M) | QRIS | 2026-06-07T19:18:30+07:00
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
    '2026-06-07T19:18:30+07:00'
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

-- 1576 | Gula Aren (M) | CASH | 2026-06-07T19:18:48+07:00
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
    '2026-06-07T19:18:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1577 | Baileys Latte (M) | CASH | 2026-06-07T19:21:44+07:00
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
    '2026-06-07T19:21:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1578 | Baileys Latte (M) | CASH | 2026-06-07T19:21:50+07:00
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
    '2026-06-07T19:21:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1579 | Baileys Latte (M) | CASH | 2026-06-07T19:23:49+07:00
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
    '2026-06-07T19:23:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1580 | Baileys Latte (M) | CASH | 2026-06-07T20:10:52+07:00
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
    '2026-06-07T20:10:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1581 | Butterscotch 1 ltr | CASH | 2026-06-07T21:08:33+07:00
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
    '2026-06-07T21:08:33+07:00'
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

-- 1582 | Baileys Latte (M) | GRATIS | 2026-06-07T21:30:37+07:00
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
    '2026-06-07T21:30:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1583 | Baileys Latte (M) | QRIS | 2026-06-07T21:30:45+07:00
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
    '2026-06-07T21:30:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1584 | Baileys Latte (M) | QRIS | 2026-06-07T21:57:00+07:00
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
    '2026-06-07T21:57:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1585 | Gula Aren (M) | QRIS | 2026-06-07T22:39:23+07:00
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
    '2026-06-07T22:39:23+07:00'
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

-- 1586 | Butterscotch (M) | QRIS | 2026-06-07T22:39:35+07:00
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
    '2026-06-07T22:39:35+07:00'
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

-- 1587 | Gula Aren (M) | CASH | 2026-06-07T22:39:49+07:00
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
    '2026-06-07T22:39:49+07:00'
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

-- 1588 | Butterscotch (M) | CASH | 2026-06-07T22:40:07+07:00
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
    '2026-06-07T22:40:07+07:00'
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

-- 1589 | Hazelnut (M) | CASH | 2026-06-07T22:40:16+07:00
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
    '2026-06-07T22:40:16+07:00'
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

-- 1590 | Baileys Latte (M) | CASH | 2026-06-07T22:40:23+07:00
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
    '2026-06-07T22:40:23+07:00'
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

-- 1591 | Cold Brew (M) | QRIS | 2026-06-08T09:00:46+07:00
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
    '2026-06-08T09:00:46+07:00'
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

-- 1592 | Cold Brew (M) | QRIS | 2026-06-08T09:31:34+07:00
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
    '2026-06-08T09:31:34+07:00'
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

-- 1593 | Gula Aren (M) | CASH | 2026-06-08T09:46:41+07:00
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
    '2026-06-08T09:46:41+07:00'
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

-- 1594 | Gula Aren (M) | CASH | 2026-06-08T09:58:34+07:00
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
    '2026-06-08T09:58:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1595 | Butterscotch (M) | CASH | 2026-06-08T09:58:40+07:00
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
    '2026-06-08T09:58:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1596 | Vanilla (M) | CASH | 2026-06-08T09:58:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-08T09:58:45+07:00'
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

-- 1597 | Hazelnut (M) | CASH | 2026-06-08T09:58:51+07:00
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
    '2026-06-08T09:58:51+07:00'
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

-- 1598 | Gula Aren (M) | QRIS | 2026-06-08T09:58:56+07:00
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
    '2026-06-08T09:58:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1599 | Butterscotch (M) | QRIS | 2026-06-08T10:12:00+07:00
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
    '2026-06-08T10:12:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1600 | Salted Caramel (M) | QRIS | 2026-06-08T10:18:10+07:00
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
    '2026-06-08T10:18:10+07:00'
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

-- 1601 | Butterscotch (M) | QRIS | 2026-06-08T10:22:43+07:00
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
    '2026-06-08T10:22:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1602 | Baileys Latte (M) | QRIS | 2026-06-08T10:22:54+07:00
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
    '2026-06-08T10:22:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1603 | Gula Aren (M) | QRIS | 2026-06-08T10:30:06+07:00
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
    '2026-06-08T10:30:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1604 | Gula Aren (M) | QRIS | 2026-06-08T10:30:15+07:00
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
    '2026-06-08T10:30:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1605 | Gula Aren (M) | CASH | 2026-06-08T10:30:51+07:00
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
    '2026-06-08T10:30:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1606 | Vanilla (M) | CASH | 2026-06-08T10:31:00+07:00
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
    '2026-06-08T10:31:00+07:00'
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

-- 1607 | Hazelnut (M) | QRIS | 2026-06-08T10:33:42+07:00
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
    '2026-06-08T10:33:42+07:00'
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

-- 1608 | Butterscotch (M) | QRIS | 2026-06-08T10:33:50+07:00
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
    '2026-06-08T10:33:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1609 | Baileys Latte (M) | QRIS | 2026-06-08T10:53:18+07:00
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
    '2026-06-08T10:53:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1610 | Salted Caramel (M) | QRIS | 2026-06-08T10:56:59+07:00
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
    '2026-06-08T10:56:59+07:00'
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

-- 1611 | Baileys Latte (M) | QRIS | 2026-06-08T10:57:05+07:00
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
    '2026-06-08T10:57:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1612 | Butterscotch (M) | QRIS | 2026-06-08T10:57:11+07:00
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
    '2026-06-08T10:57:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1613 | Butterscotch (M) | QRIS | 2026-06-08T11:03:49+07:00
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
    '2026-06-08T11:03:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1614 | Gula Aren (M) | QRIS | 2026-06-08T11:04:00+07:00
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
    '2026-06-08T11:04:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1615 | Salted Caramel (M) | CASH | 2026-06-08T11:05:46+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-08T11:05:46+07:00'
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

-- 1616 | Baileys Latte (M) | QRIS | 2026-06-08T11:08:44+07:00
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
    '2026-06-08T11:08:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1617 | Butterscotch (M) | CASH | 2026-06-08T11:08:52+07:00
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
    '2026-06-08T11:08:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1618 | Gula Aren (M) | QRIS | 2026-06-08T11:26:27+07:00
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
    '2026-06-08T11:26:27+07:00'
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

-- 1619 | Gula Aren (M) | CASH | 2026-06-08T11:33:15+07:00
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
    '2026-06-08T11:33:15+07:00'
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

-- 1620 | Butterscotch (M) | QRIS | 2026-06-08T11:33:54+07:00
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
    '2026-06-08T11:33:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1621 | Gula Aren (M) | CASH | 2026-06-08T11:33:58+07:00
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
    '2026-06-08T11:33:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1622 | Butterscotch (M) | CASH | 2026-06-08T11:36:02+07:00
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
    '2026-06-08T11:36:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1623 | Baileys Latte (M) | CASH | 2026-06-08T11:41:37+07:00
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
    '2026-06-08T11:41:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1624 | Gula Aren (M) | CASH | 2026-06-08T11:19:51+07:00
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
    '2026-06-08T11:19:51+07:00'
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

-- 1625 | Gula Aren (M) | QRIS | 2026-06-08T11:44:18+07:00
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
    '2026-06-08T11:44:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1626 | Cold Brew (M) | QRIS | 2026-06-08T11:46:59+07:00
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
    '2026-06-08T11:46:59+07:00'
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

-- 1627 | Gula Aren (M) | QRIS | 2026-06-08T11:47:15+07:00
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
    '2026-06-08T11:47:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1628 | Vanilla (M) | QRIS | 2026-06-08T11:48:13+07:00
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
    '2026-06-08T11:48:13+07:00'
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

-- 1629 | Butterscotch (M) | CASH | 2026-06-08T11:49:02+07:00
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
    '2026-06-08T11:49:02+07:00'
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

-- 1630 | Gula Aren (M) | CASH | 2026-06-08T11:49:09+07:00
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
    '2026-06-08T11:49:09+07:00'
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

-- 1631 | Gula Aren (M) | QRIS | 2026-06-08T11:49:06+07:00
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
    '2026-06-08T11:49:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1632 | Hazelnut (M) | QRIS | 2026-06-08T11:51:25+07:00
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
    '2026-06-08T11:51:25+07:00'
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

-- 1633 | Butterscotch (M) | CASH | 2026-06-08T11:51:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-08T11:51:31+07:00'
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

-- 1634 | Gula Aren (M) | QRIS | 2026-06-08T11:51:44+07:00
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
    '2026-06-08T11:51:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1635 | Gula Aren (M) | QRIS | 2026-06-08T11:59:50+07:00
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
    '2026-06-08T11:59:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1636 | Salted Caramel (M) | QRIS | 2026-06-08T12:00:54+07:00
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
    '2026-06-08T12:00:54+07:00'
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

-- 1637 | Butterscotch (M) | QRIS | 2026-06-08T12:01:13+07:00
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
    '2026-06-08T12:01:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1638 | Baileys Latte (M) | CASH | 2026-06-08T12:02:17+07:00
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
    '2026-06-08T12:02:17+07:00'
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

-- 1639 | Salted Caramel (M) | CASH | 2026-06-08T12:03:02+07:00
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
    '2026-06-08T12:03:02+07:00'
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

-- 1640 | Vanilla (M) | CASH | 2026-06-08T12:03:10+07:00
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
    '2026-06-08T12:03:10+07:00'
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

-- 1641 | Butterscotch (M) | CASH | 2026-06-08T12:04:31+07:00
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
    '2026-06-08T12:04:31+07:00'
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

-- 1642 | Butterscotch (M) | QRIS | 2026-06-08T12:07:32+07:00
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
    '2026-06-08T12:07:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1643 | Butterscotch (M) | QRIS | 2026-06-08T12:07:37+07:00
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
    '2026-06-08T12:07:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1644 | Baileys Latte (M) | QRIS | 2026-06-08T12:07:44+07:00
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
    '2026-06-08T12:07:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1645 | Cold Brew (M) | CASH | 2026-06-08T12:09:32+07:00
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
    '2026-06-08T12:09:32+07:00'
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

-- 1646 | Butterscotch (M) | QRIS | 2026-06-08T12:10:50+07:00
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
    '2026-06-08T12:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1647 | Butterscotch (M) | QRIS | 2026-06-08T12:14:03+07:00
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
    '2026-06-08T12:14:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1648 | Butterscotch (M) | QRIS | 2026-06-08T12:14:33+07:00
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
    '2026-06-08T12:14:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1649 | Butterscotch (M) | QRIS | 2026-06-08T12:18:51+07:00
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
    '2026-06-08T12:18:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1650 | Salted Caramel (M) | QRIS | 2026-06-08T12:19:49+07:00
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
    '2026-06-08T12:19:49+07:00'
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

-- 1651 | Baileys Latte (M) | QRIS | 2026-06-08T12:25:39+07:00
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
    '2026-06-08T12:25:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1652 | Hazelnut (M) | CASH | 2026-06-08T12:26:35+07:00
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
    '2026-06-08T12:26:35+07:00'
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

-- 1653 | Gula Aren (M) | CASH | 2026-06-08T12:26:47+07:00
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
    '2026-06-08T12:26:47+07:00'
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

-- 1654 | Butterscotch (M) | CASH | 2026-06-08T12:27:51+07:00
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
    '2026-06-08T12:27:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1655 | Gula Aren (M) | CASH | 2026-06-08T12:38:56+07:00
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
    '2026-06-08T12:38:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1656 | Gula Aren (M) | QRIS | 2026-06-08T12:41:38+07:00
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
    '2026-06-08T12:41:38+07:00'
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

-- 1657 | Gula Aren (M) | CASH | 2026-06-08T12:41:47+07:00
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
    '2026-06-08T12:41:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1658 | Baileys Latte (M) | QRIS | 2026-06-08T12:41:51+07:00
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
    '2026-06-08T12:41:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1659 | Cold Brew (M) | CASH | 2026-06-08T12:45:54+07:00
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
    '2026-06-08T12:45:54+07:00'
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

-- 1660 | Gula Aren (M) | CASH | 2026-06-08T12:46:34+07:00
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
    '2026-06-08T12:46:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1661 | Gula Aren (M) | CASH | 2026-06-08T12:46:39+07:00
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
    '2026-06-08T12:46:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1662 | Baileys Latte (M) | CASH | 2026-06-08T12:47:10+07:00
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
    '2026-06-08T12:47:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1663 | Vanilla (M) | QRIS | 2026-06-08T12:47:42+07:00
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
    '2026-06-08T12:47:42+07:00'
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

-- 1664 | Gula Aren (M) | CASH | 2026-06-08T12:48:16+07:00
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
    '2026-06-08T12:48:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1665 | Butterscotch (M) | CASH | 2026-06-08T12:49:53+07:00
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
    '2026-06-08T12:49:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1666 | Butterscotch (M) | QRIS | 2026-06-08T12:50:38+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-08T12:50:38+07:00'
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

-- 1667 | Baileys Latte (M) | QRIS | 2026-06-08T12:50:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-08T12:50:45+07:00'
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

-- 1668 | Baileys Latte (M) | CASH | 2026-06-08T12:50:51+07:00
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
    '2026-06-08T12:50:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1669 | Vanilla (M) | QRIS | 2026-06-08T12:50:53+07:00
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
    '2026-06-08T12:50:53+07:00'
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

-- 1670 | Gula Aren (M) | QRIS | 2026-06-08T12:50:56+07:00
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
    '2026-06-08T12:50:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1671 | Butterscotch (M) | QRIS | 2026-06-08T12:51:00+07:00
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
    '2026-06-08T12:51:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1672 | Vanilla (M) | CASH | 2026-06-08T12:47:24+07:00
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
    '2026-06-08T12:47:24+07:00'
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

-- 1673 | Salted Caramel (M) | CASH | 2026-06-08T12:52:22+07:00
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
    '2026-06-08T12:52:22+07:00'
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

-- 1674 | Baileys Latte (M) | QRIS | 2026-06-08T12:55:06+07:00
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
    '2026-06-08T12:55:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1675 | Butterscotch (M) | CASH | 2026-06-08T12:57:38+07:00
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
    '2026-06-08T12:57:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1676 | Gula Aren (M) | QRIS | 2026-06-08T13:00:29+07:00
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
    '2026-06-08T13:00:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1677 | Butterscotch (M) | CASH | 2026-06-08T12:58:50+07:00
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
    '2026-06-08T12:58:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1678 | Butterscotch (M) | QRIS | 2026-06-08T13:06:18+07:00
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
    '2026-06-08T13:06:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1679 | Hazelnut (M) | CASH | 2026-06-08T13:06:31+07:00
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
    '2026-06-08T13:06:31+07:00'
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

-- 1680 | Baileys Latte (M) | CASH | 2026-06-08T13:06:40+07:00
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
    '2026-06-08T13:06:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1681 | Butterscotch (M) | QRIS | 2026-06-08T13:11:07+07:00
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
    '2026-06-08T13:11:07+07:00'
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

-- 1682 | Gula Aren (M) | CASH | 2026-06-08T13:11:14+07:00
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
    '2026-06-08T13:11:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1683 | Cold Brew (M) | QRIS | 2026-06-08T13:18:16+07:00
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
    '2026-06-08T13:18:16+07:00'
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

-- 1684 | Hazelnut (M) | CASH | 2026-06-08T13:23:04+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-08T13:23:04+07:00'
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

-- 1685 | Vanilla (M) | CASH | 2026-06-08T13:23:11+07:00
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
    '2026-06-08T13:23:11+07:00'
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

-- 1686 | Gula Aren (M) | CASH | 2026-06-08T13:23:14+07:00
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
    '2026-06-08T13:23:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1687 | Baileys Latte (M) | QRIS | 2026-06-08T13:26:08+07:00
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
    '2026-06-08T13:26:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1688 | Vanilla (M) | CASH | 2026-06-08T13:32:38+07:00
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
    '2026-06-08T13:32:38+07:00'
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

-- 1689 | Baileys Latte (M) | CASH | 2026-06-08T13:32:43+07:00
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
    '2026-06-08T13:32:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1690 | Butterscotch (M) | QRIS | 2026-06-08T13:32:46+07:00
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
    '2026-06-08T13:32:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1691 | Cold Brew (M) | QRIS | 2026-06-08T13:39:21+07:00
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
    '2026-06-08T13:39:21+07:00'
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

-- 1692 | Baileys Latte (M) | CASH | 2026-06-08T13:40:13+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-08T13:40:13+07:00'
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

-- 1693 | Baileys Latte (M) | GRATIS | 2026-06-08T13:41:19+07:00
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
    '2026-06-08T13:41:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1694 | Baileys Latte (M) | QRIS | 2026-06-08T13:43:27+07:00
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
    '2026-06-08T13:43:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1695 | Butterscotch (M) | CASH | 2026-06-08T14:00:05+07:00
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
    '2026-06-08T14:00:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1696 | Gula Aren (M) | CASH | 2026-06-08T14:07:49+07:00
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
    '2026-06-08T14:07:49+07:00'
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

-- 1697 | Baileys Latte (M) | CASH | 2026-06-08T14:08:54+07:00
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
    '2026-06-08T14:08:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1698 | Butterscotch (M) | QRIS | 2026-06-08T14:13:41+07:00
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
    '2026-06-08T14:13:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1699 | Butterscotch (M) | CASH | 2026-06-08T14:20:13+07:00
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
    '2026-06-08T14:20:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1700 | Baileys Latte (M) | CASH | 2026-06-08T14:20:18+07:00
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
    '2026-06-08T14:20:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1701 | Butterscotch (M) | QRIS | 2026-06-08T14:20:21+07:00
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
    '2026-06-08T14:20:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1702 | Baileys Latte (M) | QRIS | 2026-06-08T14:20:27+07:00
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
    '2026-06-08T14:20:27+07:00'
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

-- 1703 | Baileys Latte (M) | QRIS | 2026-06-08T14:20:31+07:00
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
    '2026-06-08T14:20:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1704 | Baileys Latte (M) | CASH | 2026-06-08T14:20:37+07:00
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
    '2026-06-08T14:20:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1705 | Gula Aren (M) | QRIS | 2026-06-08T14:21:21+07:00
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
    '2026-06-08T14:21:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1706 | Baileys Latte (M) | QRIS | 2026-06-08T14:21:30+07:00
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
    '2026-06-08T14:21:30+07:00'
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

-- 1707 | Butterscotch (M) | QRIS | 2026-06-08T14:21:49+07:00
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
    '2026-06-08T14:21:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1708 | Baileys Latte (M) | QRIS | 2026-06-08T14:21:57+07:00
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
    '2026-06-08T14:21:57+07:00'
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

-- 1709 | Hazelnut (M) | QRIS | 2026-06-08T14:23:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-08T14:23:18+07:00'
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

-- 1710 | Gula Aren (M) | CASH | 2026-06-08T14:23:39+07:00
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
    '2026-06-08T14:23:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1711 | Butterscotch (M) | CASH | 2026-06-08T14:23:51+07:00
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
    '2026-06-08T14:23:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1712 | Butterscotch (M) | CASH | 2026-06-08T14:24:49+07:00
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
    '2026-06-08T14:24:49+07:00'
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

-- 1713 | Gula Aren (M) | QRIS | 2026-06-08T14:25:04+07:00
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
    '2026-06-08T14:25:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1714 | Gula Aren (M) | CASH | 2026-06-08T14:26:05+07:00
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
    '2026-06-08T14:26:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1715 | Gula Aren (M) | QRIS | 2026-06-08T14:26:17+07:00
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
    '2026-06-08T14:26:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1716 | Baileys Latte (M) | CASH | 2026-06-08T14:26:25+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-08T14:26:25+07:00'
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

-- 1717 | Butterscotch (M) | CASH | 2026-06-08T14:28:40+07:00
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
    '2026-06-08T14:28:40+07:00'
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

-- 1718 | Butterscotch (M) | CASH | 2026-06-08T14:29:15+07:00
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
    '2026-06-08T14:29:15+07:00'
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

-- 1719 | Butterscotch (M) | CASH | 2026-06-08T14:29:42+07:00
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
    '2026-06-08T14:29:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1720 | Butterscotch (M) | CASH | 2026-06-08T14:30:11+07:00
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
    '2026-06-08T14:30:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1721 | Salted Caramel (M) | CASH | 2026-06-08T14:30:16+07:00
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
    '2026-06-08T14:30:16+07:00'
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

-- 1722 | Hazelnut (M) | CASH | 2026-06-08T14:30:50+07:00
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
    '2026-06-08T14:30:50+07:00'
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

-- 1723 | Salted Caramel (M) | CASH | 2026-06-08T14:34:26+07:00
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
    '2026-06-08T14:34:26+07:00'
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

-- 1724 | Butterscotch (M) | QRIS | 2026-06-08T14:44:56+07:00
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
    '2026-06-08T14:44:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1725 | Baileys Latte (M) | CASH | 2026-06-08T14:46:57+07:00
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
    '2026-06-08T14:46:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1726 | Gula Aren (M) | QRIS | 2026-06-08T14:53:30+07:00
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
    '2026-06-08T14:53:30+07:00'
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

-- 1727 | Baileys Latte (M) | QRIS | 2026-06-08T14:54:09+07:00
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
    '2026-06-08T14:54:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1728 | Baileys Latte (M) | QRIS | 2026-06-08T15:00:47+07:00
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
    '2026-06-08T15:00:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1729 | Cold Brew (M) | CASH | 2026-06-08T15:01:29+07:00
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
    '2026-06-08T15:01:29+07:00'
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

-- 1730 | Butterscotch (M) | QRIS | 2026-06-08T15:10:52+07:00
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
    '2026-06-08T15:10:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1731 | Gula Aren (M) | QRIS | 2026-06-08T15:11:22+07:00
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
    '2026-06-08T15:11:22+07:00'
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

-- 1732 | Baileys Latte (M) | QRIS | 2026-06-08T15:15:44+07:00
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
    '2026-06-08T15:15:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1733 | Vanilla (M) | CASH | 2026-06-08T15:21:26+07:00
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
    '2026-06-08T15:21:26+07:00'
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

-- 1734 | Butterscotch (M) | QRIS | 2026-06-08T15:22:17+07:00
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
    '2026-06-08T15:22:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1735 | Butterscotch (M) | QRIS | 2026-06-08T15:22:12+07:00
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
    '2026-06-08T15:22:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1736 | Baileys Latte (M) | QRIS | 2026-06-08T15:23:37+07:00
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
    '2026-06-08T15:23:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1737 | Butterscotch (M) | GRATIS | 2026-06-08T15:24:56+07:00
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
    '2026-06-08T15:24:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1738 | Baileys Latte (M) | QRIS | 2026-06-08T15:34:12+07:00
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
    '2026-06-08T15:34:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1739 | Gula Aren (M) | CASH | 2026-06-08T15:37:15+07:00
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
    '2026-06-08T15:37:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1740 | Cold Brew (M) | QRIS | 2026-06-08T15:41:11+07:00
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
    '2026-06-08T15:41:11+07:00'
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

-- 1741 | Baileys Latte (M) | QRIS | 2026-06-08T15:46:52+07:00
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
    '2026-06-08T15:46:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1742 | Butterscotch (M) | QRIS | 2026-06-08T16:00:17+07:00
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
    '2026-06-08T16:00:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1743 | Baileys Latte (M) | CASH | 2026-06-08T16:00:24+07:00
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
    '2026-06-08T16:00:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1744 | Butterscotch (M) | QRIS | 2026-06-08T16:00:30+07:00
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
    '2026-06-08T16:00:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1745 | Butterscotch (M) | CASH | 2026-06-08T16:03:53+07:00
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
    '2026-06-08T16:03:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1746 | Gula Aren (M) | QRIS | 2026-06-08T16:08:00+07:00
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
    '2026-06-08T16:08:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1747 | Butterscotch (M) | CASH | 2026-06-08T16:11:30+07:00
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
    '2026-06-08T16:11:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1748 | Butterscotch (M) | CASH | 2026-06-08T16:27:28+07:00
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
    '2026-06-08T16:27:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1749 | Baileys Latte (M) | CASH | 2026-06-08T16:27:34+07:00
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
    '2026-06-08T16:27:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1750 | Cold Brew (M) | CASH | 2026-06-08T16:31:32+07:00
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
    '2026-06-08T16:31:32+07:00'
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

-- 1751 | Baileys Latte (M) | CASH | 2026-06-08T16:37:05+07:00
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
    '2026-06-08T16:37:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1752 | Butterscotch (M) | QRIS | 2026-06-08T16:37:08+07:00
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
    '2026-06-08T16:37:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1753 | Baileys Latte (M) | CASH | 2026-06-08T16:37:11+07:00
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
    '2026-06-08T16:37:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1754 | Gula Aren (M) | CASH | 2026-06-08T16:37:58+07:00
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
    '2026-06-08T16:37:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1755 | Butterscotch (M) | QRIS | 2026-06-08T16:41:12+07:00
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
    '2026-06-08T16:41:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1756 | Hazelnut (M) | CASH | 2026-06-08T16:41:53+07:00
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
    '2026-06-08T16:41:53+07:00'
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

-- 1757 | Vanilla (M) | CASH | 2026-06-08T16:42:01+07:00
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
    '2026-06-08T16:42:01+07:00'
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

-- 1758 | Butterscotch (M) | CASH | 2026-06-08T16:47:32+07:00
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
    '2026-06-08T16:47:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1759 | Butterscotch (M) | QRIS | 2026-06-08T16:52:37+07:00
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
    '2026-06-08T16:52:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1760 | Salted Caramel (M) | QRIS | 2026-06-08T16:52:46+07:00
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
    '2026-06-08T16:52:46+07:00'
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

-- 1761 | Baileys Latte (M) | CASH | 2026-06-08T16:53:12+07:00
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
    '2026-06-08T16:53:12+07:00'
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

-- 1762 | Salted Caramel (M) | QRIS | 2026-06-08T16:54:37+07:00
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
    '2026-06-08T16:54:37+07:00'
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

-- 1763 | Baileys Latte (M) | CASH | 2026-06-08T16:54:42+07:00
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
    '2026-06-08T16:54:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1764 | Hazelnut (M) | CASH | 2026-06-08T16:56:30+07:00
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
    '2026-06-08T16:56:30+07:00'
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

-- 1765 | Cold Brew (M) | CASH | 2026-06-08T16:56:37+07:00
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
    '2026-06-08T16:56:37+07:00'
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

-- 1766 | Salted Caramel (M) | CASH | 2026-06-08T17:01:55+07:00
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
    '2026-06-08T17:01:55+07:00'
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

-- 1767 | Vanilla (M) | CASH | 2026-06-08T17:02:53+07:00
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
    '2026-06-08T17:02:53+07:00'
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

-- 1768 | Hazelnut (M) | QRIS | 2026-06-08T17:03:54+07:00
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
    '2026-06-08T17:03:54+07:00'
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

-- 1769 | Butterscotch (M) | CASH | 2026-06-08T17:04:49+07:00
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
    '2026-06-08T17:04:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1770 | Baileys Latte (M) | CASH | 2026-06-08T17:05:34+07:00
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
    '2026-06-08T17:05:34+07:00'
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

-- 1771 | Baileys Latte (M) | CASH | 2026-06-08T17:10:04+07:00
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
    '2026-06-08T17:10:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1772 | Butterscotch (M) | CASH | 2026-06-08T17:15:44+07:00
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
    '2026-06-08T17:15:44+07:00'
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

-- 1773 | Butterscotch (M) | QRIS | 2026-06-08T17:19:47+07:00
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
    '2026-06-08T17:19:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1774 | Salted Caramel (M) | CASH | 2026-06-08T17:37:50+07:00
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
    '2026-06-08T17:37:50+07:00'
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

-- 1775 | Butterscotch (M) | QRIS | 2026-06-08T17:41:36+07:00
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
    '2026-06-08T17:41:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1776 | Cold Brew (M) | QRIS | 2026-06-08T17:46:51+07:00
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
    '2026-06-08T17:46:51+07:00'
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

-- 1777 | Baileys Latte (M) | QRIS | 2026-06-08T17:47:11+07:00
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
    '2026-06-08T17:47:11+07:00'
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

-- 1778 | Butterscotch (M) | QRIS | 2026-06-08T17:47:21+07:00
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
    '2026-06-08T17:47:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1779 | Salted Caramel (M) | CASH | 2026-06-08T17:47:52+07:00
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
    '2026-06-08T17:47:52+07:00'
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

-- 1780 | Gula Aren (M) | CASH | 2026-06-08T17:48:54+07:00
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
    '2026-06-08T17:48:54+07:00'
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

-- 1781 | Baileys Latte (M) | QRIS | 2026-06-08T17:49:33+07:00
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
    '2026-06-08T17:49:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1782 | Butterscotch (M) | QRIS | 2026-06-08T17:53:33+07:00
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
    '2026-06-08T17:53:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1783 | Cold Brew (M) | CASH | 2026-06-08T17:55:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-08T17:55:06+07:00'
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

-- 1784 | Cold Brew (M) | CASH | 2026-06-08T17:56:22+07:00
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
    '2026-06-08T17:56:22+07:00'
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

-- 1785 | Butterscotch (M) | CASH | 2026-06-08T17:56:33+07:00
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
    '2026-06-08T17:56:33+07:00'
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

-- 1786 | Vanilla (M) | CASH | 2026-06-08T17:57:25+07:00
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
    '2026-06-08T17:57:25+07:00'
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

-- 1787 | Vanilla (M) | QRIS | 2026-06-08T18:02:20+07:00
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
    '2026-06-08T18:02:20+07:00'
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

-- 1788 | Gula Aren (M) | QRIS | 2026-06-08T18:05:14+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-08T18:05:14+07:00'
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

-- 1789 | Butterscotch (M) | QRIS | 2026-06-08T18:06:53+07:00
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
    '2026-06-08T18:06:53+07:00'
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

-- 1790 | Vanilla (M) | QRIS | 2026-06-08T18:06:59+07:00
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
    '2026-06-08T18:06:59+07:00'
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

-- 1791 | Gula Aren (M) | CASH | 2026-06-08T18:07:27+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 8,
    0.00,
    28766.00,
    '2026-06-08T18:07:27+07:00'
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

-- 1792 | Vanilla (M) | CASH | 2026-06-08T18:07:36+07:00
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
    '2026-06-08T18:07:36+07:00'
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

-- 1793 | Hazelnut (M) | CASH | 2026-06-08T18:07:59+07:00
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
    '2026-06-08T18:07:59+07:00'
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

-- 1794 | Baileys Latte (M) | CASH | 2026-06-08T18:08:11+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    6862.00,
    '2026-06-08T18:08:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1795 | Butterscotch (M) | QRIS | 2026-06-08T18:21:58+07:00
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
    '2026-06-08T18:21:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1796 | Hazelnut (M) | CASH | 2026-06-08T18:22:28+07:00
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
    '2026-06-08T18:22:28+07:00'
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

-- 1797 | Vanilla (M) | CASH | 2026-06-08T18:22:33+07:00
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
    '2026-06-08T18:22:33+07:00'
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

-- 1798 | Baileys Latte (M) | QRIS | 2026-06-08T18:27:57+07:00
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
    '2026-06-08T18:27:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1799 | Butterscotch (M) | QRIS | 2026-06-08T18:28:17+07:00
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
    '2026-06-08T18:28:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1800 | Vanilla (M) | QRIS | 2026-06-08T18:28:22+07:00
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
    '2026-06-08T18:28:22+07:00'
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

-- 1801 | Butterscotch (M) | QRIS | 2026-06-08T18:29:02+07:00
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
    '2026-06-08T18:29:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1802 | Butterscotch (M) | QRIS | 2026-06-08T18:33:45+07:00
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
    '2026-06-08T18:33:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1803 | Baileys Latte (M) | QRIS | 2026-06-08T18:34:29+07:00
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
    '2026-06-08T18:34:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1804 | Gula Aren (M) | QRIS | 2026-06-08T18:40:41+07:00
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
    '2026-06-08T18:40:41+07:00'
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

-- 1805 | Salted Caramel (M) | QRIS | 2026-06-08T18:41:59+07:00
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
    '2026-06-08T18:41:59+07:00'
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

-- 1806 | Hazelnut (M) | QRIS | 2026-06-08T18:42:06+07:00
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
    '2026-06-08T18:42:06+07:00'
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

-- 1807 | Butterscotch (M) | CASH | 2026-06-08T18:48:35+07:00
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
    '2026-06-08T18:48:35+07:00'
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

-- 1808 | Gula Aren (M) | CASH | 2026-06-08T18:54:13+07:00
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
    '2026-06-08T18:54:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1809 | Baileys Latte (M) | GRATIS | 2026-06-08T19:06:57+07:00
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
    '2026-06-08T19:06:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1810 | Baileys Latte (M) | GRATIS | 2026-06-08T19:15:43+07:00
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
    '2026-06-08T19:15:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1811 | Vanilla (M) | CASH | 2026-06-08T19:21:41+07:00
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
    '2026-06-08T19:21:41+07:00'
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

-- 1812 | Butterscotch (M) | QRIS | 2026-06-08T19:24:01+07:00
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
    '2026-06-08T19:24:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1813 | Butterscotch (M) | CASH | 2026-06-08T19:30:22+07:00
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
    '2026-06-08T19:30:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1814 | Baileys Latte (M) | QRIS | 2026-06-08T19:51:13+07:00
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
    '2026-06-08T19:51:13+07:00'
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

-- 1815 | Gula Aren (M) | QRIS | 2026-06-08T19:56:38+07:00
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
    '2026-06-08T19:56:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1816 | Baileys Latte (M) | GRATIS | 2026-06-08T19:56:47+07:00
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
    '2026-06-08T19:56:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1817 | Butterscotch (M) | QRIS | 2026-06-08T19:59:46+07:00
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
    '2026-06-08T19:59:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1818 | Butterscotch (M) | CASH | 2026-06-08T19:40:03+07:00
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
    '2026-06-08T19:40:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1819 | Baileys Latte (M) | CASH | 2026-06-08T19:40:10+07:00
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
    '2026-06-08T19:40:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1820 | Butterscotch (M) | GRATIS | 2026-06-08T20:01:18+07:00
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
    '2026-06-08T20:01:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1821 | Butterscotch (M) | QRIS | 2026-06-08T20:02:26+07:00
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
    '2026-06-08T20:02:26+07:00'
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

-- 1822 | Cold Brew (M) | QRIS | 2026-06-08T20:02:50+07:00
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
    '2026-06-08T20:02:50+07:00'
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

-- 1823 | Gula Aren (M) | QRIS | 2026-06-08T20:03:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-08T20:03:17+07:00'
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

-- 1824 | Gula Aren (M) | CASH | 2026-06-08T20:04:00+07:00
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
    '2026-06-08T20:04:00+07:00'
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

-- 1825 | Butterscotch (M) | CASH | 2026-06-08T20:04:09+07:00
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
    '2026-06-08T20:04:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1826 | Vanilla (M) | CASH | 2026-06-08T20:04:17+07:00
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
    '2026-06-08T20:04:17+07:00'
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

-- 1827 | Salted Caramel (M) | CASH | 2026-06-08T20:04:27+07:00
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
    '2026-06-08T20:04:27+07:00'
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

-- 1828 | Hazelnut (M) | CASH | 2026-06-08T20:04:33+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-08T20:04:33+07:00'
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

-- 1829 | Cold Brew (M) | CASH | 2026-06-08T20:04:45+07:00
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
    '2026-06-08T20:04:45+07:00'
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

-- 1830 | Baileys Latte (M) | CASH | 2026-06-08T20:04:57+07:00
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
    '2026-06-08T20:04:57+07:00'
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

-- 1831 | Butterscotch (M) | CASH | 2026-06-08T20:05:19+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 3,
    0.00,
    21109.00,
    '2026-06-08T20:05:19+07:00'
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

-- 1832 | Salted Caramel (M) | CASH | 2026-06-08T20:06:17+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-08T20:06:17+07:00'
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

-- 1833 | Hazelnut (M) | CASH | 2026-06-08T20:06:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-08T20:06:26+07:00'
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

-- 1834 | Butterscotch (M) | QRIS | 2026-06-08T20:16:10+07:00
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
    '2026-06-08T20:16:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1835 | Butterscotch (M) | CASH | 2026-06-08T20:16:43+07:00
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
    '2026-06-08T20:16:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1836 | Butterscotch (M) | QRIS | 2026-06-08T20:18:13+07:00
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
    '2026-06-08T20:18:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1837 | Baileys Latte (M) | QRIS | 2026-06-08T20:18:21+07:00
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
    '2026-06-08T20:18:21+07:00'
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

-- 1838 | Cold Brew (M) | QRIS | 2026-06-08T20:35:18+07:00
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
    '2026-06-08T20:35:18+07:00'
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

-- 1839 | Butterscotch (M) | QRIS | 2026-06-08T20:35:24+07:00
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
    '2026-06-08T20:35:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1840 | Cold Brew (M) | CASH | 2026-06-08T20:35:31+07:00
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
    '2026-06-08T20:35:31+07:00'
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

-- 1841 | Gula Aren (M) | CASH | 2026-06-08T20:39:06+07:00
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
    '2026-06-08T20:39:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1842 | Baileys Latte (M) | CASH | 2026-06-08T20:39:31+07:00
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
    '2026-06-08T20:39:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1843 | Gula Aren (M) | QRIS | 2026-06-08T21:21:56+07:00
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
    '2026-06-08T21:21:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1844 | Butterscotch (M) | QRIS | 2026-06-08T21:25:32+07:00
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
    '2026-06-08T21:25:32+07:00'
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

-- 1845 | Butterscotch (M) | QRIS | 2026-06-08T21:37:06+07:00
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
    '2026-06-08T21:37:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1846 | Vanilla (M) | QRIS | 2026-06-08T21:37:38+07:00
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
    '2026-06-08T21:37:38+07:00'
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

-- 1847 | Gula Aren (M) | CASH | 2026-06-08T21:38:17+07:00
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
    '2026-06-08T21:38:17+07:00'
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

-- 1848 | Salted Caramel (M) | CASH | 2026-06-08T21:38:26+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-08T21:38:26+07:00'
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

-- 1849 | Hazelnut (M) | CASH | 2026-06-08T21:38:32+07:00
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
    '2026-06-08T21:38:32+07:00'
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

-- 1850 | Cold Brew (M) | CASH | 2026-06-08T21:38:40+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-08T21:38:40+07:00'
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

-- 1851 | Baileys Latte (M) | CASH | 2026-06-08T21:38:54+07:00
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
    '2026-06-08T21:38:54+07:00'
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

-- 1852 | Salted Caramel (M) | CASH | 2026-06-08T22:03:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-08T22:03:45+07:00'
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

-- 1853 | Baileys Latte (M) | CASH | 2026-06-08T22:18:23+07:00
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
    '2026-06-08T22:18:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1854 | Gula Aren (M) | QRIS | 2026-06-08T22:25:38+07:00
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
    '2026-06-08T22:25:38+07:00'
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

-- 1855 | Cold Brew (M) | QRIS | 2026-06-08T22:25:46+07:00
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
    '2026-06-08T22:25:46+07:00'
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

-- 1856 | Butterscotch (M) | QRIS | 2026-06-08T22:25:54+07:00
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
    '2026-06-08T22:25:54+07:00'
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

-- 1857 | Gula Aren (M) | CASH | 2026-06-08T22:27:39+07:00
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
    '2026-06-08T22:27:39+07:00'
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

-- 1858 | Butterscotch (M) | CASH | 2026-06-08T22:27:46+07:00
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
    '2026-06-08T22:27:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1859 | Vanilla (M) | CASH | 2026-06-08T22:27:52+07:00
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
    '2026-06-08T22:27:52+07:00'
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

-- 1860 | Salted Caramel (M) | CASH | 2026-06-08T22:27:59+07:00
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
    '2026-06-08T22:27:59+07:00'
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

-- 1861 | Hazelnut (M) | CASH | 2026-06-08T22:28:07+07:00
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
    '2026-06-08T22:28:07+07:00'
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

-- 1862 | Baileys Latte (M) | CASH | 2026-06-08T22:28:14+07:00
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
    '2026-06-08T22:28:14+07:00'
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

-- 1863 | Gula Aren (M) | QRIS | 2026-06-08T22:32:51+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    16000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    7192.00,
    '2026-06-08T22:32:51+07:00'
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

-- 1864 | Butterscotch (M) | QRIS | 2026-06-08T22:32:57+07:00
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
    '2026-06-08T22:32:57+07:00'
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

-- 1865 | Gula Aren (M) | CASH | 2026-06-08T22:33:31+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 8,
    0.00,
    28766.00,
    '2026-06-08T22:33:31+07:00'
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

-- 1866 | Butterscotch (M) | CASH | 2026-06-08T22:33:47+07:00
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
    '2026-06-08T22:33:47+07:00'
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

-- 1867 | Hazelnut (M) | CASH | 2026-06-08T22:33:57+07:00
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
    '2026-06-08T22:33:57+07:00'
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

-- 1868 | Cold Brew (M) | CASH | 2026-06-08T22:34:06+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-08T22:34:06+07:00'
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

-- 1869 | Baileys Latte (M) | CASH | 2026-06-08T22:34:15+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    162500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 13,
    0.00,
    89212.00,
    '2026-06-08T22:34:15+07:00'
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

-- 1870 | Gula Aren (M) | CASH | 2026-06-08T23:02:52+07:00
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
    '2026-06-08T23:02:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1871 | Cold Brew (M) | QRIS | 2026-06-09T09:32:50+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    20000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 2,
    0.00,
    10724.00,
    '2026-06-09T09:32:50+07:00'
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

-- 1872 | Vanilla (M) | QRIS | 2026-06-09T09:32:58+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-09T09:32:58+07:00'
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

-- 1873 | Gula Aren (M) | CASH | 2026-06-09T09:37:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 8,
    0.00,
    28766.00,
    '2026-06-09T09:37:10+07:00'
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

-- 1874 | Butterscotch (M) | QRIS | 2026-06-09T09:37:16+07:00
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
    '2026-06-09T09:37:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1875 | Salted Caramel (M) | QRIS | 2026-06-09T09:37:21+07:00
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
    '2026-06-09T09:37:21+07:00'
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

-- 1876 | Butterscotch (M) | CASH | 2026-06-09T09:57:59+07:00
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
    '2026-06-09T09:57:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1877 | Salted Caramel (M) | CASH | 2026-06-09T09:58:05+07:00
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
    '2026-06-09T09:58:05+07:00'
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

-- 1878 | Butterscotch (M) | QRIS | 2026-06-09T10:09:00+07:00
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
    '2026-06-09T10:09:00+07:00'
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

-- 1879 | Baileys Latte (M) | QRIS | 2026-06-09T10:09:06+07:00
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
    '2026-06-09T10:09:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1880 | Gula Aren (M) | QRIS | 2026-06-09T10:22:29+07:00
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
    '2026-06-09T10:22:29+07:00'
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

-- 1881 | Butterscotch (M) | CASH | 2026-06-09T10:24:50+07:00
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
    '2026-06-09T10:24:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1882 | Butterscotch (M) | QRIS | 2026-06-09T10:26:32+07:00
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
    '2026-06-09T10:26:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1883 | Gula Aren (M) | CASH | 2026-06-09T10:36:25+07:00
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
    '2026-06-09T10:36:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1884 | Gula Aren (M) | CASH | 2026-06-09T10:38:10+07:00
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
    '2026-06-09T10:38:10+07:00'
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

-- 1885 | Baileys Latte (M) | CASH | 2026-06-09T10:39:01+07:00
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
    '2026-06-09T10:39:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1886 | Butterscotch (M) | QRIS | 2026-06-09T10:41:15+07:00
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
    '2026-06-09T10:41:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1887 | Butterscotch (M) | QRIS | 2026-06-09T10:41:27+07:00
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
    '2026-06-09T10:41:27+07:00'
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

-- 1888 | Baileys Latte (M) | QRIS | 2026-06-09T10:41:44+07:00
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
    '2026-06-09T10:41:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1889 | Baileys Latte (M) | QRIS | 2026-06-09T10:45:56+07:00
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
    '2026-06-09T10:45:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1890 | Butterscotch (M) | QRIS | 2026-06-09T10:46:56+07:00
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
    '2026-06-09T10:46:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1891 | Salted Caramel (M) | CASH | 2026-06-09T10:47:10+07:00
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
    '2026-06-09T10:47:10+07:00'
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

-- 1892 | Hazelnut (M) | QRIS | 2026-06-09T10:48:43+07:00
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
    '2026-06-09T10:48:43+07:00'
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

-- 1893 | Butterscotch (M) | QRIS | 2026-06-09T10:48:49+07:00
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
    '2026-06-09T10:48:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1894 | Butterscotch (M) | QRIS | 2026-06-09T10:50:39+07:00
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
    '2026-06-09T10:50:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1895 | Gula Aren (M) | CASH | 2026-06-09T11:07:02+07:00
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
    '2026-06-09T11:07:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1896 | Butterscotch (M) | QRIS | 2026-06-09T11:19:21+07:00
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
    '2026-06-09T11:19:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1897 | Baileys Latte (M) | QRIS | 2026-06-09T11:19:32+07:00
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
    '2026-06-09T11:19:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1898 | Butterscotch (M) | CASH | 2026-06-09T11:22:11+07:00
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
    '2026-06-09T11:22:11+07:00'
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

-- 1899 | Gula Aren (M) | CASH | 2026-06-09T11:22:16+07:00
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
    '2026-06-09T11:22:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1900 | Gula Aren (M) | QRIS | 2026-06-09T11:22:20+07:00
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
    '2026-06-09T11:22:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1901 | Gula Aren (M) | QRIS | 2026-06-09T11:22:48+07:00
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
    '2026-06-09T11:22:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1902 | Baileys Latte (M) | QRIS | 2026-06-09T11:27:01+07:00
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
    '2026-06-09T11:27:01+07:00'
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

-- 1903 | Gula Aren (M) | QRIS | 2026-06-09T11:39:56+07:00
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
    '2026-06-09T11:39:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1904 | Butterscotch (M) | QRIS | 2026-06-09T11:40:28+07:00
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
    '2026-06-09T11:40:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1905 | Hazelnut (M) | QRIS | 2026-06-09T11:40:34+07:00
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
    '2026-06-09T11:40:34+07:00'
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

-- 1906 | Cold Brew (M) | CASH | 2026-06-09T11:41:37+07:00
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
    '2026-06-09T11:41:37+07:00'
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

-- 1907 | Baileys Latte (M) | CASH | 2026-06-09T11:41:48+07:00
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
    '2026-06-09T11:41:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1908 | Butterscotch (M) | QRIS | 2026-06-09T11:48:26+07:00
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
    '2026-06-09T11:48:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1909 | Butterscotch (M) | QRIS | 2026-06-09T11:48:47+07:00
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
    '2026-06-09T11:48:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1910 | Baileys Latte (M) | QRIS | 2026-06-09T11:54:53+07:00
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
    '2026-06-09T11:54:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1911 | Gula Aren (M) | CASH | 2026-06-09T11:57:49+07:00
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
    '2026-06-09T11:57:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1912 | Butterscotch (M) | CASH | 2026-06-09T11:58:24+07:00
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
    '2026-06-09T11:58:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1913 | Hazelnut (M) | QRIS | 2026-06-09T11:58:32+07:00
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
    '2026-06-09T11:58:32+07:00'
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

-- 1914 | Gula Aren (M) | CASH | 2026-06-09T11:58:38+07:00
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
    '2026-06-09T11:58:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1915 | Gula Aren (M) | QRIS | 2026-06-09T12:06:08+07:00
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
    '2026-06-09T12:06:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1916 | Gula Aren (M) | QRIS | 2026-06-09T12:06:42+07:00
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
    '2026-06-09T12:06:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1917 | Baileys Latte (M) | QRIS | 2026-06-09T12:10:41+07:00
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
    '2026-06-09T12:10:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1918 | Gula Aren (M) | CASH | 2026-06-09T12:11:35+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-09T12:11:35+07:00'
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

-- 1919 | Butterscotch (M) | CASH | 2026-06-09T12:17:34+07:00
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
    '2026-06-09T12:17:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1920 | Baileys Latte (M) | CASH | 2026-06-09T12:17:46+07:00
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
    '2026-06-09T12:17:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1921 | Gula Aren (M) | CASH | 2026-06-09T12:17:51+07:00
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
    '2026-06-09T12:17:51+07:00'
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

-- 1922 | Gula Aren (M) | QRIS | 2026-06-09T12:22:32+07:00
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
    '2026-06-09T12:22:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1923 | Gula Aren (M) | CASH | 2026-06-09T12:22:37+07:00
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
    '2026-06-09T12:22:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1924 | Butterscotch (M) | QRIS | 2026-06-09T12:23:09+07:00
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
    '2026-06-09T12:23:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1925 | Butterscotch (M) | QRIS | 2026-06-09T12:23:18+07:00
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
    '2026-06-09T12:23:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1926 | Vanilla (M) | QRIS | 2026-06-09T12:23:28+07:00
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
    '2026-06-09T12:23:28+07:00'
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

-- 1927 | Baileys Latte (M) | CASH | 2026-06-09T12:26:48+07:00
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
    '2026-06-09T12:26:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1928 | Vanilla (M) | QRIS | 2026-06-09T12:28:48+07:00
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
    '2026-06-09T12:28:48+07:00'
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

-- 1929 | Baileys Latte (M) | QRIS | 2026-06-09T12:34:32+07:00
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
    '2026-06-09T12:34:32+07:00'
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

-- 1930 | Butterscotch (M) | CASH | 2026-06-09T12:38:25+07:00
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
    '2026-06-09T12:38:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1931 | Butterscotch (M) | QRIS | 2026-06-09T12:38:51+07:00
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
    '2026-06-09T12:38:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1932 | Butterscotch (M) | QRIS | 2026-06-09T12:40:46+07:00
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
    '2026-06-09T12:40:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1933 | Gula Aren (M) | QRIS | 2026-06-09T12:44:10+07:00
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
    '2026-06-09T12:44:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1934 | Butterscotch (M) | CASH | 2026-06-09T12:46:06+07:00
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
    '2026-06-09T12:46:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1935 | Baileys Latte (M) | CASH | 2026-06-09T12:53:31+07:00
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
    '2026-06-09T12:53:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1936 | Butterscotch (M) | QRIS | 2026-06-09T12:53:35+07:00
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
    '2026-06-09T12:53:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1937 | Baileys Latte (M) | QRIS | 2026-06-09T12:54:53+07:00
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
    '2026-06-09T12:54:53+07:00'
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

-- 1938 | Gula Aren (M) | QRIS | 2026-06-09T13:01:11+07:00
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
    '2026-06-09T13:01:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1939 | Gula Aren (M) | CASH | 2026-06-09T13:01:28+07:00
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
    '2026-06-09T13:01:28+07:00'
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

-- 1940 | Butterscotch (M) | QRIS | 2026-06-09T13:02:49+07:00
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
    '2026-06-09T13:02:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1941 | Baileys Latte (M) | QRIS | 2026-06-09T13:02:57+07:00
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
    '2026-06-09T13:02:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1942 | Gula Aren (M) | CASH | 2026-06-09T13:09:34+07:00
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
    '2026-06-09T13:09:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1943 | Baileys Latte (M) | QRIS | 2026-06-09T13:09:40+07:00
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
    '2026-06-09T13:09:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1944 | Gula Aren (M) | QRIS | 2026-06-09T13:09:49+07:00
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
    '2026-06-09T13:09:49+07:00'
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

-- 1945 | Butterscotch (M) | QRIS | 2026-06-09T13:09:55+07:00
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
    '2026-06-09T13:09:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1946 | Baileys Latte (M) | CASH | 2026-06-09T13:10:03+07:00
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
    '2026-06-09T13:10:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1947 | Baileys Latte (M) | CASH | 2026-06-09T13:10:11+07:00
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
    '2026-06-09T13:10:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1948 | Gula Aren (M) | CASH | 2026-06-09T13:09:03+07:00
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
    '2026-06-09T13:09:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1949 | Baileys Latte (M) | CASH | 2026-06-09T13:11:33+07:00
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
    '2026-06-09T13:11:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1950 | Butterscotch (M) | CASH | 2026-06-09T13:11:42+07:00
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
    '2026-06-09T13:11:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1951 | Gula Aren (M) | CASH | 2026-06-09T13:11:51+07:00
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
    '2026-06-09T13:11:51+07:00'
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

-- 1952 | Gula Aren (M) | CASH | 2026-06-09T13:12:45+07:00
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
    '2026-06-09T13:12:45+07:00'
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

-- 1953 | Gula Aren (M) | CASH | 2026-06-09T13:13:04+07:00
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
    '2026-06-09T13:13:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1954 | Cold Brew (M) | QRIS | 2026-06-09T13:13:41+07:00
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
    '2026-06-09T13:13:41+07:00'
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

-- 1955 | Gula Aren (M) | CASH | 2026-06-09T13:13:51+07:00
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
    '2026-06-09T13:13:51+07:00'
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

-- 1956 | Butterscotch (M) | CASH | 2026-06-09T13:14:10+07:00
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
    '2026-06-09T13:14:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1957 | Baileys Latte (M) | CASH | 2026-06-09T13:14:14+07:00
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
    '2026-06-09T13:14:14+07:00'
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

-- 1958 | Gula Aren (M) | QRIS | 2026-06-09T13:15:01+07:00
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
    '2026-06-09T13:15:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1959 | Baileys Latte (M) | CASH | 2026-06-09T13:15:50+07:00
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
    '2026-06-09T13:15:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1960 | Gula Aren (M) | CASH | 2026-06-09T13:16:12+07:00
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
    '2026-06-09T13:16:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1961 | Butterscotch (M) | CASH | 2026-06-09T13:20:52+07:00
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
    '2026-06-09T13:20:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1962 | Hazelnut (M) | CASH | 2026-06-09T13:58:16+07:00
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
    '2026-06-09T13:58:16+07:00'
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

-- 1963 | Butterscotch (M) | CASH | 2026-06-09T13:58:27+07:00
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
    '2026-06-09T13:58:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1964 | Gula Aren (M) | QRIS | 2026-06-09T14:04:59+07:00
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
    '2026-06-09T14:04:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1965 | Butterscotch (M) | QRIS | 2026-06-09T14:05:09+07:00
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
    '2026-06-09T14:05:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1966 | Baileys Latte (M) | QRIS | 2026-06-09T14:06:22+07:00
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
    '2026-06-09T14:06:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1967 | Butterscotch (M) | QRIS | 2026-06-09T14:08:21+07:00
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
    '2026-06-09T14:08:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1968 | Baileys Latte (M) | CASH | 2026-06-09T14:12:39+07:00
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
    '2026-06-09T14:12:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1969 | Gula Aren (M) | CASH | 2026-06-09T14:32:06+07:00
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
    '2026-06-09T14:32:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1970 | Baileys Latte (M) | CASH | 2026-06-09T14:33:13+07:00
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
    '2026-06-09T14:33:13+07:00'
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

-- 1971 | Gula Aren (M) | QRIS | 2026-06-09T14:33:25+07:00
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
    '2026-06-09T14:33:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1972 | Butterscotch (M) | CASH | 2026-06-09T14:40:19+07:00
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
    '2026-06-09T14:40:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1973 | Baileys Latte (M) | QRIS | 2026-06-09T14:55:53+07:00
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
    '2026-06-09T14:55:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1974 | Butterscotch (M) | CASH | 2026-06-09T15:09:55+07:00
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
    '2026-06-09T15:09:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1975 | Baileys Latte (M) | QRIS | 2026-06-09T15:12:01+07:00
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
    '2026-06-09T15:12:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1976 | Butterscotch (M) | QRIS | 2026-06-09T15:13:52+07:00
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
    '2026-06-09T15:13:52+07:00'
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

-- 1977 | Gula Aren (M) | QRIS | 2026-06-09T15:19:53+07:00
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
    '2026-06-09T15:19:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1978 | Butterscotch (M) | QRIS | 2026-06-09T15:21:37+07:00
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
    '2026-06-09T15:21:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1979 | Baileys Latte (M) | QRIS | 2026-06-09T15:26:01+07:00
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
    '2026-06-09T15:26:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1980 | Gula Aren (M) | CASH | 2026-06-09T15:26:19+07:00
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
    '2026-06-09T15:26:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1981 | Baileys Latte (M) | QRIS | 2026-06-09T15:33:25+07:00
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
    '2026-06-09T15:33:25+07:00'
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

-- 1982 | Butterscotch (M) | QRIS | 2026-06-09T15:35:08+07:00
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
    '2026-06-09T15:35:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1983 | Butterscotch (M) | CASH | 2026-06-09T15:41:40+07:00
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
    '2026-06-09T15:41:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1984 | Salted Caramel (M) | CASH | 2026-06-09T15:41:47+07:00
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
    '2026-06-09T15:41:47+07:00'
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

-- 1985 | Gula Aren (M) | CASH | 2026-06-09T15:42:39+07:00
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
    '2026-06-09T15:42:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1986 | Gula Aren (M) | CASH | 2026-06-09T15:42:46+07:00
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
    '2026-06-09T15:42:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1987 | Gula Aren (M) | CASH | 2026-06-09T15:43:06+07:00
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
    '2026-06-09T15:43:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1988 | Butterscotch (M) | CASH | 2026-06-09T15:43:11+07:00
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
    '2026-06-09T15:43:11+07:00'
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

-- 1989 | Gula Aren (M) | CASH | 2026-06-09T15:46:56+07:00
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
    '2026-06-09T15:46:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1990 | Baileys Latte (M) | QRIS | 2026-06-09T15:48:49+07:00
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
    '2026-06-09T15:48:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1991 | Gula Aren (M) | CASH | 2026-06-09T15:53:21+07:00
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
    '2026-06-09T15:53:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 1992 | Vanilla (M) | CASH | 2026-06-09T16:02:11+07:00
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
    '2026-06-09T16:02:11+07:00'
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

-- 1993 | Baileys Latte (M) | CASH | 2026-06-09T16:03:25+07:00
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
    '2026-06-09T16:03:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 1994 | Salted Caramel (M) | QRIS | 2026-06-09T16:03:57+07:00
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
    '2026-06-09T16:03:57+07:00'
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

-- 1995 | Butterscotch (M) | QRIS | 2026-06-09T16:05:24+07:00
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
    '2026-06-09T16:05:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1996 | Butterscotch (M) | CASH | 2026-06-09T16:06:13+07:00
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
    '2026-06-09T16:06:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1997 | Butterscotch (M) | CASH | 2026-06-09T16:06:43+07:00
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
    '2026-06-09T16:06:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1998 | Butterscotch (M) | QRIS | 2026-06-09T16:08:37+07:00
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
    '2026-06-09T16:08:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 1999 | Baileys Latte (M) | CASH | 2026-06-09T16:08:56+07:00
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
    '2026-06-09T16:08:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2000 | Butterscotch (M) | CASH | 2026-06-09T16:13:46+07:00
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
    '2026-06-09T16:13:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2001 | Vanilla (M) | QRIS | 2026-06-09T16:30:09+07:00
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
    '2026-06-09T16:30:09+07:00'
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

-- 2002 | Baileys Latte (M) | QRIS | 2026-06-09T16:31:35+07:00
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
    '2026-06-09T16:31:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2003 | Gula Aren (M) | QRIS | 2026-06-09T16:36:01+07:00
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
    '2026-06-09T16:36:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2004 | Baileys Latte (M) | QRIS | 2026-06-09T16:36:06+07:00
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
    '2026-06-09T16:36:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2005 | Baileys Latte (M) | CASH | 2026-06-09T16:42:00+07:00
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
    '2026-06-09T16:42:00+07:00'
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

-- 2006 | Butterscotch (M) | CASH | 2026-06-09T16:43:20+07:00
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
    '2026-06-09T16:43:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2007 | Butterscotch (M) | QRIS | 2026-06-09T16:48:11+07:00
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
    '2026-06-09T16:48:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2008 | Baileys Latte (M) | QRIS | 2026-06-09T16:48:47+07:00
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
    '2026-06-09T16:48:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2009 | Vanilla (M) | CASH | 2026-06-09T16:48:55+07:00
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
    '2026-06-09T16:48:55+07:00'
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

-- 2010 | Butterscotch (M) | QRIS | 2026-06-09T16:49:31+07:00
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
    '2026-06-09T16:49:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2011 | Butterscotch (M) | QRIS | 2026-06-09T16:50:42+07:00
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
    '2026-06-09T16:50:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2012 | Butterscotch (M) | GRATIS | 2026-06-09T16:53:15+07:00
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
    '2026-06-09T16:53:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2013 | Butterscotch (M) | CASH | 2026-06-09T16:53:22+07:00
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
    '2026-06-09T16:53:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2014 | Butterscotch (M) | QRIS | 2026-06-09T17:00:06+07:00
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
    '2026-06-09T17:00:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2015 | Baileys Latte (M) | QRIS | 2026-06-09T17:01:37+07:00
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
    '2026-06-09T17:01:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2016 | Butterscotch (M) | QRIS | 2026-06-09T17:16:23+07:00
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
    '2026-06-09T17:16:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2017 | Butterscotch (M) | QRIS | 2026-06-09T17:16:28+07:00
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
    '2026-06-09T17:16:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2018 | Salted Caramel (M) | QRIS | 2026-06-09T17:16:36+07:00
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
    '2026-06-09T17:16:36+07:00'
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

-- 2019 | Butterscotch (M) | QRIS | 2026-06-09T17:17:15+07:00
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
    '2026-06-09T17:17:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2020 | Hazelnut (M) | QRIS | 2026-06-09T17:17:21+07:00
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
    '2026-06-09T17:17:21+07:00'
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

-- 2021 | Butterscotch (M) | CASH | 2026-06-09T17:18:57+07:00
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
    '2026-06-09T17:18:57+07:00'
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

-- 2022 | Hazelnut (M) | QRIS | 2026-06-09T17:19:28+07:00
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
    '2026-06-09T17:19:28+07:00'
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

-- 2023 | Butterscotch (M) | CASH | 2026-06-09T17:31:19+07:00
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
    '2026-06-09T17:31:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2024 | Baileys Latte (M) | QRIS | 2026-06-09T17:33:52+07:00
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
    '2026-06-09T17:33:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2025 | Gula Aren (M) | QRIS | 2026-06-09T17:40:53+07:00
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
    '2026-06-09T17:40:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2026 | Butterscotch (M) | QRIS | 2026-06-09T17:41:13+07:00
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
    '2026-06-09T17:41:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2027 | Baileys Latte (M) | CASH | 2026-06-09T17:42:04+07:00
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
    '2026-06-09T17:42:04+07:00'
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

-- 2028 | Vanilla (M) | QRIS | 2026-06-09T17:43:28+07:00
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
    '2026-06-09T17:43:28+07:00'
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

-- 2029 | Butterscotch (M) | QRIS | 2026-06-09T17:43:46+07:00
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
    '2026-06-09T17:43:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2030 | Gula Aren (M) | CASH | 2026-06-09T17:44:16+07:00
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
    '2026-06-09T17:44:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2031 | Baileys Latte (M) | CASH | 2026-06-09T17:45:55+07:00
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
    '2026-06-09T17:45:55+07:00'
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

-- 2032 | Butterscotch (M) | CASH | 2026-06-09T17:46:51+07:00
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
    '2026-06-09T17:46:51+07:00'
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

-- 2033 | Hazelnut (M) | QRIS | 2026-06-09T17:47:43+07:00
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
    '2026-06-09T17:47:43+07:00'
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

-- 2034 | Vanilla (M) | QRIS | 2026-06-09T17:47:50+07:00
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
    '2026-06-09T17:47:50+07:00'
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

-- 2035 | Butterscotch (M) | QRIS | 2026-06-09T17:48:45+07:00
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
    '2026-06-09T17:48:45+07:00'
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

-- 2036 | Hazelnut (M) | QRIS | 2026-06-09T17:49:46+07:00
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
    '2026-06-09T17:49:46+07:00'
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

-- 2037 | Butterscotch (M) | QRIS | 2026-06-09T17:50:27+07:00
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
    '2026-06-09T17:50:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2038 | Gula Aren (M) | QRIS | 2026-06-09T17:51:42+07:00
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
    '2026-06-09T17:51:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2039 | Baileys Latte (M) | QRIS | 2026-06-09T17:54:40+07:00
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
    '2026-06-09T17:54:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2040 | Salted Caramel (M) | QRIS | 2026-06-09T17:54:48+07:00
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
    '2026-06-09T17:54:48+07:00'
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

-- 2041 | Vanilla (M) | QRIS | 2026-06-09T17:56:12+07:00
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
    '2026-06-09T17:56:12+07:00'
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

-- 2042 | Baileys Latte (M) | QRIS | 2026-06-09T17:58:00+07:00
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
    '2026-06-09T17:58:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2043 | Baileys Latte (M) | QRIS | 2026-06-09T18:00:51+07:00
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
    '2026-06-09T18:00:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2044 | Baileys Latte (M) | QRIS | 2026-06-09T18:03:54+07:00
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
    '2026-06-09T18:03:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2045 | Gula Aren (M) | CASH | 2026-06-09T18:06:04+07:00
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
    '2026-06-09T18:06:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2046 | Butterscotch (M) | QRIS | 2026-06-09T18:06:33+07:00
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
    '2026-06-09T18:06:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2047 | Gula Aren (M) | CASH | 2026-06-09T18:06:46+07:00
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
    '2026-06-09T18:06:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2048 | Butterscotch (M) | QRIS | 2026-06-09T18:06:57+07:00
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
    '2026-06-09T18:06:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2049 | Baileys Latte (M) | CASH | 2026-06-09T18:09:34+07:00
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
    '2026-06-09T18:09:34+07:00'
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

-- 2050 | Baileys Latte (M) | QRIS | 2026-06-09T18:15:41+07:00
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
    '2026-06-09T18:15:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2051 | Baileys Latte (M) | QRIS | 2026-06-09T18:16:48+07:00
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
    '2026-06-09T18:16:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2052 | Gula Aren (M) | QRIS | 2026-06-09T18:16:52+07:00
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
    '2026-06-09T18:16:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2053 | Butterscotch (M) | QRIS | 2026-06-09T18:16:58+07:00
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
    '2026-06-09T18:16:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2054 | Gula Aren (M) | QRIS | 2026-06-09T18:17:56+07:00
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
    '2026-06-09T18:17:56+07:00'
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

-- 2055 | Butterscotch (M) | QRIS | 2026-06-09T18:18:29+07:00
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
    '2026-06-09T18:18:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2056 | Salted Caramel (M) | CASH | 2026-06-09T18:24:30+07:00
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
    '2026-06-09T18:24:30+07:00'
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

-- 2057 | Baileys Latte (M) | QRIS | 2026-06-09T18:24:39+07:00
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
    '2026-06-09T18:24:39+07:00'
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

-- 2058 | Gula Aren (M) | QRIS | 2026-06-09T18:26:01+07:00
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
    '2026-06-09T18:26:01+07:00'
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

-- 2059 | Gula Aren (M) | CASH | 2026-06-09T18:27:20+07:00
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
    '2026-06-09T18:27:20+07:00'
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

-- 2060 | Butterscotch (M) | CASH | 2026-06-09T18:27:33+07:00
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
    '2026-06-09T18:27:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2061 | Vanilla (M) | GRATIS | 2026-06-09T18:27:37+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    0.00,
    '2026-06-09T18:27:37+07:00'
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

-- 2062 | Salted Caramel (M) | CASH | 2026-06-09T18:27:47+07:00
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
    '2026-06-09T18:27:47+07:00'
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

-- 2063 | Baileys Latte (M) | QRIS | 2026-06-09T18:28:01+07:00
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
    '2026-06-09T18:28:01+07:00'
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

-- 2064 | Hazelnut (M) | CASH | 2026-06-09T18:27:59+07:00
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
    '2026-06-09T18:27:59+07:00'
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

-- 2065 | Butterscotch (M) | QRIS | 2026-06-09T18:28:07+07:00
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
    '2026-06-09T18:28:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2066 | Cold Brew (M) | CASH | 2026-06-09T18:28:08+07:00
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
    '2026-06-09T18:28:08+07:00'
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

-- 2067 | Baileys Latte (M) | CASH | 2026-06-09T18:28:18+07:00
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
    '2026-06-09T18:28:18+07:00'
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

-- 2068 | Salted Caramel (M) | CASH | 2026-06-09T18:29:23+07:00
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
    '2026-06-09T18:29:23+07:00'
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

-- 2069 | Baileys Latte (M) | QRIS | 2026-06-09T18:31:04+07:00
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
    '2026-06-09T18:31:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2070 | Butterscotch (M) | CASH | 2026-06-09T18:40:58+07:00
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
    '2026-06-09T18:40:58+07:00'
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

-- 2071 | Baileys Latte (M) | QRIS | 2026-06-09T18:44:31+07:00
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
    '2026-06-09T18:44:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2072 | Gula Aren (M) | QRIS | 2026-06-09T18:55:33+07:00
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
    '2026-06-09T18:55:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2073 | Butterscotch (M) | QRIS | 2026-06-09T18:56:47+07:00
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
    '2026-06-09T18:56:47+07:00'
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

-- 2074 | Butterscotch (M) | CASH | 2026-06-09T19:26:04+07:00
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
    '2026-06-09T19:26:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2075 | Salted Caramel (M) | CASH | 2026-06-09T19:26:10+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-09T19:26:10+07:00'
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

-- 2076 | Gula Aren (M) | CASH | 2026-06-09T19:33:27+07:00
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
    '2026-06-09T19:33:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2077 | Baileys Latte (M) | CASH | 2026-06-09T19:33:53+07:00
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
    '2026-06-09T19:33:53+07:00'
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

-- 2078 | Baileys Latte (M) | GRATIS | 2026-06-09T19:34:06+07:00
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
    '2026-06-09T19:34:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2079 | Salted Caramel (M) | CASH | 2026-06-09T19:34:16+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    12500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    7036.00,
    '2026-06-09T19:34:16+07:00'
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

-- 2080 | Vanilla (M) | CASH | 2026-06-09T19:34:37+07:00
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
    '2026-06-09T19:34:37+07:00'
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

-- 2081 | Baileys Latte (M) | GRATIS | 2026-06-09T19:37:33+07:00
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
    '2026-06-09T19:37:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2082 | Salted Caramel (M) | GRATIS | 2026-06-09T19:37:48+07:00
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
    '2026-06-09T19:37:48+07:00'
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

-- 2083 | Hazelnut (M) | GRATIS | 2026-06-09T19:37:56+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    0.00,
    '2026-06-09T19:37:56+07:00'
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

-- 2084 | Butterscotch (M) | GRATIS | 2026-06-09T19:40:18+07:00
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
    '2026-06-09T19:40:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2085 | Salted Caramel (M) | GRATIS | 2026-06-09T19:49:08+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-09T19:49:08+07:00'
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

-- 2086 | Butterscotch (M) | CASH | 2026-06-09T19:50:09+07:00
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
    '2026-06-09T19:50:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2087 | Salted Caramel (M) | QRIS | 2026-06-09T19:52:42+07:00
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
    '2026-06-09T19:52:42+07:00'
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

-- 2088 | Baileys Latte (M) | QRIS | 2026-06-09T19:52:50+07:00
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
    '2026-06-09T19:52:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2089 | Hazelnut (M) | CASH | 2026-06-09T19:52:50+07:00
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
    '2026-06-09T19:52:50+07:00'
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

-- 2090 | Baileys Latte (M) | CASH | 2026-06-09T19:57:34+07:00
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
    '2026-06-09T19:57:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2091 | Butterscotch (M) | CASH | 2026-06-09T20:01:30+07:00
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
    '2026-06-09T20:01:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2092 | Baileys Latte (M) | CASH | 2026-06-09T20:03:54+07:00
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
    '2026-06-09T20:03:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2093 | Butterscotch (M) | CASH | 2026-06-09T20:04:36+07:00
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
    '2026-06-09T20:04:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2094 | Gula Aren (M) | CASH | 2026-06-09T20:04:42+07:00
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
    '2026-06-09T20:04:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2095 | Butterscotch (M) | QRIS | 2026-06-09T20:06:31+07:00
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
    '2026-06-09T20:06:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2096 | Gula Aren (M) | QRIS | 2026-06-09T20:13:04+07:00
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
    '2026-06-09T20:13:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2097 | Gula Aren (M) | CASH | 2026-06-09T20:27:24+07:00
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
    '2026-06-09T20:27:24+07:00'
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

-- 2098 | Butterscotch (M) | CASH | 2026-06-09T20:27:47+07:00
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
    '2026-06-09T20:27:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2099 | Baileys Latte (M) | CASH | 2026-06-09T20:27:52+07:00
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
    '2026-06-09T20:27:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2100 | Butterscotch (M) | QRIS | 2026-06-09T20:32:27+07:00
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
    '2026-06-09T20:32:27+07:00'
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

-- 2101 | Gula Aren (M) | CASH | 2026-06-09T20:33:05+07:00
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
    '2026-06-09T20:33:05+07:00'
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

-- 2102 | Butterscotch (M) | CASH | 2026-06-09T20:33:18+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-09T20:33:18+07:00'
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

-- 2103 | Vanilla (M) | CASH | 2026-06-09T20:33:27+07:00
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
    '2026-06-09T20:33:27+07:00'
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

-- 2104 | Salted Caramel (M) | CASH | 2026-06-09T20:33:36+07:00
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
    '2026-06-09T20:33:36+07:00'
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

-- 2105 | Hazelnut (M) | CASH | 2026-06-09T20:33:45+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-09T20:33:45+07:00'
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

-- 2106 | Baileys Latte (M) | CASH | 2026-06-09T20:34:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 2,
    0.00,
    13725.00,
    '2026-06-09T20:34:01+07:00'
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

-- 2107 | Butterscotch (M) | QRIS | 2026-06-09T20:36:02+07:00
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
    '2026-06-09T20:36:02+07:00'
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

-- 2108 | Baileys Latte (M) | QRIS | 2026-06-09T20:42:54+07:00
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
    '2026-06-09T20:42:54+07:00'
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

-- 2109 | Butterscotch (M) | QRIS | 2026-06-09T20:49:55+07:00
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
    '2026-06-09T20:49:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2110 | Butterscotch (M) | QRIS | 2026-06-09T20:53:39+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    150000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 12,
    0.00,
    84437.00,
    '2026-06-09T20:53:39+07:00'
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

-- 2111 | Vanilla (M) | QRIS | 2026-06-09T20:53:49+07:00
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
    '2026-06-09T20:53:49+07:00'
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

-- 2112 | Gula Aren (M) | QRIS | 2026-06-09T20:54:26+07:00
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
    '2026-06-09T20:54:26+07:00'
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

-- 2113 | Gula Aren (M) | CASH | 2026-06-09T20:55:01+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    64000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 8,
    0.00,
    28766.00,
    '2026-06-09T20:55:01+07:00'
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

-- 2114 | Salted Caramel (M) | CASH | 2026-06-09T20:55:26+07:00
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
    '2026-06-09T20:55:26+07:00'
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

-- 2115 | Cold Brew (M) | CASH | 2026-06-09T20:55:32+07:00
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
    '2026-06-09T20:55:32+07:00'
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

-- 2116 | Baileys Latte (M) | CASH | 2026-06-09T20:55:43+07:00
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
    '2026-06-09T20:55:43+07:00'
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

-- 2117 | Vanilla (M) | QRIS | 2026-06-09T20:59:41+07:00
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
    '2026-06-09T20:59:41+07:00'
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

-- 2118 | Hazelnut (M) | QRIS | 2026-06-09T21:07:07+07:00
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
    '2026-06-09T21:07:07+07:00'
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

-- 2119 | Baileys Latte (M) | QRIS | 2026-06-09T21:08:37+07:00
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
    '2026-06-09T21:08:37+07:00'
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

-- 2120 | Butterscotch (M) | QRIS | 2026-06-09T21:09:10+07:00
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
    '2026-06-09T21:09:10+07:00'
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

-- 2121 | Gula Aren (M) | CASH | 2026-06-09T21:09:42+07:00
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
    '2026-06-09T21:09:42+07:00'
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

-- 2122 | Butterscotch (M) | CASH | 2026-06-09T21:09:47+07:00
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
    '2026-06-09T21:09:47+07:00'
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

-- 2123 | Vanilla (M) | CASH | 2026-06-09T21:09:57+07:00
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
    '2026-06-09T21:09:57+07:00'
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

-- 2124 | Salted Caramel (M) | CASH | 2026-06-09T21:14:15+07:00
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
    '2026-06-09T21:14:15+07:00'
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

-- 2125 | Gula Aren (M) | CASH | 2026-06-09T21:14:33+07:00
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
    '2026-06-09T21:14:33+07:00'
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

-- 2126 | Gula Aren (M) | CASH | 2026-06-09T21:15:39+07:00
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
    '2026-06-09T21:15:39+07:00'
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

-- 2127 | Butterscotch (M) | CASH | 2026-06-09T21:17:20+07:00
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
    '2026-06-09T21:17:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2128 | Baileys Latte (M) | CASH | 2026-06-09T21:17:33+07:00
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
    '2026-06-09T21:17:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2129 | Vanilla (M) | QRIS | 2026-06-09T21:18:45+07:00
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
    '2026-06-09T21:18:45+07:00'
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

-- 2130 | Butterscotch (M) | CASH | 2026-06-09T21:21:14+07:00
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
    '2026-06-09T21:21:14+07:00'
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

-- 2131 | Salted Caramel (M) | CASH | 2026-06-09T21:21:20+07:00
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
    '2026-06-09T21:21:20+07:00'
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

-- 2132 | Gula Aren (M) | QRIS | 2026-06-09T21:27:38+07:00
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
    '2026-06-09T21:27:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2133 | Butterscotch (M) | QRIS | 2026-06-09T21:46:17+07:00
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
    '2026-06-09T21:46:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2134 | Baileys Latte (M) | CASH | 2026-06-09T21:46:25+07:00
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
    '2026-06-09T21:46:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2135 | Baileys Latte (M) | CASH | 2026-06-09T21:53:59+07:00
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
    '2026-06-09T21:53:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2136 | Vanilla (M) | QRIS | 2026-06-09T21:54:11+07:00
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
    '2026-06-09T21:54:11+07:00'
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

-- 2137 | Baileys Latte (M) | QRIS | 2026-06-09T22:00:53+07:00
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
    '2026-06-09T22:00:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2138 | Butterscotch (M) | CASH | 2026-06-09T22:09:28+07:00
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
    '2026-06-09T22:09:28+07:00'
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

-- 2139 | Butterscotch (M) | CASH | 2026-06-09T22:10:02+07:00
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
    '2026-06-09T22:10:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2140 | Butterscotch 1 ltr | QRIS | 2026-06-09T22:17:44+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = '19ed6362-3113-4aa8-a33b-c6c99e6e5be6')) * 1,
    0.00,
    44488.00,
    '2026-06-09T22:17:44+07:00'
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

-- 2141 | Butterscotch (M) | QRIS | 2026-06-09T22:21:59+07:00
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
    '2026-06-09T22:21:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2142 | Vanilla (M) | QRIS | 2026-06-09T22:28:49+07:00
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
    '2026-06-09T22:28:49+07:00'
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

-- 2143 | Baileys Latte (M) | QRIS | 2026-06-09T22:28:54+07:00
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
    '2026-06-09T22:28:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2144 | Hazelnut (M) | CASH | 2026-06-09T22:42:21+07:00
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
    '2026-06-09T22:42:21+07:00'
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

-- 2145 | Baileys Latte (M) | CASH | 2026-06-09T22:42:28+07:00
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
    '2026-06-09T22:42:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2146 | Baileys Latte (M) | QRIS | 2026-06-10T08:55:09+07:00
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
    '2026-06-10T08:55:09+07:00'
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

-- 2147 | Gula Aren (M) | QRIS | 2026-06-10T08:55:14+07:00
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
    '2026-06-10T08:55:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2148 | Gula Aren (M) | CASH | 2026-06-10T09:01:54+07:00
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
    '2026-06-10T09:01:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2149 | Gula Aren (M) | QRIS | 2026-06-10T09:14:13+07:00
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
    '2026-06-10T09:14:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2150 | Gula Aren (M) | QRIS | 2026-06-10T09:14:22+07:00
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
    '2026-06-10T09:14:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2151 | Salted Caramel (M) | QRIS | 2026-06-10T09:14:26+07:00
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
    '2026-06-10T09:14:26+07:00'
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

-- 2152 | Gula Aren (M) | QRIS | 2026-06-10T09:14:34+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    24000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 3,
    0.00,
    10787.00,
    '2026-06-10T09:14:34+07:00'
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

-- 2153 | Gula Aren (M) | QRIS | 2026-06-10T09:45:45+07:00
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
    '2026-06-10T09:45:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2154 | Gula Aren (M) | CASH | 2026-06-10T09:49:02+07:00
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
    '2026-06-10T09:49:02+07:00'
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

-- 2155 | Butterscotch (M) | CASH | 2026-06-10T10:02:50+07:00
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
    '2026-06-10T10:02:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2156 | Gula Aren (M) | QRIS | 2026-06-10T10:23:05+07:00
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
    '2026-06-10T10:23:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2157 | Salted Caramel (M) | QRIS | 2026-06-10T10:39:20+07:00
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
    '2026-06-10T10:39:20+07:00'
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

-- 2158 | Baileys Latte (M) | QRIS | 2026-06-10T10:52:04+07:00
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
    '2026-06-10T10:52:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2159 | Gula Aren (M) | CASH | 2026-06-10T10:54:57+07:00
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
    '2026-06-10T10:54:57+07:00'
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

-- 2160 | Baileys Latte (M) | CASH | 2026-06-10T10:55:07+07:00
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
    '2026-06-10T10:55:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2161 | Gula Aren (M) | QRIS | 2026-06-10T11:00:05+07:00
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
    '2026-06-10T11:00:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2162 | Baileys Latte (M) | CASH | 2026-06-10T11:00:25+07:00
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
    '2026-06-10T11:00:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2163 | Gula Aren (M) | CASH | 2026-06-10T11:01:50+07:00
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
    '2026-06-10T11:01:50+07:00'
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

-- 2164 | Gula Aren (M) | CASH | 2026-06-10T11:03:40+07:00
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
    '2026-06-10T11:03:40+07:00'
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

-- 2165 | Butterscotch (M) | QRIS | 2026-06-10T11:04:23+07:00
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
    '2026-06-10T11:04:23+07:00'
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

-- 2166 | Butterscotch (M) | QRIS | 2026-06-10T11:04:46+07:00
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
    '2026-06-10T11:04:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2167 | Gula Aren (M) | QRIS | 2026-06-10T11:04:54+07:00
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
    '2026-06-10T11:04:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2168 | Baileys Latte (M) | QRIS | 2026-06-10T11:05:23+07:00
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
    '2026-06-10T11:05:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2169 | Gula Aren (M) | QRIS | 2026-06-10T09:58:52+07:00
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
    '2026-06-10T09:58:52+07:00'
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

-- 2170 | Salted Caramel (M) | QRIS | 2026-06-10T09:58:59+07:00
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
    '2026-06-10T09:58:59+07:00'
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

-- 2171 | Butterscotch (M) | CASH | 2026-06-10T11:06:56+07:00
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
    '2026-06-10T11:06:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2172 | Gula Aren (M) | CASH | 2026-06-10T11:07:24+07:00
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
    '2026-06-10T11:07:24+07:00'
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

-- 2173 | Gula Aren (M) | QRIS | 2026-06-10T11:07:36+07:00
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
    '2026-06-10T11:07:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2174 | Baileys Latte (M) | CASH | 2026-06-10T11:10:39+07:00
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
    '2026-06-10T11:10:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2175 | Gula Aren (M) | QRIS | 2026-06-10T11:16:05+07:00
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
    '2026-06-10T11:16:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2176 | Gula Aren (M) | CASH | 2026-06-10T11:16:15+07:00
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
    '2026-06-10T11:16:15+07:00'
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

-- 2177 | Gula Aren (M) | CASH | 2026-06-10T11:19:49+07:00
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
    '2026-06-10T11:19:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2178 | Gula Aren (M) | QRIS | 2026-06-10T11:19:57+07:00
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
    '2026-06-10T11:19:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2179 | Butterscotch (M) | QRIS | 2026-06-10T11:20:06+07:00
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
    '2026-06-10T11:20:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2180 | Hazelnut (M) | CASH | 2026-06-10T11:24:00+07:00
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
    '2026-06-10T11:24:00+07:00'
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

-- 2181 | Baileys Latte (M) | CASH | 2026-06-10T11:32:30+07:00
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
    '2026-06-10T11:32:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2182 | Butterscotch (M) | CASH | 2026-06-10T11:33:42+07:00
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
    '2026-06-10T11:33:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2183 | Baileys Latte (M) | CASH | 2026-06-10T11:36:35+07:00
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
    '2026-06-10T11:36:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2184 | Gula Aren (M) | QRIS | 2026-06-10T11:39:14+07:00
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
    '2026-06-10T11:39:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2185 | Butterscotch (M) | CASH | 2026-06-10T11:39:25+07:00
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
    '2026-06-10T11:39:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2186 | Gula Aren (M) | CASH | 2026-06-10T11:46:52+07:00
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
    '2026-06-10T11:46:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2187 | Vanilla (M) | QRIS | 2026-06-10T11:46:56+07:00
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
    '2026-06-10T11:46:56+07:00'
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

-- 2188 | Baileys Latte (M) | CASH | 2026-06-10T11:47:00+07:00
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
    '2026-06-10T11:47:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2189 | Vanilla (M) | QRIS | 2026-06-10T11:51:43+07:00
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
    '2026-06-10T11:51:43+07:00'
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

-- 2190 | Gula Aren (M) | CASH | 2026-06-10T11:53:15+07:00
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
    '2026-06-10T11:53:15+07:00'
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

-- 2191 | Baileys Latte (M) | QRIS | 2026-06-10T11:55:20+07:00
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
    '2026-06-10T11:55:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2192 | Gula Aren (M) | QRIS | 2026-06-10T11:55:46+07:00
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
    '2026-06-10T11:55:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2193 | Salted Caramel (M) | QRIS | 2026-06-10T11:56:33+07:00
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
    '2026-06-10T11:56:33+07:00'
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

-- 2194 | Baileys Latte (M) | CASH | 2026-06-10T12:00:43+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-10T12:00:43+07:00'
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

-- 2195 | Vanilla (M) | QRIS | 2026-06-10T12:07:12+07:00
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
    '2026-06-10T12:07:12+07:00'
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

-- 2196 | Butterscotch (M) | QRIS | 2026-06-10T12:07:18+07:00
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
    '2026-06-10T12:07:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2197 | Salted Caramel (M) | QRIS | 2026-06-10T12:07:24+07:00
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
    '2026-06-10T12:07:24+07:00'
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

-- 2198 | Butterscotch (M) | QRIS | 2026-06-10T12:10:15+07:00
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
    '2026-06-10T12:10:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2199 | Hazelnut (M) | QRIS | 2026-06-10T12:10:26+07:00
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
    '2026-06-10T12:10:26+07:00'
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

-- 2200 | Baileys Latte (M) | QRIS | 2026-06-10T12:10:32+07:00
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
    '2026-06-10T12:10:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2201 | Gula Aren (M) | CASH | 2026-06-10T12:12:32+07:00
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
    '2026-06-10T12:12:32+07:00'
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

-- 2202 | Baileys Latte (M) | CASH | 2026-06-10T12:12:39+07:00
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
    '2026-06-10T12:12:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2203 | Gula Aren (M) | QRIS | 2026-06-10T12:20:45+07:00
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
    '2026-06-10T12:20:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2204 | Butterscotch (M) | CASH | 2026-06-10T12:23:12+07:00
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
    '2026-06-10T12:23:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2205 | Salted Caramel (M) | CASH | 2026-06-10T12:27:23+07:00
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
    '2026-06-10T12:27:23+07:00'
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

-- 2206 | Gula Aren (M) | QRIS | 2026-06-10T12:27:50+07:00
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
    '2026-06-10T12:27:50+07:00'
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

-- 2207 | Gula Aren (M) | CASH | 2026-06-10T12:27:56+07:00
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
    '2026-06-10T12:27:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2208 | Gula Aren (M) | CASH | 2026-06-10T12:30:14+07:00
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
    '2026-06-10T12:30:14+07:00'
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

-- 2209 | Gula Aren (M) | QRIS | 2026-06-10T12:30:39+07:00
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
    '2026-06-10T12:30:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2210 | Baileys Latte (M) | QRIS | 2026-06-10T12:30:48+07:00
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
    '2026-06-10T12:30:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2211 | Salted Caramel (M) | CASH | 2026-06-10T12:32:09+07:00
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
    '2026-06-10T12:32:09+07:00'
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

-- 2212 | Vanilla (M) | QRIS | 2026-06-10T12:32:18+07:00
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
    '2026-06-10T12:32:18+07:00'
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

-- 2213 | Baileys Latte (M) | QRIS | 2026-06-10T12:32:37+07:00
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
    '2026-06-10T12:32:37+07:00'
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

-- 2214 | Gula Aren (M) | QRIS | 2026-06-10T12:33:55+07:00
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
    '2026-06-10T12:33:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2215 | Baileys Latte (M) | CASH | 2026-06-10T12:36:01+07:00
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
    '2026-06-10T12:36:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2216 | Salted Caramel (M) | CASH | 2026-06-10T12:36:39+07:00
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
    '2026-06-10T12:36:39+07:00'
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

-- 2217 | Cold Brew (M) | CASH | 2026-06-10T12:39:33+07:00
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
    '2026-06-10T12:39:33+07:00'
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

-- 2218 | Gula Aren (M) | QRIS | 2026-06-10T12:44:48+07:00
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
    '2026-06-10T12:44:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2219 | Butterscotch (M) | CASH | 2026-06-10T12:47:15+07:00
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
    '2026-06-10T12:47:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2220 | Butterscotch (M) | QRIS | 2026-06-10T12:52:25+07:00
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
    '2026-06-10T12:52:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2221 | Gula Aren (M) | CASH | 2026-06-10T12:52:32+07:00
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
    '2026-06-10T12:52:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2222 | Butterscotch (M) | QRIS | 2026-06-10T12:56:12+07:00
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
    '2026-06-10T12:56:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2223 | Butterscotch (M) | QRIS | 2026-06-10T12:57:42+07:00
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
    '2026-06-10T12:57:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2224 | Hazelnut (M) | QRIS | 2026-06-10T13:00:09+07:00
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
    '2026-06-10T13:00:09+07:00'
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

-- 2225 | Butterscotch (M) | QRIS | 2026-06-10T13:01:00+07:00
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
    '2026-06-10T13:01:00+07:00'
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

-- 2226 | Butterscotch (M) | CASH | 2026-06-10T13:01:09+07:00
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
    '2026-06-10T13:01:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2227 | Baileys Latte (M) | QRIS | 2026-06-10T13:07:06+07:00
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
    '2026-06-10T13:07:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2228 | Butterscotch (M) | CASH | 2026-06-10T13:12:05+07:00
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
    '2026-06-10T13:12:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2229 | Gula Aren (M) | QRIS | 2026-06-10T13:12:13+07:00
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
    '2026-06-10T13:12:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2230 | Vanilla (M) | CASH | 2026-06-10T13:12:22+07:00
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
    '2026-06-10T13:12:22+07:00'
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

-- 2231 | Baileys Latte (M) | QRIS | 2026-06-10T13:15:09+07:00
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
    '2026-06-10T13:15:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2232 | Butterscotch (M) | CASH | 2026-06-10T13:15:16+07:00
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
    '2026-06-10T13:15:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2233 | Baileys Latte (M) | QRIS | 2026-06-10T13:15:59+07:00
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
    '2026-06-10T13:15:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2234 | Hazelnut (M) | CASH | 2026-06-10T13:21:00+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-10T13:21:00+07:00'
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

-- 2235 | Vanilla (M) | CASH | 2026-06-10T13:21:56+07:00
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
    '2026-06-10T13:21:56+07:00'
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

-- 2236 | Gula Aren (M) | CASH | 2026-06-10T13:22:40+07:00
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
    '2026-06-10T13:22:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2237 | Gula Aren (M) | QRIS | 2026-06-10T13:28:32+07:00
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
    '2026-06-10T13:28:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2238 | Gula Aren (M) | QRIS | 2026-06-10T13:29:08+07:00
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
    '2026-06-10T13:29:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2239 | Butterscotch (M) | QRIS | 2026-06-10T13:29:33+07:00
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
    '2026-06-10T13:29:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2240 | Gula Aren (M) | QRIS | 2026-06-10T13:29:44+07:00
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
    '2026-06-10T13:29:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2241 | Gula Aren (M) | QRIS | 2026-06-10T13:29:52+07:00
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
    '2026-06-10T13:29:52+07:00'
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

-- 2242 | Baileys Latte (M) | QRIS | 2026-06-10T13:30:06+07:00
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
    '2026-06-10T13:30:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2243 | Butterscotch (M) | QRIS | 2026-06-10T13:32:57+07:00
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
    '2026-06-10T13:32:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2244 | Baileys Latte (M) | QRIS | 2026-06-10T13:33:11+07:00
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
    '2026-06-10T13:33:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2245 | Baileys Latte (M) | CASH | 2026-06-10T13:35:26+07:00
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
    '2026-06-10T13:35:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2246 | Butterscotch (M) | QRIS | 2026-06-10T13:43:17+07:00
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
    '2026-06-10T13:43:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2247 | Butterscotch (M) | CASH | 2026-06-10T13:49:21+07:00
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
    '2026-06-10T13:49:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2248 | Baileys Latte (M) | CASH | 2026-06-10T13:49:30+07:00
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
    '2026-06-10T13:49:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2249 | Gula Aren (M) | CASH | 2026-06-10T13:49:37+07:00
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
    '2026-06-10T13:49:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2250 | Butterscotch (M) | CASH | 2026-06-10T13:54:22+07:00
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
    '2026-06-10T13:54:22+07:00'
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

-- 2251 | Butterscotch (M) | QRIS | 2026-06-10T13:59:29+07:00
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
    '2026-06-10T13:59:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2252 | Vanilla (M) | CASH | 2026-06-10T13:59:35+07:00
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
    '2026-06-10T13:59:35+07:00'
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

-- 2253 | Salted Caramel (M) | CASH | 2026-06-10T13:59:55+07:00
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
    '2026-06-10T13:59:55+07:00'
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

-- 2254 | Butterscotch (M) | CASH | 2026-06-10T14:07:39+07:00
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
    '2026-06-10T14:07:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2255 | Butterscotch (M) | QRIS | 2026-06-10T14:14:41+07:00
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
    '2026-06-10T14:14:41+07:00'
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

-- 2256 | Baileys Latte (M) | CASH | 2026-06-10T14:14:51+07:00
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
    '2026-06-10T14:14:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2257 | Hazelnut (M) | QRIS | 2026-06-10T14:16:34+07:00
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
    '2026-06-10T14:16:34+07:00'
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

-- 2258 | Vanilla (M) | QRIS | 2026-06-10T14:18:17+07:00
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
    '2026-06-10T14:18:17+07:00'
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

-- 2259 | Vanilla (M) | QRIS | 2026-06-10T14:41:32+07:00
WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-10T14:41:32+07:00'
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

-- 2260 | Salted Caramel (M) | QRIS | 2026-06-10T14:41:38+07:00
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
    '2026-06-10T14:41:38+07:00'
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

-- 2261 | Butterscotch (M) | QRIS | 2026-06-10T14:42:27+07:00
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
    '2026-06-10T14:42:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2262 | Gula Aren (M) | QRIS | 2026-06-10T14:45:09+07:00
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
    '2026-06-10T14:45:09+07:00'
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

-- 2263 | Gula Aren (M) | CASH | 2026-06-10T14:55:21+07:00
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
    '2026-06-10T14:55:21+07:00'
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

-- 2264 | Gula Aren (M) | QRIS | 2026-06-10T14:56:55+07:00
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
    '2026-06-10T14:56:55+07:00'
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

-- 2265 | Gula Aren (M) | CASH | 2026-06-10T14:58:33+07:00
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
    '2026-06-10T14:58:33+07:00'
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

-- 2266 | Gula Aren (M) | CASH | 2026-06-10T14:59:10+07:00
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
    '2026-06-10T14:59:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2267 | Salted Caramel (M) | CASH | 2026-06-10T15:06:03+07:00
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
    '2026-06-10T15:06:03+07:00'
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

-- 2268 | Vanilla (M) | QRIS | 2026-06-10T15:06:28+07:00
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
    '2026-06-10T15:06:28+07:00'
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

-- 2269 | Vanilla (M) | CASH | 2026-06-10T15:07:32+07:00
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
    '2026-06-10T15:07:32+07:00'
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

-- 2270 | Baileys Latte (M) | QRIS | 2026-06-10T15:09:44+07:00
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
    '2026-06-10T15:09:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2271 | Butterscotch (M) | QRIS | 2026-06-10T15:14:00+07:00
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
    '2026-06-10T15:14:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2272 | Gula Aren (M) | QRIS | 2026-06-10T15:17:43+07:00
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
    '2026-06-10T15:17:43+07:00'
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

-- 2273 | Butterscotch (M) | CASH | 2026-06-10T15:21:07+07:00
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
    '2026-06-10T15:21:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2274 | Salted Caramel (M) | CASH | 2026-06-10T15:21:13+07:00
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
    '2026-06-10T15:21:13+07:00'
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

-- 2275 | Butterscotch (M) | QRIS | 2026-06-10T15:24:07+07:00
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
    '2026-06-10T15:24:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2276 | Baileys Latte (M) | CASH | 2026-06-10T15:29:33+07:00
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
    '2026-06-10T15:29:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2277 | Butterscotch (M) | QRIS | 2026-06-10T15:30:45+07:00
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
    '2026-06-10T15:30:45+07:00'
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

-- 2278 | Butterscotch (M) | CASH | 2026-06-10T15:30:55+07:00
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
    '2026-06-10T15:30:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2279 | Baileys Latte (M) | CASH | 2026-06-10T15:31:07+07:00
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
    '2026-06-10T15:31:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2280 | Butterscotch (M) | QRIS | 2026-06-10T15:35:23+07:00
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
    '2026-06-10T15:35:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2281 | Baileys Latte (M) | QRIS | 2026-06-10T15:35:51+07:00
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
    '2026-06-10T15:35:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2282 | Butterscotch (M) | CASH | 2026-06-10T15:38:35+07:00
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
    '2026-06-10T15:38:35+07:00'
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

-- 2283 | Salted Caramel (M) | CASH | 2026-06-10T15:39:45+07:00
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
    '2026-06-10T15:39:45+07:00'
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

-- 2284 | Baileys Latte (M) | QRIS | 2026-06-10T16:08:57+07:00
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
    '2026-06-10T16:08:57+07:00'
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

-- 2285 | Butterscotch (M) | CASH | 2026-06-10T16:11:28+07:00
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
    '2026-06-10T16:11:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2286 | Butterscotch (M) | CASH | 2026-06-10T16:14:09+07:00
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
    '2026-06-10T16:14:09+07:00'
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

-- 2287 | Butterscotch (M) | CASH | 2026-06-10T16:20:31+07:00
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
    '2026-06-10T16:20:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2288 | Butterscotch (M) | QRIS | 2026-06-10T16:28:04+07:00
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
    '2026-06-10T16:28:04+07:00'
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

-- 2289 | Gula Aren (M) | CASH | 2026-06-10T16:28:52+07:00
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
    '2026-06-10T16:28:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2290 | Baileys Latte (M) | CASH | 2026-06-10T16:30:01+07:00
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
    '2026-06-10T16:30:01+07:00'
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

-- 2291 | Baileys Latte (M) | QRIS | 2026-06-10T16:44:57+07:00
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
    '2026-06-10T16:44:57+07:00'
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

-- 2292 | Gula Aren (M) | QRIS | 2026-06-10T16:44:24+07:00
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
    '2026-06-10T16:44:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2293 | Baileys Latte (M) | QRIS | 2026-06-10T16:47:28+07:00
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
    '2026-06-10T16:47:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2294 | Butterscotch (M) | QRIS | 2026-06-10T16:48:10+07:00
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
    '2026-06-10T16:48:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2295 | Baileys Latte (M) | QRIS | 2026-06-10T16:47:34+07:00
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
    '2026-06-10T16:47:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2296 | Butterscotch (M) | QRIS | 2026-06-10T16:53:15+07:00
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
    '2026-06-10T16:53:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2297 | Salted Caramel (M) | CASH | 2026-06-10T16:53:24+07:00
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
    '2026-06-10T16:53:24+07:00'
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

-- 2298 | Baileys Latte (M) | CASH | 2026-06-10T16:53:32+07:00
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
    '2026-06-10T16:53:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2299 | Butterscotch (M) | CASH | 2026-06-10T16:56:30+07:00
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
    '2026-06-10T16:56:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2300 | Butterscotch (M) | QRIS | 2026-06-10T17:00:11+07:00
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
    '2026-06-10T17:00:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2301 | Butterscotch (M) | CASH | 2026-06-10T17:01:27+07:00
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
    '2026-06-10T17:01:27+07:00'
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

-- 2302 | Gula Aren (M) | CASH | 2026-06-10T17:03:51+07:00
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
    '2026-06-10T17:03:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2303 | Butterscotch (M) | CASH | 2026-06-10T17:12:26+07:00
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
    '2026-06-10T17:12:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2304 | Baileys Latte (M) | QRIS | 2026-06-10T17:19:36+07:00
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
    '2026-06-10T17:19:36+07:00'
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

-- 2305 | Baileys Latte (M) | QRIS | 2026-06-10T17:19:39+07:00
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
    '2026-06-10T17:19:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2306 | Hazelnut (M) | QRIS | 2026-06-10T17:19:49+07:00
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
    '2026-06-10T17:19:49+07:00'
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

-- 2307 | Butterscotch (M) | GRATIS | 2026-06-10T17:24:51+07:00
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
    '2026-06-10T17:24:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2308 | Baileys Latte (M) | QRIS | 2026-06-10T17:27:50+07:00
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
    '2026-06-10T17:27:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2309 | Gula Aren (M) | QRIS | 2026-06-10T17:27:59+07:00
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
    '2026-06-10T17:27:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2310 | Butterscotch (M) | QRIS | 2026-06-10T17:29:31+07:00
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
    '2026-06-10T17:29:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2311 | Baileys Latte (M) | QRIS | 2026-06-10T17:29:43+07:00
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
    '2026-06-10T17:29:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2312 | Baileys Latte (M) | QRIS | 2026-06-10T17:34:32+07:00
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
    '2026-06-10T17:34:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2313 | Baileys Latte (M) | QRIS | 2026-06-10T17:38:07+07:00
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
    '2026-06-10T17:38:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2314 | Vanilla (M) | CASH | 2026-06-10T17:38:14+07:00
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
    '2026-06-10T17:38:14+07:00'
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

-- 2315 | Baileys Latte (M) | CASH | 2026-06-10T17:38:19+07:00
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
    '2026-06-10T17:38:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2316 | Vanilla (M) | QRIS | 2026-06-10T17:38:27+07:00
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
    '2026-06-10T17:38:27+07:00'
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

-- 2317 | Baileys Latte (M) | QRIS | 2026-06-10T17:39:18+07:00
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
    '2026-06-10T17:39:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2318 | Butterscotch (M) | CASH | 2026-06-10T17:39:31+07:00
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
    '2026-06-10T17:39:31+07:00'
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

-- 2319 | Baileys Latte (M) | CASH | 2026-06-10T17:39:51+07:00
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
    '2026-06-10T17:39:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2320 | Butterscotch (M) | QRIS | 2026-06-10T17:47:48+07:00
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
    '2026-06-10T17:47:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2321 | Baileys Latte (M) | QRIS | 2026-06-10T17:47:56+07:00
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
    '2026-06-10T17:47:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2322 | Hazelnut (M) | CASH | 2026-06-10T17:48:04+07:00
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
    '2026-06-10T17:48:04+07:00'
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

-- 2323 | Baileys Latte (M) | QRIS | 2026-06-10T17:49:33+07:00
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
    '2026-06-10T17:49:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2324 | Baileys Latte (M) | CASH | 2026-06-10T17:52:17+07:00
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
    '2026-06-10T17:52:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2325 | Baileys Latte (M) | QRIS | 2026-06-10T17:52:44+07:00
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
    '2026-06-10T17:52:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2326 | Gula Aren (M) | CASH | 2026-06-10T17:56:50+07:00
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
    '2026-06-10T17:56:50+07:00'
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

-- 2327 | Butterscotch (M) | QRIS | 2026-06-10T17:58:03+07:00
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
    '2026-06-10T17:58:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2328 | Butterscotch (M) | CASH | 2026-06-10T18:04:55+07:00
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
    '2026-06-10T18:04:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2329 | Butterscotch (M) | QRIS | 2026-06-10T18:06:02+07:00
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
    '2026-06-10T18:06:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2330 | Butterscotch (M) | CASH | 2026-06-10T18:06:08+07:00
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
    '2026-06-10T18:06:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2331 | Baileys Latte (M) | QRIS | 2026-06-10T18:08:58+07:00
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
    '2026-06-10T18:08:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2332 | Baileys Latte (M) | QRIS | 2026-06-10T18:14:41+07:00
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
    '2026-06-10T18:14:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2333 | Baileys Latte (M) | QRIS | 2026-06-10T18:18:58+07:00
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
    '2026-06-10T18:18:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2334 | Baileys Latte (M) | QRIS | 2026-06-10T18:24:32+07:00
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
    '2026-06-10T18:24:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2335 | Butterscotch (M) | QRIS | 2026-06-10T18:26:04+07:00
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
    '2026-06-10T18:26:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2336 | Vanilla (M) | QRIS | 2026-06-10T18:26:10+07:00
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
    '2026-06-10T18:26:10+07:00'
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

-- 2337 | Salted Caramel (M) | QRIS | 2026-06-10T18:29:05+07:00
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
    '2026-06-10T18:29:05+07:00'
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

-- 2338 | Gula Aren (M) | CASH | 2026-06-10T18:29:13+07:00
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
    '2026-06-10T18:29:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 2339 | Gula Aren (M) | CASH | 2026-06-10T18:36:18+07:00
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
    '2026-06-10T18:36:18+07:00'
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

-- 2340 | Butterscotch (M) | CASH | 2026-06-10T18:46:41+07:00
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
    '2026-06-10T18:46:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 2341 | Baileys Latte (M) | QRIS | 2026-06-10T18:47:01+07:00
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
    '2026-06-10T18:47:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 2342 | Butterscotch (M) | CASH | 2026-06-10T18:47:10+07:00
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
    '2026-06-10T18:47:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;
