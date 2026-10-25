-- ============================================================
-- MIGRATION 0005: Sistem POS Cafe / Foodcourt
-- Bisa dijalankan SEKALI SAJA (tidak perlu per bagian)
-- ============================================================

-- ============================================================
-- 1. BUAT TABEL (jika belum ada)
-- ============================================================

CREATE TABLE IF NOT EXISTS public.cafes (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  address TEXT,
  created_at TIMESTAMPTZ DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.orders (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  order_number TEXT NOT NULL,
  queue_number TEXT NOT NULL,
  cafe_id UUID NOT NULL,
  outlet_id UUID NOT NULL,
  cashier_id UUID,
  customer_name TEXT,
  table_number TEXT,
  total_amount NUMERIC(12,2) NOT NULL DEFAULT 0,
  payment_method TEXT,
  status TEXT NOT NULL DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT now(),
  paid_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS public.order_items (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  order_id UUID NOT NULL,
  product_id UUID NOT NULL,
  quantity INTEGER NOT NULL DEFAULT 1,
  price NUMERIC(12,2) NOT NULL,
  hpp NUMERIC(12,2) NOT NULL DEFAULT 0
);

-- ============================================================
-- 2. TAMBAH KOLOM KE TABEL EXISTING (jika belum ada)
-- ============================================================

ALTER TABLE public.outlets ADD COLUMN IF NOT EXISTS cafe_id UUID;
ALTER TABLE public.outlets ADD COLUMN IF NOT EXISTS bonus_percentage NUMERIC(5,2);
ALTER TABLE public.sales ADD COLUMN IF NOT EXISTS order_id UUID;

-- ============================================================
-- 3. FOREIGN KEYS (dengan IF NOT EXISTS logic)
-- ============================================================

-- Hapus FK lama jika ada
ALTER TABLE public.orders DROP CONSTRAINT IF EXISTS orders_cafe_id_fkey;
ALTER TABLE public.orders DROP CONSTRAINT IF EXISTS orders_outlet_id_fkey;
ALTER TABLE public.orders DROP CONSTRAINT IF EXISTS orders_cashier_id_fkey;
ALTER TABLE public.order_items DROP CONSTRAINT IF EXISTS order_items_order_id_fkey;
ALTER TABLE public.order_items DROP CONSTRAINT IF EXISTS order_items_product_id_fkey;
ALTER TABLE public.outlets DROP CONSTRAINT IF EXISTS outlets_cafe_id_fkey;
ALTER TABLE public.sales DROP CONSTRAINT IF EXISTS sales_order_id_fkey;

-- Buat FK baru (hanya jika kolomnya ada)
DO $$
BEGIN
  -- FK untuk orders.cafe_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'orders' AND column_name = 'cafe_id'
  ) THEN
    ALTER TABLE public.orders
      ADD CONSTRAINT orders_cafe_id_fkey
      FOREIGN KEY (cafe_id) REFERENCES public.cafes(id);
  END IF;

  -- FK untuk orders.outlet_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'orders' AND column_name = 'outlet_id'
  ) THEN
    ALTER TABLE public.orders
      ADD CONSTRAINT orders_outlet_id_fkey
      FOREIGN KEY (outlet_id) REFERENCES public.outlets(id);
  END IF;

  -- FK untuk orders.cashier_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'orders' AND column_name = 'cashier_id'
  ) THEN
    ALTER TABLE public.orders
      ADD CONSTRAINT orders_cashier_id_fkey
      FOREIGN KEY (cashier_id) REFERENCES public.users(id);
  END IF;

  -- FK untuk order_items.order_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'order_items' AND column_name = 'order_id'
  ) THEN
    ALTER TABLE public.order_items
      ADD CONSTRAINT order_items_order_id_fkey
      FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
  END IF;

  -- FK untuk order_items.product_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'order_items' AND column_name = 'product_id'
  ) THEN
    ALTER TABLE public.order_items
      ADD CONSTRAINT order_items_product_id_fkey
      FOREIGN KEY (product_id) REFERENCES public.products(id);
  END IF;

  -- FK untuk outlets.cafe_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'outlets' AND column_name = 'cafe_id'
  ) THEN
    ALTER TABLE public.outlets
      ADD CONSTRAINT outlets_cafe_id_fkey
      FOREIGN KEY (cafe_id) REFERENCES public.cafes(id);
  END IF;

  -- FK untuk sales.order_id
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'sales' AND column_name = 'order_id'
  ) THEN
    ALTER TABLE public.sales
      ADD CONSTRAINT sales_order_id_fkey
      FOREIGN KEY (order_id) REFERENCES public.orders(id);
  END IF;
