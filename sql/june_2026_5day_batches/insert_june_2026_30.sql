-- Extracted 2026-06-30 inserts from insert_june_2026_26-30.sql
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
    '2026-06-30T09:19:13+07:00'
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
    '2026-06-30T09:19:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T09:19:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T09:19:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T09:47:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T09:58:54+07:00'
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
    '2026-06-30T10:01:25+07:00'
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
    '2026-06-30T10:15:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T10:27:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T10:27:25+07:00'
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
    '2026-06-30T10:28:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T10:38:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T10:38:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T10:44:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T11:01:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T11:06:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T11:20:08+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T11:21:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T11:23:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T11:24:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T11:26:54+07:00'
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
    '2026-06-30T11:36:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T11:37:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T11:40:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T11:50:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T11:51:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T11:55:50+07:00'
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
    '2026-06-30T11:56:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T11:56:07+07:00'
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
    '2026-06-30T11:58:48+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:00:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T12:11:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T12:11:29+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T12:11:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:11:38+07:00'
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
    '2026-06-30T12:12:55+07:00'
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
    '2026-06-30T12:13:06+07:00'
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
    '2026-06-30T12:18:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:21:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:23:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:26:10+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T12:26:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T12:27:52+07:00'
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
    '2026-06-30T12:27:57+07:00'
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
    '2026-06-30T12:29:58+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:30:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:31:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:32:06+07:00'
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
    '2026-06-30T12:34:13+07:00'
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
    '2026-06-30T12:34:58+07:00'
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
    '2026-06-30T12:35:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:35:18+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:37:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T12:39:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:39:54+07:00'
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
    '2026-06-30T12:40:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:42:10+07:00'
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
    '2026-06-30T12:43:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T12:44:03+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-30T12:45:33+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    50000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 4,
    0.00,
    28146.00,
    '2026-06-30T12:50:49+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-30T12:52:26+07:00'
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
    '2026-06-30T12:52:54+07:00'
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
    '2026-06-30T12:53:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:02:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:03:17+07:00'
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
    '2026-06-30T13:03:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:03:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:03:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T13:03:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:06:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T13:04:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:11:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T13:11:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:11:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:11:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:12:24+07:00'
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
    '2026-06-30T13:12:53+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-30T13:12:54+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-30T13:13:48+07:00'
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
    '2026-06-30T13:14:27+07:00'
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
    '2026-06-30T13:15:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:15:40+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-30T13:16:04+07:00'
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
    '2026-06-30T13:16:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T13:19:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:19:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T13:22:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T13:23:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:24:37+07:00'
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
    '2026-06-30T13:32:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T13:40:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T14:09:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:11:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T14:15:01+07:00'
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
    '2026-06-30T14:15:07+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T14:15:08+07:00'
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
    '2026-06-30T14:15:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T14:18:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:18:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T14:20:28+07:00'
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
    '2026-06-30T14:20:37+07:00'
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
    '2026-06-30T14:20:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T14:24:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:31:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:40:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T14:45:04+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:46:14+07:00'
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
    '2026-06-30T14:46:28+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T14:46:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T14:46:41+07:00'
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
    '2026-06-30T15:04:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:04:28+07:00'
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
    '2026-06-30T15:05:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:06:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T15:08:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T15:08:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T15:09:52+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T15:13:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:16:59+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:17:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:19:15+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T15:35:10+07:00'
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
    '2026-06-30T15:35:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:44:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T15:45:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T15:47:57+07:00'
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
    '2026-06-30T15:48:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T15:48:43+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T15:48:49+07:00'
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
    '2026-06-30T15:49:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:00:53+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:04:30+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:12:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:12:44+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T16:15:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:15:47+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:15:50+07:00'
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
    '2026-06-30T16:15:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T16:27:06+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 1,
    0.00,
    0.00,
    '2026-06-30T16:31:03+07:00'
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
    '2026-06-30T16:48:30+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 2,
    0.00,
    14073.00,
    '2026-06-30T16:48:41+07:00'
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
    '2026-06-30T16:50:20+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T16:50:22+07:00'
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
    '2026-06-30T17:02:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T17:08:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T17:14:17+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T17:14:25+07:00'
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
    '2026-06-30T17:19:46+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T17:24:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T17:24:42+07:00'
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
    '2026-06-30T17:24:38+07:00'
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
    '2026-06-30T17:27:32+07:00'
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
    '2026-06-30T17:29:14+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T17:33:31+07:00'
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
    '2026-06-30T17:34:15+07:00'
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
    '2026-06-30T17:34:22+07:00'
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
    '2026-06-30T17:43:00+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T17:58:38+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    87500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 7,
    0.00,
    49255.00,
    '2026-06-30T18:00:26+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = '3fd1ac8f-a004-485c-82b5-a196a1e0364d')) * 3,
    0.00,
    21109.00,
    '2026-06-30T18:01:56+07:00'
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
    '2026-06-30T18:09:36+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T18:09:44+07:00'
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
    '2026-06-30T18:10:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T18:11:49+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T18:17:34+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T18:17:43+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    40000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 5,
    0.00,
    17979.00,
    '2026-06-30T18:18:42+07:00'
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
    '2026-06-30T18:18:53+07:00'
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
    '2026-06-30T18:19:03+07:00'
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
    '2026-06-30T18:19:09+07:00'
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
    '2026-06-30T18:21:08+07:00'
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
    '2026-06-30T18:21:19+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T18:21:36+07:00'
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
    '2026-06-30T18:21:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T18:21:43+07:00'
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
    '2026-06-30T18:23:05+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T18:30:35+07:00'
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
    '2026-06-30T18:31:53+07:00'
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
    '2026-06-30T18:33:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T18:37:49+07:00'
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
    '2026-06-30T18:58:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:02:16+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:05:42+07:00'
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
    '2026-06-30T19:06:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:08:31+07:00'
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
    '2026-06-30T19:08:45+07:00'
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
    '2026-06-30T19:09:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:09:19+07:00'
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
    '2026-06-30T19:09:26+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T19:22:36+07:00'
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
    '2026-06-30T19:26:21+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:35:58+07:00'
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
    '2026-06-30T19:36:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T19:36:32+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:36:40+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:45:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T19:52:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T19:52:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:52:42+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T19:52:55+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:53:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    312500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 25,
    0.00,
    171561.00,
    '2026-06-30T19:58:50+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  25,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T19:59:45+07:00'
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
    '2026-06-30T19:59:20+07:00'
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
    '2026-06-30T19:59:49+07:00'
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
    '2026-06-30T20:00:04+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    270000.00,
    ((SELECT hpp FROM public.products WHERE id = 'b773d1d6-a92e-457d-ba1a-12ea12929de0')) * 3,
    0.00,
    117786.00,
    '2026-06-30T20:01:41+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b773d1d6-a92e-457d-ba1a-12ea12929de0',
  3,
  90000.00,
  (SELECT hpp FROM public.products WHERE id = 'b773d1d6-a92e-457d-ba1a-12ea12929de0')
