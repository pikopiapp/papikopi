-- Migration: add is_national column to custom_holidays
ALTER TABLE IF EXISTS public.custom_holidays
  ADD COLUMN IF NOT EXISTS is_national boolean NOT NULL DEFAULT false;

-- Ensure date is unique (already present) and index exists
CREATE INDEX IF NOT EXISTS idx_custom_holidays_date ON public.custom_holidays (date);
