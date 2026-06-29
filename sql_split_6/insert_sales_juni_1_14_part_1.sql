-- Generated from Orders Juni 1-14.csv
-- Part 1 of 6

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0a945b3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 10.30.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd9877ea4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 10.34.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1b9634cb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '01/06/2026 11.25.17'
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
    '368874a2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 11.33.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c1bf7bc8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 11.34.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e7c8a5b7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 11.34.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '47309674',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.02.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6f469e6f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.05.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c38a0662',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.06.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6acbd329',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.06.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a0484899',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.06.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd5572b67',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.06.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a10336a6',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.24.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b44039ed',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.30.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '097b1f67',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.34.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e8aa9c5b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.39.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1ae1eb90',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.49.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65dafb31',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 12.49.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d04db0b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 12.52.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '535aaa98',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 13.09.17'
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
    '98e8af81',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 13.09.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3f5d1f3f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 13.09.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6a36202f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 13.22.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '48dfa548',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '01/06/2026 13.22.22'
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
    '74eaa516',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 13.22.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dfa926f7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '01/06/2026 13.30.01'
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
    '078995ba',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 13.38.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '95683760',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 13.42.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bcef94db',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 14.05.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '93d99c82',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 14.21.01'
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
    '786cdad8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 14.21.27'
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
    '896c3495',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 14.21.46'
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
    'a47db035',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 14.22.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a68f8c32',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 14.22.14'
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
    'ffd616ca',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 14.22.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5c5aca17',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '01/06/2026 14.23.23'
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
    '5940c511',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 14.23.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cc896e31',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '01/06/2026 14.24.00'
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
    'ec74a07d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '01/06/2026 14.24.15'
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
    '816f7fdd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 14.27.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'db4ae99c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '01/06/2026 14.30.16'
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
    '84cf7dbc',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '01/06/2026 14.30.26'
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
    'eb06d1ec',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 14.37.02'
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
    'cdcc4f21',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 14.50.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9e79e3ec',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 14.51.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9d506135',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 14.51.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1af2d5dd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 14.54.33'
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
    'e543b67b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.06.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f955cc21',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.11.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '12c4424c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.17.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0d7e6ee',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.18.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1b5d7839',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 15.18.12'
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
    '523194b8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 15.33.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a43f671f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.36.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f289ebf9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.38.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fb1c6ec7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 15.38.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1efdd2e4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 15.50.27'
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
    '35335807',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 15.50.34'
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
    '1dad5cad',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 15.50.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e0097c1c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 15.52.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd5e4a8d8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 16.01.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '64919fef',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 16.01.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51bb608f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 16.20.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '528fa4ed',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 16.20.38'
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
    '39874212',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 16.22.03'
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
    '54438712',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 16.24.57'
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
    '35e186e5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 16.34.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ac152ed2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 16.57.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'eae7fd40',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    90000.00,
    0.00,
    0.00,
    44488.00,
    '01/06/2026 17.00.05'
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
  SELECT id FROM public.products WHERE name = 'Butterscotch 1 ltr' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '568c3fa8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '01/06/2026 17.00.25'
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
    '9949acfb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 17.00.32'
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
    'cf29227a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.04.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ebf534f1',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.05.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cb8e0bd3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.05.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dc82fcd0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.05.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1b19dacd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '01/06/2026 17.13.27'
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
    '7cbeeae5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 17.14.03'
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
    'e18c900d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 17.14.17'
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
    '1d13af94',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 17.19.53'
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
    'abcf5ad0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '01/06/2026 17.21.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '565926aa',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 17.23.07'
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
    '4d57a030',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.23.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1cf2bd50',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 17.29.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e32a557e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 17.43.42'
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
    '5f6e8826',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 17.59.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '64b9fde6',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 18.10.11'
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
    '3fc9dcba',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '01/06/2026 18.10.54'
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
    '4a1035fa',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '01/06/2026 18.12.21'
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
    '3eba1f39',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '01/06/2026 18.12.55'
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
    'cef92af0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '01/06/2026 18.13.48'
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
    '46424538',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 18.14.30'
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
    'd31cf43d',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 18.14.39'
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
    '3d8691f7',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '01/06/2026 18.15.11'
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
    'bc9db668',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 18.15.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a257fe0',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 18.15.33'
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
    '6d017d17',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 18.17.41'
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
    '598f6226',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 18.17.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0b66247d',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 18.21.54'
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
    'ed6da066',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '01/06/2026 18.22.04'
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
    '7dd5a7e0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 18.23.07'
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
    '757397b5',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '01/06/2026 18.23.16'
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
    '36eee2b0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 18.23.26'
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
    '4b66e2a5',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    262500.00,
    0.00,
    0.00,
    144112.00,
    '01/06/2026 18.23.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  21,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ec1fbe91',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '01/06/2026 18.25.36'
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
    '3e95b9d9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 18.46.07'
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
    '9c5079e6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 18.46.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4747ebf3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 18.46.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '92cd2382',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.05.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2f45d454',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.05.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c6415ca7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 19.15.06'
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
    'd0ee23e6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.16.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ae59c75f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 19.16.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2fdc7787',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '01/06/2026 19.33.40'
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
    'ccf3c4be',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 19.33.46'
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
    'd2c99532',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.33.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f101ef71',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.33.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6093fce5',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.34.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '50b37c7a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '01/06/2026 19.34.36'
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
    '83a0852b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 19.37.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '39c7eefd',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 19.37.18'
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
    '2f24189f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.37.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '47db93ee',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.53.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5a3b77c3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.59.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e0dfc39f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 19.59.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5780f069',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 19.59.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '12efa37a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '01/06/2026 20.07.02'
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
    '8ec1cee8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 20.08.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dc35db07',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '01/06/2026 20.12.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7140351',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 20.15.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '122dd076',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '01/06/2026 20.15.50'
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
    'aef116d1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '01/06/2026 20.16.04'
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
    'f9edf2b6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '01/06/2026 20.16.33'
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
    'e3efbbb7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 20.20.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0c8cfb33',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 20.21.04'
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
    'be988734',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 20.22.06'
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
    'e800ef04',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '01/06/2026 20.23.35'
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
    'c275364d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '01/06/2026 20.24.21'
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
    'ce592f59',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 20.24.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '47560ad7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '01/06/2026 20.28.14'
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
    '5c31a36f',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '01/06/2026 20.32.04'
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
    '4e4e6c67',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 20.32.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4b07b4e6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 20.33.49'
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
    'f21c59f3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 20.37.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '17b925a9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 20.41.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '62665fee',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 20.41.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'dfa6cba0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 20.45.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '398cf6e6',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 20.45.39'
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
    '3b715ad2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '01/06/2026 20.52.23'
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
    '69694f21',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '01/06/2026 20.54.21'
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
    '19179c81',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 20.56.41'
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
    '3ccb0789',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '01/06/2026 21.10.27'
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
    'eb461ad9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 21.14.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ea439a5d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 21.14.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '905c26c2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 21.28.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '48b3ca91',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 21.28.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dae24d05',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 21.40.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dfe32906',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 21.45.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c06d8ed3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 21.47.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'de963f67',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 21.55.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a460bd6b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '01/06/2026 21.56.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3ca22db5',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '01/06/2026 22.07.39'
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
    '7299b963',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '01/06/2026 22.07.52'
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
    '735dd378',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 22.08.04'
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
    '7356bc6f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '01/06/2026 22.08.44'
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
    '14d4e86b',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '01/06/2026 22.08.53'
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
    'df434863',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 22.15.31'
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
    '20b100e0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '01/06/2026 22.15.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '723f2b3a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '01/06/2026 22.35.37'
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
    '5a74b181',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 22.35.52'
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
    '9bf5e979',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '01/06/2026 22.42.01'
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
    'c4ff00b5',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '01/06/2026 22.46.57'
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
    '27513005',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    30000.00,
    0.00,
    0.00,
    16086.00,
    '01/06/2026 22.47.09'
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
    '44f529de',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '01/06/2026 22.47.31'
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
    '3aef7e80',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '01/06/2026 22.48.06'
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
    'e3afece1',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '01/06/2026 22.49.25'
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
    'a45f6965',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    87500.00,
    0.00,
    0.00,
    48037.00,
    '01/06/2026 22.49.37'
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
    '62a0776c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '01/06/2026 22.58.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cd1c30cf',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 08.12.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6cd04849',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 09.32.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7e9f51ce',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 09.50.54'
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
    '4f22a62e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 09.51.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c84c19ab',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 09.51.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c4d6e5a3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 09.53.30'
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
    '739cf1c0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 09.53.42'
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
    '70ca0ef6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 09.58.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6195597c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 09.58.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'db8e639d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 10.00.04'
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
    'b8ecb110',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 10.00.12'
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
    '613278de',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 10.13.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b335b1de',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 10.39.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ce8f2355',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 10.55.27'
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
    '783bba4f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 10.55.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a47a47cd',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.00.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '2a8d09b4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.01.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a57eff8e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.04.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5ba6d204',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.04.33'
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
    '002a6f04',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.09.41'
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
    '5bc25bd3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.10.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fa29a7a6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.10.23'
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
    '14d11cd9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 11.14.49'
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
    '211caa3e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 11.14.57'
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
    '4058767f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.16.00'
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
    'dc2a9d69',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.19.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8ded2809',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 11.19.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '59e104c5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.20.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2ab2e8ca',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.38.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fa5c1f7f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.42.56'
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
    'd64ecde3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 11.43.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '39848c33',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 11.43.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c78cbbb',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.43.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '96ed0628',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 11.43.14'
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
    '0e4bd45c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.49.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3ca0cbc6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 11.51.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e17c3080',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.10.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7e8a5020',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.10.40'
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
    '42402664',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.15.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f7a393f0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.19.46'
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
    '3862a40c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.19.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '797c7b99',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.21.57'
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
    'b329d0e8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.22.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '27a3c593',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.22.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '89e8499b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.23.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e3cd6235',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.24.02'
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
    'fa88e0f8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 12.26.54'
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
    '751fa40f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.27.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5eac36aa',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.27.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a28462ec',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.28.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd274b3c7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.28.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd6bae6ba',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.29.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a3086409',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 12.29.45'
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
    'ff1167bb',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 12.30.14'
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
    '98d9de98',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 12.30.57'
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
    '2d149549',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 12.33.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f8636219',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '02/06/2026 12.31.35'
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
    '415e0f76',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 12.41.12'
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
    '27a4cc08',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '02/06/2026 12.41.18'
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
    '57a6e6bc',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.41.19'
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
    'd0069025',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '02/06/2026 12.42.04'
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
    '732604b2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 12.46.19'
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
    'd648e196',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '02/06/2026 12.46.48'
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
    '6811e3e8',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 12.51.24'
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
    '90eb647c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.51.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'be9a325c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 12.51.40'
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
    '2edcace2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.53.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5f17d971',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 12.53.48'
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
    'e4c3b4dc',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.53.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd0e21e49',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.54.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cde36474',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 12.57.42'
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
    '1a67c78b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 12.58.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '99d4f33c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.01.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f6ff36d7',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 13.01.57'
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
    'da3517fd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.04.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '11761cfc',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.05.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '566dfa52',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.05.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fb705d7a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.05.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '31a9be6d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.05.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5a228f66',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.05.40'
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
    '145a81ee',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.05.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c77ee53f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '02/06/2026 13.06.35'
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
    '7cb267a0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 13.07.07'
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
    '5c67557d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 13.07.36'
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
    '4275499d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 13.08.39'
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
    'ef816072',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.12.03'
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
    '8ec63bd1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 13.12.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fc8b8338',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.13.46'
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
    '2d7019b2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.15.43'
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
    'e436eabd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 13.22.26'
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
    '2ce3b7ec',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.22.51'
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
    '3a6df859',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.26.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5e9a5d26',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.27.47'
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
    '14b7274c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 13.28.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f6fe6298',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.34.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4209b262',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 13.35.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '027ce830',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.39.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '78963a7b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.39.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e887370d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.40.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6808f257',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 13.42.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6918149',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 13.42.27'
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
    '219d4c4a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 13.45.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'b5d467e4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 13.51.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e606859b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.00.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'befb5ce5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.02.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9c1b5af3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.07.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'adb1b651',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.09.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f5884c61',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 14.10.04'
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
    '54ce9af2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 14.10.10'
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
    '76dc55e3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 14.11.01'
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
    '4fe425fb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.11.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '99f4afb0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 14.11.06'
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
    'a33c3f72',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.11.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3f371944',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.11.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4335e4c7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.11.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6f8e8d0f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 14.23.09'
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
    '2570738e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.31.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f747ed83',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.31.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7823246b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.37.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '563799c9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.37.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '962b5de6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 14.40.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '03d52d96',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.43.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bd599fff',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 14.53.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a98826a4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 15.03.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd117a52b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.19.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bf8169f8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.27.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0949d1aa',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.27.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bf9c80cf',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 15.27.55'
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
    '38ab603b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 15.28.47'
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
    'e44c58d7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '02/06/2026 15.31.51'
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
    'a6b81a83',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.32.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '53e28c70',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 15.40.30'
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
    'd031c1cf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.40.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '146fd704',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 15.56.53'
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
    'faf79cf0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 15.57.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8273cd3c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 16.00.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d207b83',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 16.04.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '29a10480',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 16.33.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e9279830',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 16.33.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c9be6ce1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 16.38.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '20bcb1cb',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 16.50.07'
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
    '32bc72fe',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 16.54.18'
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
    '1981ffe3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 16.55.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6e5fd357',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 17.01.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1e3e30ad',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 17.06.17'
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
    '74c209e1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 17.06.29'
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
    'af443c4e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 17.14.04'
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
    'c356d7f5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.14.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'da8180e9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.14.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cf5568c7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.15.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3ea5c8e2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.16.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7c9d8a7b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 17.17.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '978aa69f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 17.26.38'
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
    '63bd7241',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.28.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c22f3f3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 17.32.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9b41895a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.33.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c97afdb8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '02/06/2026 17.33.13'
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
    '479d14b5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 17.33.22'
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
    '681fd966',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 17.36.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6e52f873',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 17.42.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd70ddb65',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 17.43.03'
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
    '010fe5fc',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 17.48.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '474cc61f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.03.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'aed9f977',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 18.03.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '788b2b52',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.11.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '67eebb21',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.33.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3cdd700e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 18.33.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b7969ff0',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '02/06/2026 18.33.50'
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
    '3a37cd53',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 18.33.59'
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
    'a109012a',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.34.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'eb358a03',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '02/06/2026 18.35.39'
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
    '7d4061c0',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 18.35.49'
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
    '3013da24',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 18.36.19'
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
    'e3765770',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.36.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '85997420',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 18.36.38'
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
    '85dcbf6e',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '02/06/2026 18.36.47'
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
    '0a188e08',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 18.38.27'
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
    'b6b1ca1c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.38.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6b9ef859',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 18.49.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ea34c795',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 18.50.28'
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
    '1a672407',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.50.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f3b17676',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 18.50.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51a77897',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 18.57.07'
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
    '2ebc9523',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 18.57.09'
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
    '726e5ebe',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.57.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2c6784ef',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 18.58.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8436a94c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 19.03.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df5e72e8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 19.03.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a0e93e53',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 19.09.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f903ba8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 19.15.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6fac9ba9',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 19.15.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ca2fbe32',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 19.20.44'
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
    'a3c4a484',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '02/06/2026 19.22.49'
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
    '7b2a2d27',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 19.23.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'edc89b00',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 19.28.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b4ee9041',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 19.28.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1541fb80',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 19.36.53'
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
    '3ecadb97',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 19.36.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4511edd3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 19.46.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b4f5fa6c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 19.54.31'
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
    'e38f577e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 19.57.19'
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
    '936dae58',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 20.02.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1b24d661',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 20.05.24'
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
    'faefb461',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 20.05.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'dae102d3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 20.05.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3fc4cde6',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 20.10.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fdf9d985',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 20.12.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '59581f98',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '02/06/2026 20.16.56'
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
    '0e90af7c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 20.17.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9c8266c3',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '02/06/2026 20.17.06'
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
    '7fc24481',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '02/06/2026 20.18.13'
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
    '7afab840',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '02/06/2026 20.18.23'
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
    'c90de9b1',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 20.18.35'
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
    'b28709e8',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 20.18.42'
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
    'f5d8dfbc',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 20.18.49'
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
    '37e301c6',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    30000.00,
    0.00,
    0.00,
    16086.00,
    '02/06/2026 20.19.06'
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
    'd9008d22',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '02/06/2026 20.19.14'
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
    '15059564',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 20.27.15'
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
    '1f19ff4e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 20.35.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ce7ae6f1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '02/06/2026 20.45.23'
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
    '2724b176',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 20.45.27'
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
    '1f423659',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '02/06/2026 20.51.05'
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
    '980676d6',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 20.51.13'
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
    '3f7771d9',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 20.51.27'
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
    'a685d6b3',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    64000.00,
    0.00,
    0.00,
    28766.00,
    '02/06/2026 20.52.03'
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
    'bd2101e1',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 20.52.17'
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
    '6dd744f5',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '02/06/2026 20.52.23'
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
    '7c469a2b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 20.52.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd0c272d3',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 20.56.14'
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
    '0527dafd',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 20.56.21'
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
    '58e36a7a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 20.56.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '73f36759',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 21.25.18'
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
    'de791ef0',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 21.25.29'
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
    'b4809a7a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 21.26.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8875eeb1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 21.26.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '53aea013',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '02/06/2026 21.31.24'
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
    '08eca38c',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 21.33.47'
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
    'b9ca7d9d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 21.40.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c3cb7a55',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 21.49.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a29eb133',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '02/06/2026 21.51.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '199cdec6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '02/06/2026 21.52.58'
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
    '3748418a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 21.56.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c9004376',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '02/06/2026 21.57.04'
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
    '387d9a32',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '02/06/2026 21.59.38'
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
    '0c9d6196',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 21.59.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7e60c3b3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 22.00.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a23472e8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '02/06/2026 22.22.17'
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
    'd643aff7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '02/06/2026 22.23.51'
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
    '1cce8cc9',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 22.23.56'
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
    'a3b52bcb',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '02/06/2026 22.26.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '25284b2f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '02/06/2026 22.27.17'
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
    '217f7e15',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '02/06/2026 22.27.24'
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
    '52099822',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '02/06/2026 22.28.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bb577a13',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '03/06/2026 10.04.07'
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
    '72693d30',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 10.04.21'
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
    'dfaff0c0',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 10.10.21'
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
    '859718bd',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 10.20.39'
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
    '92883461',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 10.20.54'
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
    '2585c3c9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 10.21.00'
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
    '4f99193c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 10.25.00'
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
    'cc51a29e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 10.25.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd0f8b7a2',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 10.38.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f074c671',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 10.46.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6cd8aa72',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 10.46.42'
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
    'ae90ed35',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 10.49.15'
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
    '7738543d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 10.53.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '2086d06a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 10.54.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd892738b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 10.59.27'
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
    '1496e3a1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.05.38'
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
    '9acec4d3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.11.08'
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
    '2c0b67eb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.10.18'
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
    '5263d6fa',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 11.18.56'
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
    '1697c461',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.20.32'
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
    'e70f471f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.27.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9875a30f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.27.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0f66e540',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.29.52'
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
    '4121b390',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 11.32.54'
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
    '1baef73b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.33.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '54c7eaed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 11.34.12'
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
    'be5bd503',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.45.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b06f4542',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 11.45.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '75dbbe72',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.45.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7e957ebc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 11.49.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '039d1727',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 11.49.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65d4feb3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 11.52.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dd9e82c9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.04.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '953a2ce4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.04.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cc85f497',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 12.05.06'
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
    '373322ea',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.06.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'eb00673b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 12.06.48'
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
    '56e9cdd3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.12.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c6590579',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.12.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1b499f33',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.12.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '58f234c8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.25.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '22014ef0',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.28.00'
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
    '2fef5bac',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '03/06/2026 12.28.47'
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
    'bdc2d58f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.29.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7751d3ab',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 12.29.49'
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
    'c0b4ce29',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.30.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1539a326',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    75000.00,
    0.00,
    0.00,
    42218.00,
    '03/06/2026 12.31.19'
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
    '48bd82b1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.35.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e7104483',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.36.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c976a268',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.36.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ea520f86',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.36.26'
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
    'cdd56dc8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 12.38.43'
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
    '25df7f27',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.38.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '49c587b0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.39.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8dbcacfe',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.41.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'f6994269',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.42.57'
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
    'b4497b5c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.45.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2d27130e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.45.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0405657',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 12.48.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '521f2927',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 12.58.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e05b2ef7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.58.36'
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
    '77ef1b07',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.59.11'
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
    '17a8a4cd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 12.59.21'
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
    '4264b177',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 13.05.52'
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
    '0ff66868',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 13.07.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '94d1929b',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 13.07.28'
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
    'beb2ef1f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 13.09.08'
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
    '96aadb76',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '03/06/2026 13.09.14'
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
    '99ac61ae',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 13.13.30'
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
    '40fae550',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.16.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '38fdd57d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 13.19.25'
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
    '25ae77e4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.16.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6bc6e7f4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '03/06/2026 13.24.03'
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
    '4986c97d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.39.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0cba588c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 13.41.32'
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
    '8b0daa9c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 13.46.27'
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
    '97fba194',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.48.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '8e33eb49',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.48.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c3650305',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 13.49.30'
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
    'c121c3c4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 13.49.43'
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
    '772c8de4',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 13.52.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9bc30dbb',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 13.58.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd1827d45',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.04.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8bc46fb5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.07.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '63815457',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.09.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ae2e4862',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.09.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f49747b6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.10.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd5f81bc2',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 14.10.16'
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
    'aef4fab8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.12.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9d08e504',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.15.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f331a401',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.15.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9add5187',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 14.15.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b94ba1d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '03/06/2026 14.18.11'
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
    '03feb95d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '03/06/2026 14.22.53'
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
    'dd61b86c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 14.24.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a4d46493',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '03/06/2026 14.24.56'
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
    '1fdf567f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 14.34.46'
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
    '16096577',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.34.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cb9d0aff',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.35.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5be1279c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.36.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7bc09ba',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.44.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd8972c70',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 14.45.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f584d68a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 15.05.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '96138fe5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 15.12.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1f0c1f40',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 15.14.39'
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
    'dd244463',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 15.17.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '98d061dc',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '03/06/2026 15.34.59'
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
    'a4ff93f9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 15.36.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0303fdfa',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '03/06/2026 15.37.51'
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
    '8612458b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 15.38.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e5c818b9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 15.38.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8954fcd9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.05.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1b49229f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.06.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd254660e',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.09.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6e51e452',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '03/06/2026 16.11.47'
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
    '911ee490',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 16.12.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c07fd89',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 16.14.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b287dc28',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 16.15.04'
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
    '6f0769fb',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.15.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '57ae5cc9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.18.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0af3d940',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '03/06/2026 16.18.16'
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
    '6e2a67ed',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 16.38.03'
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
    'b7755cd1',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '03/06/2026 16.38.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8650e2f6',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.38.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '850fe9bf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.38.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f7a6f06b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 16.38.46'
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
    '70bdd611',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '03/06/2026 16.39.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f9f7e70d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '03/06/2026 16.42.03'
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

