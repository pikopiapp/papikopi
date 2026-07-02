-- Generated from data juni papi kopi.csv
-- Batch for June 2026: 21-25
-- Includes 1056 sales inserts.

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
    '2026-06-20T23:29:52+07:00'
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

-- 4833 | Butterscotch (M) | CASH | 2026-06-21T09:20:01+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-21T09:20:01+07:00'
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

-- 4834 | Salted Caramel (M) | CASH | 2026-06-21T09:20:10+07:00

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
    '2026-06-21T09:20:10+07:00'
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

-- 4835 | Butterscotch (M) | CASH | 2026-06-21T09:20:29+07:00

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
    '2026-06-21T09:20:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4836 | Salted Caramel (M) | QRIS | 2026-06-21T09:21:40+07:00

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
    '2026-06-21T09:21:40+07:00'
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

-- 4837 | Baileys Latte (M) | QRIS | 2026-06-21T09:21:45+07:00

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
    '2026-06-21T09:21:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4838 | Baileys Latte (M) | CASH | 2026-06-21T09:21:51+07:00

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
    '2026-06-21T09:21:51+07:00'
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

-- 4839 | Cold Brew (M) | CASH | 2026-06-21T09:22:49+07:00

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
    '2026-06-21T09:22:49+07:00'
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

-- 4840 | Butterscotch (M) | CASH | 2026-06-21T09:25:01+07:00

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
    '2026-06-21T09:25:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4841 | Vanilla (M) | CASH | 2026-06-21T14:38:46+07:00

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
    '2026-06-21T14:38:46+07:00'
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

-- 4842 | Baileys Latte (M) | QRIS | 2026-06-21T14:39:20+07:00

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
    '2026-06-21T14:39:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4843 | Butterscotch (M) | QRIS | 2026-06-21T14:39:24+07:00

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
    '2026-06-21T14:39:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4844 | Gula Aren (M) | CASH | 2026-06-21T14:39:59+07:00

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
    '2026-06-21T14:39:59+07:00'
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

-- 4845 | Butterscotch (M) | CASH | 2026-06-21T14:40:41+07:00

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
    '2026-06-21T14:40:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4846 | Butterscotch (M) | QRIS | 2026-06-21T16:35:03+07:00

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
    '2026-06-21T16:35:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4847 | Butterscotch (M) | CASH | 2026-06-21T17:20:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-21T17:20:50+07:00'
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

-- 4848 | Vanilla (M) | CASH | 2026-06-21T17:21:38+07:00

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
    '2026-06-21T17:21:38+07:00'
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

-- 4849 | Hazelnut (M) | CASH | 2026-06-21T17:22:16+07:00

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
    '2026-06-21T17:22:16+07:00'
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

-- 4850 | Baileys Latte (M) | CASH | 2026-06-21T17:23:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-21T17:23:08+07:00'
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

-- 4851 | Gula Aren (M) | QRIS | 2026-06-21T17:24:57+07:00

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
    '2026-06-21T17:24:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4852 | Baileys Latte (M) | QRIS | 2026-06-21T17:25:03+07:00

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
    '2026-06-21T17:25:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4853 | Baileys Latte (M) | CASH | 2026-06-21T17:33:08+07:00

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
    '2026-06-21T17:33:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4854 | Butterscotch (M) | CASH | 2026-06-21T17:45:18+07:00

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
    '2026-06-21T17:45:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4855 | Butterscotch (M) | QRIS | 2026-06-21T18:09:49+07:00

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
    '2026-06-21T18:09:49+07:00'
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

-- 4856 | Baileys Latte (M) | QRIS | 2026-06-21T18:10:36+07:00

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
    '2026-06-21T18:10:36+07:00'
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

-- 4857 | Salted Caramel (M) | CASH | 2026-06-21T18:21:40+07:00

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
    '2026-06-21T18:21:40+07:00'
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

-- 4858 | Baileys Latte (M) | CASH | 2026-06-21T18:21:46+07:00

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
    '2026-06-21T18:21:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4859 | Baileys Latte (M) | QRIS | 2026-06-21T18:35:08+07:00

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
    '2026-06-21T18:35:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4860 | Butterscotch (M) | QRIS | 2026-06-21T18:36:26+07:00

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
    '2026-06-21T18:36:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4861 | Salted Caramel (M) | CASH | 2026-06-21T18:41:37+07:00

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
    '2026-06-21T18:41:37+07:00'
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

-- 4862 | Cold Brew (M) | CASH | 2026-06-21T18:41:44+07:00

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
    '2026-06-21T18:41:44+07:00'
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

-- 4863 | Cold Brew (M) | CASH | 2026-06-21T18:55:57+07:00

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
    '2026-06-21T18:55:57+07:00'
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

-- 4864 | Baileys Latte (M) | CASH | 2026-06-21T18:56:06+07:00

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
    '2026-06-21T18:56:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4865 | Butterscotch (M) | QRIS | 2026-06-21T19:09:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-21T19:09:43+07:00'
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

-- 4866 | Baileys Latte (M) | QRIS | 2026-06-21T19:10:28+07:00

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
    '2026-06-21T19:10:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4867 | Salted Caramel (M) | QRIS | 2026-06-21T19:10:50+07:00

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
    '2026-06-21T19:10:50+07:00'
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

-- 4868 | Butterscotch (M) | QRIS | 2026-06-21T19:10:54+07:00

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
    '2026-06-21T19:10:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4869 | Vanilla (M) | QRIS | 2026-06-21T19:13:37+07:00

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
    '2026-06-21T19:13:37+07:00'
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

-- 4870 | Butterscotch (M) | QRIS | 2026-06-21T19:13:43+07:00

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
    '2026-06-21T19:13:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4871 | Butterscotch (M) | CASH | 2026-06-21T19:13:49+07:00

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
    '2026-06-21T19:13:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4872 | Cold Brew (M) | CASH | 2026-06-21T19:25:13+07:00

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
    '2026-06-21T19:25:13+07:00'
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

-- 4873 | Salted Caramel (M) | CASH | 2026-06-21T19:37:53+07:00

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
    '2026-06-21T19:37:53+07:00'
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

-- 4874 | Butterscotch (M) | CASH | 2026-06-21T19:38:01+07:00

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
    '2026-06-21T19:38:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4875 | Gula Aren (M) | QRIS | 2026-06-21T19:41:05+07:00

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
    '2026-06-21T19:41:05+07:00'
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

-- 4876 | Cold Brew (M) | QRIS | 2026-06-21T19:41:16+07:00

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
    '2026-06-21T19:41:16+07:00'
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

-- 4877 | Butterscotch (M) | QRIS | 2026-06-21T19:41:32+07:00

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
    '2026-06-21T19:41:32+07:00'
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

-- 4878 | Gula Aren (M) | CASH | 2026-06-21T19:42:04+07:00

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
    '2026-06-21T19:42:04+07:00'
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

-- 4879 | Butterscotch (M) | CASH | 2026-06-21T19:42:13+07:00

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
    '2026-06-21T19:42:13+07:00'
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

-- 4880 | Vanilla (M) | CASH | 2026-06-21T19:42:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-21T19:42:22+07:00'
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

-- 4881 | Salted Caramel (M) | CASH | 2026-06-21T19:42:37+07:00

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
    '2026-06-21T19:42:37+07:00'
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

-- 4882 | Hazelnut (M) | CASH | 2026-06-21T19:42:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-21T19:42:45+07:00'
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

-- 4883 | Cold Brew (M) | CASH | 2026-06-21T19:42:56+07:00

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
    '2026-06-21T19:42:56+07:00'
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

-- 4884 | Baileys Latte (M) | CASH | 2026-06-21T19:43:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    125000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 10,
    0.00,
    68625.00,
    '2026-06-21T19:43:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  10,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4885 | Baileys Latte (M) | CASH | 2026-06-21T19:50:14+07:00

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
    '2026-06-21T19:50:14+07:00'
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

-- 4886 | Butterscotch (M) | CASH | 2026-06-21T19:50:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-21T19:50:43+07:00'
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

-- 4887 | Gula Aren (M) | CASH | 2026-06-21T19:51:11+07:00

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
    '2026-06-21T19:51:11+07:00'
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

-- 4888 | Cold Brew (M) | QRIS | 2026-06-21T19:51:22+07:00

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
    '2026-06-21T19:51:22+07:00'
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

-- 4889 | Vanilla (M) | CASH | 2026-06-21T19:51:29+07:00

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
    '2026-06-21T19:51:29+07:00'
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

-- 4890 | Butterscotch (M) | QRIS | 2026-06-21T20:10:50+07:00

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
    '2026-06-21T20:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4891 | Baileys Latte (M) | QRIS | 2026-06-21T20:10:55+07:00

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
    '2026-06-21T20:10:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4892 | Gula Aren (M) | QRIS | 2026-06-21T20:17:14+07:00

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
    '2026-06-21T20:17:14+07:00'
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

-- 4893 | Baileys Latte (M) | QRIS | 2026-06-21T20:17:25+07:00

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
    '2026-06-21T20:17:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4894 | Butterscotch (M) | QRIS | 2026-06-21T20:25:34+07:00

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
    '2026-06-21T20:25:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4895 | Hazelnut (M) | QRIS | 2026-06-21T20:25:41+07:00

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
    '2026-06-21T20:25:41+07:00'
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

-- 4896 | Vanilla (M) | QRIS | 2026-06-21T20:25:46+07:00

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
    '2026-06-21T20:25:46+07:00'
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

-- 4897 | Baileys Latte (M) | QRIS | 2026-06-21T20:25:51+07:00

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
    '2026-06-21T20:25:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4898 | Baileys Latte (M) | CASH | 2026-06-21T20:25:59+07:00

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
    '2026-06-21T20:25:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4899 | Cold Brew (M) | QRIS | 2026-06-21T20:28:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    30000.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 3,
    0.00,
    16086.00,
    '2026-06-21T20:28:30+07:00'
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

-- 4900 | Cold Brew (M) | CASH | 2026-06-21T20:28:35+07:00

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
    '2026-06-21T20:28:35+07:00'
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

-- 4901 | Gula Aren (M) | CASH | 2026-06-21T20:29:24+07:00

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
    '2026-06-21T20:29:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4902 | Butterscotch (M) | QRIS | 2026-06-21T20:44:43+07:00

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
    '2026-06-21T20:44:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4903 | Gula Aren (M) | QRIS | 2026-06-21T20:48:48+07:00

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
    '2026-06-21T20:48:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4904 | Hazelnut (M) | QRIS | 2026-06-21T20:51:49+07:00

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
    '2026-06-21T20:51:49+07:00'
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

-- 4905 | Gula Aren (M) | CASH | 2026-06-21T21:28:18+07:00

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
    '2026-06-21T21:28:18+07:00'
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

-- 4906 | Butterscotch (M) | CASH | 2026-06-21T21:28:24+07:00

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
    '2026-06-21T21:28:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4907 | Baileys Latte (M) | GRATIS | 2026-06-21T21:28:30+07:00

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
    '2026-06-21T21:28:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4908 | Baileys Latte (M) | QRIS | 2026-06-21T21:42:52+07:00

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
    '2026-06-21T21:42:52+07:00'
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

-- 4909 | Butterscotch (M) | CASH | 2026-06-21T21:53:53+07:00

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
    '2026-06-21T21:53:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4910 | Butterscotch (M) | CASH | 2026-06-21T22:12:01+07:00

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
    '2026-06-21T22:12:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4911 | Hazelnut (M) | CASH | 2026-06-21T22:12:07+07:00

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
    '2026-06-21T22:12:07+07:00'
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

-- 4912 | Baileys Latte (M) | CASH | 2026-06-21T22:33:47+07:00

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
    '2026-06-21T22:33:47+07:00'
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

-- 4913 | Salted Caramel (M) | CASH | 2026-06-21T22:47:52+07:00

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
    '2026-06-21T22:47:52+07:00'
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

-- 4914 | Baileys Latte (M) | QRIS | 2026-06-21T22:47:58+07:00

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
    '2026-06-21T22:47:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4915 | Baileys Latte (M) | GRATIS | 2026-06-21T22:52:33+07:00

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
    '2026-06-21T22:52:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4916 | Gula Aren (M) | QRIS | 2026-06-21T23:19:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-21T23:19:11+07:00'
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

-- 4917 | Butterscotch (M) | QRIS | 2026-06-21T23:19:19+07:00

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
    '2026-06-21T23:19:19+07:00'
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

-- 4918 | Gula Aren (M) | CASH | 2026-06-21T23:19:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-21T23:19:28+07:00'
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

-- 4919 | Butterscotch (M) | CASH | 2026-06-21T23:19:37+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-21T23:19:37+07:00'
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

-- 4920 | Vanilla (M) | CASH | 2026-06-21T23:19:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-21T23:19:44+07:00'
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

-- 4921 | Hazelnut (M) | CASH | 2026-06-21T23:20:01+07:00

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
    '2026-06-21T23:20:01+07:00'
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

-- 4922 | Baileys Latte (M) | CASH | 2026-06-21T23:20:08+07:00

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
    '2026-06-21T23:20:08+07:00'
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

-- 4923 | Salted Caramel (M) | GRATIS | 2026-06-21T23:23:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-21T23:23:03+07:00'
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

-- 4924 | Gula Aren (M) | CASH | 2026-06-22T10:22:05+07:00

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
    '2026-06-22T10:22:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4925 | Gula Aren (M) | QRIS | 2026-06-22T10:22:13+07:00

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
    '2026-06-22T10:22:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4926 | Gula Aren (M) | QRIS | 2026-06-22T10:46:26+07:00

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
    '2026-06-22T10:46:26+07:00'
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

-- 4927 | Gula Aren (M) | QRIS | 2026-06-22T10:51:16+07:00

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
    '2026-06-22T10:51:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4928 | Gula Aren (M) | CASH | 2026-06-22T10:57:17+07:00

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
    '2026-06-22T10:57:17+07:00'
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

-- 4929 | Vanilla (M) | CASH | 2026-06-22T10:57:23+07:00

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
    '2026-06-22T10:57:23+07:00'
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

-- 4930 | Butterscotch (M) | QRIS | 2026-06-22T11:00:34+07:00

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
    '2026-06-22T11:00:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4931 | Gula Aren (M) | CASH | 2026-06-22T11:04:36+07:00

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
    '2026-06-22T11:04:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4932 | Baileys Latte (M) | CASH | 2026-06-22T11:04:43+07:00

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
    '2026-06-22T11:04:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4933 | Butterscotch (M) | QRIS | 2026-06-22T11:08:03+07:00

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
    '2026-06-22T11:08:03+07:00'
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

-- 4934 | Baileys Latte (M) | QRIS | 2026-06-22T11:08:10+07:00

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
    '2026-06-22T11:08:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4935 | Gula Aren (M) | QRIS | 2026-06-22T11:10:48+07:00

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
    '2026-06-22T11:10:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4936 | Butterscotch (M) | QRIS | 2026-06-22T11:21:32+07:00

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
    '2026-06-22T11:21:32+07:00'
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

-- 4937 | Gula Aren (M) | QRIS | 2026-06-22T11:23:16+07:00

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
    '2026-06-22T11:23:16+07:00'
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

-- 4938 | Vanilla (M) | QRIS | 2026-06-22T11:30:32+07:00

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
    '2026-06-22T11:30:32+07:00'
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

-- 4939 | Gula Aren (M) | CASH | 2026-06-22T11:30:42+07:00

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
    '2026-06-22T11:30:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4940 | Gula Aren (M) | QRIS | 2026-06-22T11:33:26+07:00

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
    '2026-06-22T11:33:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4941 | Gula Aren (M) | CASH | 2026-06-22T11:36:28+07:00

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
    '2026-06-22T11:36:28+07:00'
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

-- 4942 | Baileys Latte (M) | QRIS | 2026-06-22T11:56:33+07:00

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
    '2026-06-22T11:56:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4943 | Baileys Latte (M) | QRIS | 2026-06-22T11:58:57+07:00

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
    '2026-06-22T11:58:57+07:00'
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

-- 4944 | Baileys Latte (M) | QRIS | 2026-06-22T11:59:12+07:00

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
    '2026-06-22T11:59:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4945 | Baileys Latte (M) | QRIS | 2026-06-22T12:03:38+07:00

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
    '2026-06-22T12:03:38+07:00'
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

-- 4946 | Gula Aren (M) | CASH | 2026-06-22T12:05:38+07:00

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
    '2026-06-22T12:05:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4947 | Baileys Latte (M) | QRIS | 2026-06-22T12:07:35+07:00

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
    '2026-06-22T12:07:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4948 | Gula Aren (M) | CASH | 2026-06-22T12:07:42+07:00

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
    '2026-06-22T12:07:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4949 | Gula Aren (M) | CASH | 2026-06-22T12:01:24+07:00

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
    '2026-06-22T12:01:24+07:00'
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

-- 4950 | Butterscotch (M) | CASH | 2026-06-22T12:14:56+07:00

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
    '2026-06-22T12:14:56+07:00'
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

-- 4951 | Baileys Latte (M) | QRIS | 2026-06-22T12:15:01+07:00

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
    '2026-06-22T12:15:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4952 | Butterscotch (M) | CASH | 2026-06-22T12:18:53+07:00

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
    '2026-06-22T12:18:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4953 | Hazelnut (M) | CASH | 2026-06-22T12:18:57+07:00

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
    '2026-06-22T12:18:57+07:00'
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

-- 4954 | Baileys Latte (M) | CASH | 2026-06-22T12:19:02+07:00

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
    '2026-06-22T12:19:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4955 | Butterscotch (M) | GRATIS | 2026-06-22T11:42:16+07:00

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
    '2026-06-22T11:42:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4956 | Baileys Latte (M) | QRIS | 2026-06-22T12:04:38+07:00

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
    '2026-06-22T12:04:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4957 | Salted Caramel (M) | QRIS | 2026-06-22T12:24:06+07:00

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
    '2026-06-22T12:24:06+07:00'
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

-- 4958 | Gula Aren (M) | QRIS | 2026-06-22T12:24:14+07:00

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
    '2026-06-22T12:24:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4959 | Baileys Latte (M) | QRIS | 2026-06-22T12:24:23+07:00

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
    '2026-06-22T12:24:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4960 | Salted Caramel (M) | QRIS | 2026-06-22T12:28:53+07:00

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
    '2026-06-22T12:28:53+07:00'
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

-- 4961 | Baileys Latte (M) | CASH | 2026-06-22T12:30:45+07:00

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
    '2026-06-22T12:30:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4962 | Vanilla (M) | CASH | 2026-06-22T12:31:58+07:00

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
    '2026-06-22T12:31:58+07:00'
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

-- 4963 | Baileys Latte (M) | CASH | 2026-06-22T12:32:27+07:00

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
    '2026-06-22T12:32:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4964 | Cold Brew (M) | CASH | 2026-06-22T12:34:28+07:00

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
    '2026-06-22T12:34:28+07:00'
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

