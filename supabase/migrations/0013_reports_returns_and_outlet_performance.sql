-- Report aggregations that replace two browser-side reads capped at PostgREST's 1,000 rows.
--
-- product_returns holds 19,273 rows and sales holds 35,704, so both pages under-reported:
-- /dashboard/reports/returns-analysis counted at most 1,000 returns and
-- /dashboard/outlets/performance summed at most 1,000 sales per outlet.
--
-- product_returns.return_date is timestamptz (it carries an explicit offset), so it is
-- compared against the window directly. sales.created_at is a naive UTC timestamp, which
-- only matters for day bucketing, not for these two whole-window aggregates.

-- 1) Returns grouped by reason (replaces the client-side grouping)
CREATE OR REPLACE FUNCTION public.get_returns_by_reason(
  p_start timestamptz,
  p_end   timestamptz
)
RETURNS TABLE (reason text, return_count bigint)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public
AS $$
  SELECT COALESCE(NULLIF(btrim(pr.return_reason), ''), 'Unknown') AS reason,
         count(*)::bigint AS return_count
  FROM public.product_returns pr
  WHERE pr.return_date >= p_start
    AND pr.return_date <= p_end
  GROUP BY 1
  ORDER BY 2 DESC, 1;
$$;

REVOKE ALL ON FUNCTION public.get_returns_by_reason(timestamptz, timestamptz) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_returns_by_reason(timestamptz, timestamptz) TO service_role;

-- 2) All-time revenue/profit/orders per outlet plus its barista count
CREATE OR REPLACE FUNCTION public.get_outlet_performance()
RETURNS TABLE (
  outlet_id     uuid,
  outlet_name   text,
  revenue       numeric,
  profit        numeric,
  orders        integer,
  barista_count integer
)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public
AS $$
  SELECT o.id AS outlet_id,
         o.name AS outlet_name,
         COALESCE(s.revenue, 0)::numeric AS revenue,
         COALESCE(s.profit, 0)::numeric AS profit,
         COALESCE(s.orders, 0)::integer AS orders,
         COALESCE(b.barista_count, 0)::integer AS barista_count
  FROM public.outlets o
  LEFT JOIN (
    SELECT s.outlet_id,
           sum(s.total_amount)::numeric AS revenue,
           sum(s.profit)::numeric       AS profit,
           count(*)::integer            AS orders
    FROM public.sales s
    GROUP BY s.outlet_id
  ) s ON s.outlet_id = o.id
  LEFT JOIN (
    SELECT u.outlet_id, count(*)::integer AS barista_count
    FROM public.users u
    WHERE u.role = 'barista'
    GROUP BY u.outlet_id
  ) b ON b.outlet_id = o.id
  ORDER BY 3 DESC, 2;
$$;

REVOKE ALL ON FUNCTION public.get_outlet_performance() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.get_outlet_performance() TO service_role;
