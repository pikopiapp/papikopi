-- Generated from Orders Juni 1-14.csv
-- Part 3 of 6

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a26656be',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.47.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9baa23e3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.47.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0a303e74',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 18.47.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '764fabca',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '05/06/2026 18.50.56'
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
    'b636f6e8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 19.14.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3329a0a6',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 19.15.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5913fcf3',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 19.15.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f1c0a036',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 19.16.39'
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
    'd8b87a35',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 19.16.45'
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
    '9950edd1',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '05/06/2026 19.22.09'
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
    'c01dbb09',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 19.22.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'be61a708',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 19.31.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9b3520a4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '05/06/2026 19.32.49'
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
    '0e41bf09',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 19.52.39'
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
    'ba4c8ee8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 19.53.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65553b66',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 19.54.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a8af75c8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '05/06/2026 20.12.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '85c7d2f2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 20.13.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e698b373',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.13.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '002971b2',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    20000.00,
    0.00,
    0.00,
    10724.00,
    '05/06/2026 20.18.17'
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
    '6e78913b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.22.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3d67e35f',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    87500.00,
    0.00,
    0.00,
    49255.00,
    '05/06/2026 20.26.45'
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
    '80c14162',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '05/06/2026 20.27.13'
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
    '9e8cfa36',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 20.27.22'
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
    'c5f23dfd',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '05/06/2026 20.28.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '020f48bc',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.28.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bd4853f2',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 20.28.31'
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
    'ef5b9110',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.28.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '86a2bc5d',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.28.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4b787e4f',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '05/06/2026 20.28.55'
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
    'f4200c6a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.31.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4a4bb121',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    70000.00,
    0.00,
    0.00,
    32173.00,
    '05/06/2026 20.35.33'
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
    'd1f0cede',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 20.52.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a80a3a0e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 20.52.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a14bb51a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 20.55.24'
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
    '4583db37',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 20.57.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fde02a47',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 21.10.08'
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
    'd0049011',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '05/06/2026 21.10.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd68d35d0',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 21.11.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1fbee793',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 21.11.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '95675cf0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    100000.00,
    0.00,
    0.00,
    54900.00,
    '05/06/2026 21.59.31'
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
    'd010d551',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '05/06/2026 22.00.24'
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
    'f58f7dda',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 22.00.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '594abf2f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 22.07.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '692fa85a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 22.11.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6ab2b488',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 22.11.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '63c93703',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '05/06/2026 22.15.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e05533d7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '05/06/2026 22.22.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '171a208c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    175000.00,
    0.00,
    0.00,
    98509.00,
    '05/06/2026 23.02.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '44035fbe',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '05/06/2026 23.02.45'
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
    'ec4760c0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 23.03.09'
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
    '0c324592',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '05/06/2026 23.03.51'
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
    '0b9f0b2b',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 23.04.00'
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
    'da3dc6c7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 23.04.11'
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
    '1b6be599',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '05/06/2026 23.04.19'
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
    '2fd54c50',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '05/06/2026 23.04.32'
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
    'b19da6c0',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    112500.00,
    0.00,
    0.00,
    61762.00,
    '05/06/2026 23.04.39'
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
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b6f0275',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '05/06/2026 23.04.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8118a81d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 08.16.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a91dacfa',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 08.45.30'
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
    'ff7cc6d7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 08.55.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '43773026',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 09.36.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '058d9d17',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 09.43.38'
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
    'f7d313e8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 09.45.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '59562f74',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 09.57.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ff227bef',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 09.57.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b84427b5',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 10.01.56'
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
    '8d006747',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 10.04.07'
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
    '4e9c9172',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 10.06.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2a635fbd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 10.07.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a760a4cb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 10.12.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '23397dc8',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 10.16.25'
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
    'bc9e0a5c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 10.41.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3162d1b0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 10.48.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1cee3367',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 11.14.38'
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
    'ddfa6686',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.16.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5a3b9ebf',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 11.16.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd292218e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.16.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2183f681',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.26.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3e4e5b22',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 11.33.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8c47e5de',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.33.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '18351869',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '06/06/2026 11.45.48'
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
    '98365693',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.47.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4681d526',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 11.55.05'
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
    'ab22f428',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 11.55.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6b83aab3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 11.55.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9a5612f4',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 12.10.54'
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
    '0fe3e537',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.22.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ba631d02',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.25.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b98c32f9',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 12.36.41'
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
    'e83ad15e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.36.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7c0cc36d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 12.41.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9b629385',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.48.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '283c8c77',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 12.49.50'
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
    'db117274',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 12.55.23'
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
    '3d0cc809',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 12.55.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1356909b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 12.55.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df560a5f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.55.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e9b7cfac',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 12.56.14'
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
    '0057ee14',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 12.59.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c526917',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 12.59.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ce6841bb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 13.02.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dbe487ee',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 13.03.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bfcad209',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '06/06/2026 13.05.02'
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
    'a1dfb04b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 13.21.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bac3d23b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '06/06/2026 13.41.47'
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
    '785bcac2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 13.52.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '876f4465',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '06/06/2026 13.53.19'
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
    '142ae35d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 13.53.27'
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
    '62162955',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 13.56.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f9d3691f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 14.12.31'
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
    '472e28a1',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.12.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ac995335',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 14.19.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2a46c894',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.20.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4e3d871e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.26.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cec3d274',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.26.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c015c8a4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 14.33.30'
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
    'ba9e70ee',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 14.36.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6937ed8a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 14.40.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '573d700f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.48.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8acf6b43',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 14.49.52'
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
    'f028a115',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 14.49.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd508a981',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 14.50.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fb2b4a9f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 14.50.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a71ba1ec',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.05.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ed7b2332',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.08.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '026ebf3e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.10.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e0dee0e4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.32.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1c73d4ee',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.32.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'a5efed44',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 15.33.18'
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
    '3a8a1493',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.38.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a4c4bb3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '06/06/2026 15.40.17'
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
    '78a759ab',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 15.41.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8d081a1e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 15.56.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a4bb361',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 15.58.59'
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
    '723d5fb0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 16.17.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8b7ae8c8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.17.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a4c37fa8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.17.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0f8c9277',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 16.22.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd5fcb8a9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 16.23.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4c152044',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 16.23.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '51f90e31',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.23.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a9c69b08',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.23.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c2dd9d57',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 16.26.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8a51c65e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 16.30.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ae63360e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 16.42.26'
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
    'fddbb82b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 16.43.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '58ca0e0f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.43.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '81f78f5a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 16.54.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8219b494',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 16.56.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '80fe981a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 17.04.27'
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
    'd6a05104',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 17.07.25'
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
    '2dec5e74',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.11.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '67247244',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.13.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '34905375',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 17.13.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c99da42c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.14.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6b93a6f5',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.17.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a85a6dc3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 17.18.24'
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
    '55736873',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.20.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3be8f0ce',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 17.23.27'
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
    '8f7e110d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '06/06/2026 17.23.36'
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
    '521930cf',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 17.24.15'
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
    '5537b3d6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '06/06/2026 17.24.42'
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
    'd9fb3b44',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.25.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd3af50e2',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.27.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3b35519f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '06/06/2026 17.28.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '58309ca9',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.39.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8fbfeb29',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.40.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ac71dd5d',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.42.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cc4f6a38',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.42.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '111abd11',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.42.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e73d19e1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 17.43.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7c7e47ee',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.48.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5db2855f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 17.49.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8dee4e4a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.54.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '32103808',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 17.55.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '490bef9f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.00.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cd092620',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.00.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fd276343',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 18.01.50'
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
    'b1658107',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.02.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '928a1f22',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.02.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a755ca89',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 18.02.37'
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
    'bf311169',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.02.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'adf12a0f',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '06/06/2026 18.02.58'
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
    '9fde2080',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.03.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2ffc5b9b',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '06/06/2026 18.03.06'
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
    '3c0d9335',
    'b8fd7ecf-b89d-49fc-8c2e-0064d152daac',
    '53fa7c5a-80ba-4147-8246-62eedb733943',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '06/06/2026 18.03.16'
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
    '7ea20c00',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.04.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0359adc7',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.06.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aadebe6d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.06.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8cd8faef',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.08.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ed32afd8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 18.11.20'
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
    'eda074f3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    175000.00,
    0.00,
    0.00,
    98509.00,
    '06/06/2026 18.11.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cbf5addb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 18.18.13'
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
    '39d94efb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.18.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1895b31d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.26.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1c8e60d2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 18.37.47'
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
    'ef6b8a9a',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.44.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6618e0ac',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.44.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ebbe573b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.45.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '46b613e5',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.45.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '90b6b717',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.45.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '907b62d4',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.46.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '269147a7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 18.47.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '43755b05',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.50.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '669da65d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.54.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1bac6e9c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 18.55.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '531dadb0',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 18.59.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1cde2efc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '06/06/2026 19.02.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0b967001',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 19.02.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '53f3155b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.02.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '93a1faa1',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 19.08.24'
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
    'e953ea2b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '06/06/2026 19.08.38'
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
    'f6275010',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 19.13.03'
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
    '77f90e88',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '06/06/2026 19.16.41'
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
    '54c9619f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 19.19.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '61cac0b6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 19.20.57'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7e4cad94',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 19.22.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e6f393d8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 19.29.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '121c809b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 19.29.13'
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
    '860b530a',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 19.29.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '73aecacc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.31.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '202e005a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.41.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '19b11578',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 19.41.36'
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
    '8dd5ef58',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 19.42.23'
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
    '09efd828',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 19.42.31'
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
    '569f195a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.44.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '15f6b717',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 19.47.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '38787dfb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.48.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ae3d382',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.49.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2fbf1ec0',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.54.38'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f19f875e',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 19.55.04'
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
    '88890b54',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '06/06/2026 19.55.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8fb2ac7d',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 19.57.02'
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
    '93136903',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.57.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e3d832e5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 19.58.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '93f12b7e',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    137500.00,
    0.00,
    0.00,
    77400.00,
    '06/06/2026 20.01.38'
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
    'aa85cc8c',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '06/06/2026 20.02.10'
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
    '34632ae0',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '06/06/2026 20.03.23'
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
    '5425fa8f',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 20.03.38'
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
    '1d99b074',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 20.03.48'
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
    'c2508fcb',
    '6bd0e9cf-fa71-4e6f-aeb1-ef5c3c1c8241',
    '8171eb19-18ec-4de1-a2de-fca4ec12cbb3',
    'Cash',
    150000.00,
    0.00,
    0.00,
    82349.00,
    '06/06/2026 20.03.59'
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
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '813aeefe',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.05.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0d0acc00',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 20.05.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a0474629',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 20.07.13'
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
    'd7deeb19',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 20.07.40'
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
    'fe02279d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.12.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8225a4b9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.12.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '855f6056',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.17.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '52d638cb',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.20.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0789ad45',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.38.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cba6d22c',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 20.46.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b507cde1',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.46.14'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9f8c152a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 20.46.21'
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
    '5d092f4a',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.51.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c965ddb6',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.51.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fafc1742',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 20.51.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9132669a',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.05.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fe459cc0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.05.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5068cb04',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '06/06/2026 21.09.00'
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
    '9ffd4110',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.09.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'df3979ab',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 21.09.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '97a2b400',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 21.09.51'
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
    '0392e7f5',
    'eb1328dd-8172-4f78-8609-1fc2d914139a',
    'f363f92b-7a98-4b1d-ab5a-fd65535c5e1f',
    'Cash',
    50000.00,
    0.00,
    0.00,
    27450.00,
    '06/06/2026 21.10.00'
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
    '96c1e5fc',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.10.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ad1a504f',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.10.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '61012deb',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.12.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '342ada4e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '06/06/2026 21.14.05'
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
    '74a898f7',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    56000.00,
    0.00,
    0.00,
    25170.00,
    '06/06/2026 21.16.05'
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
    'e151bbc5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 21.16.14'
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
    '9aa9f544',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.16.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b2b1d633',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.21.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '688ddf5e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.23.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '038cd395',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.25.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cef999a4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.26.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8399cdd0',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.26.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c28ebc51',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '06/06/2026 21.28.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fa34b74b',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 21.28.47'
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
    'a2c05d89',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 21.28.59'
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
    '41138519',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '06/06/2026 21.29.23'
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
    '231b4872',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 21.35.31'
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
    '7c840fdc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.35.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6ac70cd9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.37.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f7d0e76e',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 21.39.44'
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
    'b3bf6ad4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.39.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '26c572c9',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.40.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '9eb4306e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.40.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7e2ff4bb',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.43.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7c97661a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.43.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cff01335',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.54.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '468cfbed',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 21.54.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '79acfcd1',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '06/06/2026 21.55.13'
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
    'c772a9f5',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '06/06/2026 21.55.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '46e3c1f2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 21.57.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65cca7a7',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 22.05.00'
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
    '4081be05',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.06.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4380c203',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    175000.00,
    0.00,
    0.00,
    96074.00,
    '06/06/2026 22.07.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  14,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2c92d71a',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 22.07.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2e15177d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '06/06/2026 22.10.46'
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
    'b7c88c46',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.11.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '31d00d87',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 22.13.41'
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
    '0a17b234',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 22.18.29'
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
    '08f164ec',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.18.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5ce47f26',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.19.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cc36103b',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.19.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '2165af68',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 22.19.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c2fd25f4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.19.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2de5905d',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 22.21.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c7cc14ff',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 22.25.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f270a14',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.48.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '3db26d68',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 22.49.19'
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
    '7ec492b4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 22.51.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9e04139b',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 22.58.32'
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
    '0e0fd7cc',
    '2c9e7f51-18d9-40e8-b29f-5ad3f0c6d8c9',
    '3857e175-8617-4e8a-802f-ec3114121f9c',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 23.06.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0555bfcf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 23.08.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c6c4f63',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '06/06/2026 23.16.20'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6a244c26',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '06/06/2026 23.16.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ea798356',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    100000.00,
    0.00,
    0.00,
    56291.00,
    '06/06/2026 23.35.44'
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
    '7d4273e7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'QRIS',
    32000.00,
    0.00,
    0.00,
    14383.00,
    '06/06/2026 23.35.52'
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
    '17324716',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '06/06/2026 23.36.17'
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
    'e8d9385c',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 23.36.33'
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
    'fc3724d6',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 23.36.39'
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
    '04639ffd',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 23.36.50'
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
    '7f63889d',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '06/06/2026 23.37.02'
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
    '8e70cba7',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '06/06/2026 23.37.12'
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
    '41a9fdce',
    '429c554b-0c8f-4098-900d-ec08739b9896',
    '18527076-4599-4357-b21e-9d02b504c845',
    'Cash',
    200000.00,
    0.00,
    0.00,
    109799.00,
    '06/06/2026 23.37.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  16,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9ba715d5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '06/06/2026 23.42.04'
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
    '91ec4e9c',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '06/06/2026 23.42.14'
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
    '1f77dafc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 08.48.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd8ab34dd',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '07/06/2026 09.41.54'
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
    'c415b442',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 09.41.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '27ca91a6',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 09.42.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '32500d91',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 09.52.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9df0e9c5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '07/06/2026 09.52.10'
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
    '62668945',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 09.57.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '18ed7fba',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 10.00.19'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '60b37319',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 10.18.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '84438c8e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 10.18.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '14d03166',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '07/06/2026 10.26.36'
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
    '72f18452',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 10.26.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ab755d9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '07/06/2026 10.47.06'
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
    '4bea5745',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 10.51.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '92b8d022',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 10.58.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '77ebb4e3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 10.58.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b4c92c18',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.09.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ba9070ab',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.18.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8cd1fa9d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.26.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ff64a06e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 11.26.28'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b6c3c497',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    62500.00,
    0.00,
    0.00,
    35182.00,
    '07/06/2026 11.36.13'
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
    '663ede0f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 11.36.20'
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
    '2c7116b9',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 11.36.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '78367566',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 11.37.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f3c0f4d8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.39.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4c0799b4',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 11.44.30'
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
    '3e2ed44d',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.45.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '380a7ba4',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 11.46.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1ba754cd',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 11.46.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '977973cb',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 11.58.26'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd88baeed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    62500.00,
    0.00,
    0.00,
    34312.00,
    '07/06/2026 12.02.03'
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
    '4ac39321',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 12.02.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a20f471a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '07/06/2026 12.03.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fb899704',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 12.07.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e278176d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.17.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2af3fbce',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.22.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4c48d743',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.23.07'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4654fff8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 12.23.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9405e9b8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.23.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd827cbcb',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    48000.00,
    0.00,
    0.00,
    21575.00,
    '07/06/2026 12.27.58'
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
    'b7054b94',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.28.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4c1b98b6',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.28.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'bb2b3c9d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 12.28.50'
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
    '85b7aa0b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.25.09'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a1f56f32',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 12.29.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7a37d3e5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 12.29.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd0e1ff96',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.33.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '6396738c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '07/06/2026 12.33.38'
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
    '05c96515',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 12.45.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '93e999b8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '07/06/2026 12.51.12'
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
    'bdfbe466',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 12.55.27'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '81afaeb4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 12.56.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e57e969a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.02.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '37349dc1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.03.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '83c698ca',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 13.08.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1f8f13fb',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.17.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b7709b9e',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.18.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '2cc4c671',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 13.18.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0abf8ae3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 13.19.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4c0f8cb1',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '07/06/2026 13.22.47'
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
    '5e2b403b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    125000.00,
    0.00,
    0.00,
    70364.00,
    '07/06/2026 13.24.20'
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
    '1cd865e8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 13.27.22'
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
    '223496b9',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 13.27.32'
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
    '90a233c1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 13.28.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '342f9ca8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.28.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '41dfc1cc',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.36.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4fdd92cd',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.39.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3c90d222',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 13.39.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '19b1350e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 13.45.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6b6e0750',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 13.55.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'edcb0563',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 13.58.29'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '50e14e70',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 14.00.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '58f539c2',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.00.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5907b380',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 14.02.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '898c60ef',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.23.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1b602308',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '07/06/2026 14.24.16'
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
    'c848e29a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.24.21'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ca35a36a',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.39.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ff1f7b66',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.43.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1ab89643',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 14.57.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0a4859f0',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 15.05.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd5425d3e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 15.19.41'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '06b315ec',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 15.19.46'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6946e66f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 15.23.00'
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
    '76b856de',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 15.25.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '1f0d5a33',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 15.28.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'adfbf5d4',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 15.48.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '7c976099',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '07/06/2026 15.50.34'
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
    'ceeaa58f',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 16.03.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c39e56b5',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '07/06/2026 16.03.27'
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
    '436776a7',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 16.03.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '591937a6',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 16.06.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8a699c52',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 16.09.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '067b8039',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 16.14.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7aca6421',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 16.23.27'
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
    '4d8a7986',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 16.32.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e486c429',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '07/06/2026 16.35.53'
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
    'e57d1fed',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '07/06/2026 16.49.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e0d05c27',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 16.50.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3a35fd0c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '07/06/2026 17.03.29'
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
    'b4068815',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 17.07.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '50b880f3',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 17.08.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3b51086d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 17.11.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '26b640ec',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 17.12.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aa34a98d',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 17.24.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'dc65707e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '07/06/2026 17.31.27'
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
    'ab1bd094',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 17.32.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2dc93f7b',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 17.32.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '482434b8',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 17.33.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5fa7a540',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '07/06/2026 17.40.21'
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
    '6c936751',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 17.42.31'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7f053695',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 17.42.36'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c0b2d063',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 18.04.12'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7c74f344',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.10.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4cc0e887',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.15.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '23c2a5a8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 18.17.08'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c4c6fa37',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '07/06/2026 18.22.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0f8b4db5',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.22.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e3c709ec',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.23.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e23258cc',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.23.04'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2307c61a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.23.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1a203976',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 18.26.17'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '8a536a71',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 18.32.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'aad198b7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 18.43.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0045dca0',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 18.50.55'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '531975da',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 19.01.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'f4a8c0b2',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 19.04.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4bd1a8c3',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 19.13.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '4f3f7a5c',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 19.14.01'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '22c4dcda',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 19.18.23'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6ebbfee0',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 19.18.30'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '13986a07',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '07/06/2026 19.18.48'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2b9d629e',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 19.21.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4881d105',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 19.21.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5e025aaa',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 19.23.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0ec420c9',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 20.10.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '05c4d6a7',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    90000.00,
    0.00,
    0.00,
    44488.00,
    '07/06/2026 21.08.33'
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
    '4c8b35fe',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    0.00,
    0.00,
    0.00,
    0.00,
    '07/06/2026 21.30.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a78bb25f',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 21.30.45'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '7aa951c9',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '07/06/2026 21.57.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '65515564',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '07/06/2026 22.39.23'
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
    'e354dbd3',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'QRIS',
    112500.00,
    0.00,
    0.00,
    63327.00,
    '07/06/2026 22.39.35'
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
    '468cf1e8',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    40000.00,
    0.00,
    0.00,
    17979.00,
    '07/06/2026 22.39.49'
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
    'b2a348b4',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '07/06/2026 22.40.07'
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
    '739da26e',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '07/06/2026 22.40.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '0390c8fa',
    '264efacd-5a9c-4050-b0cf-7e6fb58416b4',
    '2022aafb-8dea-4695-9098-eebc1f885b67',
    'Cash',
    75000.00,
    0.00,
    0.00,
    41175.00,
    '07/06/2026 22.40.23'
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
    'fdac66d8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '08/06/2026 09.00.46'
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
    '16bb1bf2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '08/06/2026 09.31.34'
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
    '64453cc3',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '08/06/2026 09.46.41'
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
    'b5d50971',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 09.58.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3811a0ed',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 09.58.40'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a1ca8ca9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 09.58.45'
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
    'f5b6c747',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 09.58.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '046f120d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 09.58.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'fe883c1f',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.12.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '42c6225f',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.18.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ea3a1369',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.22.43'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd9a3b482',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 10.22.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2de870be',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 10.30.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1ef561d1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 10.30.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '3ceffc4e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 10.30.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'be9b1fc8',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.31.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'ad76ffb5',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.33.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '322cd3f8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.33.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '2118a04d',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 10.53.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '1ea86e0c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.56.59'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '55db690e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 10.57.05'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd1e89b44',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 10.57.11'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '407b1fe3',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 11.03.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cb6c1142',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.04.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '71f296f9',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 11.05.46'
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
    '991af046',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 11.08.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e087c705',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 11.08.52'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'cc4ef870',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '08/06/2026 11.26.27'
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
    '3b276c1c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '08/06/2026 11.33.15'
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
    'a719262b',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 11.33.54'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0c4ae176',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.33.58'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '64b05d2c',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 11.36.02'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ccfc3217',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 11.41.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd7551e3c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '08/06/2026 11.19.51'
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
    'fb486cb8',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.44.18'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '9c88f8bc',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '08/06/2026 11.46.59'
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
    '2ac44480',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.47.15'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7c9373b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 11.48.13'
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
    '9dce507c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 11.49.02'
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
    'ce3991ad',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '08/06/2026 11.49.09'
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
    '2827c2cf',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.49.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '75945812',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 11.51.25'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cc4e6d58',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    50000.00,
    0.00,
    0.00,
    28146.00,
    '08/06/2026 11.51.31'
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
    'b4c56a68',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.51.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'ba4e5077',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 11.59.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a6bb67c1',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 12.00.54'
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
    'bc8de8d8',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.01.13'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'b008f92e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    13725.00,
    '08/06/2026 12.02.17'
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
    'ed713a7c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    25000.00,
    0.00,
    0.00,
    14073.00,
    '08/06/2026 12.03.02'
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
    '8d6686b4',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.03.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'fc5f4b11',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '08/06/2026 12.04.31'
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
    '79fab42f',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.07.32'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a7181e02',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.07.37'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'bc0ce726',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.07.44'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '54ae45bc',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '08/06/2026 12.09.32'
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
    '9e6b983b',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.10.50'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd598bd9e',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.14.03'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e1b92c27',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.14.33'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6856ca1c',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.18.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e1ac8d0e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.19.49'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'c8cc9da5',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.25.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'd4fcee55',
    '14e50f48-a5c2-464e-a573-904b58ac9ddc',
    '0c48b8f9-9368-4b78-a273-99950d491b5b',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.26.35'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd4b4fc27',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    24000.00,
    0.00,
    0.00,
    10787.00,
    '08/06/2026 12.26.47'
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
    'ec145ca0',
    'e3c1e3dd-36e6-4d2d-916d-66d58c51f926',
    '1441cbfb-7851-44e4-874b-21e48103092e',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.27.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '38fe6dbf',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.38.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '6e1c32f0',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    16000.00,
    0.00,
    0.00,
    7192.00,
    '08/06/2026 12.41.38'
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
    'c53a074b',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.41.47'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5f1e372e',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.41.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '4906be9a',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'Cash',
    10000.00,
    0.00,
    0.00,
    5362.00,
    '08/06/2026 12.45.54'
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
    'abfb499a',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.46.34'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '71469670',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.46.39'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'c85847a1',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.47.10'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e38af48c',
    '46bac30c-133a-4f38-ae4d-db404f1feee0',
    '65813d76-aab1-481d-b22b-411b8b179933',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.47.42'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    '5f2caeef',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.48.16'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '5a0bcf3d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.49.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '639db33d',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    21109.00,
    '08/06/2026 12.50.38'
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
    'f4f741f7',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    37500.00,
    0.00,
    0.00,
    20587.00,
    '08/06/2026 12.50.45'
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
    'd56065f2',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'Cash',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.50.51'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'a1b4a14c',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.50.53'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'cfd75c38',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    8000.00,
    0.00,
    0.00,
    3596.00,
    '08/06/2026 12.50.56'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  8000.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Gula Aren (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    'e40cd045',
    '2b0b5c57-d55e-49c7-982b-2d7dd0abfcab',
    'b0c35e91-7664-4ccd-b1e4-1a19ef878cb9',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.51.00'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Butterscotch (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

WITH inserted_sale AS (
  INSERT INTO public.sales (id, outlet_id, barista_id, payment_method, total_amount, hpp_total, bonus_amount, profit, created_at)
  VALUES (
    '0e24797d',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.47.24'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'd6360d17',
    '616f03f1-9841-4c60-8c3b-1ba964f18a26',
    '441cc0fc-1ff3-4914-8630-221c8ca9c587',
    'Cash',
    12500.00,
    0.00,
    0.00,
    7036.00,
    '08/06/2026 12.52.22'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
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
    'e3537d29',
    '8a5d3c53-2c59-4948-aeaf-497bf5b3d89b',
    '3e74b2b5-ab7c-44a8-9921-b6ca28f308bd',
    'QRIS',
    12500.00,
    0.00,
    0.00,
    6862.00,
    '08/06/2026 12.55.06'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id
)
INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
SELECT
  inserted_sale.id,
  p.id,
  1,
  12500.00,
  0.00
FROM inserted_sale
CROSS JOIN (
  SELECT id FROM public.products WHERE name = 'Baileys Latte (M)' LIMIT 1
) AS p
WHERE inserted_sale.id IS NOT NULL;

