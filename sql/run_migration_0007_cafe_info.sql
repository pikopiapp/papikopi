-- ============================================================
-- MIGRATION 0007: Tambah kolom info visual cafe
-- Jalankan di Supabase Dashboard → SQL Editor → Paste → RUN
-- ============================================================

-- 1. Tambah kolom di tabel cafes
ALTER TABLE public.cafes
  ADD COLUMN IF NOT EXISTS logo_url TEXT,
  ADD COLUMN IF NOT EXISTS cover_url TEXT,
  ADD COLUMN IF NOT EXISTS theme_primary_color TEXT,
  ADD COLUMN IF NOT EXISTS theme_accent_color TEXT,
  ADD COLUMN IF NOT EXISTS description TEXT;

-- 2. Storage bucket untuk logo/cover (jika belum ada)
--    Di Supabase Dashboard → Storage → Create bucket:
--      - Name: cafe-assets
--      - Public: true
--    Lalu atur RLS policy untuk bucket:
--      - Allow public uploads untuk admin/manager
--      - Allow public read

-- Catatan: Upload file akan dilakukan melalui API terpisah
-- atau langsung dari client menggunakan Supabase Storage SDK