-- 4965 | Hazelnut (M) | CASH | 2026-06-22T12:38:12+07:00

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
    '2026-06-22T12:38:12+07:00'
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

-- 4966 | Butterscotch (M) | CASH | 2026-06-22T12:38:26+07:00

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
    '2026-06-22T12:38:26+07:00'
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

-- 4967 | Gula Aren (M) | CASH | 2026-06-22T12:40:36+07:00

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
    '2026-06-22T12:40:36+07:00'
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

-- 4968 | Baileys Latte (M) | CASH | 2026-06-22T12:46:05+07:00

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
    '2026-06-22T12:46:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4969 | Gula Aren (M) | QRIS | 2026-06-22T12:46:14+07:00

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
    '2026-06-22T12:46:14+07:00'
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

-- 4970 | Vanilla (M) | QRIS | 2026-06-22T12:46:24+07:00

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
    '2026-06-22T12:46:24+07:00'
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

-- 4971 | Baileys Latte (M) | CASH | 2026-06-22T12:47:15+07:00

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
    '2026-06-22T12:47:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4972 | Gula Aren (M) | CASH | 2026-06-22T12:47:38+07:00

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
    '2026-06-22T12:47:38+07:00'
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

-- 4973 | Baileys Latte (M) | QRIS | 2026-06-22T12:49:14+07:00

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
    '2026-06-22T12:49:14+07:00'
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

-- 4974 | Butterscotch (M) | QRIS | 2026-06-22T12:50:09+07:00

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
    '2026-06-22T12:50:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4975 | Gula Aren (M) | QRIS | 2026-06-22T12:51:35+07:00

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
    '2026-06-22T12:51:35+07:00'
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

-- 4976 | Baileys Latte (M) | QRIS | 2026-06-22T12:51:42+07:00

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
    '2026-06-22T12:51:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4977 | Hazelnut (M) | CASH | 2026-06-22T12:51:51+07:00

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
    '2026-06-22T12:51:51+07:00'
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

-- 4978 | Gula Aren (M) | CASH | 2026-06-22T12:53:56+07:00

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
    '2026-06-22T12:53:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4979 | Gula Aren (M) | CASH | 2026-06-22T12:55:28+07:00

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
    '2026-06-22T12:55:28+07:00'
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

-- 4980 | Butterscotch (M) | CASH | 2026-06-22T12:55:54+07:00

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
    '2026-06-22T12:55:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4981 | Baileys Latte (M) | CASH | 2026-06-22T12:55:58+07:00

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
    '2026-06-22T12:55:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4982 | Gula Aren (M) | CASH | 2026-06-22T13:00:15+07:00

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
    '2026-06-22T13:00:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4983 | Baileys Latte (M) | CASH | 2026-06-22T13:00:23+07:00

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
    '2026-06-22T13:00:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4984 | Butterscotch (M) | QRIS | 2026-06-22T13:04:51+07:00

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
    '2026-06-22T13:04:51+07:00'
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

-- 4985 | Salted Caramel (M) | CASH | 2026-06-22T13:05:03+07:00

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
    '2026-06-22T13:05:03+07:00'
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

-- 4986 | Butterscotch (M) | QRIS | 2026-06-22T13:05:26+07:00

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
    '2026-06-22T13:05:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4987 | Gula Aren (M) | CASH | 2026-06-22T13:07:41+07:00

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
    '2026-06-22T13:07:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4988 | Baileys Latte (M) | CASH | 2026-06-22T13:07:46+07:00

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
    '2026-06-22T13:07:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4989 | Gula Aren (M) | QRIS | 2026-06-22T13:11:05+07:00

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
    '2026-06-22T13:11:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4990 | Butterscotch (M) | QRIS | 2026-06-22T13:14:58+07:00

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
    '2026-06-22T13:14:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4991 | Butterscotch (M) | QRIS | 2026-06-22T13:16:43+07:00

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
    '2026-06-22T13:16:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4992 | Gula Aren (M) | QRIS | 2026-06-22T13:16:52+07:00

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
    '2026-06-22T13:16:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4993 | Baileys Latte (M) | QRIS | 2026-06-22T13:20:25+07:00

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
    '2026-06-22T13:20:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4994 | Gula Aren (M) | QRIS | 2026-06-22T13:30:05+07:00

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
    '2026-06-22T13:30:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 4995 | Baileys Latte (M) | QRIS | 2026-06-22T13:32:31+07:00

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
    '2026-06-22T13:32:31+07:00'
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

-- 4996 | Butterscotch (M) | CASH | 2026-06-22T13:33:16+07:00

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
    '2026-06-22T13:33:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4997 | Baileys Latte (M) | QRIS | 2026-06-22T13:43:31+07:00

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
    '2026-06-22T13:43:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 4998 | Butterscotch (M) | CASH | 2026-06-22T13:44:10+07:00

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
    '2026-06-22T13:44:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 4999 | Gula Aren (M) | QRIS | 2026-06-22T13:54:54+07:00

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
    '2026-06-22T13:54:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5000 | Butterscotch (M) | CASH | 2026-06-22T13:59:30+07:00

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
    '2026-06-22T13:59:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5001 | Gula Aren (M) | CASH | 2026-06-22T14:14:07+07:00

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
    '2026-06-22T14:14:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5002 | Baileys Latte (M) | CASH | 2026-06-22T14:14:17+07:00

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
    '2026-06-22T14:14:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5003 | Hazelnut (M) | QRIS | 2026-06-22T14:14:29+07:00

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
    '2026-06-22T14:14:29+07:00'
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

-- 5004 | Butterscotch (M) | CASH | 2026-06-22T14:16:58+07:00

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
    '2026-06-22T14:16:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5005 | Hazelnut (M) | CASH | 2026-06-22T14:17:03+07:00

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
    '2026-06-22T14:17:03+07:00'
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

-- 5006 | Gula Aren (M) | CASH | 2026-06-22T14:18:37+07:00

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
    '2026-06-22T14:18:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5007 | Hazelnut (M) | QRIS | 2026-06-22T14:22:55+07:00

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
    '2026-06-22T14:22:55+07:00'
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

-- 5008 | Gula Aren (M) | CASH | 2026-06-22T14:25:12+07:00

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
    '2026-06-22T14:25:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5009 | Butterscotch (M) | QRIS | 2026-06-22T14:26:25+07:00

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
    '2026-06-22T14:26:25+07:00'
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

-- 5010 | Butterscotch (M) | QRIS | 2026-06-22T14:30:05+07:00

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
    '2026-06-22T14:30:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5011 | Butterscotch (M) | CASH | 2026-06-22T14:30:25+07:00

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
    '2026-06-22T14:30:25+07:00'
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

-- 5012 | Vanilla (M) | CASH | 2026-06-22T14:46:33+07:00

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
    '2026-06-22T14:46:33+07:00'
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

-- 5013 | Salted Caramel (M) | QRIS | 2026-06-22T14:56:40+07:00

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
    '2026-06-22T14:56:40+07:00'
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

-- 5014 | Butterscotch (M) | QRIS | 2026-06-22T15:01:14+07:00

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
    '2026-06-22T15:01:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5015 | Baileys Latte (M) | QRIS | 2026-06-22T15:17:54+07:00

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
    '2026-06-22T15:17:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5016 | Butterscotch (M) | QRIS | 2026-06-22T15:21:32+07:00

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
    '2026-06-22T15:21:32+07:00'
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

-- 5017 | Butterscotch (M) | CASH | 2026-06-22T15:21:42+07:00

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
    '2026-06-22T15:21:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5018 | Baileys Latte (M) | CASH | 2026-06-22T15:21:49+07:00

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
    '2026-06-22T15:21:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5019 | Butterscotch (M) | CASH | 2026-06-22T15:28:33+07:00

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
    '2026-06-22T15:28:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5020 | Hazelnut (M) | CASH | 2026-06-22T15:34:06+07:00

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
    '2026-06-22T15:34:06+07:00'
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

-- 5021 | Baileys Latte (M) | QRIS | 2026-06-22T15:43:21+07:00

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
    '2026-06-22T15:43:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5022 | Butterscotch (M) | CASH | 2026-06-22T15:47:05+07:00

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
    '2026-06-22T15:47:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5023 | Hazelnut (M) | CASH | 2026-06-22T15:47:12+07:00

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
    '2026-06-22T15:47:12+07:00'
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

-- 5024 | Baileys Latte (M) | CASH | 2026-06-22T15:50:10+07:00

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
    '2026-06-22T15:50:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5025 | Gula Aren (M) | CASH | 2026-06-22T15:51:23+07:00

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
    '2026-06-22T15:51:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5026 | Butterscotch (M) | CASH | 2026-06-22T15:53:23+07:00

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
    '2026-06-22T15:53:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5027 | Gula Aren (M) | CASH | 2026-06-22T16:09:27+07:00

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
    '2026-06-22T16:09:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5028 | Gula Aren (M) | CASH | 2026-06-22T16:10:26+07:00

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
    '2026-06-22T16:10:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5029 | Baileys Latte (M) | CASH | 2026-06-22T16:10:32+07:00

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
    '2026-06-22T16:10:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5030 | Butterscotch (M) | QRIS | 2026-06-22T16:11:03+07:00

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
    '2026-06-22T16:11:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5031 | Salted Caramel (M) | CASH | 2026-06-22T16:11:18+07:00

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
    '2026-06-22T16:11:18+07:00'
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

-- 5032 | Hazelnut (M) | QRIS | 2026-06-22T16:23:49+07:00

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
    '2026-06-22T16:23:49+07:00'
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

-- 5033 | Butterscotch (M) | CASH | 2026-06-22T16:25:15+07:00

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
    '2026-06-22T16:25:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5034 | Baileys Latte (M) | QRIS | 2026-06-22T16:34:12+07:00

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
    '2026-06-22T16:34:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5035 | Butterscotch (M) | QRIS | 2026-06-22T16:46:29+07:00

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
    '2026-06-22T16:46:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5036 | Butterscotch (M) | QRIS | 2026-06-22T16:46:37+07:00

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
    '2026-06-22T16:46:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5037 | Butterscotch (M) | CASH | 2026-06-22T16:49:39+07:00

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
    '2026-06-22T16:49:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5038 | Baileys Latte (M) | QRIS | 2026-06-22T16:54:29+07:00

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
    '2026-06-22T16:54:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5039 | Butterscotch (M) | GRATIS | 2026-06-22T16:57:31+07:00

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
    '2026-06-22T16:57:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5040 | Salted Caramel (M) | GRATIS | 2026-06-22T17:01:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-22T17:01:07+07:00'
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

-- 5041 | Gula Aren (M) | QRIS | 2026-06-22T17:02:44+07:00

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
    '2026-06-22T17:02:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5042 | Butterscotch (M) | QRIS | 2026-06-22T17:03:21+07:00

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
    '2026-06-22T17:03:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5043 | Vanilla (M) | CASH | 2026-06-22T17:12:26+07:00

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
    '2026-06-22T17:12:26+07:00'
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

-- 5044 | Salted Caramel (M) | CASH | 2026-06-22T17:12:38+07:00

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
    '2026-06-22T17:12:38+07:00'
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

-- 5045 | Butterscotch (M) | CASH | 2026-06-22T17:12:38+07:00

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
    '2026-06-22T17:12:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5046 | Butterscotch (M) | CASH | 2026-06-22T17:15:35+07:00

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
    '2026-06-22T17:15:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5047 | Hazelnut (M) | QRIS | 2026-06-22T17:28:36+07:00

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
    '2026-06-22T17:28:36+07:00'
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

-- 5048 | Butterscotch (M) | GRATIS | 2026-06-22T17:30:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 1,
    0.00,
    0.00,
    '2026-06-22T17:30:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5049 | Baileys Latte (M) | CASH | 2026-06-22T17:33:46+07:00

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
    '2026-06-22T17:33:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5050 | Butterscotch (M) | CASH | 2026-06-22T17:33:55+07:00

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
    '2026-06-22T17:33:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5051 | Salted Caramel (M) | CASH | 2026-06-22T17:34:05+07:00

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
    '2026-06-22T17:34:05+07:00'
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

-- 5052 | Baileys Latte (M) | QRIS | 2026-06-22T17:35:35+07:00

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
    '2026-06-22T17:35:35+07:00'
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

-- 5053 | Butterscotch (M) | CASH | 2026-06-22T17:38:40+07:00

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
    '2026-06-22T17:38:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5054 | Butterscotch (M) | CASH | 2026-06-22T17:41:04+07:00

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
    '2026-06-22T17:41:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5055 | Butterscotch (M) | QRIS | 2026-06-22T17:45:49+07:00

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
    '2026-06-22T17:45:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5056 | Baileys Latte (M) | QRIS | 2026-06-22T17:46:00+07:00

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
    '2026-06-22T17:46:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5057 | Vanilla (M) | CASH | 2026-06-22T17:46:16+07:00

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
    '2026-06-22T17:46:16+07:00'
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

-- 5058 | Vanilla (M) | CASH | 2026-06-22T17:50:23+07:00

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
    '2026-06-22T17:50:23+07:00'
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

-- 5059 | Baileys Latte (M) | QRIS | 2026-06-22T18:00:08+07:00

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
    '2026-06-22T18:00:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5060 | Baileys Latte (M) | CASH | 2026-06-22T18:01:41+07:00

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
    '2026-06-22T18:01:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5061 | Baileys Latte (M) | QRIS | 2026-06-22T18:03:46+07:00

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
    '2026-06-22T18:03:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5062 | Hazelnut (M) | QRIS | 2026-06-22T18:05:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 2,
    0.00,
    14073.00,
    '2026-06-22T18:05:45+07:00'
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

-- 5063 | Baileys Latte (M) | QRIS | 2026-06-22T18:07:54+07:00

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
    '2026-06-22T18:07:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5064 | Butterscotch (M) | QRIS | 2026-06-22T18:13:02+07:00

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
    '2026-06-22T18:13:02+07:00'
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

-- 5065 | Gula Aren (M) | CASH | 2026-06-22T18:13:18+07:00

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
    '2026-06-22T18:13:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5066 | Baileys Latte (M) | CASH | 2026-06-22T18:13:23+07:00

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
    '2026-06-22T18:13:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5067 | Baileys Latte (M) | QRIS | 2026-06-22T18:16:54+07:00

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
    '2026-06-22T18:16:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5068 | Gula Aren (M) | CASH | 2026-06-22T18:18:38+07:00

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
    '2026-06-22T18:18:38+07:00'
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

-- 5069 | Baileys Latte (M) | QRIS | 2026-06-22T18:21:21+07:00

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
    '2026-06-22T18:21:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5070 | Butterscotch (M) | QRIS | 2026-06-22T18:26:48+07:00

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
    '2026-06-22T18:26:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5071 | Salted Caramel (M) | QRIS | 2026-06-22T18:26:54+07:00

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
    '2026-06-22T18:26:54+07:00'
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

-- 5072 | Baileys Latte (M) | QRIS | 2026-06-22T18:27:01+07:00

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
    '2026-06-22T18:27:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5073 | Butterscotch (M) | QRIS | 2026-06-22T18:35:58+07:00

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
    '2026-06-22T18:35:58+07:00'
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

-- 5074 | Hazelnut (M) | QRIS | 2026-06-22T18:40:35+07:00

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
    '2026-06-22T18:40:35+07:00'
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

-- 5075 | Butterscotch (M) | CASH | 2026-06-22T18:40:38+07:00

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
    '2026-06-22T18:40:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5076 | Vanilla (M) | QRIS | 2026-06-22T18:40:44+07:00

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
    '2026-06-22T18:40:44+07:00'
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

-- 5077 | Butterscotch (M) | CASH | 2026-06-22T18:42:20+07:00

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
    '2026-06-22T18:42:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5078 | Baileys Latte (M) | CASH | 2026-06-22T18:42:24+07:00

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
    '2026-06-22T18:42:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5079 | Baileys Latte (M) | QRIS | 2026-06-22T18:42:28+07:00

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
    '2026-06-22T18:42:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5080 | Vanilla (M) | CASH | 2026-06-22T18:42:35+07:00

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
    '2026-06-22T18:42:35+07:00'
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

-- 5081 | Baileys Latte (M) | QRIS | 2026-06-22T18:44:45+07:00

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
    '2026-06-22T18:44:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5082 | Salted Caramel (M) | CASH | 2026-06-22T18:47:51+07:00

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
    '2026-06-22T18:47:51+07:00'
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

-- 5083 | Butterscotch (M) | QRIS | 2026-06-22T18:54:42+07:00

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
    '2026-06-22T18:54:42+07:00'
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

-- 5084 | Butterscotch (M) | CASH | 2026-06-22T18:55:54+07:00

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
    '2026-06-22T18:55:54+07:00'
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

-- 5085 | Baileys Latte (M) | QRIS | 2026-06-22T18:57:09+07:00

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
    '2026-06-22T18:57:09+07:00'
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

-- 5086 | Baileys Latte (M) | CASH | 2026-06-22T19:00:03+07:00

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
    '2026-06-22T19:00:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5087 | Butterscotch (M) | QRIS | 2026-06-22T19:03:14+07:00

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
    '2026-06-22T19:03:14+07:00'
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

-- 5088 | Gula Aren (M) | QRIS | 2026-06-22T19:03:28+07:00

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
    '2026-06-22T19:03:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5089 | Gula Aren (M) | CASH | 2026-06-22T19:03:53+07:00

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
    '2026-06-22T19:03:53+07:00'
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

-- 5090 | Butterscotch (M) | CASH | 2026-06-22T19:04:01+07:00

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
    '2026-06-22T19:04:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5091 | Vanilla (M) | CASH | 2026-06-22T19:04:10+07:00

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
    '2026-06-22T19:04:10+07:00'
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

-- 5092 | Salted Caramel (M) | CASH | 2026-06-22T19:04:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-22T19:04:19+07:00'
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

-- 5093 | Hazelnut (M) | CASH | 2026-06-22T19:04:56+07:00

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
    '2026-06-22T19:04:56+07:00'
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

-- 5094 | Baileys Latte (M) | CASH | 2026-06-22T19:05:07+07:00

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
    '2026-06-22T19:05:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5095 | Baileys Latte (M) | QRIS | 2026-06-22T19:10:31+07:00

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
    '2026-06-22T19:10:31+07:00'
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

-- 5096 | Butterscotch (M) | QRIS | 2026-06-22T19:10:27+07:00

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
    '2026-06-22T19:10:27+07:00'
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

-- 5097 | Vanilla (M) | QRIS | 2026-06-22T19:10:47+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-22T19:10:47+07:00'
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

-- 5098 | Cold Brew (M) | QRIS | 2026-06-22T19:11:02+07:00

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
    '2026-06-22T19:11:02+07:00'
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

