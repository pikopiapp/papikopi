-- ============================================================
-- MIGRATION 0006: Relasi User (Kasir & Pengelola) ke Cafe
-- Menambahkan kolom cafe_id di tabel users
-- Bisa dijalankan SEKALI SAJA (aman dengan IF NOT EXISTS)
-- ============================================================

-- 1. Tambahkan kolom cafe_id ke tabel users (jika belum ada)
ALTER TABLE public.users ADD COLUMN IF NOT EXISTS cafe_id UUID;

-- 2. Index untuk performa query
CREATE INDEX IF NOT EXISTS idx_users_cafe_id ON public.users(cafe_id);

-- 3. Foreign key (jika belum ada)
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'users' AND column_name = 'cafe_id'
  ) AND NOT EXISTS (
    SELECT 1 FROM pg_constraint
    WHERE conname = 'users_cafe_id_fkey'
  ) THEN
    ALTER TABLE public.users
      ADD CONSTRAINT users_cafe_id_fkey
      FOREIGN KEY (cafe_id) REFERENCES public.cafes(id);
  END IF;
END $$;

-- 4. Update RLS: izinkan admin/manager melihat & mengelola users cafe
DROP POLICY IF EXISTS "users_admin_manage_cafe" ON public.users;
CREATE POLICY "users_admin_manage_cafe" ON public.users
  FOR ALL USING (
    EXISTS (
      SELECT 1 FROM public.users u
      WHERE u.id = auth.uid()
        AND u.role IN ('admin', 'manager')
    )
  );

-- ============================================================
-- CATATAN PENGGUNAAN:
--
-- users.cafe_id digunakan untuk:
--   - Kasir cafe (role = 'cashier' + cafe_id): memproses pembayaran
--     terpusat untuk semua tenant di cafe tersebut
--   - Pengelola cafe (role = 'manager' + cafe_id): mengelola cafe,
--     melihat laporan semua tenant
--
-- Barista tenant tetap terhubung via outlet_id -> outlets.cafe_id
-- ============================================================