-- Redefine showcase_inventory_summary so "remaining" means what the data can actually support.
--
-- Why: showcase_products.total_quantity is filled from showcase_batch_logs, but that log only
-- holds 42 rows / 15,593 units while sale_items records 55,852 units sold. The batch log is
-- therefore incomplete, so "total_quantity - allocated" produces negative availability
-- (e.g. Baileys (M): 2,173 received vs 18,449 dispatched).
--
-- New meaning:
--   allocated_quantity = cumulative units dispatched to outlets (sum of showcase_allocations)
--   sold_quantity      = units sold (sum of sale_items for this product)
--   remaining          = allocated_quantity - sold_quantity  (units still at outlets)
--
-- total_quantity is kept unchanged for reference but must not be treated as a stock baseline
-- until batch logging is complete.
--
-- Postgres allows CREATE OR REPLACE VIEW to append columns at the end, so sold_quantity is
-- added last and existing consumers keep working.

CREATE OR REPLACE VIEW public.showcase_inventory_summary
WITH (security_invoker = true) AS
SELECT
  sp.id,
  sp.product_id,
  sp.product_name,
  sp.total_quantity,
  COALESCE(a.allocated_quantity, 0)                      AS allocated_quantity,
  COALESCE(a.allocated_quantity, 0) - COALESCE(s.sold_quantity, 0) AS remaining,
  sp.created_at,
  COALESCE(s.sold_quantity, 0)                           AS sold_quantity
FROM public.showcase_products sp
LEFT JOIN (
  SELECT showcase_product_id, sum(quantity) AS allocated_quantity
  FROM public.showcase_allocations
  GROUP BY showcase_product_id
) a ON a.showcase_product_id = sp.id
LEFT JOIN (
  SELECT product_id, sum(quantity) AS sold_quantity
  FROM public.sale_items
  GROUP BY product_id
) s ON s.product_id = sp.product_id;

GRANT SELECT ON public.showcase_inventory_summary TO anon, authenticated, service_role;