-- 5099 | Gula Aren (M) | QRIS | 2026-06-22T19:11:11+07:00

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
    '2026-06-22T19:11:11+07:00'
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

-- 5100 | Gula Aren (M) | CASH | 2026-06-22T19:11:53+07:00

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
    '2026-06-22T19:11:53+07:00'
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

-- 5101 | Hazelnut (M) | CASH | 2026-06-22T19:12:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 3,
    0.00,
    21109.00,
    '2026-06-22T19:12:14+07:00'
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

-- 5102 | Baileys Latte (M) | CASH | 2026-06-22T19:12:25+07:00

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
    '2026-06-22T19:12:25+07:00'
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

-- 5103 | Gula Aren (M) | QRIS | 2026-06-22T19:16:56+07:00

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
    '2026-06-22T19:16:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5104 | Butterscotch (M) | CASH | 2026-06-22T19:23:11+07:00

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
    '2026-06-22T19:23:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5105 | Baileys Latte (M) | QRIS | 2026-06-22T19:23:17+07:00

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
    '2026-06-22T19:23:17+07:00'
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

-- 5106 | Baileys Latte (M) | CASH | 2026-06-22T19:25:54+07:00

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
    '2026-06-22T19:25:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5107 | Butterscotch (M) | CASH | 2026-06-22T19:26:25+07:00

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
    '2026-06-22T19:26:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5108 | Baileys Latte (M) | GRATIS | 2026-06-22T19:26:44+07:00

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
    '2026-06-22T19:26:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5109 | Vanilla (M) | CASH | 2026-06-22T19:33:49+07:00

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
    '2026-06-22T19:33:49+07:00'
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

-- 5110 | Salted Caramel (M) | CASH | 2026-06-22T19:36:26+07:00

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
    '2026-06-22T19:36:26+07:00'
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

-- 5111 | Butterscotch (M) | CASH | 2026-06-22T19:36:30+07:00

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
    '2026-06-22T19:36:30+07:00'
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

-- 5112 | Baileys Latte (M) | CASH | 2026-06-22T19:36:35+07:00

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
    '2026-06-22T19:36:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5113 | Baileys Latte (M) | GRATIS | 2026-06-22T19:45:12+07:00

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
    '2026-06-22T19:45:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5114 | Gula Aren (M) | CASH | 2026-06-22T19:55:42+07:00

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
    '2026-06-22T19:55:42+07:00'
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

-- 5115 | Gula Aren (M) | QRIS | 2026-06-22T19:55:50+07:00

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
    '2026-06-22T19:55:50+07:00'
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

-- 5116 | Hazelnut (M) | CASH | 2026-06-22T19:57:28+07:00

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
    '2026-06-22T19:57:28+07:00'
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

-- 5117 | Salted Caramel (M) | CASH | 2026-06-22T19:57:37+07:00

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
    '2026-06-22T19:57:37+07:00'
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

-- 5118 | Baileys Latte (M) | CASH | 2026-06-22T19:57:57+07:00

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
    '2026-06-22T19:57:57+07:00'
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

-- 5119 | Butterscotch (M) | QRIS | 2026-06-22T19:58:29+07:00

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
    '2026-06-22T19:58:29+07:00'
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

-- 5120 | Baileys Latte (M) | QRIS | 2026-06-22T19:58:33+07:00

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
    '2026-06-22T19:58:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5121 | Baileys Latte (M) | QRIS | 2026-06-22T19:59:12+07:00

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
    '2026-06-22T19:59:12+07:00'
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

-- 5122 | Butterscotch (M) | CASH | 2026-06-22T20:06:10+07:00

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
    '2026-06-22T20:06:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5123 | Vanilla (M) | CASH | 2026-06-22T20:08:38+07:00

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
    '2026-06-22T20:08:38+07:00'
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

-- 5124 | Gula Aren (M) | QRIS | 2026-06-22T20:08:54+07:00

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
    '2026-06-22T20:08:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5125 | Salted Caramel (M) | QRIS | 2026-06-22T20:10:16+07:00

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
    '2026-06-22T20:10:16+07:00'
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

-- 5126 | Salted Caramel (M) | GRATIS | 2026-06-22T20:11:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-22T20:11:25+07:00'
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

-- 5127 | Gula Aren (M) | CASH | 2026-06-22T20:11:42+07:00

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
    '2026-06-22T20:11:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5128 | Butterscotch (M) | CASH | 2026-06-22T20:12:06+07:00

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
    '2026-06-22T20:12:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5129 | Baileys Latte (M) | CASH | 2026-06-22T20:12:22+07:00

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
    '2026-06-22T20:12:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5130 | Hazelnut (M) | CASH | 2026-06-22T20:19:54+07:00

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
    '2026-06-22T20:19:54+07:00'
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

-- 5131 | Gula Aren (M) | CASH | 2026-06-22T20:25:52+07:00

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
    '2026-06-22T20:25:52+07:00'
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

-- 5132 | Baileys Latte (M) | QRIS | 2026-06-22T20:36:06+07:00

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
    '2026-06-22T20:36:06+07:00'
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

-- 5133 | Butterscotch (M) | CASH | 2026-06-22T20:37:29+07:00

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
    '2026-06-22T20:37:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5134 | Butterscotch (M) | CASH | 2026-06-22T20:37:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-22T20:37:31+07:00'
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

-- 5135 | Butterscotch (M) | GRATIS | 2026-06-22T20:37:42+07:00

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
    '2026-06-22T20:37:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5136 | Butterscotch (M) | QRIS | 2026-06-22T20:40:25+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-22T20:40:25+07:00'
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

-- 5137 | Gula Aren (M) | QRIS | 2026-06-22T20:40:57+07:00

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
    '2026-06-22T20:40:57+07:00'
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

-- 5138 | Gula Aren (M) | CASH | 2026-06-22T20:41:33+07:00

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
    '2026-06-22T20:41:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5139 | Gula Aren (M) | CASH | 2026-06-22T20:41:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    56000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 7,
    0.00,
    25170.00,
    '2026-06-22T20:41:30+07:00'
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

-- 5140 | Butterscotch (M) | CASH | 2026-06-22T20:41:41+07:00

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
    '2026-06-22T20:41:41+07:00'
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

-- 5141 | Salted Caramel (M) | CASH | 2026-06-22T20:41:49+07:00

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
    '2026-06-22T20:41:49+07:00'
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

-- 5142 | Hazelnut (M) | QRIS | 2026-06-22T20:51:56+07:00

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
    '2026-06-22T20:51:56+07:00'
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

-- 5143 | Baileys Latte (M) | CASH | 2026-06-22T20:58:41+07:00

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
    '2026-06-22T20:58:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5144 | Butterscotch (M) | QRIS | 2026-06-22T21:17:35+07:00

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
    '2026-06-22T21:17:35+07:00'
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

-- 5145 | Baileys Latte (M) | CASH | 2026-06-22T21:29:59+07:00

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
    '2026-06-22T21:29:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5146 | Baileys Latte (M) | CASH | 2026-06-22T21:33:10+07:00

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
    '2026-06-22T21:33:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5147 | Butterscotch (M) | QRIS | 2026-06-22T21:51:39+07:00

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
    '2026-06-22T21:51:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5148 | Baileys Latte (M) | CASH | 2026-06-22T21:52:01+07:00

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
    '2026-06-22T21:52:01+07:00'
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

-- 5149 | Butterscotch (M) | QRIS | 2026-06-22T21:54:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-22T21:54:18+07:00'
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

-- 5150 | Gula Aren (M) | QRIS | 2026-06-22T21:54:36+07:00

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
    '2026-06-22T21:54:36+07:00'
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

-- 5151 | Gula Aren (M) | CASH | 2026-06-22T21:58:52+07:00

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
    '2026-06-22T21:58:52+07:00'
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

-- 5152 | Butterscotch (M) | CASH | 2026-06-22T21:59:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-22T21:59:03+07:00'
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

-- 5153 | Vanilla (M) | CASH | 2026-06-22T21:59:12+07:00

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
    '2026-06-22T21:59:12+07:00'
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

-- 5154 | Salted Caramel (M) | CASH | 2026-06-22T21:59:23+07:00

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
    '2026-06-22T21:59:23+07:00'
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

-- 5155 | Hazelnut (M) | CASH | 2026-06-22T21:59:29+07:00

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
    '2026-06-22T21:59:29+07:00'
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

-- 5156 | Baileys Latte (M) | CASH | 2026-06-22T21:59:39+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 3,
    0.00,
    20587.00,
    '2026-06-22T21:59:39+07:00'
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

-- 5157 | Vanilla (M) | GRATIS | 2026-06-22T22:18:31+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    0.00,
    '2026-06-22T22:18:31+07:00'
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

-- 5158 | Gula Aren (M) | CASH | 2026-06-23T10:01:44+07:00

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
    '2026-06-23T10:01:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5159 | Gula Aren (M) | QRIS | 2026-06-23T10:02:15+07:00

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
    '2026-06-23T10:02:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5160 | Gula Aren (M) | CASH | 2026-06-23T10:29:12+07:00

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
    '2026-06-23T10:29:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5161 | Gula Aren (M) | QRIS | 2026-06-23T11:10:56+07:00

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
    '2026-06-23T11:10:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5162 | Gula Aren (M) | QRIS | 2026-06-23T11:21:37+07:00

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
    '2026-06-23T11:21:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5163 | Butterscotch (M) | QRIS | 2026-06-23T11:21:45+07:00

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
    '2026-06-23T11:21:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5164 | Gula Aren (M) | QRIS | 2026-06-23T11:37:47+07:00

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
    '2026-06-23T11:37:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5165 | Butterscotch (M) | QRIS | 2026-06-23T11:39:35+07:00

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
    '2026-06-23T11:39:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5166 | Gula Aren (M) | CASH | 2026-06-23T11:39:41+07:00

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
    '2026-06-23T11:39:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5167 | Baileys Latte (M) | CASH | 2026-06-23T11:39:45+07:00

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
    '2026-06-23T11:39:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5168 | Gula Aren (M) | CASH | 2026-06-23T11:48:44+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-23T11:48:44+07:00'
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

-- 5169 | Gula Aren (M) | QRIS | 2026-06-23T11:54:05+07:00

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
    '2026-06-23T11:54:05+07:00'
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

-- 5170 | Butterscotch (M) | QRIS | 2026-06-23T11:55:17+07:00

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
    '2026-06-23T11:55:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5171 | Baileys Latte (M) | QRIS | 2026-06-23T11:55:27+07:00

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
    '2026-06-23T11:55:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5172 | Baileys Latte (M) | QRIS | 2026-06-23T11:56:25+07:00

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
    '2026-06-23T11:56:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5173 | Vanilla (M) | QRIS | 2026-06-23T11:56:38+07:00

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
    '2026-06-23T11:56:38+07:00'
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

-- 5174 | Gula Aren (M) | CASH | 2026-06-23T11:58:07+07:00

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
    '2026-06-23T11:58:07+07:00'
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

-- 5175 | Cold Brew (M) | CASH | 2026-06-23T11:58:20+07:00

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
    '2026-06-23T11:58:20+07:00'
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

-- 5176 | Butterscotch (M) | CASH | 2026-06-23T12:01:20+07:00

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
    '2026-06-23T12:01:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5177 | Gula Aren (M) | CASH | 2026-06-23T12:01:32+07:00

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
    '2026-06-23T12:01:32+07:00'
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

-- 5178 | Butterscotch (M) | CASH | 2026-06-23T12:01:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-23T12:01:42+07:00'
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

-- 5179 | Salted Caramel (M) | CASH | 2026-06-23T12:02:23+07:00

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
    '2026-06-23T12:02:23+07:00'
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

-- 5180 | Baileys Latte (M) | CASH | 2026-06-23T12:03:04+07:00

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
    '2026-06-23T12:03:04+07:00'
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

-- 5181 | Butterscotch (M) | CASH | 2026-06-23T12:04:26+07:00

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
    '2026-06-23T12:04:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5182 | Gula Aren (M) | CASH | 2026-06-23T12:07:16+07:00

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
    '2026-06-23T12:07:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5183 | Butterscotch (M) | QRIS | 2026-06-23T12:07:21+07:00

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
    '2026-06-23T12:07:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5184 | Hazelnut (M) | QRIS | 2026-06-23T12:07:26+07:00

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
    '2026-06-23T12:07:26+07:00'
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

-- 5185 | Gula Aren (M) | CASH | 2026-06-23T12:08:49+07:00

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
    '2026-06-23T12:08:49+07:00'
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

-- 5186 | Vanilla (M) | CASH | 2026-06-23T12:08:55+07:00

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
    '2026-06-23T12:08:55+07:00'
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

-- 5187 | Cold Brew (M) | CASH | 2026-06-23T12:08:59+07:00

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
    '2026-06-23T12:08:59+07:00'
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

-- 5188 | Butterscotch (M) | QRIS | 2026-06-23T12:13:51+07:00

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
    '2026-06-23T12:13:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5189 | Butterscotch (M) | CASH | 2026-06-23T12:18:20+07:00

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
    '2026-06-23T12:18:20+07:00'
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

-- 5190 | Baileys Latte (M) | QRIS | 2026-06-23T12:18:28+07:00

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
    '2026-06-23T12:18:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5191 | Gula Aren (M) | QRIS | 2026-06-23T12:18:34+07:00

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
    '2026-06-23T12:18:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5192 | Butterscotch (M) | QRIS | 2026-06-23T12:20:28+07:00

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
    '2026-06-23T12:20:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5193 | Gula Aren (M) | CASH | 2026-06-23T12:21:24+07:00

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
    '2026-06-23T12:21:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5194 | Gula Aren (M) | QRIS | 2026-06-23T12:22:35+07:00

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
    '2026-06-23T12:22:35+07:00'
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

-- 5195 | Butterscotch (M) | CASH | 2026-06-23T12:22:39+07:00

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
    '2026-06-23T12:22:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5196 | Baileys Latte (M) | QRIS | 2026-06-23T12:24:40+07:00

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
    '2026-06-23T12:24:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5197 | Gula Aren (M) | CASH | 2026-06-23T12:30:13+07:00

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
    '2026-06-23T12:30:13+07:00'
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

-- 5198 | Gula Aren (M) | CASH | 2026-06-23T12:30:35+07:00

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
    '2026-06-23T12:30:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5199 | Gula Aren (M) | CASH | 2026-06-23T12:31:04+07:00

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
    '2026-06-23T12:31:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5200 | Baileys Latte (M) | QRIS | 2026-06-23T12:32:53+07:00

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
    '2026-06-23T12:32:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5201 | Gula Aren (M) | QRIS | 2026-06-23T12:33:05+07:00

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
    '2026-06-23T12:33:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5202 | Butterscotch (M) | QRIS | 2026-06-23T12:37:51+07:00

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
    '2026-06-23T12:37:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5203 | Hazelnut (M) | QRIS | 2026-06-23T12:38:27+07:00

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
    '2026-06-23T12:38:27+07:00'
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

-- 5204 | Vanilla (M) | QRIS | 2026-06-23T12:41:20+07:00

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
    '2026-06-23T12:41:20+07:00'
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

-- 5205 | Baileys Latte (M) | QRIS | 2026-06-23T12:45:34+07:00

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
    '2026-06-23T12:45:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5206 | Vanilla (M) | CASH | 2026-06-23T12:47:30+07:00

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
    '2026-06-23T12:47:30+07:00'
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

-- 5207 | Gula Aren (M) | QRIS | 2026-06-23T12:38:37+07:00

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
    '2026-06-23T12:38:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5208 | Butterscotch (M) | QRIS | 2026-06-23T12:38:44+07:00

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
    '2026-06-23T12:38:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5209 | Butterscotch (M) | QRIS | 2026-06-23T12:53:51+07:00

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
    '2026-06-23T12:53:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5210 | Baileys Latte (M) | CASH | 2026-06-23T12:57:33+07:00

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
    '2026-06-23T12:57:33+07:00'
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

-- 5211 | Baileys Latte (M) | CASH | 2026-06-23T12:59:17+07:00

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
    '2026-06-23T12:59:17+07:00'
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

-- 5212 | Butterscotch (M) | QRIS | 2026-06-23T13:09:32+07:00

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
    '2026-06-23T13:09:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5213 | Baileys Latte (M) | QRIS | 2026-06-23T13:09:40+07:00

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
    '2026-06-23T13:09:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5214 | Salted Caramel (M) | QRIS | 2026-06-23T13:09:46+07:00

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
    '2026-06-23T13:09:46+07:00'
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

-- 5215 | Salted Caramel (M) | QRIS | 2026-06-23T13:11:33+07:00

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
    '2026-06-23T13:11:33+07:00'
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

-- 5216 | Cold Brew (M) | QRIS | 2026-06-23T13:18:23+07:00

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
    '2026-06-23T13:18:23+07:00'
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

-- 5217 | Gula Aren (M) | QRIS | 2026-06-23T13:20:48+07:00

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
    '2026-06-23T13:20:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5218 | Gula Aren (M) | CASH | 2026-06-23T13:25:03+07:00

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
    '2026-06-23T13:25:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5219 | Butterscotch (M) | QRIS | 2026-06-23T13:27:06+07:00

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
    '2026-06-23T13:27:06+07:00'
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

-- 5220 | Butterscotch (M) | CASH | 2026-06-23T13:33:02+07:00

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
    '2026-06-23T13:33:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5221 | Baileys Latte (M) | CASH | 2026-06-23T13:33:06+07:00

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
    '2026-06-23T13:33:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5222 | Cold Brew (M) | CASH | 2026-06-23T13:36:13+07:00

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
    '2026-06-23T13:36:13+07:00'
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

-- 5223 | Salted Caramel (M) | QRIS | 2026-06-23T13:38:45+07:00

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
    '2026-06-23T13:38:45+07:00'
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

-- 5224 | Butterscotch (M) | CASH | 2026-06-23T13:59:17+07:00

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
    '2026-06-23T13:59:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5225 | Gula Aren (M) | QRIS | 2026-06-23T14:00:38+07:00

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
    '2026-06-23T14:00:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5226 | Baileys Latte (M) | QRIS | 2026-06-23T14:03:31+07:00

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
    '2026-06-23T14:03:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5227 | Hazelnut (M) | QRIS | 2026-06-23T14:03:39+07:00

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
    '2026-06-23T14:03:39+07:00'
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

-- 5228 | Butterscotch (M) | CASH | 2026-06-23T14:05:21+07:00

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
    '2026-06-23T14:05:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5229 | Vanilla (M) | CASH | 2026-06-23T14:07:44+07:00

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
    '2026-06-23T14:07:44+07:00'
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

-- 5230 | Baileys Latte (M) | QRIS | 2026-06-23T14:16:11+07:00

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
    '2026-06-23T14:16:11+07:00'
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

-- 5231 | Gula Aren (M) | CASH | 2026-06-23T14:16:39+07:00

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
    '2026-06-23T14:16:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5232 | Hazelnut (M) | QRIS | 2026-06-23T14:19:46+07:00

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
    '2026-06-23T14:19:46+07:00'
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

