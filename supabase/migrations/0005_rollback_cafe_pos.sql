-- ============================================================
-- ROLLBACK MIGRATION 0005: Sistem POS Cafe / Foodcourt
-- Jalankan hanya jika terjadi masalah.
-- ============================================================

-- Hapus RLS policies (jika ada)
DROP POLICY IF EXISTS "order_items_via_order" ON public.order_items;
DROP POLICY IF EXISTS "orders_admin_all" ON public.orders;
DROP POLICY IF EXISTS "orders_cashier_cafe" ON public.orders;
DROP POLICY IF EXISTS "orders_barista_own_outlet" ON public.orders;
DROP POLICY IF EXISTS "cafes_admin_all" ON public.cafes;

-- Hapus fungsi RPC (jika ada)
DROP FUNCTION IF EXISTS public.process_cafe_payment(UUID[], TEXT, UUID);
DROP FUNCTION IF EXISTS public.generate_queue_number(UUID);

-- Hapus index (jika ada)
DROP INDEX IF EXISTS idx_outlets_cafe_id;
DROP INDEX IF EXISTS idx_sales_order_id;
DROP INDEX IF EXISTS idx_order_items_order_id;
DROP INDEX IF EXISTS idx_orders_created_at;
DROP INDEX IF EXISTS idx_orders_status;
DROP INDEX IF EXISTS idx_orders_outlet_id;
DROP INDEX IF EXISTS idx_orders_cafe_id;

-- Hapus kolom nullable (jika ada)
ALTER TABLE public.sales DROP COLUMN IF EXISTS order_id;
ALTER TABLE public.outlets DROP COLUMN IF EXISTS bonus_percentage;
ALTER TABLE public.outlets DROP COLUMN IF EXISTS cafe_id;

-- Hapus tabel baru (jika ada)
DROP TABLE IF EXISTS public.order_items;
DROP TABLE IF EXISTS public.orders;
DROP TABLE IF EXISTS public.cafes;

-- ============================================================
-- ROLLBACK SELESAI
-- ============================================================