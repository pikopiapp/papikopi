-- Atomic, idempotent checkout for the mobile POS.
--
-- Why: createSale used to POST /sales and then /sale_items as two separate requests.
-- A timeout between them left a sale row with no items (revenue up, stock untouched),
-- and a retry after an ambiguous timeout created a second sale for the same cart.
-- The client now generates the sale id once per checkout attempt and calls this
-- function; repeating the call with the same id is a no-op that returns
-- status = 'exists' instead of writing a duplicate.
--
-- SECURITY INVOKER keeps the caller's privileges, so RLS behaves exactly as it did for
-- the direct inserts this replaces.

CREATE OR REPLACE FUNCTION public.create_sale(
  p_sale_id        uuid,
  p_outlet_id      uuid,
  p_barista_id     uuid,
  p_payment_method text,
  p_total_amount   numeric,
  p_hpp_total      numeric,
  p_bonus_amount   numeric,
  p_profit         numeric,
  p_created_at     timestamptz,
  p_items          jsonb
)
RETURNS jsonb
LANGUAGE plpgsql
SECURITY INVOKER
SET search_path = public
AS $$
DECLARE
  v_inserted   uuid;
  v_item_count integer;
BEGIN
  IF p_items IS NULL
     OR jsonb_typeof(p_items) <> 'array'
     OR jsonb_array_length(p_items) = 0 THEN
    RAISE EXCEPTION 'Transaksi harus memiliki minimal satu item';
  END IF;

  IF EXISTS (
    SELECT 1
    FROM jsonb_array_elements(p_items) AS e
    WHERE COALESCE((e->>'quantity')::int, 0) <= 0
  ) THEN
    RAISE EXCEPTION 'Jumlah item harus lebih dari 0';
  END IF;

  INSERT INTO public.sales (
    id, outlet_id, barista_id, payment_method,
    total_amount, hpp_total, bonus_amount, profit, created_at
  )
  VALUES (
    p_sale_id,
    p_outlet_id,
    p_barista_id,
    upper(p_payment_method),
    p_total_amount,
    p_hpp_total,
    p_bonus_amount,
    p_profit,
    p_created_at AT TIME ZONE 'UTC'
  )
  ON CONFLICT (id) DO NOTHING
  RETURNING id INTO v_inserted;

  IF v_inserted IS NULL THEN
    RETURN jsonb_build_object('status', 'exists', 'sale_id', p_sale_id);
  END IF;

  INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
  SELECT p_sale_id,
         (e->>'product_id')::uuid,
         (e->>'quantity')::int,
         COALESCE((e->>'price')::numeric, 0),
         COALESCE((e->>'hpp')::numeric, 0)
  FROM jsonb_array_elements(p_items) AS e;

  GET DIAGNOSTICS v_item_count = ROW_COUNT;

  RETURN jsonb_build_object(
    'status', 'created',
    'sale_id', p_sale_id,
    'items', v_item_count
  );
END;
$$;

REVOKE ALL ON FUNCTION public.create_sale(
  uuid, uuid, uuid, text, numeric, numeric, numeric, numeric, timestamptz, jsonb
) FROM PUBLIC;

-- The POS calls this with the anon key when a barista signs in through the legacy
-- verify_user_password path, so anon must keep the same access the direct inserts had.
GRANT EXECUTE ON FUNCTION public.create_sale(
  uuid, uuid, uuid, text, numeric, numeric, numeric, numeric, timestamptz, jsonb
) TO anon, authenticated, service_role;