-- 5233 | Vanilla (M) | CASH | 2026-06-23T14:22:35+07:00

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
    '2026-06-23T14:22:35+07:00'
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

-- 5234 | Butterscotch (M) | CASH | 2026-06-23T14:29:31+07:00

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
    '2026-06-23T14:29:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5235 | Baileys Latte (M) | CASH | 2026-06-23T14:42:29+07:00

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
    '2026-06-23T14:42:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5236 | Butterscotch (M) | QRIS | 2026-06-23T14:53:50+07:00

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
    '2026-06-23T14:53:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5237 | Baileys Latte (M) | CASH | 2026-06-23T15:00:12+07:00

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
    '2026-06-23T15:00:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5238 | Butterscotch (M) | CASH | 2026-06-23T15:03:44+07:00

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
    '2026-06-23T15:03:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5239 | Butterscotch (M) | CASH | 2026-06-23T15:09:04+07:00

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
    '2026-06-23T15:09:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5240 | Butterscotch (M) | QRIS | 2026-06-23T15:16:21+07:00

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
    '2026-06-23T15:16:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5241 | Butterscotch (M) | CASH | 2026-06-23T15:17:12+07:00

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
    '2026-06-23T15:17:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5242 | Hazelnut (M) | CASH | 2026-06-23T15:17:17+07:00

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
    '2026-06-23T15:17:17+07:00'
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

-- 5243 | Butterscotch (M) | CASH | 2026-06-23T15:30:26+07:00

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
    '2026-06-23T15:30:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5244 | Butterscotch (M) | CASH | 2026-06-23T15:33:17+07:00

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
    '2026-06-23T15:33:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5245 | Gula Aren (M) | QRIS | 2026-06-23T15:42:06+07:00

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
    '2026-06-23T15:42:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5246 | Vanilla (M) | QRIS | 2026-06-23T15:44:55+07:00

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
    '2026-06-23T15:44:55+07:00'
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

-- 5247 | Butterscotch (M) | QRIS | 2026-06-23T16:01:58+07:00

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
    '2026-06-23T16:01:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5248 | Gula Aren (M) | CASH | 2026-06-23T16:08:34+07:00

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
    '2026-06-23T16:08:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5249 | Baileys Latte (M) | QRIS | 2026-06-23T16:18:27+07:00

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
    '2026-06-23T16:18:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5250 | Baileys Latte (M) | CASH | 2026-06-23T16:19:34+07:00

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
    '2026-06-23T16:19:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5251 | Gula Aren (M) | CASH | 2026-06-23T16:20:09+07:00

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
    '2026-06-23T16:20:09+07:00'
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

-- 5252 | Salted Caramel (M) | QRIS | 2026-06-23T16:36:33+07:00

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
    '2026-06-23T16:36:33+07:00'
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

-- 5253 | Butterscotch (M) | CASH | 2026-06-23T16:38:56+07:00

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
    '2026-06-23T16:38:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5254 | Butterscotch (M) | QRIS | 2026-06-23T16:39:01+07:00

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
    '2026-06-23T16:39:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5255 | Baileys Latte (M) | CASH | 2026-06-23T16:39:02+07:00

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
    '2026-06-23T16:39:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5256 | Salted Caramel (M) | QRIS | 2026-06-23T16:45:49+07:00

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
    '2026-06-23T16:45:49+07:00'
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

-- 5257 | Cold Brew (M) | CASH | 2026-06-23T16:51:11+07:00

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
    '2026-06-23T16:51:11+07:00'
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

-- 5258 | Butterscotch (M) | QRIS | 2026-06-23T16:55:17+07:00

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
    '2026-06-23T16:55:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5259 | Baileys Latte (M) | QRIS | 2026-06-23T16:55:22+07:00

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
    '2026-06-23T16:55:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5260 | Vanilla (M) | CASH | 2026-06-23T16:56:59+07:00

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
    '2026-06-23T16:56:59+07:00'
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

-- 5261 | Butterscotch (M) | CASH | 2026-06-23T17:18:15+07:00

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
    '2026-06-23T17:18:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5262 | Baileys Latte (M) | QRIS | 2026-06-23T17:18:19+07:00

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
    '2026-06-23T17:18:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5263 | Butterscotch (M) | QRIS | 2026-06-23T17:19:41+07:00

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
    '2026-06-23T17:19:41+07:00'
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

-- 5264 | Butterscotch (M) | CASH | 2026-06-23T17:24:02+07:00

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
    '2026-06-23T17:24:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5265 | Baileys Latte (M) | CASH | 2026-06-23T17:24:10+07:00

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
    '2026-06-23T17:24:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5266 | Gula Aren (M) | QRIS | 2026-06-23T17:26:18+07:00

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
    '2026-06-23T17:26:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5267 | Butterscotch (M) | CASH | 2026-06-23T17:30:40+07:00

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
    '2026-06-23T17:30:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5268 | Butterscotch (M) | QRIS | 2026-06-23T17:31:41+07:00

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
    '2026-06-23T17:31:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5269 | Vanilla (M) | CASH | 2026-06-23T17:49:28+07:00

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
    '2026-06-23T17:49:28+07:00'
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

-- 5270 | Hazelnut (M) | GRATIS | 2026-06-23T18:00:01+07:00

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
    '2026-06-23T18:00:01+07:00'
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

-- 5271 | Hazelnut (M) | CASH | 2026-06-23T18:07:17+07:00

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
    '2026-06-23T18:07:17+07:00'
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

-- 5272 | Cold Brew (M) | CASH | 2026-06-23T18:07:22+07:00

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
    '2026-06-23T18:07:22+07:00'
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

-- 5273 | Baileys Latte (M) | CASH | 2026-06-23T18:07:26+07:00

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
    '2026-06-23T18:07:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5274 | Butterscotch (M) | CASH | 2026-06-23T18:07:50+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-23T18:07:50+07:00'
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

-- 5275 | Baileys Latte (M) | QRIS | 2026-06-23T18:10:55+07:00

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
    '2026-06-23T18:10:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5276 | Gula Aren (M) | CASH | 2026-06-23T18:11:02+07:00

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
    '2026-06-23T18:11:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5277 | Butterscotch (M) | CASH | 2026-06-23T18:11:05+07:00

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
    '2026-06-23T18:11:05+07:00'
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

-- 5278 | Baileys Latte (M) | CASH | 2026-06-23T18:11:12+07:00

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
    '2026-06-23T18:11:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5279 | Vanilla (M) | CASH | 2026-06-23T18:11:21+07:00

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
    '2026-06-23T18:11:21+07:00'
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

-- 5280 | Baileys Latte (M) | CASH | 2026-06-23T18:15:20+07:00

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
    '2026-06-23T18:15:20+07:00'
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

-- 5281 | Baileys Latte (M) | QRIS | 2026-06-23T18:17:46+07:00

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
    '2026-06-23T18:17:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5282 | Cold Brew (M) | CASH | 2026-06-23T18:19:41+07:00

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
    '2026-06-23T18:19:41+07:00'
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

-- 5283 | Butterscotch (M) | QRIS | 2026-06-23T18:23:19+07:00

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
    '2026-06-23T18:23:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5284 | Baileys Latte (M) | CASH | 2026-06-23T18:23:29+07:00

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
    '2026-06-23T18:23:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5285 | Butterscotch (M) | CASH | 2026-06-23T18:35:21+07:00

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
    '2026-06-23T18:35:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5286 | Salted Caramel (M) | CASH | 2026-06-23T18:40:24+07:00

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
    '2026-06-23T18:40:24+07:00'
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

-- 5287 | Butterscotch (M) | QRIS | 2026-06-23T18:43:04+07:00

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
    '2026-06-23T18:43:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5288 | Gula Aren (M) | QRIS | 2026-06-23T18:43:13+07:00

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
    '2026-06-23T18:43:13+07:00'
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

-- 5289 | Cold Brew (M) | CASH | 2026-06-23T18:43:43+07:00

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
    '2026-06-23T18:43:43+07:00'
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

-- 5290 | Butterscotch (M) | QRIS | 2026-06-23T18:44:37+07:00

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
    '2026-06-23T18:44:37+07:00'
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

-- 5291 | Gula Aren (M) | QRIS | 2026-06-23T18:44:51+07:00

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
    '2026-06-23T18:44:51+07:00'
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

-- 5292 | Gula Aren (M) | CASH | 2026-06-23T18:45:31+07:00

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
    '2026-06-23T18:45:31+07:00'
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

-- 5293 | Butterscotch (M) | CASH | 2026-06-23T18:45:40+07:00

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
    '2026-06-23T18:45:40+07:00'
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

-- 5294 | Vanilla (M) | CASH | 2026-06-23T18:45:49+07:00

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
    '2026-06-23T18:45:49+07:00'
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

-- 5295 | Hazelnut (M) | CASH | 2026-06-23T18:45:59+07:00

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
    '2026-06-23T18:45:59+07:00'
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

-- 5296 | Baileys Latte (M) | CASH | 2026-06-23T18:46:08+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    137500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 11,
    0.00,
    75487.00,
    '2026-06-23T18:46:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  11,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5297 | Butterscotch (M) | CASH | 2026-06-23T18:46:46+07:00

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
    '2026-06-23T18:46:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5298 | Salted Caramel (M) | CASH | 2026-06-23T18:46:52+07:00

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
    '2026-06-23T18:46:52+07:00'
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

-- 5299 | Butterscotch (M) | GRATIS | 2026-06-23T18:52:12+07:00

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
    '2026-06-23T18:52:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5300 | Butterscotch (M) | CASH | 2026-06-23T18:59:21+07:00

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
    '2026-06-23T18:59:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5301 | Butterscotch (M) | QRIS | 2026-06-23T19:04:42+07:00

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
    '2026-06-23T19:04:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5302 | Baileys Latte (M) | QRIS | 2026-06-23T19:04:48+07:00

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
    '2026-06-23T19:04:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5303 | Butterscotch (M) | QRIS | 2026-06-23T19:06:22+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-23T19:06:22+07:00'
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

-- 5304 | Gula Aren (M) | QRIS | 2026-06-23T19:06:30+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-23T19:06:30+07:00'
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

-- 5305 | Gula Aren (M) | CASH | 2026-06-23T19:07:08+07:00

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
    '2026-06-23T19:07:08+07:00'
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

-- 5306 | Butterscotch (M) | CASH | 2026-06-23T19:07:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-23T19:07:16+07:00'
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

-- 5307 | Vanilla (M) | CASH | 2026-06-23T19:07:23+07:00

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
    '2026-06-23T19:07:23+07:00'
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

-- 5308 | Salted Caramel (M) | CASH | 2026-06-23T19:07:33+07:00

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
    '2026-06-23T19:07:33+07:00'
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

-- 5309 | Hazelnut (M) | CASH | 2026-06-23T19:07:38+07:00

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
    '2026-06-23T19:07:38+07:00'
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

-- 5310 | Baileys Latte (M) | CASH | 2026-06-23T19:07:49+07:00

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
    '2026-06-23T19:07:49+07:00'
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

-- 5311 | Butterscotch (M) | QRIS | 2026-06-23T19:08:54+07:00

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
    '2026-06-23T19:08:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5312 | Butterscotch (M) | QRIS | 2026-06-23T19:16:29+07:00

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
    '2026-06-23T19:16:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5313 | Gula Aren (M) | CASH | 2026-06-23T19:18:02+07:00

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
    '2026-06-23T19:18:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5314 | Butterscotch (M) | CASH | 2026-06-23T19:20:43+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-23T19:20:43+07:00'
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

-- 5315 | Vanilla (M) | CASH | 2026-06-23T19:21:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 4,
    0.00,
    28146.00,
    '2026-06-23T19:21:09+07:00'
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

-- 5316 | Hazelnut (M) | CASH | 2026-06-23T19:21:38+07:00

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
    '2026-06-23T19:21:38+07:00'
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

-- 5317 | Salted Caramel (M) | CASH | 2026-06-23T19:21:46+07:00

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
    '2026-06-23T19:21:46+07:00'
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

-- 5318 | Baileys Latte (M) | CASH | 2026-06-23T19:22:42+07:00

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
    '2026-06-23T19:22:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5319 | Butterscotch (M) | CASH | 2026-06-23T19:23:42+07:00

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
    '2026-06-23T19:23:42+07:00'
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

-- 5320 | Butterscotch (M) | CASH | 2026-06-23T19:30:13+07:00

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
    '2026-06-23T19:30:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5321 | Baileys Latte (M) | CASH | 2026-06-23T19:30:20+07:00

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
    '2026-06-23T19:30:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5322 | Butterscotch (M) | CASH | 2026-06-23T19:53:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-23T19:53:07+07:00'
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

-- 5323 | Hazelnut (M) | CASH | 2026-06-23T19:55:10+07:00

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
    '2026-06-23T19:55:10+07:00'
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

-- 5324 | Baileys Latte (M) | CASH | 2026-06-23T19:56:32+07:00

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
    '2026-06-23T19:56:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5325 | Gula Aren (M) | CASH | 2026-06-23T19:58:01+07:00

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
    '2026-06-23T19:58:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5326 | Salted Caramel (M) | CASH | 2026-06-23T19:58:10+07:00

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
    '2026-06-23T19:58:10+07:00'
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

-- 5327 | Cold Brew (M) | CASH | 2026-06-23T19:58:47+07:00

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
    '2026-06-23T19:58:47+07:00'
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

-- 5328 | Baileys Latte (M) | QRIS | 2026-06-23T19:59:20+07:00

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
    '2026-06-23T19:59:20+07:00'
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

-- 5329 | Gula Aren (M) | QRIS | 2026-06-23T20:00:44+07:00

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
    '2026-06-23T20:00:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5330 | Baileys Latte (M) | CASH | 2026-06-23T20:01:03+07:00

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
    '2026-06-23T20:01:03+07:00'
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

-- 5331 | Butterscotch (M) | QRIS | 2026-06-23T20:01:21+07:00

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
    '2026-06-23T20:01:21+07:00'
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

-- 5332 | Salted Caramel (M) | QRIS | 2026-06-23T20:01:34+07:00

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
    '2026-06-23T20:01:34+07:00'
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

-- 5333 | Hazelnut (M) | CASH | 2026-06-23T20:01:42+07:00

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
    '2026-06-23T20:01:42+07:00'
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

-- 5334 | Butterscotch (M) | QRIS | 2026-06-23T20:03:55+07:00

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
    '2026-06-23T20:03:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5335 | Baileys Latte (M) | QRIS | 2026-06-23T20:04:49+07:00

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
    '2026-06-23T20:04:49+07:00'
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

-- 5336 | Butterscotch (M) | QRIS | 2026-06-23T20:07:07+07:00

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
    '2026-06-23T20:07:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5337 | Butterscotch (M) | QRIS | 2026-06-23T20:08:48+07:00

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
    '2026-06-23T20:08:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5338 | Baileys Latte (M) | QRIS | 2026-06-23T20:07:17+07:00

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
    '2026-06-23T20:07:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5339 | Baileys Latte (M) | CASH | 2026-06-23T20:12:22+07:00

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
    '2026-06-23T20:12:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5340 | Baileys Latte (M) | GRATIS | 2026-06-23T20:15:02+07:00

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
    '2026-06-23T20:15:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5341 | Baileys Latte (M) | CASH | 2026-06-23T20:16:25+07:00

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
    '2026-06-23T20:16:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5342 | Butterscotch (M) | QRIS | 2026-06-23T20:26:24+07:00

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
    '2026-06-23T20:26:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5343 | Baileys Latte (M) | QRIS | 2026-06-23T20:26:35+07:00

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
    '2026-06-23T20:26:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5344 | Cold Brew (M) | CASH | 2026-06-23T20:38:13+07:00

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
    '2026-06-23T20:38:13+07:00'
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

-- 5345 | Baileys Latte (M) | CASH | 2026-06-23T20:47:57+07:00

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
    '2026-06-23T20:47:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5346 | Baileys Latte (M) | CASH | 2026-06-23T20:50:31+07:00

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
    '2026-06-23T20:50:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5347 | Baileys Latte (M) | QRIS | 2026-06-23T20:52:27+07:00

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
    '2026-06-23T20:52:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5348 | Butterscotch (M) | CASH | 2026-06-23T20:56:39+07:00

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
    '2026-06-23T20:56:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5349 | Salted Caramel (M) | CASH | 2026-06-23T21:00:22+07:00

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
    '2026-06-23T21:00:22+07:00'
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

-- 5350 | Baileys Latte (M) | QRIS | 2026-06-23T21:02:36+07:00

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
    '2026-06-23T21:02:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5351 | Butterscotch (M) | QRIS | 2026-06-23T21:03:11+07:00

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
    '2026-06-23T21:03:11+07:00'
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

-- 5352 | Gula Aren (M) | CASH | 2026-06-23T21:06:31+07:00

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
    '2026-06-23T21:06:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5353 | Cold Brew (M) | CASH | 2026-06-23T21:06:40+07:00

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
    '2026-06-23T21:06:40+07:00'
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

-- 5354 | Hazelnut (M) | QRIS | 2026-06-23T21:06:45+07:00

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
    '2026-06-23T21:06:45+07:00'
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

-- 5355 | Baileys Latte (M) | CASH | 2026-06-23T21:22:18+07:00

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
    '2026-06-23T21:22:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5356 | Baileys Latte (M) | QRIS | 2026-06-23T21:28:48+07:00

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
    '2026-06-23T21:28:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5357 | Butterscotch (M) | CASH | 2026-06-23T21:38:31+07:00

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
    '2026-06-23T21:38:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5358 | Butterscotch (M) | QRIS | 2026-06-23T21:48:48+07:00

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
    '2026-06-23T21:48:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5359 | Hazelnut (M) | QRIS | 2026-06-23T21:48:56+07:00

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
    '2026-06-23T21:48:56+07:00'
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

-- 5360 | Vanilla (M) | CASH | 2026-06-23T21:49:02+07:00

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
    '2026-06-23T21:49:02+07:00'
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

-- 5361 | Hazelnut (M) | CASH | 2026-06-23T21:49:07+07:00

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
    '2026-06-23T21:49:07+07:00'
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

-- 5362 | Butterscotch (M) | QRIS | 2026-06-23T21:54:25+07:00

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
    '2026-06-23T21:54:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5363 | Vanilla (M) | QRIS | 2026-06-23T21:54:33+07:00

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
    '2026-06-23T21:54:33+07:00'
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

-- 5364 | Gula Aren (M) | QRIS | 2026-06-23T21:54:54+07:00

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
    '2026-06-23T21:54:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5365 | Gula Aren (M) | CASH | 2026-06-23T21:55:27+07:00

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
    '2026-06-23T21:55:27+07:00'
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