END $$;

-- ============================================================
-- 4. CONSTRAINT DAN INDEX
-- ============================================================

ALTER TABLE public.orders DROP CONSTRAINT IF EXISTS orders_status_check;
ALTER TABLE public.orders ADD CONSTRAINT orders_status_check
  CHECK (status IN ('pending', 'paid', 'cancelled'));

CREATE INDEX IF NOT EXISTS idx_orders_cafe_id ON public.orders(cafe_id);
CREATE INDEX IF NOT EXISTS idx_orders_outlet_id ON public.orders(outlet_id);
CREATE INDEX IF NOT EXISTS idx_orders_status ON public.orders(status);
CREATE INDEX IF NOT EXISTS idx_orders_created_at ON public.orders(created_at);
CREATE INDEX IF NOT EXISTS idx_order_items_order_id ON public.order_items(order_id);
CREATE INDEX IF NOT EXISTS idx_sales_order_id ON public.sales(order_id);
CREATE INDEX IF NOT EXISTS idx_outlets_cafe_id ON public.outlets(cafe_id);

-- ============================================================
-- 5. FUNGSI RPC
-- ============================================================

CREATE OR REPLACE FUNCTION public.generate_queue_number(p_cafe_id UUID)
RETURNS TEXT
LANGUAGE plpgsql
AS $$
DECLARE
  v_count INTEGER;
  v_letter TEXT;
  v_number INTEGER;
BEGIN
  SELECT COUNT(*) INTO v_count
  FROM public.orders
  WHERE cafe_id = p_cafe_id
    AND created_at >= date_trunc('day', now());

  v_letter := chr(65 + (v_count / 100)::INTEGER);
  v_number := (v_count % 100) + 1;

  RETURN v_letter || v_number::TEXT;
END;
$$;

CREATE OR REPLACE FUNCTION public.process_cafe_payment(
  p_order_ids UUID[],
  p_payment_method TEXT,
  p_cashier_id UUID
)
RETURNS TABLE(
  processed_order_id UUID,
  sale_id UUID,
  outlet_id UUID,
  total_amount NUMERIC,
  profit NUMERIC
)
LANGUAGE plpgsql
AS $$
DECLARE
  v_order RECORD;
  v_item RECORD;
  v_sale_id UUID;
  v_hpp_total NUMERIC;
  v_profit NUMERIC;
  v_batch RECORD;
  v_remaining INTEGER;
  v_deduct INTEGER;
  v_new_qty INTEGER;
  v_batch_status TEXT;
