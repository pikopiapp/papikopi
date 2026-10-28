-- Per-outlet showcase stock: units dispatched minus units sold at that outlet.
--
-- Why: /dashboard/reports/outlet-stock summed showcase_allocations.quantity per outlet,
-- which is cumulative dispatch, never reduced by sales. It also read the table through
-- PostgREST without paging, so the 1,000-row cap hid 15 of the 17 outlets.
--
-- remaining_units = allocated_units - sold_units, matching the product-level definition
-- in 0009 (remaining = allocated - sold). product_count counts products that still have
-- stock left at the outlet, not allocation rows.

CREATE OR REPLACE FUNCTION public.showcase_stock_by_outlet()
RETURNS TABLE (
  outlet_id uuid,
  outlet_name text,
  allocated_units bigint,
  sold_units bigint,
  remaining_units bigint,
  product_count bigint,
  last_allocated_at timestamptz
)
LANGUAGE sql
STABLE
AS $$
  WITH alloc AS (
    SELECT a.outlet_id,
           a.showcase_product_id,
           sum(a.quantity)::bigint   AS qty,
           max(a.allocated_date)::timestamptz AS last_at
    FROM public.showcase_allocations a
    GROUP BY a.outlet_id, a.showcase_product_id
  ),
  sold AS (
    SELECT s.outlet_id,
           si.product_id,
           sum(si.quantity)::bigint AS qty
    FROM public.sale_items si
    JOIN public.sales s ON s.id = si.sale_id
    GROUP BY s.outlet_id, si.product_id
  ),
  per_product AS (
    SELECT COALESCE(alloc.outlet_id, sold.outlet_id) AS outlet_id,
           COALESCE(alloc.qty, 0) AS allocated,
           COALESCE(sold.qty, 0)  AS sold,
           alloc.last_at
    FROM alloc
    FULL OUTER JOIN sold
      ON alloc.outlet_id = sold.outlet_id
     AND alloc.showcase_product_id = sold.product_id
  )
  SELECT o.id,
         o.name,
         COALESCE(sum(p.allocated), 0)::bigint,
         COALESCE(sum(p.sold), 0)::bigint,
         COALESCE(sum(p.allocated - p.sold), 0)::bigint,
         count(*) FILTER (WHERE p.allocated - p.sold > 0)::bigint,
         max(p.last_at)
  FROM per_product p
  JOIN public.outlets o ON o.id = p.outlet_id
  GROUP BY o.id, o.name
  ORDER BY o.name;
$$;

-- Dashboard-only data: the report page calls this with the service role.
REVOKE ALL ON FUNCTION public.showcase_stock_by_outlet() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.showcase_stock_by_outlet() TO service_role;