-- 5366 | Salted Caramel (M) | CASH | 2026-06-23T21:55:38+07:00

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
    '2026-06-23T21:55:38+07:00'
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

-- 5367 | Hazelnut (M) | CASH | 2026-06-23T21:55:49+07:00

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
    '2026-06-23T21:55:49+07:00'
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

-- 5368 | Baileys Latte (M) | CASH | 2026-06-23T21:55:57+07:00

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
    '2026-06-23T21:55:57+07:00'
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

-- 5369 | Butterscotch (M) | CASH | 2026-06-23T22:10:09+07:00

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
    '2026-06-23T22:10:09+07:00'
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

-- 5370 | Cold Brew (M) | CASH | 2026-06-23T22:10:16+07:00

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
    '2026-06-23T22:10:16+07:00'
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

-- 5371 | Baileys Latte (M) | GRATIS | 2026-06-23T22:25:26+07:00

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
    '2026-06-23T22:25:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5372 | Vanilla (M) | CASH | 2026-06-23T22:26:14+07:00

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
    '2026-06-23T22:26:14+07:00'
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

-- 5373 | Salted Caramel (M) | CASH | 2026-06-23T22:26:41+07:00

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
    '2026-06-23T22:26:41+07:00'
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

-- 5374 | Hazelnut (M) | CASH | 2026-06-23T22:32:21+07:00

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
    '2026-06-23T22:32:21+07:00'
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

-- 5375 | Butterscotch (M) | QRIS | 2026-06-23T22:37:58+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-23T22:37:58+07:00'
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

-- 5376 | Cold Brew (M) | QRIS | 2026-06-23T22:38:07+07:00

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
    '2026-06-23T22:38:07+07:00'
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

-- 5377 | Gula Aren (M) | QRIS | 2026-06-23T22:38:14+07:00

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
    '2026-06-23T22:38:14+07:00'
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

-- 5378 | Gula Aren (M) | CASH | 2026-06-23T22:38:54+07:00

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
    '2026-06-23T22:38:54+07:00'
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

-- 5379 | Butterscotch (M) | CASH | 2026-06-23T22:39:03+07:00

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
    '2026-06-23T22:39:03+07:00'
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

-- 5380 | Vanilla (M) | CASH | 2026-06-23T22:39:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 4,
    0.00,
    28146.00,
    '2026-06-23T22:39:09+07:00'
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

-- 5381 | Salted Caramel (M) | CASH | 2026-06-23T22:39:19+07:00

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
    '2026-06-23T22:39:19+07:00'
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

-- 5382 | Hazelnut (M) | CASH | 2026-06-23T22:39:30+07:00

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
    '2026-06-23T22:39:30+07:00'
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

-- 5383 | Baileys Latte (M) | CASH | 2026-06-23T22:39:45+07:00

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
    '2026-06-23T22:39:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5384 | Baileys Latte (M) | GRATIS | 2026-06-23T22:41:03+07:00

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
    '2026-06-23T22:41:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5385 | Cold Brew (M) | QRIS | 2026-06-24T09:12:22+07:00

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
    '2026-06-24T09:12:22+07:00'
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

-- 5386 | Gula Aren (M) | QRIS | 2026-06-24T09:12:30+07:00

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
    '2026-06-24T09:12:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5387 | Cold Brew (M) | QRIS | 2026-06-24T09:43:50+07:00

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
    '2026-06-24T09:43:50+07:00'
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

-- 5388 | Baileys Latte (M) | CASH | 2026-06-24T10:08:48+07:00

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
    '2026-06-24T10:08:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5389 | Butterscotch (M) | QRIS | 2026-06-24T10:09:07+07:00

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
    '2026-06-24T10:09:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5390 | Cold Brew (M) | QRIS | 2026-06-24T10:09:13+07:00

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
    '2026-06-24T10:09:13+07:00'
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

-- 5391 | Gula Aren (M) | QRIS | 2026-06-24T10:13:05+07:00

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
    '2026-06-24T10:13:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5392 | Gula Aren (M) | CASH | 2026-06-24T10:19:41+07:00

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
    '2026-06-24T10:19:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5393 | Baileys Latte (M) | CASH | 2026-06-24T10:27:29+07:00

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
    '2026-06-24T10:27:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5394 | Gula Aren (M) | QRIS | 2026-06-24T11:03:10+07:00

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
    '2026-06-24T11:03:10+07:00'
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

-- 5395 | Gula Aren (M) | QRIS | 2026-06-24T11:08:29+07:00

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
    '2026-06-24T11:08:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5396 | Baileys Latte (M) | QRIS | 2026-06-24T11:08:42+07:00

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
    '2026-06-24T11:08:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5397 | Baileys Latte (M) | CASH | 2026-06-24T11:09:32+07:00

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
    '2026-06-24T11:09:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5398 | Cold Brew (M) | QRIS | 2026-06-24T11:18:31+07:00

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
    '2026-06-24T11:18:31+07:00'
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

-- 5399 | Gula Aren (M) | CASH | 2026-06-24T11:19:11+07:00

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
    '2026-06-24T11:19:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5400 | Butterscotch (M) | QRIS | 2026-06-24T11:21:08+07:00

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
    '2026-06-24T11:21:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5401 | Gula Aren (M) | QRIS | 2026-06-24T11:21:12+07:00

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
    '2026-06-24T11:21:12+07:00'
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

-- 5402 | Gula Aren (M) | CASH | 2026-06-24T11:39:37+07:00

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
    '2026-06-24T11:39:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5403 | Butterscotch (M) | CASH | 2026-06-24T11:39:44+07:00

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
    '2026-06-24T11:39:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5404 | Baileys Latte (M) | CASH | 2026-06-24T11:50:47+07:00

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
    '2026-06-24T11:50:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5405 | Gula Aren (M) | QRIS | 2026-06-24T11:51:04+07:00

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
    '2026-06-24T11:51:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5406 | Gula Aren (M) | QRIS | 2026-06-24T11:51:17+07:00

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
    '2026-06-24T11:51:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5407 | Cold Brew (M) | CASH | 2026-06-24T11:51:24+07:00

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
    '2026-06-24T11:51:24+07:00'
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

-- 5408 | Gula Aren (M) | QRIS | 2026-06-24T11:55:41+07:00

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
    '2026-06-24T11:55:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5409 | Baileys Latte (M) | QRIS | 2026-06-24T11:55:50+07:00

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
    '2026-06-24T11:55:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5410 | Baileys Latte (M) | QRIS | 2026-06-24T11:55:57+07:00

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
    '2026-06-24T11:55:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5411 | Butterscotch (M) | QRIS | 2026-06-24T11:56:06+07:00

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
    '2026-06-24T11:56:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5412 | Gula Aren (M) | QRIS | 2026-06-24T11:57:11+07:00

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
    '2026-06-24T11:57:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5413 | Butterscotch (M) | CASH | 2026-06-24T12:11:01+07:00

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
    '2026-06-24T12:11:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5414 | Baileys Latte (M) | QRIS | 2026-06-24T12:11:07+07:00

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
    '2026-06-24T12:11:07+07:00'
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

-- 5415 | Gula Aren (M) | CASH | 2026-06-24T12:11:44+07:00

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
    '2026-06-24T12:11:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5416 | Butterscotch (M) | QRIS | 2026-06-24T12:14:48+07:00

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
    '2026-06-24T12:14:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5417 | Baileys Latte (M) | QRIS | 2026-06-24T12:14:56+07:00

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
    '2026-06-24T12:14:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5418 | Gula Aren (M) | QRIS | 2026-06-24T12:17:19+07:00

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
    '2026-06-24T12:17:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5419 | Butterscotch (M) | QRIS | 2026-06-24T12:17:24+07:00

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
    '2026-06-24T12:17:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5420 | Baileys Latte (M) | QRIS | 2026-06-24T12:17:28+07:00

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
    '2026-06-24T12:17:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5421 | Vanilla (M) | QRIS | 2026-06-24T12:19:55+07:00

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
    '2026-06-24T12:19:55+07:00'
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

-- 5422 | Gula Aren (M) | QRIS | 2026-06-24T12:20:02+07:00

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
    '2026-06-24T12:20:02+07:00'
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

-- 5423 | Baileys Latte (M) | QRIS | 2026-06-24T12:27:05+07:00

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
    '2026-06-24T12:27:05+07:00'
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

-- 5424 | Butterscotch (M) | QRIS | 2026-06-24T12:30:47+07:00

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
    '2026-06-24T12:30:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5425 | Gula Aren (M) | CASH | 2026-06-24T12:35:13+07:00

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
    '2026-06-24T12:35:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5426 | Butterscotch (M) | CASH | 2026-06-24T12:35:59+07:00

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
    '2026-06-24T12:35:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5427 | Gula Aren (M) | CASH | 2026-06-24T12:36:03+07:00

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
    '2026-06-24T12:36:03+07:00'
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

-- 5428 | Gula Aren (M) | CASH | 2026-06-24T12:36:30+07:00

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
    '2026-06-24T12:36:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5429 | Gula Aren (M) | CASH | 2026-06-24T12:40:13+07:00

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
    '2026-06-24T12:40:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5430 | Gula Aren (M) | CASH | 2026-06-24T12:52:01+07:00

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
    '2026-06-24T12:52:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5431 | Gula Aren (M) | QRIS | 2026-06-24T12:52:05+07:00

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
    '2026-06-24T12:52:05+07:00'
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

-- 5432 | Gula Aren (M) | CASH | 2026-06-24T12:58:56+07:00

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
    '2026-06-24T12:58:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5433 | Butterscotch (M) | QRIS | 2026-06-24T13:00:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-24T13:00:19+07:00'
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

-- 5434 | Gula Aren (M) | CASH | 2026-06-24T13:00:42+07:00

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
    '2026-06-24T13:00:42+07:00'
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

-- 5435 | Salted Caramel (M) | CASH | 2026-06-24T13:00:55+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-24T13:00:55+07:00'
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

-- 5436 | Baileys Latte (M) | CASH | 2026-06-24T13:01:00+07:00

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
    '2026-06-24T13:01:00+07:00'
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

-- 5437 | Vanilla (M) | GRATIS | 2026-06-24T13:01:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 1,
    0.00,
    0.00,
    '2026-06-24T13:01:42+07:00'
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

-- 5438 | Butterscotch (M) | CASH | 2026-06-24T13:08:19+07:00

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
    '2026-06-24T13:08:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5439 | Salted Caramel (M) | CASH | 2026-06-24T13:17:29+07:00

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
    '2026-06-24T13:17:29+07:00'
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

-- 5440 | Baileys Latte (M) | QRIS | 2026-06-24T13:24:30+07:00

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
    '2026-06-24T13:24:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5441 | Baileys Latte (M) | CASH | 2026-06-24T13:24:36+07:00

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
    '2026-06-24T13:24:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5442 | Salted Caramel (M) | QRIS | 2026-06-24T13:25:02+07:00

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
    '2026-06-24T13:25:02+07:00'
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

-- 5443 | Gula Aren (M) | CASH | 2026-06-24T13:25:36+07:00

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
    '2026-06-24T13:25:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5444 | Vanilla (M) | CASH | 2026-06-24T13:25:41+07:00

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
    '2026-06-24T13:25:41+07:00'
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

-- 5445 | Gula Aren (M) | CASH | 2026-06-24T13:25:45+07:00

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
    '2026-06-24T13:25:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5446 | Vanilla (M) | QRIS | 2026-06-24T13:26:51+07:00

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
    '2026-06-24T13:26:51+07:00'
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

-- 5447 | Gula Aren (M) | QRIS | 2026-06-24T13:26:52+07:00

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
    '2026-06-24T13:26:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5448 | Baileys Latte (M) | QRIS | 2026-06-24T13:26:56+07:00

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
    '2026-06-24T13:26:56+07:00'
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

-- 5449 | Baileys Latte (M) | QRIS | 2026-06-24T13:27:04+07:00

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
    '2026-06-24T13:27:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5450 | Butterscotch (M) | CASH | 2026-06-24T13:27:18+07:00

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
    '2026-06-24T13:27:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5451 | Butterscotch (M) | QRIS | 2026-06-24T13:27:30+07:00

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
    '2026-06-24T13:27:30+07:00'
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

-- 5452 | Vanilla (M) | CASH | 2026-06-24T13:29:35+07:00

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
    '2026-06-24T13:29:35+07:00'
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

-- 5453 | Cold Brew (M) | QRIS | 2026-06-24T13:31:02+07:00

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
    '2026-06-24T13:31:02+07:00'
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

-- 5454 | Butterscotch (M) | QRIS | 2026-06-24T13:32:37+07:00

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
    '2026-06-24T13:32:37+07:00'
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

-- 5455 | Salted Caramel (M) | QRIS | 2026-06-24T13:36:52+07:00

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
    '2026-06-24T13:36:52+07:00'
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

-- 5456 | Butterscotch (M) | QRIS | 2026-06-24T13:39:39+07:00

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
    '2026-06-24T13:39:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5457 | Gula Aren (M) | QRIS | 2026-06-24T13:42:19+07:00

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
    '2026-06-24T13:42:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5458 | Butterscotch (M) | QRIS | 2026-06-24T13:45:13+07:00

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
    '2026-06-24T13:45:13+07:00'
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

-- 5459 | Gula Aren (M) | QRIS | 2026-06-24T13:45:34+07:00

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
    '2026-06-24T13:45:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5460 | Gula Aren (M) | QRIS | 2026-06-24T13:45:41+07:00

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
    '2026-06-24T13:45:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5461 | Gula Aren (M) | CASH | 2026-06-24T13:46:12+07:00

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
    '2026-06-24T13:46:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5462 | Gula Aren (M) | CASH | 2026-06-24T13:46:16+07:00

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
    '2026-06-24T13:46:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5463 | Cold Brew (M) | CASH | 2026-06-24T13:50:07+07:00

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
    '2026-06-24T13:50:07+07:00'
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

-- 5464 | Baileys Latte (M) | QRIS | 2026-06-24T13:52:06+07:00

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
    '2026-06-24T13:52:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5465 | Baileys Latte (M) | QRIS | 2026-06-24T13:52:15+07:00

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
    '2026-06-24T13:52:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5466 | Butterscotch (M) | QRIS | 2026-06-24T13:53:07+07:00

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
    '2026-06-24T13:53:07+07:00'
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

-- 5467 | Baileys Latte (M) | CASH | 2026-06-24T13:55:25+07:00

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
    '2026-06-24T13:55:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5468 | Salted Caramel (M) | QRIS | 2026-06-24T13:56:59+07:00

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
    '2026-06-24T13:56:59+07:00'
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

-- 5469 | Gula Aren (M) | GRATIS | 2026-06-24T13:59:46+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 2,
    0.00,
    0.00,
    '2026-06-24T13:59:46+07:00'
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

-- 5470 | Baileys Latte (M) | CASH | 2026-06-24T14:00:32+07:00

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
    '2026-06-24T14:00:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5471 | Vanilla (M) | QRIS | 2026-06-24T14:09:55+07:00

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
    '2026-06-24T14:09:55+07:00'
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

-- 5472 | Gula Aren (M) | CASH | 2026-06-24T14:11:11+07:00

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
    '2026-06-24T14:11:11+07:00'
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

-- 5473 | Butterscotch (M) | CASH | 2026-06-24T14:11:18+07:00

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
    '2026-06-24T14:11:18+07:00'
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

-- 5474 | Gula Aren (M) | CASH | 2026-06-24T14:11:30+07:00

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
    '2026-06-24T14:11:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5475 | Butterscotch (M) | CASH | 2026-06-24T14:19:20+07:00

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
    '2026-06-24T14:19:20+07:00'
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

-- 5476 | Salted Caramel (M) | CASH | 2026-06-24T14:19:24+07:00

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
    '2026-06-24T14:19:24+07:00'
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

-- 5477 | Hazelnut (M) | CASH | 2026-06-24T14:19:28+07:00

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
    '2026-06-24T14:19:28+07:00'
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

-- 5478 | Butterscotch (M) | QRIS | 2026-06-24T14:21:18+07:00

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
    '2026-06-24T14:21:18+07:00'
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

-- 5479 | Baileys Latte (M) | CASH | 2026-06-24T14:23:46+07:00

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
    '2026-06-24T14:23:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5480 | Hazelnut (M) | CASH | 2026-06-24T14:35:37+07:00

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
    '2026-06-24T14:35:37+07:00'
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

-- 5481 | Gula Aren (M) | QRIS | 2026-06-24T14:38:39+07:00

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
    '2026-06-24T14:38:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5482 | Gula Aren (M) | CASH | 2026-06-24T14:41:35+07:00

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
    '2026-06-24T14:41:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5483 | Vanilla (M) | CASH | 2026-06-24T14:53:23+07:00

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
    '2026-06-24T14:53:23+07:00'
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

-- 5484 | Hazelnut (M) | CASH | 2026-06-24T14:53:31+07:00

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
    '2026-06-24T14:53:31+07:00'
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

-- 5485 | Baileys Latte (M) | CASH | 2026-06-24T14:53:37+07:00

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
    '2026-06-24T14:53:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5486 | Baileys Latte (M) | QRIS | 2026-06-24T15:00:23+07:00

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
    '2026-06-24T15:00:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5487 | Hazelnut (M) | CASH | 2026-06-24T15:00:30+07:00

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
    '2026-06-24T15:00:30+07:00'
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

-- 5488 | Butterscotch (M) | CASH | 2026-06-24T15:03:44+07:00

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
    '2026-06-24T15:03:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5489 | Baileys Latte (M) | CASH | 2026-06-24T15:03:53+07:00

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
    '2026-06-24T15:03:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5490 | Cold Brew (M) | QRIS | 2026-06-24T15:05:01+07:00

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
    '2026-06-24T15:05:01+07:00'
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

-- 5491 | Butterscotch (M) | CASH | 2026-06-24T15:13:46+07:00

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
    '2026-06-24T15:13:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5492 | Gula Aren (M) | CASH | 2026-06-24T15:21:04+07:00

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
    '2026-06-24T15:21:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5493 | Butterscotch (M) | CASH | 2026-06-24T15:21:20+07:00

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
    '2026-06-24T15:21:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5494 | Salted Caramel (M) | QRIS | 2026-06-24T15:33:43+07:00

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
    '2026-06-24T15:33:43+07:00'
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

-- 5495 | Baileys Latte (M) | QRIS | 2026-06-24T15:33:49+07:00

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
    '2026-06-24T15:33:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5496 | Butterscotch (M) | CASH | 2026-06-24T15:43:31+07:00

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
    '2026-06-24T15:43:31+07:00'
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

-- 5497 | Butterscotch (M) | QRIS | 2026-06-24T15:59:25+07:00

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
    '2026-06-24T15:59:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5498 | Baileys Latte (M) | QRIS | 2026-06-24T16:47:25+07:00

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
    '2026-06-24T16:47:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5499 | Vanilla (M) | QRIS | 2026-06-24T16:47:33+07:00

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
    '2026-06-24T16:47:33+07:00'
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

