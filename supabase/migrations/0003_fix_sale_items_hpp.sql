-- Migration: Fix sale_items.hpp for 2026-06-14..2026-06-16
-- Updates item-level `hpp` from `products.hpp` and recalculates sale-level `hpp_total`.
BEGIN;

-- 1) Update sale_items.hpp using products.hpp for sales on the affected Jakarta dates
UPDATE sale_items si
SET hpp = p.hpp
FROM sales s, products p
WHERE si.sale_id = s.id
  AND p.id = si.product_id
  AND (s.created_at AT TIME ZONE 'Asia/Jakarta')::date BETWEEN '2026-06-14' AND '2026-06-16'
  AND p.hpp IS NOT NULL
  AND (si.hpp IS DISTINCT FROM p.hpp);

-- 2) Recalculate hpp_total on sales limited to the same date range
UPDATE sales s
SET hpp_total = coalesce(sub.total_hpp,0)
FROM (
  SELECT si.sale_id as sale_id, SUM(coalesce(si.hpp,0) * coalesce(si.quantity,0))::bigint as total_hpp
  FROM sale_items si
  JOIN sales s2 ON s2.id = si.sale_id
  WHERE (s2.created_at AT TIME ZONE 'Asia/Jakarta')::date BETWEEN '2026-06-14' AND '2026-06-16'
  GROUP BY si.sale_id
) AS sub
WHERE s.id = sub.sale_id
  AND (s.created_at AT TIME ZONE 'Asia/Jakarta')::date BETWEEN '2026-06-14' AND '2026-06-16';

COMMIT;

-- Notes:
-- - This migration updates only sales whose `created_at` falls on 2026-06-14, 2026-06-15 or 2026-06-16
--   when interpreted in the Asia/Jakarta timezone.
-- - Review affected row counts after running and take a DB backup before applying in production.
