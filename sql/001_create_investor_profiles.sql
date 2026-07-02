-- Create investor_profiles table to store bank/account details for investors
-- Run this in Supabase SQL editor or via psql with service role privileges.

CREATE TABLE IF NOT EXISTS public.investor_profiles (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  investor_id uuid NOT NULL,
  account_holder text,
  bank_name text,
  account_number text,
  routing_number text,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Optional: ensure one profile per investor
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_indexes WHERE schemaname = 'public' AND indexname = 'investor_profiles_investor_id_idx'
  ) THEN
    CREATE UNIQUE INDEX investor_profiles_investor_id_idx ON public.investor_profiles(investor_id);
  END IF;
END$$;

-- Grant appropriate privileges (service role retains full access)
GRANT SELECT, INSERT, UPDATE, DELETE ON public.investor_profiles TO public;