BEGIN
  FOR v_order IN
    SELECT o.id, o.outlet_id, o.total_amount, o.cafe_id
    FROM public.orders o
    WHERE o.id = ANY(p_order_ids)
      AND o.status = 'pending'
  LOOP
    SELECT COALESCE(SUM(oi.hpp * oi.quantity), 0) INTO v_hpp_total
    FROM public.order_items oi
    WHERE oi.order_id = v_order.id;

    v_profit := v_order.total_amount - v_hpp_total;

    INSERT INTO public.sales (
      outlet_id, barista_id, total_amount, payment_method,
      hpp_total, bonus_amount, profit, order_id, created_at
    ) VALUES (
      v_order.outlet_id, p_cashier_id, v_order.total_amount,
      p_payment_method, v_hpp_total, 0, v_profit, v_order.id, now()
    )
    RETURNING id INTO v_sale_id;

    INSERT INTO public.sale_items (sale_id, product_id, quantity, price, hpp)
    SELECT v_sale_id, oi.product_id, oi.quantity, oi.price, oi.hpp
    FROM public.order_items oi
    WHERE oi.order_id = v_order.id;

    FOR v_item IN
      SELECT oi.product_id, oi.quantity
      FROM public.order_items oi
      WHERE oi.order_id = v_order.id
    LOOP
      v_remaining := v_item.quantity;

      FOR v_batch IN
        SELECT pb.id, pb.quantity, pb.status
        FROM public.product_batches pb
        WHERE pb.outlet_id = v_order.outlet_id
          AND pb.product_id = v_item.product_id
          AND pb.status = 'assigned'
          AND pb.quantity > 0
        ORDER BY pb.created_at ASC
      LOOP
        IF v_remaining <= 0 THEN EXIT; END IF;

        v_deduct := LEAST(v_batch.quantity, v_remaining);
        v_new_qty := v_batch.quantity - v_deduct;
        v_batch_status := CASE WHEN v_new_qty = 0 THEN 'sold' ELSE 'assigned' END;

        UPDATE public.product_batches
        SET quantity = v_new_qty, status = v_batch_status
        WHERE id = v_batch.id;

        v_remaining := v_remaining - v_deduct;
      END LOOP;
    END LOOP;

    UPDATE public.orders
    SET status = 'paid', payment_method = p_payment_method,
        cashier_id = p_cashier_id, paid_at = now()
    WHERE id = v_order.id;

    processed_order_id := v_order.id;
    sale_id := v_sale_id;
    outlet_id := v_order.outlet_id;
    total_amount := v_order.total_amount;
    profit := v_profit;
    RETURN NEXT;
  END LOOP;
END;
$$;

-- ============================================================
-- 6. RLS POLICIES
-- ============================================================

ALTER TABLE public.cafes ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "cafes_admin_all" ON public.cafes;
CREATE POLICY "cafes_admin_all" ON public.cafes
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.users u
      WHERE u.id = auth.uid()
        AND u.role IN ('admin', 'manager', 'cashier')
    )
  );

ALTER TABLE public.orders ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "orders_barista_own_outlet" ON public.orders;
CREATE POLICY "orders_barista_own_outlet" ON public.orders
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.users u
      WHERE u.id = auth.uid()
        AND u.role = 'barista'
        AND u.outlet_id = orders.outlet_id
    )
  );

DROP POLICY IF EXISTS "orders_cashier_cafe" ON public.orders;
CREATE POLICY "orders_cashier_cafe" ON public.orders
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.users u
      WHERE u.id = auth.uid()
        AND u.role = 'cashier'
        AND EXISTS (
          SELECT 1 FROM public.outlets o
          WHERE o.id = u.outlet_id
            AND o.cafe_id = orders.cafe_id
        )
    )
  );

DROP POLICY IF EXISTS "orders_admin_all" ON public.orders;
CREATE POLICY "orders_admin_all" ON public.orders
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.users u
      WHERE u.id = auth.uid()
        AND u.role IN ('admin', 'manager')
    )
  );

ALTER TABLE public.order_items ENABLE ROW LEVEL SECURITY;
DROP POLICY IF EXISTS "order_items_via_order" ON public.order_items;
CREATE POLICY "order_items_via_order" ON public.order_items
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.orders o
      WHERE o.id = order_items.order_id
        AND (
          EXISTS (
            SELECT 1 FROM public.users u
            WHERE u.id = auth.uid()
              AND u.role = 'barista'
              AND u.outlet_id = o.outlet_id
          )
          OR EXISTS (
            SELECT 1 FROM public.users u
            WHERE u.id = auth.uid()
              AND u.role IN ('admin', 'manager', 'cashier')
          )
        )
    )
  );