-- 5500 | Cold Brew (M) | CASH | 2026-06-24T16:47:37+07:00

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
    '2026-06-24T16:47:37+07:00'
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

-- 5501 | Vanilla (M) | CASH | 2026-06-24T16:50:39+07:00

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
    '2026-06-24T16:50:39+07:00'
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

-- 5502 | Butterscotch (M) | CASH | 2026-06-24T16:53:51+07:00

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
    '2026-06-24T16:53:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5503 | Butterscotch (M) | QRIS | 2026-06-24T17:10:30+07:00

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
    '2026-06-24T17:10:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5504 | Gula Aren (M) | CASH | 2026-06-24T17:14:06+07:00

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
    '2026-06-24T17:14:06+07:00'
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

-- 5505 | Butterscotch (M) | QRIS | 2026-06-24T17:15:19+07:00

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
    '2026-06-24T17:15:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5506 | Hazelnut (M) | QRIS | 2026-06-24T17:19:58+07:00

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
    '2026-06-24T17:19:58+07:00'
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

-- 5507 | Hazelnut (M) | QRIS | 2026-06-24T17:20:06+07:00

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
    '2026-06-24T17:20:06+07:00'
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

-- 5508 | Baileys Latte (M) | CASH | 2026-06-24T17:20:27+07:00

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
    '2026-06-24T17:20:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5509 | Hazelnut (M) | CASH | 2026-06-24T17:20:32+07:00

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
    '2026-06-24T17:20:32+07:00'
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

-- 5510 | Butterscotch (M) | QRIS | 2026-06-24T17:23:27+07:00

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
    '2026-06-24T17:23:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5511 | Baileys Latte (M) | QRIS | 2026-06-24T17:23:39+07:00

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
    '2026-06-24T17:23:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5512 | Vanilla (M) | CASH | 2026-06-24T17:24:48+07:00

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
    '2026-06-24T17:24:48+07:00'
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

-- 5513 | Baileys Latte (M) | CASH | 2026-06-24T17:26:29+07:00

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
    '2026-06-24T17:26:29+07:00'
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

-- 5514 | Baileys Latte (M) | QRIS | 2026-06-24T17:30:48+07:00

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
    '2026-06-24T17:30:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5515 | Baileys Latte (M) | QRIS | 2026-06-24T17:33:05+07:00

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
    '2026-06-24T17:33:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5516 | Butterscotch (M) | QRIS | 2026-06-24T17:34:21+07:00

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
    '2026-06-24T17:34:21+07:00'
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

-- 5517 | Butterscotch (M) | CASH | 2026-06-24T17:35:51+07:00

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
    '2026-06-24T17:35:51+07:00'
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

-- 5518 | Butterscotch (M) | QRIS | 2026-06-24T17:40:31+07:00

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
    '2026-06-24T17:40:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5519 | Butterscotch (M) | QRIS | 2026-06-24T17:40:39+07:00

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
    '2026-06-24T17:40:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5520 | Baileys Latte (M) | CASH | 2026-06-24T17:41:29+07:00

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
    '2026-06-24T17:41:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5521 | Baileys Latte (M) | CASH | 2026-06-24T17:58:46+07:00

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
    '2026-06-24T17:58:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5522 | Vanilla (M) | QRIS | 2026-06-24T18:04:01+07:00

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
    '2026-06-24T18:04:01+07:00'
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

-- 5523 | Butterscotch (M) | CASH | 2026-06-24T18:04:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-24T18:04:21+07:00'
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

-- 5524 | Hazelnut (M) | CASH | 2026-06-24T18:04:42+07:00

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
    '2026-06-24T18:04:42+07:00'
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

-- 5525 | Gula Aren (M) | CASH | 2026-06-24T18:07:39+07:00

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
    '2026-06-24T18:07:39+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5526 | Butterscotch (M) | QRIS | 2026-06-24T18:21:44+07:00

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
    '2026-06-24T18:21:44+07:00'
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

-- 5527 | Gula Aren (M) | QRIS | 2026-06-24T18:21:50+07:00

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
    '2026-06-24T18:21:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5528 | Gula Aren (M) | CASH | 2026-06-24T18:35:55+07:00

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
    '2026-06-24T18:35:55+07:00'
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

-- 5529 | Gula Aren (M) | CASH | 2026-06-24T18:36:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-24T18:36:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5530 | Gula Aren (M) | QRIS | 2026-06-24T18:36:36+07:00

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
    '2026-06-24T18:36:36+07:00'
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

-- 5531 | Gula Aren (M) | CASH | 2026-06-24T18:36:49+07:00

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
    '2026-06-24T18:36:49+07:00'
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

-- 5532 | Baileys Latte (M) | CASH | 2026-06-24T18:37:05+07:00

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
    '2026-06-24T18:37:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5533 | Gula Aren (M) | CASH | 2026-06-24T18:37:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-24T18:37:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5534 | Cold Brew (M) | CASH | 2026-06-24T18:37:35+07:00

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
    '2026-06-24T18:37:35+07:00'
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

-- 5535 | Butterscotch (M) | QRIS | 2026-06-24T18:37:47+07:00

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
    '2026-06-24T18:37:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5536 | Salted Caramel (M) | QRIS | 2026-06-24T18:37:57+07:00

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
    '2026-06-24T18:37:57+07:00'
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

-- 5537 | Butterscotch (M) | QRIS | 2026-06-24T18:38:10+07:00

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
    '2026-06-24T18:38:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5538 | Butterscotch (M) | CASH | 2026-06-24T18:38:19+07:00

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
    '2026-06-24T18:38:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5539 | Baileys Latte (M) | CASH | 2026-06-24T18:38:32+07:00

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
    '2026-06-24T18:38:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5540 | Butterscotch (M) | CASH | 2026-06-24T18:38:43+07:00

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
    '2026-06-24T18:38:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5541 | Vanilla (M) | CASH | 2026-06-24T18:38:52+07:00

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
    '2026-06-24T18:38:52+07:00'
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

-- 5542 | Gula Aren (M) | CASH | 2026-06-24T18:39:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    8000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    3596.00,
    '2026-06-24T18:39:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5543 | Butterscotch (M) | CASH | 2026-06-24T18:39:12+07:00

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
    '2026-06-24T18:39:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5544 | Butterscotch (M) | CASH | 2026-06-24T18:39:23+07:00

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
    '2026-06-24T18:39:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5545 | Salted Caramel (M) | CASH | 2026-06-24T18:39:34+07:00

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
    '2026-06-24T18:39:34+07:00'
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

-- 5546 | Butterscotch (M) | CASH | 2026-06-24T18:39:44+07:00

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
    '2026-06-24T18:39:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5547 | Baileys Latte (M) | CASH | 2026-06-24T18:39:54+07:00

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
    '2026-06-24T18:39:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5548 | Butterscotch (M) | CASH | 2026-06-24T18:40:04+07:00

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
    '2026-06-24T18:40:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5549 | Cold Brew (M) | QRIS | 2026-06-24T18:40:13+07:00

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
    '2026-06-24T18:40:13+07:00'
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

-- 5550 | Butterscotch (M) | QRIS | 2026-06-24T18:40:28+07:00

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
    '2026-06-24T18:40:28+07:00'
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

-- 5551 | Baileys Latte (M) | QRIS | 2026-06-24T18:40:36+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-24T18:40:36+07:00'
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

-- 5552 | Hazelnut (M) | QRIS | 2026-06-24T18:40:48+07:00

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
    '2026-06-24T18:40:48+07:00'
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

-- 5553 | Butterscotch (M) | QRIS | 2026-06-24T19:06:17+07:00

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
    '2026-06-24T19:06:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5554 | Butterscotch (M) | CASH | 2026-06-24T19:12:09+07:00

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
    '2026-06-24T19:12:09+07:00'
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

-- 5555 | Vanilla (M) | CASH | 2026-06-24T19:12:16+07:00

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
    '2026-06-24T19:12:16+07:00'
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

-- 5556 | Salted Caramel (M) | CASH | 2026-06-24T19:12:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-24T19:12:27+07:00'
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

-- 5557 | Baileys Latte (M) | CASH | 2026-06-24T19:12:45+07:00

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
    '2026-06-24T19:12:45+07:00'
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

-- 5558 | Baileys Latte (M) | QRIS | 2026-06-24T19:19:26+07:00

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
    '2026-06-24T19:19:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5559 | Gula Aren (M) | CASH | 2026-06-24T19:38:21+07:00

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
    '2026-06-24T19:38:21+07:00'
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

-- 5560 | Gula Aren (M) | QRIS | 2026-06-24T19:38:31+07:00

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
    '2026-06-24T19:38:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5561 | Baileys Latte (M) | CASH | 2026-06-24T19:40:40+07:00

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
    '2026-06-24T19:40:40+07:00'
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

-- 5562 | Butterscotch (M) | QRIS | 2026-06-24T19:40:53+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    200000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 16,
    0.00,
    112582.00,
    '2026-06-24T19:40:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  16,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5563 | Vanilla (M) | CASH | 2026-06-24T19:41:17+07:00

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
    '2026-06-24T19:41:17+07:00'
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

-- 5564 | Butterscotch 1 ltr | QRIS | 2026-06-24T19:42:00+07:00

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
    '2026-06-24T19:42:00+07:00'
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

-- 5565 | Hazelnut (M) | CASH | 2026-06-24T19:51:22+07:00

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
    '2026-06-24T19:51:22+07:00'
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

-- 5566 | Baileys Latte (M) | GRATIS | 2026-06-24T19:56:33+07:00

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
    '2026-06-24T19:56:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5567 | Gula Aren (M) | QRIS | 2026-06-24T20:04:42+07:00

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
    '2026-06-24T20:04:42+07:00'
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

-- 5568 | Butterscotch (M) | QRIS | 2026-06-24T20:04:50+07:00

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
    '2026-06-24T20:04:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5569 | Gula Aren (M) | CASH | 2026-06-24T20:05:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    32000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 4,
    0.00,
    14383.00,
    '2026-06-24T20:05:11+07:00'
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

-- 5570 | Butterscotch (M) | CASH | 2026-06-24T20:05:18+07:00

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
    '2026-06-24T20:05:18+07:00'
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

-- 5571 | Vanilla (M) | CASH | 2026-06-24T20:05:27+07:00

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
    '2026-06-24T20:05:27+07:00'
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

-- 5572 | Gula Aren 1 ltr | QRIS | 2026-06-24T20:15:16+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    70000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f843c55d-43a9-46ce-b955-131e4b7e9088')) * 1,
    0.00,
    32173.00,
    '2026-06-24T20:15:16+07:00'
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

-- 5573 | Hazelnut (M) | QRIS | 2026-06-24T20:22:44+07:00

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
    '2026-06-24T20:22:44+07:00'
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

-- 5574 | Salted Caramel (M) | QRIS | 2026-06-24T20:22:54+07:00

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
    '2026-06-24T20:22:54+07:00'
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

-- 5575 | Cold Brew (M) | GRATIS | 2026-06-24T20:31:13+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '2bdc286c-6b98-423e-b5c8-c2af18298721')) * 1,
    0.00,
    0.00,
    '2026-06-24T20:31:13+07:00'
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

-- 5576 | Gula Aren (M) | QRIS | 2026-06-24T20:31:22+07:00

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
    '2026-06-24T20:31:22+07:00'
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

-- 5577 | Butterscotch (M) | QRIS | 2026-06-24T20:31:53+07:00

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
    '2026-06-24T20:31:53+07:00'
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

-- 5578 | Baileys Latte (M) | QRIS | 2026-06-24T20:32:11+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 4,
    0.00,
    27450.00,
    '2026-06-24T20:32:11+07:00'
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

-- 5579 | Gula Aren (M) | CASH | 2026-06-24T20:33:01+07:00

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
    '2026-06-24T20:33:01+07:00'
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

-- 5580 | Vanilla (M) | CASH | 2026-06-24T20:33:11+07:00

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
    '2026-06-24T20:33:11+07:00'
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

-- 5581 | Salted Caramel (M) | CASH | 2026-06-24T20:33:18+07:00

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
    '2026-06-24T20:33:18+07:00'
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

-- 5582 | Hazelnut (M) | CASH | 2026-06-24T20:33:39+07:00

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
    '2026-06-24T20:33:39+07:00'
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

-- 5583 | Cold Brew (M) | CASH | 2026-06-24T20:33:48+07:00

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
    '2026-06-24T20:33:48+07:00'
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

-- 5584 | Salted Caramel (M) | QRIS | 2026-06-24T20:37:12+07:00

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
    '2026-06-24T20:37:12+07:00'
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

-- 5585 | Baileys Latte (M) | QRIS | 2026-06-24T20:38:13+07:00

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
    '2026-06-24T20:38:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5586 | Gula Aren (M) | QRIS | 2026-06-24T20:52:32+07:00

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
    '2026-06-24T20:52:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5587 | Butterscotch (M) | QRIS | 2026-06-24T20:53:33+07:00

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
    '2026-06-24T20:53:33+07:00'
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

-- 5588 | Baileys Latte (M) | CASH | 2026-06-24T21:03:19+07:00

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
    '2026-06-24T21:03:19+07:00'
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

-- 5589 | Gula Aren (M) | CASH | 2026-06-24T21:03:45+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    72000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 9,
    0.00,
    32362.00,
    '2026-06-24T21:03:45+07:00'
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

-- 5590 | Gula Aren (M) | GRATIS | 2026-06-24T21:04:07+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    0.00,
    '2026-06-24T21:04:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5591 | Salted Caramel (M) | CASH | 2026-06-24T21:04:38+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 2,
    0.00,
    14073.00,
    '2026-06-24T21:04:38+07:00'
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

-- 5592 | Cold Brew (M) | CASH | 2026-06-24T21:04:44+07:00

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
    '2026-06-24T21:04:44+07:00'
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

-- 5593 | Gula Aren (M) | CASH | 2026-06-24T21:11:44+07:00

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
    '2026-06-24T21:11:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5594 | Gula Aren (M) | CASH | 2026-06-24T21:12:19+07:00

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
    '2026-06-24T21:12:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5595 | Gula Aren (M) | QRIS | 2026-06-24T22:05:43+07:00

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
    '2026-06-24T22:05:43+07:00'
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

-- 5596 | Butterscotch (M) | QRIS | 2026-06-24T22:06:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-24T22:06:14+07:00'
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

-- 5597 | Gula Aren (M) | CASH | 2026-06-24T22:07:22+07:00

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
    '2026-06-24T22:07:22+07:00'
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

-- 5598 | Vanilla (M) | CASH | 2026-06-24T22:07:40+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-24T22:07:40+07:00'
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

-- 5599 | Salted Caramel (M) | CASH | 2026-06-24T22:07:54+07:00

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
    '2026-06-24T22:07:54+07:00'
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

-- 5600 | Cold Brew (M) | CASH | 2026-06-24T22:08:03+07:00

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
    '2026-06-24T22:08:03+07:00'
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

-- 5601 | Baileys Latte (M) | CASH | 2026-06-24T22:08:09+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-24T22:08:09+07:00'
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

-- 5602 | Gula Aren (M) | CASH | 2026-06-24T22:14:23+07:00

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
    '2026-06-24T22:14:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5603 | Gula Aren (M) | CASH | 2026-06-24T22:23:16+07:00

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
    '2026-06-24T22:23:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5604 | Butterscotch (M) | CASH | 2026-06-24T22:23:23+07:00

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
    '2026-06-24T22:23:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5605 | Baileys Latte (M) | CASH | 2026-06-24T23:01:13+07:00

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
    '2026-06-24T23:01:13+07:00'
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

-- 5606 | Cold Brew (M) | CASH | 2026-06-25T09:30:14+07:00

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
    '2026-06-25T09:30:14+07:00'
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

-- 5607 | Butterscotch (M) | CASH | 2026-06-25T09:30:25+07:00

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
    '2026-06-25T09:30:25+07:00'
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

-- 5608 | Gula Aren (M) | CASH | 2026-06-25T09:30:31+07:00

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
    '2026-06-25T09:30:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5609 | Butterscotch (M) | CASH | 2026-06-25T09:38:50+07:00

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
    '2026-06-25T09:38:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5610 | Gula Aren (M) | CASH | 2026-06-25T09:41:45+07:00

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
    '2026-06-25T09:41:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5611 | Gula Aren (M) | QRIS | 2026-06-25T09:46:52+07:00

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
    '2026-06-25T09:46:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5612 | Butterscotch (M) | QRIS | 2026-06-25T10:16:33+07:00

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
    '2026-06-25T10:16:33+07:00'
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

-- 5613 | Hazelnut (M) | GRATIS | 2026-06-25T10:17:42+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '7e65bdc8-1d6f-4ff0-a1cd-cd07e4b277dc')) * 1,
    0.00,
    0.00,
    '2026-06-25T10:17:42+07:00'
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

-- 5614 | Butterscotch (M) | CASH | 2026-06-25T10:24:24+07:00

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
    '2026-06-25T10:24:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5615 | Baileys Latte (M) | CASH | 2026-06-25T10:24:32+07:00

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
    '2026-06-25T10:24:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5616 | Vanilla (M) | CASH | 2026-06-25T10:26:11+07:00

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
    '2026-06-25T10:26:11+07:00'
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

-- 5617 | Gula Aren (M) | CASH | 2026-06-25T10:32:23+07:00

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
    '2026-06-25T10:32:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5618 | Butterscotch (M) | QRIS | 2026-06-25T10:37:36+07:00

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
    '2026-06-25T10:37:36+07:00'
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

-- 5619 | Salted Caramel (M) | CASH | 2026-06-25T10:41:39+07:00

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
    '2026-06-25T10:41:39+07:00'
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

-- 5620 | Vanilla (M) | QRIS | 2026-06-25T11:01:36+07:00

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
    '2026-06-25T11:01:36+07:00'
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

-- 5621 | Butterscotch (M) | CASH | 2026-06-25T11:01:42+07:00

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
    '2026-06-25T11:01:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5622 | Gula Aren (M) | CASH | 2026-06-25T11:01:48+07:00

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
    '2026-06-25T11:01:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5623 | Butterscotch (M) | CASH | 2026-06-25T11:06:27+07:00

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
    '2026-06-25T11:06:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5624 | Gula Aren (M) | QRIS | 2026-06-25T11:07:08+07:00

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
    '2026-06-25T11:07:08+07:00'
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

-- 5625 | Salted Caramel (M) | CASH | 2026-06-25T11:17:26+07:00

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
    '2026-06-25T11:17:26+07:00'
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

-- 5626 | Butterscotch (M) | CASH | 2026-06-25T11:20:27+07:00

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
    '2026-06-25T11:20:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5627 | Hazelnut (M) | CASH | 2026-06-25T11:20:31+07:00

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
    '2026-06-25T11:20:31+07:00'
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

