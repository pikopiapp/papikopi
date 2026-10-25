CREATE TABLE IF NOT EXISTS public.investor_profit_handovers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  investor_id uuid NOT NULL REFERENCES public.users(id) ON DELETE CASCADE,
  month_key text NOT NULL
    CHECK (month_key ~ '^[0-9]{4}-(0[1-9]|1[0-2])$'),
  profit_amount numeric(14, 2) NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'pending'
    CHECK (status IN ('pending', 'approved', 'rejected')),
  approved_by uuid REFERENCES public.users(id) ON DELETE SET NULL,
  approved_at timestamptz,
  submitted_at timestamptz NOT NULL DEFAULT now(),
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT investor_profit_handovers_investor_month_key
    UNIQUE (investor_id, month_key)
);

CREATE INDEX IF NOT EXISTS idx_investor_profit_handovers_month_status
  ON public.investor_profit_handovers (month_key, status);

ALTER TABLE public.investor_profit_handovers ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS investor_profit_handovers_select_related
  ON public.investor_profit_handovers;
CREATE POLICY investor_profit_handovers_select_related
  ON public.investor_profit_handovers
  FOR SELECT TO authenticated
  USING (
    EXISTS (
      SELECT 1
      FROM public.users AS app_user
      WHERE app_user.id = auth.uid()
        AND app_user.role IN ('admin', 'manager')
    )
    OR investor_id = auth.uid()
  );

DROP POLICY IF EXISTS investor_profit_handovers_insert_managers
  ON public.investor_profit_handovers;
CREATE POLICY investor_profit_handovers_insert_managers
  ON public.investor_profit_handovers
  FOR INSERT TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1
      FROM public.users AS app_user
      WHERE app_user.id = auth.uid()
        AND app_user.role IN ('admin', 'manager')
    )
  );

DROP POLICY IF EXISTS investor_profit_handovers_update_managers
  ON public.investor_profit_handovers;
CREATE POLICY investor_profit_handovers_update_managers
  ON public.investor_profit_handovers
  FOR UPDATE TO authenticated
  USING (
    EXISTS (
      SELECT 1
      FROM public.users AS app_user
      WHERE app_user.id = auth.uid()
        AND app_user.role IN ('admin', 'manager')
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1
      FROM public.users AS app_user
      WHERE app_user.id = auth.uid()
        AND app_user.role IN ('admin', 'manager')
    )
  );

GRANT SELECT, INSERT, UPDATE
  ON public.investor_profit_handovers TO authenticated;
