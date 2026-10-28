-- Sales aggregation layer: daily summary RPC, showcase inventory view, KPI totals RPC.
-- Additive only: does not change existing routes. Routes stay on the JS implementation
-- until explicitly wired and compared against these functions.

-- 1) Daily summary per outlet per business day (replaces JS aggregateDailyOutletSummary)
CREATE OR REPLACE FUNCTION public.get_sales_daily_summary(
  p_start  timestamptz,
  p_end    timestamptz,
  p_outlet uuid DEFAULT NULL
)
RETURNS TABLE (
  business_date date,
  outlet_id     uuid,
  revenue       numeric,
  profit        numeric,
  orders        integer,
  hpp           numeric,
  bonus         numeric,
  meal          numeric
)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public
AS $$
WITH base AS (
  SELECT
    s.outlet_id,
    (
      ((s.created_at AT TIME ZONE 'UTC') AT TIME ZONE 'Asia/Jakarta')
      - make_interval(hours => COALESCE(o.business_day_start_hour, 4))
    )::date AS bdate,
    s.total_amount::numeric              AS total_amount,
    COALESCE(s.hpp_total, 0)::numeric    AS hpp_total,
    COALESCE(s.bonus_amount, 0)::numeric AS bonus_amount
  FROM public.sales s
  LEFT JOIN public.outlets o ON o.id = s.outlet_id
  WHERE s.created_at >= (p_start AT TIME ZONE 'UTC')
    AND s.created_at <= (p_end   AT TIME ZONE 'UTC')
    AND (p_outlet IS NULL OR s.outlet_id = p_outlet)
),
agg AS (
  SELECT outlet_id, bdate,
         sum(total_amount) AS rev_raw,
         sum(hpp_total)    AS hpp_raw,
         sum(bonus_amount) AS bonus_raw,
         count(*)::integer AS orders
  FROM base
  GROUP BY outlet_id, bdate
),
calc AS (
  SELECT a.*,
         round(a.rev_raw) AS revenue,
         round(a.hpp_raw) AS hpp,
         CASE
           WHEN round(a.bonus_raw) > 0 THEN round(a.bonus_raw)
           ELSE round(
               greatest(0, least(a.rev_raw, 200000))          * 0.10
             + greatest(0, least(a.rev_raw, 350000) - 200000) * 0.12
             + greatest(0, least(a.rev_raw, 500000) - 350000) * 0.15
             + greatest(0, a.rev_raw - 500000)                * 0.20
           )
         END AS bonus,
         CASE
           WHEN a.rev_raw = 0       THEN 0
           WHEN a.rev_raw >= 300000 THEN 34000
           ELSE 25000
         END AS meal
  FROM agg a
)
SELECT c.bdate AS business_date,
       c.outlet_id,
       c.revenue,
       round(c.revenue - c.hpp - c.bonus - c.meal) AS profit,
       c.orders,
       c.hpp,
       c.bonus,
       c.meal
FROM calc c
ORDER BY 1, 2;
$$;

REVOKE ALL ON FUNCTION public.get_sales_daily_summary(timestamptz, timestamptz, uuid) FROM public;
GRANT EXECUTE ON FUNCTION public.get_sales_daily_summary(timestamptz, timestamptz, uuid)
  TO anon, authenticated, service_role;

-- 2) Showcase inventory summary (replaces downloading every allocation row)
CREATE OR REPLACE VIEW public.showcase_inventory_summary
WITH (security_invoker = true) AS
SELECT
  sp.id,
  sp.product_id,
  sp.product_name,
  sp.total_quantity,
  COALESCE(a.allocated_quantity, 0)                     AS allocated_quantity,
  sp.total_quantity - COALESCE(a.allocated_quantity, 0) AS remaining,
  sp.created_at
FROM public.showcase_products sp
LEFT JOIN (
  SELECT showcase_product_id, sum(quantity) AS allocated_quantity
  FROM public.showcase_allocations
  GROUP BY showcase_product_id
) a ON a.showcase_product_id = sp.id;

GRANT SELECT ON public.showcase_inventory_summary TO anon, authenticated, service_role;

-- 3) KPI totals (revenue / orders / profit / cups) in one round trip
CREATE OR REPLACE FUNCTION public.get_sales_totals(
  p_start  timestamptz,
  p_end    timestamptz,
  p_outlet uuid DEFAULT NULL
)
RETURNS TABLE (revenue numeric, orders integer, profit numeric, cups bigint)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public
AS $$
WITH f AS (
  SELECT s.id,
         s.total_amount::numeric        AS total_amount,
         COALESCE(s.profit, 0)::numeric AS profit
  FROM public.sales s
  WHERE s.created_at >= (p_start AT TIME ZONE 'UTC')
    AND s.created_at <= (p_end   AT TIME ZONE 'UTC')
    AND s.total_amount >= 0
    AND (p_outlet IS NULL OR s.outlet_id = p_outlet)
),
t AS (
  SELECT COALESCE(sum(f.total_amount), 0) AS revenue,
         count(*)::integer                AS orders,
         COALESCE(sum(f.profit), 0)       AS profit
  FROM f
),
c AS (
  SELECT COALESCE(sum(si.quantity), 0)::bigint AS cups
  FROM public.sale_items si
  JOIN f ON f.id = si.sale_id
)
SELECT t.revenue, t.orders, t.profit, c.cups
FROM t CROSS JOIN c;
$$;

REVOKE ALL ON FUNCTION public.get_sales_totals(timestamptz, timestamptz, uuid) FROM public;
GRANT EXECUTE ON FUNCTION public.get_sales_totals(timestamptz, timestamptz, uuid)
  TO anon, authenticated, service_role;
