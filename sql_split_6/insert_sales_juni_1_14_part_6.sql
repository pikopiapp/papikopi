-- Generated from Orders Juni 1-14.csv
-- Part 6 of 6

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3e025ddb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.32.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '72505908',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.36.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '649faa00',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 14.36.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '11c1c095',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 14.37.52'
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
    'f33ec865',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.43.19'
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
    'd92cbfe9',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.43.25'
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
    '7efeaf73',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.45.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9e0efc12',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.46.54'
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
    '17bdcd5a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.52.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fa8a7120',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 14.59.17'
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
    'c298bc8d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 15.03.13'
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
    '567d7f8a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 15.11.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '401b97ce',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.11.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd674e5b5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.14.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e95eea40',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.16.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '00f79b62',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.15.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a8ce3798',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.38.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd47433cb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.38.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3bbdefd1',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 15.38.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9a851fd8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '12/06/2026 15.38.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'dc15272f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 15.46.51'
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
    '555cab5d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 15.47.06'
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
    'c493ea22',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.47.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cad6a392',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 15.49.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5a350319',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '12/06/2026 15.49.56'
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
    '59c27b12',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 15.50.04'
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
    '7996531e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 15.50.18'
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
    'c0910960',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.50.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '330c8f50',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.50.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ed9ae049',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.50.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0eae5765',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    30000.00,
    0.00,
    0.00,
    16086.00,
    '12/06/2026 15.50.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7b1c6ab0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 15.51.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '60ab36ce',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 15.56.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '443ef85e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 16.01.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9ff052e1',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.13.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3af9d63f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.13.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '52d944d3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 16.16.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e6384d33',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.20.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '59931fbd',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.22.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'dceb3654',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.23.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '08da6be4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 16.34.23'
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
    'c1819157',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 16.34.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a0f9ee6a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 16.36.41'
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
    'c4387ea1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 16.46.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '17059d7c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 16.46.26'
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
    'a7aeec28',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 16.52.03'
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
    '200d654d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 16.56.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'be683b16',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.03.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5861cc02',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.03.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'efd38216',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.03.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4eaaa2f8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.04.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'be772dd3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.12.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '79c7e5e8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.15.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'eb420344',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 17.15.37'
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
    'f2b3182a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 17.15.41'
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
    '942087d3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.25.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '34b228f2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 17.29.35'
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
    '49fc173b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.34.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '43696263',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.34.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1d755387',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.34.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a1bfa91c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 17.37.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e5c6de06',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 17.38.42'
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
    '06ca7111',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '12/06/2026 17.43.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c065139e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.45.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a25b822e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 17.49.21'
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
    '981c86d2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.52.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a0686ed9',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 17.55.38'
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
    '2baa45c3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 17.58.12'
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
    '4c41c7a0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 17.58.22'
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
    '1ede8144',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 17.58.52'
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
    '0c2647ed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 17.59.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'da6862af',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.00.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6581c0cf',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '12/06/2026 18.03.32'
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
    '9e71c127',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '12/06/2026 18.07.50'
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
    'd1497114',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '12/06/2026 18.08.23'
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
    '63a17840',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.10.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1bebd9e7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    80000.00,
    0.00,
    0.00,
    35958.00,
    '12/06/2026 18.13.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '64f35838',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    400000.00,
    0.00,
    0.00,
    179788.00,
    '12/06/2026 18.14.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '94c50a7c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    300000.00,
    0.00,
    0.00,
    160862.00,
    '12/06/2026 18.14.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5aa7c1bd',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.22.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cdf99aa2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 18.22.45'
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
    '99aff61a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.22.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '22ebe61f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 18.23.15'
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
    '53060b16',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 18.23.35'
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
    '6b6067e3',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '12/06/2026 18.23.55'
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
    'c9f5360e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.24.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6f58f227',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 18.25.42'
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
    '74105ff1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 18.26.16'
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
    'ee6b73a3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.26.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6cf2c646',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 18.27.09'
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
    'ad997888',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 18.27.41'
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
    '1f65df26',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.28.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3b875f86',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.29.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7f7d77e4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.31.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a1e56538',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.33.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8573fb45',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.35.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b7b186fb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.37.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'df822f8d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 18.40.06'
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
    '0abf795a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.42.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5cf667d0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 18.48.50'
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
    '45a755b4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 18.53.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c7a2da34',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '12/06/2026 18.56.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd309ecec',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 18.59.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2677ef8e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.00.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1c6c3778',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 19.08.10'
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
    '90da20f7',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 19.08.20'
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
    'b8e4b77d',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 19.08.26'
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
    '1b148d20',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 19.08.57'
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
    '8ed4e8aa',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '12/06/2026 19.09.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ee858eec',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.09.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8dbb0e4d',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.09.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd5c9c236',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.09.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'aa58ecf3',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '12/06/2026 19.09.31'
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
    '9ba73d98',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 19.15.46'
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
    '2708379d',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '12/06/2026 19.23.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0e23136',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '12/06/2026 19.24.01'
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
    '72c9ddac',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 19.24.32'
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
    '9b4316fa',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '12/06/2026 19.25.59'
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
    '2ddc432f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.26.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8f775b3d',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 19.26.15'
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
    'd4f8870c',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 19.26.27'
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
    '3fc058dd',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '12/06/2026 19.26.35'
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
    '9083b3a3',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '12/06/2026 19.26.42'
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
    '7507ba81',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.36.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5cfbbffe',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 19.41.20'
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
    '54c04a81',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 19.48.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '02f7bf3b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 20.00.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '230bb0dc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '12/06/2026 20.16.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '88e4858b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 20.17.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ea20c427',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 20.17.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f0a5e00a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 20.22.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '84b7bc9f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 20.36.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0e7f3443',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 20.46.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '31e3cfa0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 20.46.26'
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
    'b73ff938',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 20.46.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7ee2e10e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 20.46.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '39793fe5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 20.56.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '75b34548',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.00.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e9dcd3f7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.00.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ab729872',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 21.00.51'
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
    'bd75a888',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 21.09.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c209e888',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.16.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '02680fa5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 21.17.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e16b1d89',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.19.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '27a1dd37',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '12/06/2026 21.30.48'
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
    '2560099a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '12/06/2026 21.31.03'
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
    'be6f438c',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '12/06/2026 21.31.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2bdc2939',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.31.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '456f7d4e',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.31.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f74e7a14',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.31.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3d228fe1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.31.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'be7a0903',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '12/06/2026 21.31.50'
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
    'adb61ff1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 21.45.29'
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
    '8da8b822',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 21.55.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bf0af573',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.57.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '472cc21f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 21.57.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4cf34013',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 21.58.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2733cf0e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 21.58.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '51f5d1d0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 22.01.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bdb5c463',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 22.02.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'afa4933d',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 22.31.17'
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
    '2e5a441c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '12/06/2026 22.31.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7ebee9db',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 22.31.54'
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
    'a672d17a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 22.32.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '60f797f3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 22.32.16'
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
    '8e548ff7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '12/06/2026 22.32.28'
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
    'df3a3908',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '12/06/2026 22.37.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'adb73ea6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 09.00.32'
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
    '21c8d68b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 09.09.11'
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
    '0f4e05d1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 09.28.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '202915b2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 09.31.17'
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
    'f3f42349',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 09.35.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b4fe26d2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 09.45.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'db73e0d9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 09.45.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '51e391f6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 09.59.30'
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
    '5ab415b9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 10.01.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c1242ce3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 10.12.15'
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
    '26943c8a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 10.15.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '72ad39e9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 10.19.08'
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
    '96fd236a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 10.23.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2cadbf02',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 11.17.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd8445ac0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 11.34.58'
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
    'efb77806',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 11.44.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2cc220e8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 11.44.53'
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
    '950cd94e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 11.49.25'
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
    'cc7433ea',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 11.57.51'
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
    '1b25113a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 12.01.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6ece462a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 12.01.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0e4d8704',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 12.02.00'
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
    '73960fac',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 12.09.08'
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
    '0e7f79a6',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 12.09.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8f0d4e89',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 12.10.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bc3ebe86',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 12.38.37'
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
    '4a9c232e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 12.38.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e23d30c5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 12.52.37'
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
    '7ec49c43',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 13.10.24'
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
    'bcbcd4c5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.23.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '93ec9017',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.26.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fac0283b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 13.26.20'
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
    'cba9c8ab',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.35.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '885eeaa2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.35.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd519696f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.40.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '346d2636',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 13.40.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2b470bd8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 13.45.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dd7c7e8c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 13.51.23'
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
    '87bd5e58',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 13.59.24'
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
    'c48fcd97',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 13.59.35'
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
    'af0663f4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 14.02.06'
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
    '07d3a823',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 14.05.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd4cd3fb9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 14.11.23'
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
    '776b7ffd',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 14.11.33'
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
    '788da5bd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 14.11.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '97d2f00d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 14.17.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '573d67cb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 14.21.30'
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
    '0d916dd0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 14.21.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4b22f589',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 14.26.45'
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
    '54784dc6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 14.28.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '98140517',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 14.28.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0a2c1904',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 14.38.05'
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
    '829ab4e4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 14.42.10'
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
    '095a87bc',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 14.50.20'
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
    'fbcb8ba9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 14.52.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6f4993ed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 14.52.13'
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
    '7689140f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 15.00.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '03d267c8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 15.00.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '43295c51',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 15.02.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'da567f4c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 15.07.26'
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
    '92796bf4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 15.07.30'
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
    '18edd48b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 15.20.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6b9fa32f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 15.22.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b0d40af9',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 15.25.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '21c1e7a1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 16.00.52'
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
    '17ec3d58',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '13/06/2026 16.02.10'
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
    'ebaf8544',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 16.10.07'
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
    '10d8245d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 16.15.52'
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
    '2ceddecc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 16.29.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2e02549c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.36.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b9409758',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '13/06/2026 16.37.04'
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
    '94246ab8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.37.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a461d41d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.38.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '96e13da3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.39.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '66617ccc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 16.39.36'
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
    '44355039',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.39.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '94b09f5a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.45.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a3914ae2',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 16.53.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2d45b54d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 16.55.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fe5e7847',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 16.58.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '55cf753d',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 16.58.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f9310eb2',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.06.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ca729740',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.06.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5ed671f9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.12.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2d979995',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.17.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c3b697ca',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.17.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '56733942',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.22.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '03fc8ded',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 17.28.18'
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
    '5007e8a8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 17.41.13'
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
    '771cdaa9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 17.41.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3dffade7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.19.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6f954e4d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 18.19.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '30a24d1d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 18.24.44'
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
    '33d57159',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.25.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd7a8b2cd',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 18.26.06'
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
    '8f67c4ee',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '13/06/2026 18.26.15'
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
  SELECT id FROM public.products WHERE name = 'Salted Caramel (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ab6c5d69',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 18.27.11'
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
    '476bd048',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.36.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ce31512f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.54.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f8685609',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 18.54.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '25b19d2b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 18.57.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ff7fa746',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.57.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e0360924',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 18.57.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1cc27f44',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.02.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1f76968f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.01.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '78123119',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.13.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '72a68db9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.13.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '484404b3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.13.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '91557279',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.13.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '402a589c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.16.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '37e363b0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 19.17.34'
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
    'ce3fd064',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.24.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd62dad0d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '13/06/2026 19.25.53'
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
    '1effaeb8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.28.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '727c8c19',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.29.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2a9dc6b8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.31.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dc7b0cde',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '13/06/2026 19.35.35'
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
    'ebbc3625',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 19.38.30'
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
    '3285e26a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.40.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9c2e4efa',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.40.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6e6a9a8c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 19.43.26'
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
    'd4427b68',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 19.45.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '03cbcfcc',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 19.51.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9fc1d048',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 19.53.19'
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
    '919ef77a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 19.56.23'
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
    '6695f135',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 20.01.50'
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
    '66c0f586',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '13/06/2026 20.01.54'
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
    'dfb93579',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 20.01.56'
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
    '62030329',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.02.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8177d4a3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '13/06/2026 20.02.03'
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
    'feed7c33',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 20.04.15'
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
    'dd396028',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 20.06.48'
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
    '0caba26f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.06.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5b080382',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '13/06/2026 20.16.44'
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
    '9c4f4c4e',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 20.16.54'
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
    '5f9ee7eb',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 20.17.07'
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
    'b550f145',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 20.17.23'
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
    '6186b085',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.17.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3c55ae55',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.17.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3d25ff56',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '13/06/2026 20.17.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a2b584c2',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 20.18.29'
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
    'd288de93',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 20.18.37'
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
    '0c68b10e',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '13/06/2026 20.18.45'
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
    'fde09669',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 20.18.51'
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
    '0ca17c4f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 20.20.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '79d43338',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.22.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c0140efc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 20.27.17'
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
    '9839184c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.27.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8a62267e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.27.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '966e4afa',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 20.42.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '87a6f2d9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 20.47.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c032ea1c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 21.00.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cbc49a1c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '13/06/2026 21.01.46'
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
    'b204c567',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '13/06/2026 21.11.16'
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
    '12f6bb93',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 21.18.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0d59e5f5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.18.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c2606dca',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.19.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '23a5ffb9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 21.19.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0925d6c6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '13/06/2026 21.25.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b0a3346c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '13/06/2026 21.28.59'
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
    '6f98938c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.34.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ede54cd9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.34.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b2583c6c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 21.40.43'
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
    '76df451f',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 21.44.08'
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
    '6f407884',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.44.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e35d833d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 21.44.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a2e28f50',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.04.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '230490d5',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.04.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c3de8840',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.10.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '47142f03',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 22.16.03'
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
    'c69475f7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 22.25.58'
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
    '59ecd547',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 22.26.10'
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
    'fe68cf2e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 22.26.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5ea58d97',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '13/06/2026 22.32.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b4d74781',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.32.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '32582032',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.32.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '66bce6f7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 22.32.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bc611e44',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '13/06/2026 22.33.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '982b8f26',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 22.39.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '73384be7',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '13/06/2026 23.02.17'
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
    'c8fe96b1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 23.03.14'
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
    '79688d3d',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '13/06/2026 23.10.10'
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
    '4f7568d9',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '13/06/2026 23.11.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3a2b939f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '13/06/2026 23.11.33'
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
    '8c46306a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 23.11.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '78499785',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 23.11.52'
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
    '9e0573d1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '13/06/2026 23.12.02'
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
    '7e414b4b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 23.29.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '27221f8f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '13/06/2026 23.31.26'
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
    'cbc3b9c1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 23.31.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c1aec5d4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '13/06/2026 23.31.50'
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
    '4d060e72',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '13/06/2026 23.32.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '66414de7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '13/06/2026 23.32.48'
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
    '325db9cd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '13/06/2026 23.32.49'
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
    'd7bfe340',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '13/06/2026 23.32.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '059a5634',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '13/06/2026 23.32.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e7e256e6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '13/06/2026 23.32.52'
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
    '1e9c0a04',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '13/06/2026 23.32.53'
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
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '13988ddb',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 23.32.54'
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
    'c3e203af',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '13/06/2026 23.32.55'
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
    '7b5b5a2b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '13/06/2026 23.32.56'
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
    '746c81c7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '13/06/2026 23.32.57'
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
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e63b6941',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 09.05.21'
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
    'abf43a0d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 08.56.55'
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
    '3b08b0ea',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 09.03.05'
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
    '25ade206',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 09.03.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c954c9a3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 09.32.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '168a445f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 09.33.58'
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
    '6ce4bac0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 09.34.02'
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
    '87575c40',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 10.00.34'
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
    '983cebd8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 10.06.06'
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
    '10ab99a4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 10.06.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a5a04c12',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 10.06.21'
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
    '9ec54c3f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 10.19.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '557d6a06',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 10.48.12'
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
    'c0dcc635',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.06.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5f6031c3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.19.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'db897bdc',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.27.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd5ad45ef',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.27.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '280eb6a2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.27.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '78a9e1f8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.27.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6ff31747',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '14/06/2026 11.33.16'
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
    'bdaf2619',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 11.33.27'
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
    '54200a8e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 11.38.57'
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
    '74d0f00b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 11.42.18'
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
    '7b142055',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 11.53.03'
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
    '4c72407a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 11.33.03'
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
    '7b8423b0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 11.39.43'
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
    '6379ffbb',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 11.55.12'
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
    '5bf6e2d1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '14/06/2026 11.56.00'
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
    '45973c11',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.56.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ab9607e1',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 11.58.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '37fc8efe',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 11.58.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4531b913',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 11.58.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '58414d40',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '14/06/2026 12.00.12'
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
    '1a97a25b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '14/06/2026 12.13.02'
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
    'c4a4a576',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 12.28.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '578046da',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 12.42.25'
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
    '5a3d5265',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 12.42.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd8198b7a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 12.43.02'
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
    'f354d864',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 12.44.51'
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
    '43e7667b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 12.46.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c5ba0194',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 12.46.09'
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
    '0d62958a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '14/06/2026 12.47.49'
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
    '03027aef',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 12.48.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cf710f2f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '14/06/2026 12.50.46'
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
    '30c88136',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 12.54.13'
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
    'ff1a2c39',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 12.57.29'
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
    '79e56de8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 12.57.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3fb3622e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.03.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3e6a9fc5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.03.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '63f02353',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.25.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '03a1e174',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.26.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2832a91c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.26.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cee6e74c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '14/06/2026 13.26.36'
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
    '616c039f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.33.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '21bf8006',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.38.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a7474af8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.38.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3c432ea1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.42.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f825f082',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '14/06/2026 13.44.03'
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
    '0f7fd1f2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.44.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '20376971',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 13.45.16'
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
    '5676250b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 13.45.22'
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
    '5da1621a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 13.48.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1bafe4bb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '14/06/2026 13.51.45'
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
    '820b0dbe',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.54.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4e6eb938',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 13.58.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '00fa7d2b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 14.23.39'
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
    'f3e0ac3a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 14.29.21'
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
    '5b6738d3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 14.46.18'
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
    '9fe5aeed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 14.46.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '50184f07',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 14.51.14'
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
    'b105c62e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 14.51.22'
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
    'd699bbc6',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 14.52.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4c106978',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 14.53.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '2ee99c7d',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 14.55.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1d39625d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 14.56.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9009c0de',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 14.56.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6f8fc1fb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.11.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '33096de3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.11.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6916292c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.11.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b6345e01',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 15.14.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8fba8f51',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.15.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '267d9cb4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 15.16.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bce920ab',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.16.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '59548bd2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 15.20.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '87a41d6a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.22.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cfa4e00f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 15.27.59'
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
    '4fe32d1a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 15.50.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '70ad817c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.57.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '690fe9f4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 15.57.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1faae6f1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 15.57.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f62a6690',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 16.05.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd88a61b4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 16.08.40'
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
    '95d6a8c1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 16.08.45'
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
    '5fdd3d92',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 16.13.29'
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
    '25506913',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 16.38.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1b8ae942',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 16.41.46'
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
    'a7a89e40',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 16.44.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '387d4625',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 16.44.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '86d0741c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 16.45.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9803c6ae',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 16.51.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e62443cb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.08.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b99cbe09',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.15.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ab6823da',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 17.15.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '472b6325',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 17.16.02'
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
    '9505ed9c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 17.37.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bbbd0fac',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.37.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b75e8408',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.37.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd9f93347',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.42.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '49d9f795',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.43.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a6aeec0e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.47.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b4aec18d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '14/06/2026 17.55.05'
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
    'ce6714a1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 17.55.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a000cf78',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 18.01.44'
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
    'e6c36938',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '14/06/2026 18.01.57'
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
    'b58a2c79',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '14/06/2026 18.03.38'
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
    '79e1e0a8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.06.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e89c5529',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.06.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fe88e873',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.07.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b83aabeb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.09.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cef3c6f3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.11.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c344d4b3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.41.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a4aca4fa',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.41.31'
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
    '93d678c6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.41.48'
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
    '31f56df3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '14/06/2026 18.42.05'
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
    '7b0ede5a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.42.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '90ee4d3e',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.42.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c324f536',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.42.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd9157410',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.42.58'
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
    'd8f98a80',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.43.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '91d9e3d6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.43.29'
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
    'eb7ec078',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.43.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd7c53b3c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.43.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2a5ac214',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.44.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6013abd8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.44.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '565e9a56',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.44.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '54d24d68',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.44.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c3e6f99a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '14/06/2026 18.44.27'
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
    '3b9fd871',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.44.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '261ceab0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.44.39'
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
    'c2eebb26',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '14/06/2026 18.44.51'
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
    '846ba4f6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.45.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'becbc0a7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '14/06/2026 18.45.18'
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
    '8a5e2941',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.45.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9a9d3bd2',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '14/06/2026 18.45.40'
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
    'db6ae26d',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.45.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9fde7602',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.46.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4878f190',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.46.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '22836945',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.46.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7073eca1',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '14/06/2026 18.46.32'
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
    '47bc1db0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.46.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '46441753',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.46.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8a3ae450',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.47.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'aca03693',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.47.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cf67ed97',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.47.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4b47312c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.47.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e6db2331',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.48.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cab59fa1',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.48.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8e6477dd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.48.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '45ee34e8',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.49.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3a5e1f59',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.49.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ef86fd1b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.49.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd759613e',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.49.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1035b8e7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.50.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fb6712db',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 18.50.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6443241e',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.50.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '362f8722',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 18.50.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3d9c3454',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.52.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6470c0c6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 18.59.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '658f8b81',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    90000.00,
    0.00,
    0.00,
    39262.00,
    '14/06/2026 19.41.54'
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
    '51c3b9dd',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 20.08.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5a234c21',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 20.14.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'be31619f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 20.14.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '99d36c8f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 20.15.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cae9d4ed',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 20.17.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bd162d14',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 20.17.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ea050a66',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 20.35.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '162513c5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '14/06/2026 20.40.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b3b8fd1f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 21.08.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '094afdf0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '14/06/2026 21.08.54'
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
    '1d838111',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '14/06/2026 21.58.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '34c1da0a',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '14/06/2026 22.58.59'
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
    '904bd197',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '14/06/2026 22.59.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b4c04efc',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '14/06/2026 22.59.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '369a3c65',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    72000.00,
    0.00,
    0.00,
    32362.00,
    '14/06/2026 22.59.43'
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
    '3b5921ff',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '14/06/2026 22.59.52'
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
    '2c7237dc',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '14/06/2026 22.59.59'
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
  SELECT id FROM public.products WHERE name = 'Vanilla (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c63d21a1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '14/06/2026 23.00.07'
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
    '15f32c5e',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '14/06/2026 23.00.14'
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
  SELECT id FROM public.products WHERE name = 'Hazelnut (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cb042efe',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    162500.00,
    0.00,
    0.00,
    89212.00,
    '14/06/2026 23.00.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

