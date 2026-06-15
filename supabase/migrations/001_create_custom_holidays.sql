-- Migration: Create custom_holidays table
-- Run this in your Supabase SQL editor or via your migration tooling.

CREATE TABLE IF NOT EXISTS public.custom_holidays (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  date date NOT NULL UNIQUE,
  description text,
  created_at timestamptz NOT NULL DEFAULT now(),
  created_by uuid -- optional: reference to users.id if you track creator
);

-- Optional: create index on date for faster lookups
CREATE INDEX IF NOT EXISTS idx_custom_holidays_date ON public.custom_holidays (date);
