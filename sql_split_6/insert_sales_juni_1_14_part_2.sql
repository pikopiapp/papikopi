-- Generated from Orders Juni 1-14.csv
-- Part 2 of 6

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b471fbb0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 16.51.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6a420780',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.52.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '703ecca3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.11.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6a2222dd',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.11.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f4c2e818',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 17.11.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e2d1737f',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '03/06/2026 17.11.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aec11353',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '03/06/2026 17.12.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6a3e1982',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.15.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a2674997',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '03/06/2026 17.20.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '454cf3f5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.20.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b4df4ef1',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 17.22.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '41d3cd91',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.22.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fd9fde1f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 17.22.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '88578086',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.23.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ad2ada22',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 17.23.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '470be053',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '03/06/2026 17.24.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7de7a401',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '03/06/2026 17.24.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0853996f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.24.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '97eed0bc',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 17.24.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '908d1c3d',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.24.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '48b53d60',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 17.24.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6b5cfdee',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.25.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c21cca4a',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '03/06/2026 17.24.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd8108c35',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '03/06/2026 17.25.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c3271cdf',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.26.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '878cb154',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 17.26.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'eb687cb4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 17.27.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0f5d7e4d',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '03/06/2026 17.27.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8261974a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.29.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '13facd2b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 17.32.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '24d6c99b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 17.33.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f4bd4ebe',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 17.34.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '74a07019',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '03/06/2026 17.35.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5e0870b1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.36.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '792bc8a1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.38.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd7b1c356',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '03/06/2026 17.45.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1c193fe0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 17.46.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '13fdcebe',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.47.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ae36f42',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.50.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b66fffd6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.52.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9a0b1071',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 17.59.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '37c0703e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 17.58.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'af041897',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 17.58.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ea4d4746',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 17.58.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4ad78de4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 17.58.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '83bbcf89',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 18.00.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ec7c833b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.02.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '15b04e63',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 18.08.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6ecc547',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.11.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f5395c0b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.17.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '380bfee4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 18.19.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4ced49d7',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.19.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aa9d6694',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.20.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4d2fc1d5',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 18.20.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9cf9a8c2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 18.21.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '18444bdd',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '03/06/2026 18.29.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3c7a5814',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.29.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5f7ba608',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 18.29.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c2cc7a60',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 18.30.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ce7da7d9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 18.30.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3efca3da',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '03/06/2026 18.30.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '927b9ae5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 18.30.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6e6f715',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 18.31.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dc844c3a',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '03/06/2026 18.31.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3838980e',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '03/06/2026 18.31.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d1d5317',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.42.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '84f20427',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 18.43.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '84de1204',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 18.43.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4c0f5c90',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.03.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '241a6fc0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 19.12.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd3963f67',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 19.12.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aae7206d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.23.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8bfe028d',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 19.35.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7d2a0a1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 19.36.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ac035fd8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.36.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '678f195e',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '03/06/2026 19.36.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e38453b0',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 19.36.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '410d787a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 19.36.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a27820ab',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 19.37.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '32d6df3a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '03/06/2026 19.37.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '416c5142',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 19.39.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1a234f4e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.39.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c8e18a85',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 19.44.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cbf3c3f1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.45.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bc8be6fd',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 19.51.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1d4c13fc',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 20.00.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ac12aca2',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 20.05.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '341ba5b1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 20.06.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6cf09790',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 20.07.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '066b0492',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 20.08.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '35beac18',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.08.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '750b1109',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.09.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cf246145',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '03/06/2026 20.10.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c2c6f880',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 20.12.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '68087939',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.16.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5ab37cc8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.21.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8e0b35ad',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.27.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3bcde402',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 20.30.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9d213e31',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.35.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '77ca295a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 20.36.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4e7da5c3',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.39.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '14a57de2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.51.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '43ada620',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.52.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c5a1cddb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.52.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '424f3c7c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.52.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e8e316c7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.55.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dfededc7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 20.58.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f8df9e2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 20.58.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cab7a46c',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '03/06/2026 20.58.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8a0dd73c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.59.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3707cbcf',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 20.59.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e2b72c27',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 20.59.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '03c2e919',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 21.01.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '862a89c1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 21.04.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9ab9b63e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 21.13.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '88ad916c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 21.13.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'da78b4ee',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 21.27.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9418cdcd',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 21.27.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0acfa450',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 21.32.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ccba1cc3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 21.32.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '276e56d4',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 21.38.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '54fea9b7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 22.07.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6a008bd',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 22.07.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7721de7b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '03/06/2026 22.20.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c34f1cd5',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '03/06/2026 22.23.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b107fc49',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '03/06/2026 22.24.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1bcb7678',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 22.25.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cb0adac3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 22.25.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f06bebc3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 22.25.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b880dd95',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 22.25.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dacc963a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    187500.00,
    0.00,
    0.00,
    102937.00,
    '03/06/2026 22.25.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '453bd4b1',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '03/06/2026 22.25.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '71018f2e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 22.34.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5ffbf7d1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 22.34.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fc06d9e3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '03/06/2026 23.00.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65af3a32',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 09.00.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4244ed92',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 09.49.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b157cc10',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 09.49.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4ef8ad6d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 10.01.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd62d9488',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '04/06/2026 10.20.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd7686232',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 10.26.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dbd19c74',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 10.27.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f69c14d9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 10.27.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1bc32693',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 10.28.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7d10ca9a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 10.43.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ab039d70',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 10.58.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '754def94',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.04.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fea93cba',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '04/06/2026 11.04.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '831b5948',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 11.10.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5b12e96a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.10.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f4ca8026',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 11.10.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '642b4ed6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 11.18.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a8e110c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.27.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '47628848',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 11.28.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0886d2a1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 11.39.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d824237',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.48.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5148ce26',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.48.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '630103ab',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 11.48.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f4288fac',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 11.48.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '25be561b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.04.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1c00fb1e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.04.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c7bc83fa',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 12.04.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '27ed592f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.50.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6df965d6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 11.50.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '69603304',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.10.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2bff2a90',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.10.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1a1e262b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.10.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '94418703',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.13.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a3d99f2f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.13.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e307123f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '04/06/2026 12.16.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e279b1e9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.18.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ad609581',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.23.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7223ab1d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.23.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3ea33793',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.24.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '644f64cb',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.25.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b07ee9e8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.25.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '482ed45e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.29.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e60d1770',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.29.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df870b9e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.34.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '097b4d3c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.34.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '177fb900',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.34.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '045ef3d6',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 12.34.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c9f24591',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.34.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0a3d31f2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.35.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c86136d9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.37.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '19a4cf64',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.51.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a4fe3a34',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.51.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '885cb16f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 12.51.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '921a8248',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 12.51.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5127fc15',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.58.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'af151187',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 12.58.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '38c39b17',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.00.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a9b04e76',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.08.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aac3e6eb',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.12.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8ddca058',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.22.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e58fe239',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.23.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '79bfa05c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.31.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dad3563e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.31.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd6e893a7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.32.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ccf610b3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '04/06/2026 13.35.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '757c6ab4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.43.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a764a22b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.43.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7fa97b67',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.43.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2d4c9ea8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.44.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e40a970b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.44.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ee72abda',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.48.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b2d2b86',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '04/06/2026 13.48.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65d64be9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 13.48.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7537f205',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.48.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd1b64c00',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 13.50.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '72a7aa35',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 13.56.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8351ae64',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 13.56.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7ddf2cd6',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 14.01.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '450d04dd',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.02.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '15435ef1',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.06.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4de31c4c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.06.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3809026e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 14.06.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2dc0b418',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 14.19.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9b1164ea',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.24.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fc60f8ba',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 14.24.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '04ad464b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 14.24.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c4b6531c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.35.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f46dd3c9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 14.51.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ca32e770',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 14.59.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7747d417',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 15.09.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e2b1d359',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 15.09.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b9321630',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '04/06/2026 15.09.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1cc6a2eb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 15.30.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '23bd4387',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 15.30.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9bfd8656',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 15.34.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4b0bd424',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 15.40.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd74fec61',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 15.45.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a8594cec',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.06.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '634ff2ac',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 16.13.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '334b314e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.13.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'be5a61ba',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 16.17.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f3bc49e4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.18.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8909e5ee',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.19.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a9823e54',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.25.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df5985fa',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 16.25.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2c6ebc23',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.42.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2ff0d208',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 16.42.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c03235cb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.42.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7afe6a9b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.42.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b673fce',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '04/06/2026 16.44.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5f467c2b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 16.44.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '144ee323',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.45.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f62c080a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.46.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2715583c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.47.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '08ab2582',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 16.50.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd7ca46cf',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '04/06/2026 16.51.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a0dffe46',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 16.53.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7ef6489',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 16.53.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '893bf7e7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.56.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9764e0fc',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.56.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5d766a85',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 16.56.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e63ce69b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '04/06/2026 16.57.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c9a40d8f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.58.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '27722506',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 16.58.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '845b0faa',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '04/06/2026 16.58.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '64cebc21',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '04/06/2026 17.00.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '487571c7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 17.00.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd042b80b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 17.08.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd45afdac',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.13.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '97b90b4f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.15.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f7a03c50',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '04/06/2026 17.19.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '40e4d01c',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 17.25.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '15ce5df4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.28.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fde6b437',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.29.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f1c8e29e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.29.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '33369157',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.31.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'da091a9c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 17.31.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7185c4c4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.31.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '77b5db7a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '04/06/2026 17.32.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '025e6ba0',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 17.33.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e7b326a4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.35.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4e99011a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 17.35.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cf0bf9a2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 17.36.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f9ce6db',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 17.36.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fdafbec9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 17.37.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '341e95a3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 17.39.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fdada9c9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.39.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5cb5e365',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '04/06/2026 17.39.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f31f14bd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 17.35.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '415a20bb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '04/06/2026 17.40.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f80eb08e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 17.41.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '63999dd0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.50.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '21e2ae50',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 17.52.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f7263b24',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.58.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d757aff',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.57.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7dd1135f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 17.58.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1810dbe1',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '04/06/2026 17.58.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '26ba42fc',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 17.59.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '35379c9b',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '04/06/2026 17.59.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '93711efe',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 17.59.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4a078859',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 17.59.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6061bdc2',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '04/06/2026 18.02.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '13e5c771',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '04/06/2026 18.02.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '627c44f9',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 18.13.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3bd5e4e9',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 18.14.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5de5fa6d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 18.23.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5497694c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '04/06/2026 19.03.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9592f916',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '04/06/2026 19.03.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8a8a8780',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    90000.00,
    0.00,
    0.00,
    43039.00,
    '04/06/2026 19.04.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51a6b0bd',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '04/06/2026 19.24.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7491debf',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 19.43.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '29b4d124',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '04/06/2026 19.44.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7afe669d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 19.49.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0ca47be',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 20.02.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '67dca898',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '04/06/2026 20.03.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5e05e2ba',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '04/06/2026 20.03.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2e29cc8b',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 20.03.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '17739121',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 20.03.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'adfe06c5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 20.12.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c8159a30',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '04/06/2026 20.18.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '03ee562a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 20.18.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3df08898',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 20.18.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a751ec90',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 20.19.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9664b3d1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '04/06/2026 20.20.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ff2dda53',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 20.20.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '79ff856f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 20.20.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7be8b26f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '04/06/2026 20.20.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd3954536',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 20.31.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dbfbc8e3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 21.00.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9423a750',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 21.09.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c7881f9a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '04/06/2026 21.15.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bb18480f',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '04/06/2026 21.16.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f457cd93',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '04/06/2026 21.17.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '32a5849e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '04/06/2026 21.18.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c1038e96',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 21.30.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '142a4823',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 21.33.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e9cd099b',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '04/06/2026 21.45.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51a375af',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '04/06/2026 21.57.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a88a8005',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 21.57.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '15360192',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 21.57.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'da498479',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 22.01.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1aba2c77',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 22.10.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e1a8736a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 22.19.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '23343b25',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    70000.00,
    0.00,
    0.00,
    32173.00,
    '04/06/2026 22.22.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '930eadb2',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '04/06/2026 22.29.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ef465568',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 22.33.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cea42aa2',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 22.36.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '70ead933',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '04/06/2026 22.38.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd6bce89b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '04/06/2026 22.57.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '21f15b20',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '04/06/2026 22.57.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4ed104c2',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '04/06/2026 22.57.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bba735af',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '04/06/2026 22.58.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cbbfd689',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '04/06/2026 22.58.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bed1710d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 08.27.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'caccf008',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 08.33.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aafb437d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 08.33.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '16820dd2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 09.00.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '74b4f731',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 09.12.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3c62087b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 09.12.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4468cd23',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 09.12.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6f5ed693',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 09.12.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '890da15c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 09.17.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8fd80a14',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 09.22.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'af3cd165',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 09.37.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b70c89c1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 09.40.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bc2a7f25',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 09.43.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1285306f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 09.43.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8834b465',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 09.53.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9db06849',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 09.53.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f06c98da',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 09.58.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '665058aa',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 09.59.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e769225c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.11.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7ea56b2c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 10.19.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3812b06b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 10.19.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c70fb046',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 10.21.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ffff858a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.27.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dff338a2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 10.27.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3df8a65a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.36.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e0ee98f5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.39.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '75bd0121',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.40.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bd277f6e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.43.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd646b998',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 10.43.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '22783ba6',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 10.44.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '536427f9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 10.55.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3cb7ce2c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 10.55.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '14cbee9f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 10.57.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '019ff177',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 10.59.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c764cdf3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 10.59.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7754a614',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 11.00.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6b81dec',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 11.07.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e10a1817',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.11.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c6456167',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 11.11.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '18218047',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.12.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '992ddaaf',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.24.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8f729d1a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.27.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '42f6f46f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.28.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ee51581c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 11.29.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bd81ae35',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.29.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0022905c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '05/06/2026 11.29.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a273159c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 11.29.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ddb7450',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 11.31.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b0b2b6a1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 11.35.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c89434a7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 11.36.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7919a4b6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 11.44.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b55bafde',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 11.49.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a35d37c9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 11.49.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '897f790f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 11.50.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b16436ae',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 11.55.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'deb3c02e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 12.04.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9a8fb884',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.05.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '38514d58',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 12.06.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd10e5440',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 12.37.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '14576301',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.41.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5c355f8b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.41.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd343a820',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 12.41.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '928d220a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 12.41.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '30776cf5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 12.41.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ca8bc410',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.44.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4b057af7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 12.47.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd1ca7be1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.47.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2a1c380b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.47.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a14b20a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.47.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2debef0c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 12.47.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '56349422',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 12.48.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '178f2580',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.48.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'be2143ca',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 12.49.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a8db75fb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 12.49.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5775c9fd',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 12.50.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '556e169e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 12.53.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd43158f0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '05/06/2026 12.54.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5a7d9b9d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '05/06/2026 12.56.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c5ebe625',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 12.56.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '557b2241',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 12.56.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c96eabf9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 13.03.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd1e28927',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 13.04.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '509c4749',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 13.04.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9f94f699',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.05.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d422776',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.06.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5c0ebfa7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.13.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '072c0e73',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 13.14.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4d349fc3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.14.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '01dba37e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.17.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e63a3c8c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.21.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd05282e7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.25.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cd2e83d7',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 13.32.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8c68bbe4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.33.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7c507dfa',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.39.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3a2e70e4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.41.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b8232643',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.41.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fbb88e22',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 13.46.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '59b59e77',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.46.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '555f83a7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 13.53.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9327d31b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 13.57.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '464a38ba',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 13.57.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b39fb6e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 14.02.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f9c73443',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 14.03.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f6632eb9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.03.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2f160b1d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.08.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9f9bee47',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 14.11.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fdb42b7c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 14.12.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '94ee0397',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.14.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b6fd0d35',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.14.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '54df65a9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.15.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '873accff',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 14.41.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9872286a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 14.59.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6f41bbf4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 15.00.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ee1ecf3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.02.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5f947dbc',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.05.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6152a3bb',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 15.22.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4d784cde',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 15.23.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f58b912b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 15.23.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4624b1dc',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.24.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c5f0b9b8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 15.26.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '06b5799a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.27.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9c66e55f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 15.29.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f934df36',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '05/06/2026 15.49.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c4c24621',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '05/06/2026 15.49.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b62009b9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.49.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5da68f5e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 15.50.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '77cdf8b5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 15.49.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '120f8fad',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '05/06/2026 15.50.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7aac9eb9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 15.51.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2d32b127',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 15.52.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a2b0fc36',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '05/06/2026 15.52.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2857f321',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '05/06/2026 15.52.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bf24cf0e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 15.53.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6294d504',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 15.53.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4d216b80',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.56.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ddf6a3d7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 15.56.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6dd38c64',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 15.56.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8d4dd551',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.02.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1ecccce1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.06.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '54ab5db5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.12.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '31fc013c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.13.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a69d1aab',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 16.40.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd9888878',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.44.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '038dc993',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.45.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c2e8d240',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.45.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5a1b9b97',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.46.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a5722479',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 16.46.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a09c893',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 16.47.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ff290db2',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 16.47.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c857edea',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.48.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '36423d55',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.48.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1bf7635b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.48.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3797f383',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.48.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '50010feb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '05/06/2026 16.48.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1d93d581',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.51.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '181a0079',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 16.54.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4a9ddd5a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    240000.00,
    0.00,
    0.00,
    107873.00,
    '05/06/2026 16.57.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b5e09ac8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 16.57.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e4c3b761',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.59.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '38b23ad2',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 16.59.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2d31d418',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 16.59.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '12ab9ece',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    375000.00,
    0.00,
    0.00,
    211092.00,
    '05/06/2026 17.00.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9a5d111f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 17.02.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4102bb41',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 17.02.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51637433',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 17.13.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0eff4325',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 17.19.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ce762a81',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 17.22.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '13c2b719',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 17.23.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8b385891',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.23.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cf9955a9',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.23.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '897e7c36',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.23.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8dd3ad3f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.23.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9f0e8143',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 17.24.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8efbbb2b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.25.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'de696d56',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '05/06/2026 17.25.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '513cc81e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 17.25.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7b18415f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 17.27.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7b6c8c1e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.28.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cad5c900',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.30.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2eebef96',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.30.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '66e0017c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 17.31.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2ca2c1d2',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.35.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1eba02a2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.37.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '511a5e51',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 17.40.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9b196cbd',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 17.41.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd335bf54',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.41.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '46734467',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '05/06/2026 17.44.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'eddde991',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.46.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '62ea9668',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 17.49.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'deb60486',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 17.55.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5ebab38f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 17.56.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a78d53a1',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 18.11.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '43db2d7e',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 18.17.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '37dbcf25',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '05/06/2026 18.18.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '954426d5',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 18.18.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'be749430',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 18.19.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df2dcfbe',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '05/06/2026 18.20.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ea994006',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.20.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f30ba227',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 18.20.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a49e67ed',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 18.20.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c2af486',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '05/06/2026 18.28.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ca0a5480',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '05/06/2026 18.28.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a5c91f91',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '05/06/2026 18.28.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3b29b91f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.28.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '615a6126',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '05/06/2026 18.29.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bbd437fa',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.30.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d6d6dd9',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 18.30.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '636956de',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '05/06/2026 18.30.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1d41dd23',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.37.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '99fc0d68',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 18.37.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

