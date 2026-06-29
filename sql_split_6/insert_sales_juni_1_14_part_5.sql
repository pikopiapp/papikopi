-- Generated from Orders Juni 1-14.csv
-- Part 5 of 6

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f938190',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 13.15.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '89c5cea7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 13.21.00'
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
    '6767b922',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 13.21.56'
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
    'df530c7e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 13.22.40'
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
    '195798eb',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 13.28.32'
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
    '53673fb3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 13.29.08'
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
    'df0358c0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.29.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '379b0401',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 13.29.44'
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
    '2fdd096f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '10/06/2026 13.29.52'
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
    '50a56b32',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 13.30.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd89b3ae5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.32.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '726920eb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 13.33.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9ab85046',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 13.35.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '64ebf875',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.43.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '347f75fd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.49.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '72b794bd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 13.49.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a577857b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 13.49.37'
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
    'f578d782',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '10/06/2026 13.54.22'
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
    '54a30b35',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.59.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9015c7ac',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.59.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c8032ce0',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 13.59.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ef587360',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 14.07.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'df989bf3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 14.14.41'
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
    '969f8d15',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 14.14.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e82acc03',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 14.16.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6055dbe8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 14.18.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '341d051c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 14.41.32'
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
    'e5217784',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 14.41.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '65b5ac72',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 14.42.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9137df58',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 14.45.09'
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
    '8ca05889',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 14.55.21'
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
    '3a2e0729',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 14.56.55'
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
    'e6148a42',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 14.58.33'
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
    '4cf908a5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 14.59.10'
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
    '5d5ce7f1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.06.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '67f3ed33',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.06.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b466bf84',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.07.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e3a21ee1',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 15.09.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a1b12d89',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.14.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '06427b38',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 15.17.43'
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
    'a8165ad6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.21.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a3aab94a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.21.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7f052f2a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.24.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '51419d05',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 15.29.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '93aee8c9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 15.30.45'
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
    '395cc180',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.30.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dd91ca25',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 15.31.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1d5f151c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.35.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '19baca09',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 15.35.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3f196ff3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 15.38.35'
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
    '694c3171',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 15.39.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bfb66d2e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 16.08.57'
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
    'f44137f1',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.11.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '44c95b40',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 16.14.09'
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
    '079ea464',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.20.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9da3a20a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 16.28.04'
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
    '2b73e1be',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 16.28.52'
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
    '1e4d0b8a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 16.30.01'
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
    '0b74f13b',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 16.44.57'
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
    '31b2c294',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 16.44.24'
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
    'd124b67d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 16.47.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a0917b59',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.48.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3034051d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 16.47.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4ba27c17',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.53.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd72ee645',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.53.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8f75e4f8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 16.53.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '93ac649f',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 16.56.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '199259d8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.00.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e79b769b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 17.01.27'
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
    'dcbc717e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 17.03.51'
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
    '53571c91',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.12.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f1e4c35a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 17.19.36'
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
    'ead17cb8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.19.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '89bafece',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.19.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '348126fa',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 17.24.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dcf39f3b',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.27.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2268f469',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 17.27.59'
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
    'f55c0506',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.29.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4cc7eb78',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.29.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0afb4df0',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.34.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f1a91768',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.38.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6b14054c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.38.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '082c4b52',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.38.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'eb142f5f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.38.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8f75525c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.39.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7b2d295b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '10/06/2026 17.39.31'
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
    '8ef60a63',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.39.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b6f39ad6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.47.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '60eadc05',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.47.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '90fbb938',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.48.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f7e01b83',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.49.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0b8bff30',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.52.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd858a00b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 17.52.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f871b4b8',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 17.56.50'
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
    '8e686e5e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 17.58.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f2828c4a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.04.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7b7a64f9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.06.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b1c245d0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.06.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ed20c376',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.08.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '07ed443e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.14.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7b2bb4c2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.18.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6cc5c20b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.24.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c1759743',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.26.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0cc2e15b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.26.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7de2f271',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.29.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd5e59d89',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 18.29.13'
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
    '34df4188',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '10/06/2026 18.36.18'
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
    '592389a8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.46.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8e31931a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.47.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1148c779',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.47.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9fca6d5e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 18.47.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e32d174b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 18.49.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f586197a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '10/06/2026 18.59.51'
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
    '96d9c201',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 19.00.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ec7d09d7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 19.01.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '53487413',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 19.01.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e7a39023',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 19.01.31'
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
    'b795d2d8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 19.07.59'
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
    'bcf56ce6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 19.08.05'
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
    'd8f82d30',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '10/06/2026 19.08.34'
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
    '340d03dd',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    162500.00,
    0.00,
    0.00,
    91473.00,
    '10/06/2026 19.08.43'
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
    'a1a158f5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 19.08.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '31366fb6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '10/06/2026 19.09.02'
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
    'da78e4dc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 19.20.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '645713a3',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 19.35.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fb686785',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 19.35.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6555b20c',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 19.56.26'
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
    'df86ec72',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 19.57.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cd5cdc0c',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.02.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f27d7b9d',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.04.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '92b0e361',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 20.04.46'
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
    'f8bb7cc0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 20.05.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7a9c11fd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 20.05.25'
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
    'a1d6d9fe',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.05.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e8abba8a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.05.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ba938e2a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 20.05.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'caf644d2',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.06.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9fd23643',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 20.11.55'
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
    '049943d0',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.12.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ee01c3bb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 20.18.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd5b9c3b7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.19.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0e5e8314',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 20.20.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd88e9b9f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 20.21.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5557e55e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 20.38.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0474fba7',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '10/06/2026 20.46.19'
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
    'b28b9285',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '10/06/2026 20.47.37'
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
    'ad9924c1',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '10/06/2026 20.49.03'
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
    'cabec82f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '10/06/2026 20.49.13'
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
    '879f59a5',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 20.49.22'
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
    '3353facb',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 20.49.31'
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
    '09a7034f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '10/06/2026 20.49.44'
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
    '028eebfe',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 20.52.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a9fa019d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 21.08.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '21c64acc',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.10.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '26055682',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 21.11.54'
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
    'c88e03d5',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 21.15.05'
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
    '32069949',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.16.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '34f17286',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '10/06/2026 21.20.44'
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
    '6f2a5a5e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.21.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1b15af48',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '10/06/2026 21.20.59'
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
    '36eed41c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.22.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3834894a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.22.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '97cada66',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 21.22.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '258b3ab9',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '10/06/2026 21.22.26'
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
    'c8ba9068',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 21.22.34'
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
    'fc40f4aa',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.22.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9a7d5b01',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.23.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9733650b',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.23.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '957e3f13',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '10/06/2026 21.23.25'
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
    '59eea795',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '10/06/2026 21.36.36'
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
    '6f75f7fb',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.37.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7ca5d8e7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.37.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0ae63876',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.42.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '09a61f09',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 21.42.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '26aa09fa',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.43.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '51d0ad10',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 21.44.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '074921fc',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '10/06/2026 21.45.07'
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
    '242634f7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 21.51.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'de028e59',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 21.51.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '56ec398a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 21.58.43'
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
    '39ecda76',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 22.00.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '41926b6b',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 22.01.56'
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
    '5828b934',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '10/06/2026 22.09.18'
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
    '9f175567',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '10/06/2026 22.09.32'
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
    '23add6d3',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 22.11.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '088aa614',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 22.24.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '33ba8fed',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '10/06/2026 22.27.33'
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
    '97f4e359',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 22.29.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '310d3c07',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '10/06/2026 22.31.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f37feedf',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '10/06/2026 23.31.24'
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
    '91ae4f3a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '10/06/2026 23.31.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c5828abd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '10/06/2026 23.31.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4dceaadc',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 09.21.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bf9b85f5',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 09.56.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b9aeaa5a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.13.14'
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
    'ee813d62',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 10.27.44'
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
    'dee72301',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 10.27.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7b169fb0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.31.17'
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
    'f6cd2d1c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.31.25'
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
    '7d6531b3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 10.31.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fe130ed6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.42.35'
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
    'da52106c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.45.37'
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
    'efc09e10',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 10.48.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dd418e20',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 10.54.29'
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
    '7fae8fe6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 11.04.01'
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
    '8de43d6e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 11.04.10'
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
    '37395165',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 11.07.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a01d436e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 11.12.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '929cf79f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 11.13.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a2881b6c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 11.27.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '791af063',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 11.27.21'
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
    '51556d3c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 11.31.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7ef0b693',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 11.38.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e76f2b65',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 11.41.43'
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
    '14916de8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '11/06/2026 11.49.23'
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
    'd0898ec4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 11.55.24'
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
    'fc2000dc',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 12.10.25'
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
    '68db98a0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.10.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4b340acc',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.11.08'
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
    '5024ef74',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 12.11.52'
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
    'cded873a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '11/06/2026 12.16.20'
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
    'f0c63aea',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.16.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '515a3e41',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 12.16.35'
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
    '8b86ad4e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.16.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ab874de3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.17.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bbb7be87',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '11/06/2026 12.17.32'
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
    'bae8bef8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.17.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '282f61d1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.20.48'
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
    '3afde85a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.21.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '391a5d53',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 12.21.23'
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
    '57f91aa6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.30.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5b8f38b7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.31.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0cae7e3d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.31.29'
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
    '583b4b3a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.31.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '09b1ecf1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.36.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6a7bc980',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.36.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2564c7a7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.37.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ab4c9452',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.38.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '84fe5626',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.39.26'
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
    'a73ddbab',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 12.41.58'
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
    '109aa1e0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.42.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '176af811',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.42.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c668ab63',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.42.22'
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
    'bbf0daf6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.42.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '98dd2d77',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.42.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3ef37359',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.42.39'
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
    '2d7095a2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.46.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'aee59938',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 12.46.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '34ec080f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.47.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f550aca5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.47.19'
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
    'edc0c64c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.48.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6cd8bd5f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.50.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a894882d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 12.54.20'
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
    'd185898f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.54.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ddee5611',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.57.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6a950874',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.57.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'afbfb5c4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.57.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a414b85c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 12.59.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b8e7809e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.02.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd159f615',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 13.05.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bd50c72c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.07.12'
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
    'c16c81b3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.07.20'
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
    '80d4c20e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.11.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8dd0337f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 13.11.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6426fa6b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.11.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a7a96b10',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.12.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3b37f212',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.12.45'
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
    'fc7fba02',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 13.12.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c1f93a03',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.14.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1c0c1b67',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.14.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a766acca',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.15.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fd4b8e5b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.15.22'
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
    '20a5e9a1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.15.28'
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
    '2b768627',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.20.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '735358d4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.29.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bb008ef9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.31.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8fdc307a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 13.38.56'
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
    '9a140d1a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.39.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '022364c7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 13.39.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'bcbc537f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.40.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '17ca4711',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.55.47'
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
    'fcd1a07a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.56.02'
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
    '75b13ec4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 13.56.10'
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
    'ebf53fdc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.56.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2e93f0ab',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 13.56.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd584e37e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '11/06/2026 13.56.25'
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
    'bd9859fa',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 13.56.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '24d961fb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.00.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2f909394',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.03.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dc09e9b3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.05.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '24d0d5f6',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.08.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '051fb888',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 14.20.32'
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
    '9b328cec',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 14.21.10'
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
    '02dd5ae7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.21.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4d5dce3e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 14.27.29'
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
    '933d9afa',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.30.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '94f95bf4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 14.32.27'
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
    'b8da1ec4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.41.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3a9654f7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.41.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '081e1eca',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 14.41.43'
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
    '005a1e1c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 14.43.39'
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
    '64427447',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 14.44.02'
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
    'e7f22dcc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 14.44.10'
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
    'df4fc445',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 14.47.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6733f1ab',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 14.47.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6db24409',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 14.49.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b9aeab83',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 15.01.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b0ae0c1a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.06.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '21fce731',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 15.13.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '57606c9e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.14.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1a9602fa',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 15.15.14'
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
    '37a42fe6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 15.16.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '090bbe96',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 15.16.07'
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
    'cada81b9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.16.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0d6aa1ee',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 15.25.10'
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
    '188c9a52',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 15.25.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b4cd812a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.29.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f178b2fb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.39.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2f4a821d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 15.40.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '00d38809',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 15.43.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '44c53efd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.06.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fc480190',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.06.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '41628671',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 16.06.53'
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
    '5adfb8a3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 16.06.59'
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
    '053693cd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.07.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ddb9c0c7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.07.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b53bb2a6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.07.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3c0c6da3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.08.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1a036c3a',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.08.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '438e60c2',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 16.08.38'
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
    'fc48378f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.08.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '75bc44cb',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 16.08.58'
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
    '0388c2a3',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.09.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a25c10a8',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.13.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '82a0f62b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.25.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4810e46f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.25.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '86eb434b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 16.26.38'
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
    'd4917a0c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.26.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c51ad442',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.26.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '57aac13c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.29.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '916b8b63',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 16.35.45'
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
    'b2650b87',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.41.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9ad4916d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.41.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7a9eb438',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.41.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '40b7189b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.41.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '49b03f31',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.42.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bedb1325',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.42.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c236a6ac',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.49.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5f268697',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.54.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '33d9a47f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.54.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '84cbd807',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 16.57.26'
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
    '88d84494',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.58.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '344e2f26',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.58.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dceead82',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '11/06/2026 17.02.31'
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
    'f91a13a1',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '11/06/2026 17.02.53'
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
    'e240b899',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '11/06/2026 17.03.35'
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
    '15bd8f4a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.04.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '19e4a718',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '11/06/2026 17.04.08'
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
    '718030a9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.04.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '93c2a1a4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 17.04.18'
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
    '19f545a6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 16.15.06'
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
    '1d981caf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.15.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '582a600d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.15.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '542ff2d6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 16.15.58'
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
    '234100cf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.16.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd5cd0fc7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '11/06/2026 16.17.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '185f8f3d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.19.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '374be601',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 16.20.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c5e48202',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 16.35.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fdba8eaa',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.25.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f570d711',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.26.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c31b1327',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.26.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '340b5450',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '11/06/2026 17.27.08'
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
    '9e7885b5',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.27.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '75836b12',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 17.28.25'
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
    '40c2b1ea',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.28.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6501116c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 17.30.01'
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
    '58fa43db',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '11/06/2026 17.30.04'
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
    '07661ec1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.30.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a3d09731',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.30.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '287b3adf',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '11/06/2026 17.30.41'
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
    '9661d622',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.32.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f379aef3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.32.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '12e7018c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.33.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'fd18b1ff',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 17.36.50'
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
    '09f01fb9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 17.38.36'
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
    '120d5d8f',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.39.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '61c7cb3b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 17.40.28'
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
    'ad241a6b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.43.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'f6ec5260',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.45.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'dfc2f87e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.45.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '24cc86a0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '11/06/2026 17.49.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '79646b4d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.52.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '55566521',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.52.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '509b9399',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.52.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ca7c151f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 17.53.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6bdf2353',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 17.53.06'
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
    'f778047e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.53.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e6bd8085',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 17.54.51'
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
    '0de2d41d',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 17.55.36'
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
    '7f2274a4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 17.57.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ef3b9920',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.01.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c309557e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.02.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c9d1f24f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 18.05.50'
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
    'f0033d4d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.07.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e9415c99',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.07.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9654ab1c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.07.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0c2d88d8',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 18.08.01'
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
    '8202dadf',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 18.08.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '6684ebb3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 18.08.26'
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
    'b76def70',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 18.08.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd5ebc88e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.12.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9f7eae31',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 18.18.02'
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
    '11f82336',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 18.29.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '76867c3c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 18.50.01'
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
    'f953e283',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 18.50.17'
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
    '6cbe92c5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 18.50.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'eab4005e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 18.50.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0ca9fec6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 18.59.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4bb17f1f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 18.59.24'
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
    '189693d1',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '11/06/2026 19.00.04'
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
    'edd2791b',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    150000.00,
    0.00,
    0.00,
    84437.00,
    '11/06/2026 19.00.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ffc0f353',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 19.01.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b8cd1122',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '11/06/2026 19.01.27'
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
    '3b6203dc',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 19.01.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f505e5b8',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 19.01.45'
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
    'da08bbd4',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '11/06/2026 19.01.55'
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
    '0ca011f2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 19.04.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0435a48b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 19.04.16'
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
    '44964945',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 19.23.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '79221b07',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 19.24.48'
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
    'd85675f6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 19.38.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'afd28022',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '11/06/2026 19.45.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '177bbfa0',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 20.22.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5a686f7f',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '11/06/2026 20.22.10'
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
    '8e7c9cb2',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 20.22.22'
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
    '62a24007',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '11/06/2026 20.23.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
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
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '85648ea4',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '11/06/2026 20.23.10'
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
    '7d8bc7ac',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 20.23.18'
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
    '93ce8e7d',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '11/06/2026 20.23.34'
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
    '7c0a199d',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 20.46.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '80f78842',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 20.48.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1c973f74',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 21.06.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd2208fd8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 21.06.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e4939548',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 21.06.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2c40b8c5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 21.06.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2a08b448',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 21.19.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '39bee991',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '11/06/2026 21.35.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '43d1e67c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 22.14.34'
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
    'c9f85743',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '11/06/2026 22.26.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ab13d40e',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '11/06/2026 23.09.27'
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
    '63e17ad8',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '11/06/2026 23.09.36'
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
    'bacfc06d',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '11/06/2026 23.11.05'
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
    'b2dfc18d',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 23.11.15'
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
    '2cee59a7',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 23.11.36'
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
    '2ebcbec1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '11/06/2026 23.11.42'
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
    '79719867',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '11/06/2026 23.48.56'
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
    '4e098a5c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '11/06/2026 23.49.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a438a45f',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '11/06/2026 23.49.18'
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
    '72220555',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '11/06/2026 23.49.25'
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
    '156e12d1',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 09.24.01'
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
    'e8d695d4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 09.24.07'
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
    'c7fe29be',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 09.52.27'
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
    '502b4cf3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 09.52.36'
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
    '3e877ec1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.01.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'da49fab8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.02.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '860c523b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '12/06/2026 10.15.46'
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
    '67782468',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 10.22.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'd2bba7f8',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 10.22.29'
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
    'b4ef5ae6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.28.20'
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
    '1242ea24',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.28.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ac1626bf',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.34.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4c268a22',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.34.52'
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
    '19f240f0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.40.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '01a57739',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.40.25'
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
    '422f5e1c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 10.50.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '5729f874',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.56.45'
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
    '309c2692',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.58.52'
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
    '1edabe20',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 10.58.57'
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
    '9496a583',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.03.54'
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
    '611c1648',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.04.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bbcb5f91',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.10.41'
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
    '8cf3b043',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.10.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd86e0e35',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.15.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '2f5e2ee1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 11.20.50'
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
    'e69c7581',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 11.20.57'
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
    'c18bc3b1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 11.21.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'a703aedd',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.21.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '35d68b44',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 11.21.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '9762303d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.21.54'
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
    'bdb59299',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.24.19'
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
    'a5389ae2',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.24.29'
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
    '5fb4ef32',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.25.19'
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
    '489e2f96',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.28.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '4bb1ac9f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 11.28.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e71c29c8',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.31.18'
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
    '10680442',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.35.08'
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
    '28af4725',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 11.41.45'
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
    'f3812355',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.46.57'
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
    '7d7156c5',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 11.47.51'
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
    '01ef57d3',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.47.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'cc23d64c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 11.49.39'
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
    '17a329ce',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.51.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'eb3eb829',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 11.51.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ddb1e717',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 11.52.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '85af2a5e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 12.17.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ecdb583f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 12.23.42'
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
    '0f8cc5bd',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.23.48'
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
    '1b0f2238',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 12.23.54'
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
    'd0ae49fd',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '12/06/2026 12.30.14'
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
    '6d352dd0',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.30.22'
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
    '53000c89',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 12.30.36'
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
    '5296dc1a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 12.30.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b9654591',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.31.36'
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
    '7b2d4107',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.38.10'
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
    '14e64df7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.38.45'
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
    '60bc652c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 12.42.05'
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
    '85ac5441',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.42.02'
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
    '620156fb',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 12.42.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '27df7ac5',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 12.42.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3dac5323',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '12/06/2026 12.43.15'
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
    '4bfbf820',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 12.44.19'
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
    'c29a99de',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '12/06/2026 12.44.12'
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
    '1ddb652c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 12.45.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'b9384d64',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 12.45.35'
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
    '90bdbb8a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '12/06/2026 12.46.25'
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
    '1b7ea925',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 12.54.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '01ba010c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 12.54.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'e4b6bd0a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 12.54.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'c71fd877',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.00.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'faf7e5c4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.03.05'
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
    'bd67930b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.09.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    'ed0b5a5f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.16.50'
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
    'b343d1c8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.16.59'
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
    'a796fc89',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 13.17.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '0d982240',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.17.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '26aa7f49',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.17.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '93515b1e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 13.18.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '3135adb7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.20.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '026efcbf',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.21.00'
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
    'e314d580',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.27.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '7915cf43',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.33.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6438841c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.33.20'
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
    '71cbd94e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.33.44'
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
    'fda6a6d4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 13.35.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '1974fe54',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '12/06/2026 13.45.26'
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
    '113eafcb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 13.59.53'
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
    'ae5adb79',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.01.29'
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
    '1b102922',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '12/06/2026 14.05.39'
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
    '72e41cce',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.07.06'
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
    '7f2c276c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.07.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8e0706b2',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '12/06/2026 14.07.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '73a09014',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.15.25'
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
    '3b1d94a6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '12/06/2026 14.17.23'
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
    '0dd108c8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.17.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '50b8de1c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.19.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
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
    '8e8d5607',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '12/06/2026 14.22.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f5596fe3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '12/06/2026 14.27.25'
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