-- 5628 | Butterscotch (M) | CASH | 2026-06-25T11:24:17+07:00

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
    '2026-06-25T11:24:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5629 | Butterscotch (M) | CASH | 2026-06-25T11:31:02+07:00

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
    '2026-06-25T11:31:02+07:00'
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

-- 5630 | Gula Aren (M) | CASH | 2026-06-25T11:31:23+07:00

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
    '2026-06-25T11:31:23+07:00'
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

-- 5631 | Salted Caramel (M) | CASH | 2026-06-25T11:31:33+07:00

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
    '2026-06-25T11:31:33+07:00'
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

-- 5632 | Gula Aren (M) | CASH | 2026-06-25T11:33:19+07:00

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
    '2026-06-25T11:33:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5633 | Gula Aren (M) | CASH | 2026-06-25T11:34:25+07:00

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
    '2026-06-25T11:34:25+07:00'
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

-- 5634 | Gula Aren (M) | CASH | 2026-06-25T11:35:16+07:00

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
    '2026-06-25T11:35:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5635 | Gula Aren (M) | CASH | 2026-06-25T11:37:14+07:00

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
    '2026-06-25T11:37:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5636 | Baileys Latte (M) | QRIS | 2026-06-25T11:42:05+07:00

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
    '2026-06-25T11:42:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5637 | Butterscotch (M) | CASH | 2026-06-25T11:44:01+07:00

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
    '2026-06-25T11:44:01+07:00'
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

-- 5638 | Gula Aren (M) | CASH | 2026-06-25T11:48:33+07:00

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
    '2026-06-25T11:48:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5639 | Vanilla (M) | CASH | 2026-06-25T11:48:40+07:00

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
    '2026-06-25T11:48:40+07:00'
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

-- 5640 | Baileys Latte (M) | QRIS | 2026-06-25T11:48:47+07:00

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
    '2026-06-25T11:48:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5641 | Cold Brew (M) | QRIS | 2026-06-25T11:51:22+07:00

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
    '2026-06-25T11:51:22+07:00'
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

-- 5642 | Baileys Latte (M) | CASH | 2026-06-25T11:52:09+07:00

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
    '2026-06-25T11:52:09+07:00'
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

-- 5643 | Butterscotch (M) | QRIS | 2026-06-25T11:55:10+07:00

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
    '2026-06-25T11:55:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5644 | Baileys Latte (M) | CASH | 2026-06-25T11:56:57+07:00

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
    '2026-06-25T11:56:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5645 | Hazelnut (M) | CASH | 2026-06-25T11:59:40+07:00

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
    '2026-06-25T11:59:40+07:00'
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

-- 5646 | Baileys Latte (M) | CASH | 2026-06-25T11:59:48+07:00

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
    '2026-06-25T11:59:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5647 | Baileys Latte (M) | QRIS | 2026-06-25T11:59:53+07:00

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
    '2026-06-25T11:59:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5648 | Cold Brew (M) | CASH | 2026-06-25T11:59:59+07:00

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
    '2026-06-25T11:59:59+07:00'
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

-- 5649 | Baileys Latte (M) | CASH | 2026-06-25T12:04:32+07:00

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
    '2026-06-25T12:04:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5650 | Butterscotch (M) | QRIS | 2026-06-25T12:12:42+07:00

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
    '2026-06-25T12:12:42+07:00'
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

-- 5651 | Butterscotch (M) | QRIS | 2026-06-25T12:12:55+07:00

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
    '2026-06-25T12:12:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5652 | Gula Aren (M) | QRIS | 2026-06-25T12:21:57+07:00

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
    '2026-06-25T12:21:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5653 | Gula Aren (M) | QRIS | 2026-06-25T12:26:33+07:00

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
    '2026-06-25T12:26:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5654 | Butterscotch (M) | CASH | 2026-06-25T12:28:40+07:00

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
    '2026-06-25T12:28:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5655 | Gula Aren (M) | CASH | 2026-06-25T12:32:40+07:00

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
    '2026-06-25T12:32:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5656 | Baileys Latte (M) | CASH | 2026-06-25T12:32:45+07:00

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
    '2026-06-25T12:32:45+07:00'
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

-- 5657 | Butterscotch (M) | QRIS | 2026-06-25T12:32:55+07:00

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
    '2026-06-25T12:32:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5658 | Baileys Latte (M) | QRIS | 2026-06-25T12:33:52+07:00

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
    '2026-06-25T12:33:52+07:00'
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

-- 5659 | Baileys Latte (M) | CASH | 2026-06-25T12:35:42+07:00

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
    '2026-06-25T12:35:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5660 | Butterscotch (M) | QRIS | 2026-06-25T12:35:46+07:00

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
    '2026-06-25T12:35:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5661 | Baileys Latte (M) | CASH | 2026-06-25T12:40:14+07:00

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
    '2026-06-25T12:40:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5662 | Baileys Latte (M) | QRIS | 2026-06-25T12:42:55+07:00

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
    '2026-06-25T12:42:55+07:00'
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

-- 5663 | Baileys Latte (M) | CASH | 2026-06-25T12:44:36+07:00

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
    '2026-06-25T12:44:36+07:00'
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

-- 5664 | Baileys Latte (M) | QRIS | 2026-06-25T12:48:43+07:00

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
    '2026-06-25T12:48:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5665 | Baileys Latte (M) | CASH | 2026-06-25T12:48:50+07:00

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
    '2026-06-25T12:48:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5666 | Butterscotch (M) | QRIS | 2026-06-25T12:49:16+07:00

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
    '2026-06-25T12:49:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5667 | Baileys Latte (M) | QRIS | 2026-06-25T12:49:24+07:00

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
    '2026-06-25T12:49:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5668 | Butterscotch (M) | CASH | 2026-06-25T12:50:09+07:00

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
    '2026-06-25T12:50:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5669 | Gula Aren (M) | CASH | 2026-06-25T12:58:09+07:00

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
    '2026-06-25T12:58:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5670 | Salted Caramel (M) | QRIS | 2026-06-25T12:58:28+07:00

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
    '2026-06-25T12:58:28+07:00'
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

-- 5671 | Vanilla (M) | CASH | 2026-06-25T13:08:12+07:00

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
    '2026-06-25T13:08:12+07:00'
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

-- 5672 | Gula Aren (M) | CASH | 2026-06-25T13:13:29+07:00

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
    '2026-06-25T13:13:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5673 | Gula Aren (M) | CASH | 2026-06-25T13:16:10+07:00

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
    '2026-06-25T13:16:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5674 | Butterscotch (M) | CASH | 2026-06-25T13:16:12+07:00

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
    '2026-06-25T13:16:12+07:00'
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

-- 5675 | Gula Aren (M) | CASH | 2026-06-25T13:16:29+07:00

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
    '2026-06-25T13:16:29+07:00'
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

-- 5676 | Cold Brew (M) | CASH | 2026-06-25T13:16:33+07:00

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
    '2026-06-25T13:16:33+07:00'
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

-- 5677 | Butterscotch (M) | QRIS | 2026-06-25T13:16:46+07:00

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
    '2026-06-25T13:16:46+07:00'
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

-- 5678 | Vanilla (M) | QRIS | 2026-06-25T13:16:54+07:00

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
    '2026-06-25T13:16:54+07:00'
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

-- 5679 | Gula Aren (M) | CASH | 2026-06-25T13:21:15+07:00

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
    '2026-06-25T13:21:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5680 | Baileys Latte (M) | QRIS | 2026-06-25T13:25:13+07:00

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
    '2026-06-25T13:25:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5681 | Baileys Latte (M) | CASH | 2026-06-25T13:25:59+07:00

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
    '2026-06-25T13:25:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5682 | Gula Aren (M) | GRATIS | 2026-06-25T13:27:15+07:00

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
    '2026-06-25T13:27:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5683 | Gula Aren (M) | CASH | 2026-06-25T13:32:57+07:00

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
    '2026-06-25T13:32:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5684 | Cold Brew (M) | CASH | 2026-06-25T13:33:03+07:00

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
    '2026-06-25T13:33:03+07:00'
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

-- 5685 | Vanilla (M) | CASH | 2026-06-25T13:37:17+07:00

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
    '2026-06-25T13:37:17+07:00'
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

-- 5686 | Butterscotch (M) | QRIS | 2026-06-25T13:43:47+07:00

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
    '2026-06-25T13:43:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5687 | Gula Aren (M) | QRIS | 2026-06-25T13:44:54+07:00

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
    '2026-06-25T13:44:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5688 | Gula Aren (M) | CASH | 2026-06-25T13:45:33+07:00

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
    '2026-06-25T13:45:33+07:00'
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

-- 5689 | Hazelnut (M) | QRIS | 2026-06-25T13:46:16+07:00

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
    '2026-06-25T13:46:16+07:00'
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

-- 5690 | Baileys Latte (M) | QRIS | 2026-06-25T13:46:22+07:00

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
    '2026-06-25T13:46:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5691 | Baileys Latte (M) | QRIS | 2026-06-25T13:19:53+07:00

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
    '2026-06-25T13:19:53+07:00'
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

-- 5692 | Cold Brew (M) | QRIS | 2026-06-25T13:20:16+07:00

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
    '2026-06-25T13:20:16+07:00'
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

-- 5693 | Butterscotch (M) | QRIS | 2026-06-25T13:55:23+07:00

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
    '2026-06-25T13:55:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5694 | Gula Aren (M) | CASH | 2026-06-25T14:03:16+07:00

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
    '2026-06-25T14:03:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5695 | Gula Aren (M) | QRIS | 2026-06-25T14:18:35+07:00

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
    '2026-06-25T14:18:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5696 | Baileys Latte (M) | QRIS | 2026-06-25T14:18:42+07:00

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
    '2026-06-25T14:18:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5697 | Butterscotch (M) | QRIS | 2026-06-25T14:29:14+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-25T14:29:14+07:00'
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

-- 5698 | Vanilla (M) | QRIS | 2026-06-25T14:30:15+07:00

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
    '2026-06-25T14:30:15+07:00'
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

-- 5699 | Baileys Latte (M) | QRIS | 2026-06-25T14:30:38+07:00

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
    '2026-06-25T14:30:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5700 | Salted Caramel (M) | CASH | 2026-06-25T14:33:18+07:00

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
    '2026-06-25T14:33:18+07:00'
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

-- 5701 | Butterscotch 1 ltr | QRIS | 2026-06-25T14:33:24+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = '19ed6362-3113-4aa8-a33b-c6c99e6e5be6')) * 1,
    0.00,
    44488.00,
    '2026-06-25T14:33:24+07:00'
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

-- 5702 | Salted Caramel 1 ltr | QRIS | 2026-06-25T14:33:35+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    90000.00,
    ((SELECT hpp FROM public.products WHERE id = 'bae5a627-44c2-4d57-af36-2f3456be5c1a')) * 1,
    0.00,
    40827.00,
    '2026-06-25T14:33:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'bae5a627-44c2-4d57-af36-2f3456be5c1a',
  1,
  90000.00,
  (SELECT hpp FROM public.products WHERE id = 'bae5a627-44c2-4d57-af36-2f3456be5c1a')
FROM inserted_sale;

-- 5703 | Butterscotch (M) | CASH | 2026-06-25T14:04:21+07:00

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
    '2026-06-25T14:04:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5704 | Cold Brew (M) | CASH | 2026-06-25T14:04:29+07:00

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
    '2026-06-25T14:04:29+07:00'
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

-- 5705 | Baileys Latte (M) | QRIS | 2026-06-25T14:36:01+07:00

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
    '2026-06-25T14:36:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5706 | Butterscotch (M) | CASH | 2026-06-25T14:51:01+07:00

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
    '2026-06-25T14:51:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5707 | Gula Aren (M) | CASH | 2026-06-25T14:59:36+07:00

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
    '2026-06-25T14:59:36+07:00'
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

-- 5708 | Baileys Latte (M) | QRIS | 2026-06-25T14:59:41+07:00

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
    '2026-06-25T14:59:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5709 | Butterscotch (M) | CASH | 2026-06-25T14:59:45+07:00

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
    '2026-06-25T14:59:45+07:00'
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

-- 5710 | Gula Aren (M) | QRIS | 2026-06-25T15:01:46+07:00

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
    '2026-06-25T15:01:46+07:00'
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

-- 5711 | Butterscotch (M) | QRIS | 2026-06-25T15:01:54+07:00

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
    '2026-06-25T15:01:54+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5712 | Vanilla (M) | CASH | 2026-06-25T15:06:29+07:00

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
    '2026-06-25T15:06:29+07:00'
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

-- 5713 | Gula Aren (M) | QRIS | 2026-06-25T15:23:57+07:00

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
    '2026-06-25T15:23:57+07:00'
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

-- 5714 | Gula Aren (M) | QRIS | 2026-06-25T15:28:04+07:00

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
    '2026-06-25T15:28:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5715 | Gula Aren (M) | QRIS | 2026-06-25T15:28:14+07:00

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
    '2026-06-25T15:28:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5716 | Gula Aren (M) | QRIS | 2026-06-25T15:28:23+07:00

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
    '2026-06-25T15:28:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5717 | Gula Aren (M) | CASH | 2026-06-25T15:35:36+07:00

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
    '2026-06-25T15:35:36+07:00'
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

-- 5718 | Gula Aren (M) | CASH | 2026-06-25T15:36:54+07:00

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
    '2026-06-25T15:36:54+07:00'
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

-- 5719 | Vanilla (M) | CASH | 2026-06-25T15:40:31+07:00

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
    '2026-06-25T15:40:31+07:00'
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

-- 5720 | Gula Aren (M) | CASH | 2026-06-25T15:42:03+07:00

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
    '2026-06-25T15:42:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5721 | Gula Aren (M) | CASH | 2026-06-25T15:42:07+07:00

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
    '2026-06-25T15:42:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5722 | Gula Aren (M) | CASH | 2026-06-25T15:42:11+07:00

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
    '2026-06-25T15:42:11+07:00'
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

-- 5723 | Salted Caramel (M) | QRIS | 2026-06-25T15:44:24+07:00

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
    '2026-06-25T15:44:24+07:00'
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

-- 5724 | Butterscotch (M) | CASH | 2026-06-25T15:44:35+07:00

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
    '2026-06-25T15:44:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5725 | Butterscotch (M) | QRIS | 2026-06-25T15:46:47+07:00

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
    '2026-06-25T15:46:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5726 | Butterscotch (M) | CASH | 2026-06-25T15:47:15+07:00

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
    '2026-06-25T15:47:15+07:00'
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

-- 5727 | Butterscotch (M) | CASH | 2026-06-25T15:47:22+07:00

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
    '2026-06-25T15:47:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5728 | Hazelnut (M) | CASH | 2026-06-25T15:47:30+07:00

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
    '2026-06-25T15:47:30+07:00'
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

-- 5729 | Baileys Latte (M) | CASH | 2026-06-25T15:47:37+07:00

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
    '2026-06-25T15:47:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5730 | Salted Caramel (M) | CASH | 2026-06-25T15:53:28+07:00

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
    '2026-06-25T15:53:28+07:00'
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

-- 5731 | Hazelnut (M) | CASH | 2026-06-25T15:53:32+07:00

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
    '2026-06-25T15:53:32+07:00'
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

-- 5732 | Butterscotch (M) | CASH | 2026-06-25T15:53:36+07:00

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
    '2026-06-25T15:53:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5733 | Salted Caramel (M) | QRIS | 2026-06-25T15:53:44+07:00

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
    '2026-06-25T15:53:44+07:00'
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

-- 5734 | Butterscotch (M) | CASH | 2026-06-25T15:56:43+07:00

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
    '2026-06-25T15:56:43+07:00'
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

-- 5735 | Hazelnut (M) | QRIS | 2026-06-25T15:56:56+07:00

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
    '2026-06-25T15:56:56+07:00'
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

-- 5736 | Butterscotch (M) | CASH | 2026-06-25T16:04:46+07:00

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
    '2026-06-25T16:04:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5737 | Gula Aren (M) | QRIS | 2026-06-25T16:05:01+07:00

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
    '2026-06-25T16:05:01+07:00'
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

-- 5738 | Gula Aren (M) | CASH | 2026-06-25T16:05:09+07:00

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
    '2026-06-25T16:05:09+07:00'
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

-- 5739 | Salted Caramel (M) | QRIS | 2026-06-25T16:09:14+07:00

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
    '2026-06-25T16:09:14+07:00'
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

-- 5740 | Butterscotch (M) | QRIS | 2026-06-25T16:10:46+07:00

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
    '2026-06-25T16:10:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5741 | Baileys Latte (M) | QRIS | 2026-06-25T16:12:45+07:00

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
    '2026-06-25T16:12:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5742 | Hazelnut (M) | CASH | 2026-06-25T16:12:52+07:00

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
    '2026-06-25T16:12:52+07:00'
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

-- 5743 | Vanilla (M) | CASH | 2026-06-25T16:13:35+07:00

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
    '2026-06-25T16:13:35+07:00'
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

-- 5744 | Vanilla (M) | QRIS | 2026-06-25T16:14:16+07:00

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
    '2026-06-25T16:14:16+07:00'
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

-- 5745 | Salted Caramel (M) | QRIS | 2026-06-25T16:19:16+07:00

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
    '2026-06-25T16:19:16+07:00'
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

-- 5746 | Vanilla (M) | CASH | 2026-06-25T16:22:27+07:00

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
    '2026-06-25T16:22:27+07:00'
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

-- 5747 | Butterscotch (M) | CASH | 2026-06-25T16:24:34+07:00

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
    '2026-06-25T16:24:34+07:00'
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

-- 5748 | Hazelnut (M) | CASH | 2026-06-25T16:24:44+07:00

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
    '2026-06-25T16:24:44+07:00'
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

-- 5749 | Vanilla (M) | CASH | 2026-06-25T16:24:57+07:00

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
    '2026-06-25T16:24:57+07:00'
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

-- 5750 | Baileys Latte (M) | CASH | 2026-06-25T16:25:33+07:00

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
    '2026-06-25T16:25:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5751 | Baileys Latte (M) | CASH | 2026-06-25T16:27:16+07:00

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
    '2026-06-25T16:27:16+07:00'
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

-- 5752 | Hazelnut (M) | QRIS | 2026-06-25T16:30:05+07:00

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
    '2026-06-25T16:30:05+07:00'
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

-- 5753 | Hazelnut (M) | QRIS | 2026-06-25T16:39:26+07:00

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
    '2026-06-25T16:39:26+07:00'
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

-- 5754 | Butterscotch (M) | CASH | 2026-06-25T16:43:56+07:00

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
    '2026-06-25T16:43:56+07:00'
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

-- 5755 | Butterscotch (M) | CASH | 2026-06-25T16:48:33+07:00

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
    '2026-06-25T16:48:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5756 | Vanilla (M) | QRIS | 2026-06-25T16:51:07+07:00

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
    '2026-06-25T16:51:07+07:00'
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

