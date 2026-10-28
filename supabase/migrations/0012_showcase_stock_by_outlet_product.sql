-- Per-outlet, per-product showcase stock, for the operational /dashboard/outlets/stock page.
--
-- Same definition as 0009/0010: remaining = allocated - sold, per outlet x product, all time.
-- Products are keyed by products.id (not showcase_products.id) so that several showcase rows
-- for the same product cannot double-count sales in the join.

CREATE OR REPLACE FUNCTION public.showcase_stock_by_outlet_product()
RETURNS TABLE (
  outlet_id uuid,
  outlet_name text,
  product_id uuid,
  product_name text,
  allocated_units bigint,
  sold_units bigint,
  remaining_units bigint,
  last_allocated_at timestamptz
)
LANGUAGE sql
STABLE
AS $$
  WITH alloc AS (
    SELECT a.outlet_id,
           sp.product_id,
           max(sp.product_name) AS sp_name,
           sum(a.quantity)::bigint AS qty,
           max(a.allocated_date)::timestamptz AS last_at
    FROM public.showcase_allocations a
    JOIN public.showcase_products sp ON sp.id = a.showcase_product_id
    GROUP BY a.outlet_id, sp.product_id
  ),
  sold AS (
    SELECT s.outlet_id,
           si.product_id,
           sum(si.quantity)::bigint AS qty
    FROM public.sale_items si
    JOIN public.sales s ON s.id = si.sale_id
    GROUP BY s.outlet_id, si.product_id
  ),
  combined AS (
    SELECT COALESCE(a.outlet_id, s.outlet_id) AS outlet_id,
           COALESCE(a.product_id, s.product_id) AS product_id,
           COALESCE(a.qty, 0) AS allocated,
           COALESCE(s.qty, 0) AS sold,
           a.sp_name,
           a.last_at
    FROM alloc a
    FULL OUTER JOIN sold s
      ON a.outlet_id = s.outlet_id
     AND a.product_id = s.product_id
  )
  SELECT o.id,
         o.name,
         c.product_id,
         COALESCE(p.name, c.sp_name, 'Tanpa nama'),
         c.allocated,
         c.sold,
         c.allocated - c.sold,
         c.last_at
  FROM combined c
  JOIN public.outlets o ON o.id = c.outlet_id
  LEFT JOIN public.products p ON p.id = c.product_id
  ORDER BY o.name, 4;
$$;

REVOKE ALL ON FUNCTION public.showcase_stock_by_outlet_product() FROM PUBLIC;
GRANT EXECUTE ON FUNCTION public.showcase_stock_by_outlet_product() TO service_role;
