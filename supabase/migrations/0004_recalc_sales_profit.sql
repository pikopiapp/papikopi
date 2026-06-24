-- Migration: Recalculate sales.profit for 2026-06-14..2026-06-16
-- Uses updated `sales.hpp_total` and existing bonus/meal values to set `profit`.
BEGIN;

UPDATE sales s
SET profit = (
  COALESCE(s.total_amount,0)
  - COALESCE(s.hpp_total,0)
  - COALESCE(s.bonus_amount,0)
  - COALESCE(s.meal_amount,0)
)
WHERE (s.created_at AT TIME ZONE 'Asia/Jakarta')::date BETWEEN '2026-06-14' AND '2026-06-16'
  AND (
    s.total_amount IS DISTINCT FROM (
      COALESCE(s.hpp_total,0) + COALESCE(s.bonus_amount,0) + COALESCE(s.meal_amount,0) + COALESCE(s.profit,0)
    )
  );

COMMIT;

-- Notes:
-- - This sets `profit = total_amount - hpp_total - bonus_amount - meal_amount` for sales
--   occurring on 2026-06-14..2026-06-16 in Asia/Jakarta timezone.
-- - Backup DB or run in a transaction-safe environment before applying to production.