-- 5757 | Butterscotch (M) | QRIS | 2026-06-25T16:50:22+07:00

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
    '2026-06-25T16:50:22+07:00'
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

-- 5758 | Butterscotch (M) | CASH | 2026-06-25T17:09:30+07:00

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
    '2026-06-25T17:09:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5759 | Gula Aren (M) | CASH | 2026-06-25T17:15:49+07:00

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
    '2026-06-25T17:15:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5760 | Cold Brew (M) | CASH | 2026-06-25T17:16:38+07:00

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
    '2026-06-25T17:16:38+07:00'
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

-- 5761 | Baileys Latte (M) | CASH | 2026-06-25T17:16:46+07:00

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
    '2026-06-25T17:16:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5762 | Butterscotch (M) | CASH | 2026-06-25T17:20:28+07:00

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
    '2026-06-25T17:20:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5763 | Cold Brew (M) | CASH | 2026-06-25T17:20:33+07:00

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
    '2026-06-25T17:20:33+07:00'
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

-- 5764 | Butterscotch (M) | QRIS | 2026-06-25T17:20:40+07:00

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
    '2026-06-25T17:20:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5765 | Gula Aren (M) | QRIS | 2026-06-25T17:20:44+07:00

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
    '2026-06-25T17:20:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5766 | Vanilla (M) | QRIS | 2026-06-25T17:22:02+07:00

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
    '2026-06-25T17:22:02+07:00'
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

-- 5767 | Baileys Latte (M) | GRATIS | 2026-06-25T17:22:52+07:00

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
    '2026-06-25T17:22:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5768 | Butterscotch (M) | QRIS | 2026-06-25T17:25:52+07:00

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
    '2026-06-25T17:25:52+07:00'
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

-- 5769 | Baileys Latte (M) | QRIS | 2026-06-25T17:26:00+07:00

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
    '2026-06-25T17:26:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5770 | Butterscotch (M) | QRIS | 2026-06-25T17:29:37+07:00

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
    '2026-06-25T17:29:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5771 | Baileys Latte (M) | QRIS | 2026-06-25T17:29:42+07:00

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
    '2026-06-25T17:29:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5772 | Baileys Latte (M) | CASH | 2026-06-25T17:34:16+07:00

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
    '2026-06-25T17:34:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5773 | Salted Caramel (M) | CASH | 2026-06-25T17:34:58+07:00

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
    '2026-06-25T17:34:58+07:00'
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

-- 5774 | Baileys Latte (M) | CASH | 2026-06-25T17:37:48+07:00

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
    '2026-06-25T17:37:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5775 | Gula Aren (M) | CASH | 2026-06-25T17:39:58+07:00

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
    '2026-06-25T17:39:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5776 | Butterscotch (M) | QRIS | 2026-06-25T17:44:17+07:00

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
    '2026-06-25T17:44:17+07:00'
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

-- 5777 | Butterscotch (M) | QRIS | 2026-06-25T17:44:25+07:00

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
    '2026-06-25T17:44:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5778 | Baileys Latte (M) | QRIS | 2026-06-25T17:44:31+07:00

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
    '2026-06-25T17:44:31+07:00'
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

-- 5779 | Gula Aren (M) | CASH | 2026-06-25T17:45:43+07:00

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
    '2026-06-25T17:45:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5780 | Baileys Latte (M) | QRIS | 2026-06-25T17:48:59+07:00

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
    '2026-06-25T17:48:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5781 | Gula Aren (M) | CASH | 2026-06-25T17:50:12+07:00

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
    '2026-06-25T17:50:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5782 | Butterscotch (M) | QRIS | 2026-06-25T17:55:46+07:00

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
    '2026-06-25T17:55:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5783 | Baileys Latte (M) | QRIS | 2026-06-25T17:56:19+07:00

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
    '2026-06-25T17:56:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5784 | Baileys Latte (M) | QRIS | 2026-06-25T17:58:07+07:00

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
    '2026-06-25T17:58:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5785 | Cold Brew (M) | CASH | 2026-06-25T18:08:14+07:00

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
    '2026-06-25T18:08:14+07:00'
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

-- 5786 | Gula Aren (M) | CASH | 2026-06-25T18:08:21+07:00

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
    '2026-06-25T18:08:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5787 | Baileys Latte (M) | QRIS | 2026-06-25T18:12:14+07:00

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
    '2026-06-25T18:12:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5788 | Vanilla (M) | CASH | 2026-06-25T18:12:21+07:00

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
    '2026-06-25T18:12:21+07:00'
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

-- 5789 | Salted Caramel (M) | CASH | 2026-06-25T18:12:25+07:00

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
    '2026-06-25T18:12:25+07:00'
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

-- 5790 | Vanilla (M) | QRIS | 2026-06-25T18:20:06+07:00

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
    '2026-06-25T18:20:06+07:00'
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

-- 5791 | Gula Aren (M) | CASH | 2026-06-25T18:20:12+07:00

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
    '2026-06-25T18:20:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5792 | Gula Aren (M) | CASH | 2026-06-25T18:23:59+07:00

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
    '2026-06-25T18:23:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5793 | Butterscotch (M) | QRIS | 2026-06-25T18:23:59+07:00

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
    '2026-06-25T18:23:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5794 | Baileys Latte (M) | QRIS | 2026-06-25T18:23:03+07:00

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
    '2026-06-25T18:23:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5795 | Baileys Latte (M) | QRIS | 2026-06-25T18:27:09+07:00

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
    '2026-06-25T18:27:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5796 | Gula Aren (M) | CASH | 2026-06-25T18:27:43+07:00

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
    '2026-06-25T18:27:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5797 | Butterscotch (M) | QRIS | 2026-06-25T18:28:21+07:00

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
    '2026-06-25T18:28:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5798 | Gula Aren (M) | QRIS | 2026-06-25T18:28:26+07:00

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
    '2026-06-25T18:28:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5799 | Baileys Latte (M) | CASH | 2026-06-25T18:33:05+07:00

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
    '2026-06-25T18:33:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5800 | Salted Caramel (M) | CASH | 2026-06-25T18:33:10+07:00

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
    '2026-06-25T18:33:10+07:00'
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

-- 5801 | Salted Caramel (M) | QRIS | 2026-06-25T18:35:14+07:00

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
    '2026-06-25T18:35:14+07:00'
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

-- 5802 | Hazelnut (M) | QRIS | 2026-06-25T18:41:22+07:00

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
    '2026-06-25T18:41:22+07:00'
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

-- 5803 | Gula Aren (M) | QRIS | 2026-06-25T18:46:21+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-25T18:46:21+07:00'
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

-- 5804 | Cold Brew (M) | QRIS | 2026-06-25T18:46:43+07:00

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
    '2026-06-25T18:46:43+07:00'
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

-- 5805 | Butterscotch (M) | QRIS | 2026-06-25T18:48:19+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    112500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 9,
    0.00,
    63327.00,
    '2026-06-25T18:48:19+07:00'
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

-- 5806 | Vanilla (M) | QRIS | 2026-06-25T18:48:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-25T18:48:28+07:00'
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

-- 5807 | Gula Aren (M) | CASH | 2026-06-25T18:48:49+07:00

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
    '2026-06-25T18:48:49+07:00'
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

-- 5808 | Salted Caramel (M) | CASH | 2026-06-25T18:49:00+07:00

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
    '2026-06-25T18:49:00+07:00'
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

-- 5809 | Hazelnut (M) | CASH | 2026-06-25T18:49:07+07:00

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
    '2026-06-25T18:49:07+07:00'
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

-- 5810 | Cold Brew (M) | CASH | 2026-06-25T18:49:18+07:00

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
    '2026-06-25T18:49:18+07:00'
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

-- 5811 | Baileys Latte (M) | CASH | 2026-06-25T18:49:27+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 6,
    0.00,
    41175.00,
    '2026-06-25T18:49:27+07:00'
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

-- 5812 | Baileys Latte (M) | QRIS | 2026-06-25T18:57:56+07:00

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
    '2026-06-25T18:57:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5813 | Hazelnut (M) | QRIS | 2026-06-25T19:07:47+07:00

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
    '2026-06-25T19:07:47+07:00'
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

-- 5814 | Baileys Latte (M) | CASH | 2026-06-25T19:14:48+07:00

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
    '2026-06-25T19:14:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5815 | Butterscotch (M) | CASH | 2026-06-25T19:25:50+07:00

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
    '2026-06-25T19:25:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5816 | Butterscotch (M) | QRIS | 2026-06-25T19:29:44+07:00

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
    '2026-06-25T19:29:44+07:00'
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

-- 5817 | Salted Caramel (M) | GRATIS | 2026-06-25T19:29:53+07:00

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
    '2026-06-25T19:29:53+07:00'
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

-- 5818 | Baileys Latte (M) | CASH | 2026-06-25T19:29:58+07:00

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
    '2026-06-25T19:29:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5819 | Butterscotch (M) | CASH | 2026-06-25T19:31:03+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-25T19:31:03+07:00'
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

-- 5820 | Baileys Latte (M) | CASH | 2026-06-25T19:31:50+07:00

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
    '2026-06-25T19:31:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5821 | Cold Brew (M) | CASH | 2026-06-25T19:33:47+07:00

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
    '2026-06-25T19:33:47+07:00'
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

-- 5822 | Baileys Latte (M) | QRIS | 2026-06-25T19:34:25+07:00

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
    '2026-06-25T19:34:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5823 | Butterscotch (M) | CASH | 2026-06-25T19:36:25+07:00

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
    '2026-06-25T19:36:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5824 | Butterscotch (M) | QRIS | 2026-06-25T19:39:30+07:00

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
    '2026-06-25T19:39:30+07:00'
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

-- 5825 | Gula Aren (M) | QRIS | 2026-06-25T19:39:38+07:00

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
    '2026-06-25T19:39:38+07:00'
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

-- 5826 | Cold Brew (M) | QRIS | 2026-06-25T19:39:54+07:00

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
    '2026-06-25T19:39:54+07:00'
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

-- 5827 | Gula Aren (M) | CASH | 2026-06-25T19:40:48+07:00

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
    '2026-06-25T19:40:48+07:00'
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

-- 5828 | Butterscotch (M) | CASH | 2026-06-25T19:40:54+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-25T19:40:54+07:00'
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

-- 5829 | Vanilla (M) | CASH | 2026-06-25T19:41:04+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-25T19:41:04+07:00'
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

-- 5830 | Hazelnut (M) | CASH | 2026-06-25T19:41:12+07:00

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
    '2026-06-25T19:41:12+07:00'
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

-- 5831 | Cold Brew (M) | CASH | 2026-06-25T19:41:24+07:00

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
    '2026-06-25T19:41:24+07:00'
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

-- 5832 | Baileys Latte (M) | CASH | 2026-06-25T19:42:05+07:00

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
    '2026-06-25T19:42:05+07:00'
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

-- 5833 | Baileys Latte (M) | GRATIS | 2026-06-25T19:42:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 1,
    0.00,
    0.00,
    '2026-06-25T19:42:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5834 | Baileys Latte (M) | GRATIS | 2026-06-25T19:46:17+07:00

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
    '2026-06-25T19:46:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5835 | Butterscotch (M) | CASH | 2026-06-25T19:46:41+07:00

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
    '2026-06-25T19:46:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5836 | Vanilla (M) | CASH | 2026-06-25T19:52:54+07:00

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
    '2026-06-25T19:52:54+07:00'
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

-- 5837 | Butterscotch (M) | CASH | 2026-06-25T19:53:18+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-25T19:53:18+07:00'
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

-- 5838 | Butterscotch (M) | CASH | 2026-06-25T20:04:35+07:00

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
    '2026-06-25T20:04:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5839 | Butterscotch (M) | QRIS | 2026-06-25T20:35:05+07:00

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
    '2026-06-25T20:35:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5840 | Vanilla (M) | QRIS | 2026-06-25T20:35:11+07:00

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
    '2026-06-25T20:35:11+07:00'
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

-- 5841 | Cold Brew (M) | QRIS | 2026-06-25T20:35:16+07:00

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
    '2026-06-25T20:35:16+07:00'
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

-- 5842 | Baileys Latte (M) | QRIS | 2026-06-25T20:35:21+07:00

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
    '2026-06-25T20:35:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5843 | Baileys Latte (M) | CASH | 2026-06-25T20:37:24+07:00

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
    '2026-06-25T20:37:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5844 | Butterscotch (M) | QRIS | 2026-06-25T20:26:42+07:00

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
    '2026-06-25T20:26:42+07:00'
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

-- 5845 | Butterscotch (M) | CASH | 2026-06-25T20:39:16+07:00

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
    '2026-06-25T20:39:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5846 | Hazelnut (M) | QRIS | 2026-06-25T20:39:15+07:00

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
    '2026-06-25T20:39:15+07:00'
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

-- 5847 | Gula Aren (M) | CASH | 2026-06-25T20:42:09+07:00

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
    '2026-06-25T20:42:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5848 | Cold Brew (M) | CASH | 2026-06-25T20:46:10+07:00

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
    '2026-06-25T20:46:10+07:00'
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

-- 5849 | Baileys Latte (M) | CASH | 2026-06-25T20:46:15+07:00

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
    '2026-06-25T20:46:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5850 | Butterscotch (M) | QRIS | 2026-06-25T20:47:32+07:00

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
    '2026-06-25T20:47:32+07:00'
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

-- 5851 | Butterscotch (M) | CASH | 2026-06-25T20:51:32+07:00

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
    '2026-06-25T20:51:32+07:00'
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

-- 5852 | Vanilla (M) | CASH | 2026-06-25T20:54:46+07:00

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
    '2026-06-25T20:54:46+07:00'
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

-- 5853 | Gula Aren (M) | CASH | 2026-06-25T20:58:53+07:00

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
    '2026-06-25T20:58:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5854 | Vanilla (M) | CASH | 2026-06-25T20:59:52+07:00

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
    '2026-06-25T20:59:52+07:00'
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

-- 5855 | Gula Aren (M) | QRIS | 2026-06-25T21:15:06+07:00

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
    '2026-06-25T21:15:06+07:00'
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

-- 5856 | Butterscotch (M) | QRIS | 2026-06-25T21:15:12+07:00

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
    '2026-06-25T21:15:12+07:00'
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

-- 5857 | Baileys Latte (M) | QRIS | 2026-06-25T21:15:24+07:00

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
    '2026-06-25T21:15:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5858 | Salted Caramel (M) | QRIS | 2026-06-25T21:15:39+07:00

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
    '2026-06-25T21:15:39+07:00'
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

-- 5859 | Butterscotch (M) | QRIS | 2026-06-25T21:16:38+07:00

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
    '2026-06-25T21:16:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5860 | Butterscotch (M) | QRIS | 2026-06-25T21:23:28+07:00

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
    '2026-06-25T21:23:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5861 | Hazelnut (M) | CASH | 2026-06-25T21:27:02+07:00

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
    '2026-06-25T21:27:02+07:00'
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

-- 5862 | Gula Aren (M) | CASH | 2026-06-25T21:27:15+07:00

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
    '2026-06-25T21:27:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5863 | Baileys Latte (M) | CASH | 2026-06-25T21:28:02+07:00

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
    '2026-06-25T21:28:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5864 | Butterscotch (M) | CASH | 2026-06-25T21:28:13+07:00

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
    '2026-06-25T21:28:13+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5865 | Baileys Latte (M) | CASH | 2026-06-25T21:28:18+07:00

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
    '2026-06-25T21:28:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5866 | Baileys Latte (M) | GRATIS | 2026-06-25T21:30:31+07:00

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
    '2026-06-25T21:30:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5867 | Gula Aren (M) | CASH | 2026-06-25T22:01:45+07:00

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
    '2026-06-25T22:01:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

-- 5868 | Baileys Latte (M) | CASH | 2026-06-25T22:01:51+07:00

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
    '2026-06-25T22:01:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5869 | Butterscotch (M) | QRIS | 2026-06-25T22:11:23+07:00

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
    '2026-06-25T22:11:23+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5870 | Baileys Latte (M) | QRIS | 2026-06-25T22:29:55+07:00

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
    '2026-06-25T22:29:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5871 | Butterscotch (M) | CASH | 2026-06-25T22:30:00+07:00

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
    '2026-06-25T22:30:00+07:00'
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

-- 5872 | Gula Aren (M) | CASH | 2026-06-25T22:30:16+07:00

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
    '2026-06-25T22:30:16+07:00'
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

-- 5873 | Cold Brew (M) | CASH | 2026-06-25T22:32:48+07:00

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
    '2026-06-25T22:32:48+07:00'
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

-- 5874 | Baileys Latte (M) | CASH | 2026-06-25T22:46:40+07:00

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
    '2026-06-25T22:46:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5875 | Butterscotch (M) | QRIS | 2026-06-25T22:57:36+07:00

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
    '2026-06-25T22:57:36+07:00'
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

-- 5876 | Gula Aren (M) | CASH | 2026-06-25T22:57:52+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    80000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 10,
    0.00,
    35958.00,
    '2026-06-25T22:57:52+07:00'
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

-- 5877 | Butterscotch (M) | CASH | 2026-06-25T22:58:04+07:00

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
    '2026-06-25T22:58:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5878 | Cold Brew (M) | CASH | 2026-06-25T22:58:16+07:00

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
    '2026-06-25T22:58:16+07:00'
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

-- 5879 | Baileys Latte (M) | CASH | 2026-06-25T22:58:27+07:00

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
    '2026-06-25T22:58:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

-- 5880 | Salted Caramel (M) | CASH | 2026-06-25T23:03:22+07:00

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
    '2026-06-25T23:03:22+07:00'
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

-- 5881 | Salted Caramel (M) | GRATIS | 2026-06-25T23:03:28+07:00

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-25T23:03:28+07:00'
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

-- 5882 | Gula Aren (M) | QRIS | 2026-06-25T23:03:29+07:00

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
    '2026-06-25T23:03:29+07:00'
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

-- 5883 | Butterscotch (M) | QRIS | 2026-06-25T23:03:30+07:00

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
    '2026-06-25T23:03:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5884 | Gula Aren (M) | CASH | 2026-06-25T23:03:31+07:00

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
    '2026-06-25T23:03:31+07:00'
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

-- 5885 | Butterscotch (M) | CASH | 2026-06-25T23:03:32+07:00

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
    '2026-06-25T23:03:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

-- 5886 | Salted Caramel (M) | CASH | 2026-06-25T23:03:33+07:00

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
    '2026-06-25T23:03:33+07:00'
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

-- 5887 | Hazelnut (M) | CASH | 2026-06-25T23:03:34+07:00

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
    '2026-06-25T23:03:34+07:00'
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

-- 5888 | Baileys Latte (M) | CASH | 2026-06-25T23:03:35+07:00
