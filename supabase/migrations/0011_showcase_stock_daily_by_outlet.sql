-- Daily cumulative showcase stock per outlet, for the outlet-stock report.
--
-- Each row is the running total as of the end of stock_date, not the movement of that day:
--   allocated_cum = units dispatched to the outlet up to and including that day
--   sold_cum      = units sold at the outlet up to and including that day
--   remaining_cum = allocated_cum - sold_cum
--
-- Both timestamp columns are `timestamp without time zone` holding UTC (seed routes write
-- new Date().toISOString()), so they are anchored to UTC before converting to Jakarta days.

CREATE OR REPLACE FUNCTION public.showcase_stock_daily_by_outlet(p_start date, p_end date)
RETURNS TABLE (
  stock_date date,
  outlet_id uuid,
  outlet_name text,
  allocated_cum bigint,
  sold_cum bigint,
  remaining_cum bigint
)
LANGUAGE sql
STABLE
AS $$
  WITH days AS (
    SELECT generate_series(p_start, p_end, interval '1 day')::date AS d
  ),
  alloc AS (
    SELECT a.outlet_id,
           ((a.allocated_date AT TIME ZONE 'UTC') AT TIME ZONE 'Asia/Jakarta')::date AS d,
           sum(a.quantity)::bigint AS qty
    FROM public.showcase_allocations a
    GROUP BY 1, 2
  ),
  sold AS (
    SELECT s.outlet_id,
           ((s.created_at AT TIME ZONE 'UTC') AT TIME ZONE 'Asia/Jakarta')::date AS d,
           sum(si.quantity)::bigint AS qty
    FROM public.sale_items si
    JOIN public.sales s ON s.id = si.sale_id
    GROUP BY 1, 2
  ),
  delta AS (
    SELECT COALESCE(a.outlet_id, s.outlet_id) AS outlet_id,
           COALESCE(a.d, s.d) AS d,
           COALESCE(a.qty, 0) AS a_qty,
           COALESCE(s.qty, 0) AS s_qty
    FROM alloc a
    FULL OUTER JOIN sold s
      ON a.outlet_id = s.outlet_id
     AND a.d = s.d
  ),
  pre AS (
    SELECT outlet_id,
           sum(a_qty)::bigint AS a0,
           sum(s_qty)::bigint AS s0
    FROM delta
    WHERE d < p_start
    GROUP BY outlet_id
  ),
  joined AS (
    SELECT o.id AS outlet_id,
           o.name AS outlet_name,
           dd.d,
           COALESCE(pre.a0, 0) AS a0,
           COALESCE(pre.s0, 0) AS s0,
           COALESCE(dl.a_qty, 0) AS a_qty,
           COALESCE(dl.s_qty, 0) AS s_qty
    FROM public.outlets o
    CROSS JOIN days dd
    LEFT JOIN delta dl ON dl.outlet_id = o.id AND dl.d = dd.d
    LEFT JOIN pre ON pre.outlet_id = o.id
  )
  SELECT j.d,
         j.outlet_id,
         j.outlet_name,
         (j.a0 + sum(j.a_qty) OVER w)::bigint AS allocated_cum,
         (j.s0 + sum(j.s_qty) OVER w)::bigint AS sold_cum,
         (j.a0 + sum(j.a_qty) OVER w - j.s0 - sum(j.s_qty) OVER w)::bigint AS remaining_cum
  FROM joined j
  WINDOW w AS (PARTITION BY j.outlet_id ORDER BY j.d)
  ORDER BY j.outlet_name, j.d;
$$;

REVOKE ALL ON FUNCTION public.showcase_stock_daily_by_outlet(date, date) FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.showcase_stock_daily_by_outlet(date, date) TO service_role;
