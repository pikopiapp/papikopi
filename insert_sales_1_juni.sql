-- Seed sample POS transactions for 2026-06-01
-- This follows the same structure used by the mobile POS app:
-- 1) insert into public.sales
-- 2) insert related rows into public.sale_items

DO $$
DECLARE
  outlet_id UUID;
  barista_id UUID;
  product_a UUID;
  product_b UUID;
  sale_id UUID;
BEGIN
  SELECT id INTO outlet_id
  FROM public.outlets
  ORDER BY created_at
  LIMIT 1;

  SELECT id INTO barista_id
  FROM public.users
  WHERE role = 'barista'
  ORDER BY created_at
  LIMIT 1;

  SELECT id INTO product_a
  FROM public.products
  ORDER BY created_at
  LIMIT 1;

  SELECT id INTO product_b
  FROM public.products
  ORDER BY created_at
  LIMIT 1 OFFSET 1;

  IF outlet_id IS NULL OR barista_id IS NULL OR product_a IS NULL OR product_b IS NULL THEN
    RAISE EXCEPTION 'Need at least one outlet, one barista, and two products to seed transactions';
  END IF;

  -- Transaction 1: cash
  INSERT INTO public.sales (
    outlet_id,
    barista_id,
    payment_method,
    total_amount,
    hpp_total,
    bonus_amount,
    profit,
    created_at
  ) VALUES (
    outlet_id,
    barista_id,
    'CASH',
    55000,
    22000,
    2750,
    30300,
    '2026-06-01T10:30:00+00:00'
  ) RETURNING id INTO sale_id;

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  VALUES (sale_id, product_a, 2, 12500, 5000);

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  VALUES (sale_id, product_b, 1, 30000, 12000);

  -- Transaction 2: qris
  INSERT INTO public.sales (
    outlet_id,
    barista_id,
    payment_method,
    total_amount,
    hpp_total,
    bonus_amount,
    profit,
    created_at
  ) VALUES (
    outlet_id,
    barista_id,
    'QRIS',
    42000,
    16800,
    2100,
    23100,
    '2026-06-01T13:00:00+00:00'
  ) RETURNING id INTO sale_id;

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  VALUES (sale_id, product_a, 1, 12500, 5000);

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  VALUES (sale_id, product_b, 1, 29500, 11800);

  -- Transaction 3: gratis
  INSERT INTO public.sales (
    outlet_id,
    barista_id,
    payment_method,
    total_amount,
    hpp_total,
    bonus_amount,
    profit,
    created_at
  ) VALUES (
    outlet_id,
    barista_id,
    'GRATIS',
    0,
    0,
    0,
    0,
    '2026-06-01T16:15:00+00:00'
  ) RETURNING id INTO sale_id;

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  VALUES (sale_id, product_a, 1, 0, 0);
END $$;
