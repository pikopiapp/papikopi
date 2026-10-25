-- ============================================================
-- MIGRATION 0008: Tambah kolom info visual tenant (outlet)
-- Jalankan di Supabase Dashboard → SQL Editor → Paste → RUN
-- ============================================================

-- 1. Tambah kolom di tabel outlets
ALTER TABLE public.outlets
  ADD COLUMN IF NOT EXISTS logo_url TEXT,
  ADD COLUMN IF NOT EXISTS cover_url TEXT,
  ADD COLUMN IF NOT EXISTS theme_primary_color TEXT,
  ADD COLUMN IF NOT EXISTS theme_accent_color TEXT,
  ADD COLUMN IF NOT EXISTS description TEXT;

-- Catatan: Upload file akan menggunakan bucket yang sama: cafe-assets
-- Path file: outlet/{outlet_id}/logo.ext dan outlet/{outlet_id}/cover.ext