FROM inserted_sale;

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
    '2026-06-30T20:01:58+07:00'
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
    '2026-06-30T20:02:27+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    25000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 2,
    0.00,
    14073.00,
    '2026-06-30T20:17:39+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-30T20:17:46+07:00'
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
    '2026-06-30T20:18:21+07:00'
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
    '2026-06-30T20:18:53+07:00'
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
    '2026-06-30T20:19:03+07:00'
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
    '2026-06-30T20:20:56+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    0.00,
    '2026-06-30T20:21:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T20:22:15+07:00'
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
    '2026-06-30T20:22:27+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 5,
    0.00,
    35182.00,
    '2026-06-30T20:25:26+07:00'
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
    '2026-06-30T20:25:55+07:00'
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
    '2026-06-30T20:26:54+07:00'
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
    '2026-06-30T20:27:02+07:00'
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
    '2026-06-30T20:27:32+07:00'
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
    '2026-06-30T20:32:08+07:00'
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
    '2026-06-30T20:32:31+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T20:32:54+07:00'
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
    '2026-06-30T20:33:01+07:00'
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
    '2026-06-30T20:33:26+07:00'
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
    '2026-06-30T20:37:33+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T20:37:37+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T20:59:57+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T21:01:12+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T21:04:24+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T21:12:13+07:00'
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
    '2026-06-30T21:19:56+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T21:20:01+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T21:41:02+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T21:44:45+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T21:51:16+07:00'
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
    '2026-06-30T21:51:35+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T22:00:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '547c5e86-f7a5-40bf-b6e1-b666b63eb26f',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')
FROM inserted_sale;

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
    '2026-06-30T22:02:09+07:00'
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
    '2026-06-30T22:02:17+07:00'
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
    '2026-06-30T22:02:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T22:03:03+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'QRIS',
    75000.00,
    ((SELECT hpp FROM public.products WHERE id = '547c5e86-f7a5-40bf-b6e1-b666b63eb26f')) * 6,
    0.00,
    42218.00,
    '2026-06-30T22:05:53+07:00'
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
    '2026-06-30T22:06:04+07:00'
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
    '2026-06-30T22:06:27+07:00'
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
    '2026-06-30T22:06:26+07:00'
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
    '2026-06-30T22:06:34+07:00'
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
    '2026-06-30T22:06:40+07:00'
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
    '2026-06-30T22:06:46+07:00'
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
    '2026-06-30T22:06:54+07:00'
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
    '2026-06-30T22:07:01+07:00'
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
    '2026-06-30T22:11:33+07:00'
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
    '2026-06-30T22:11:42+07:00'
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
    '2026-06-30T22:12:41+07:00'
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
    '2026-06-30T22:12:48+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    37500.00,
    ((SELECT hpp FROM public.products WHERE id = 'f192d3f3-9c50-476d-ac4f-c0af1d6de63f')) * 3,
    0.00,
    21109.00,
    '2026-06-30T22:12:57+07:00'
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
    '2026-06-30T22:15:21+07:00'
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

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    0.00,
    '2026-06-30T22:15:51+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '429c554b-0c8f-4098-900d-ec08739b9896',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'CASH',
    62500.00,
    ((SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')) * 5,
    0.00,
    34312.00,
    '2026-06-30T22:15:57+07:00'
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
    '2026-06-30T22:24:15+07:00'
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
    '2026-06-30T22:24:22+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

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
    '2026-06-30T22:39:05+07:00'
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
    '2026-06-30T22:39:11+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;

WITH inserted_sale AS (
  INSERT INTO public.sales (
    outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at
  ) VALUES (
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    (SELECT id FROM public.users WHERE role = 'barista' LIMIT 1),
    'GRATIS',
    0.00,
    ((SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')) * 1,
    0.00,
    0.00,
    '2026-06-30T22:42:09+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  'b3ff96dd-c3ef-4844-a445-06605c54df35',
  1,
  8000.00,
  (SELECT hpp FROM public.products WHERE id = 'b3ff96dd-c3ef-4844-a445-06605c54df35')
FROM inserted_sale;

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
    '2026-06-30T22:44:25+07:00'
  ) RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  '29702f0a-8bfc-4b61-81ba-2cd4715f6613',
  1,
  12500.00,
  (SELECT hpp FROM public.products WHERE id = '29702f0a-8bfc-4b61-81ba-2cd4715f6613')
FROM inserted_sale;
