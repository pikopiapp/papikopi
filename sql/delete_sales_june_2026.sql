-- Delete all June 2026 rows from public.sales and related public.sale_items.
-- Run this before re-importing June 2026 data from `data juni papi kopi.csv`.
-- Adjust the timestamp boundaries if your database stores local Jakarta timestamps without timezone.

BEGIN;

DELETE FROM public.sale_items
WHERE sale_id IN (
  SELECT id
  FROM public.sales
  WHERE created_at >= '2026-06-01 00:00:00+07'::timestamptz
    AND created_at < '2026-07-01 00:00:00+07'::timestamptz
);

DELETE FROM public.sales
WHERE created_at >= '2026-06-01 00:00:00+07'::timestamptz
  AND created_at < '2026-07-01 00:00:00+07'::timestamptz;

COMMIT;
