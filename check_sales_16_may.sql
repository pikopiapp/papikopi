-- Check sales data untuk business day 16 Mei
-- Business day 16 Mei = sales antara 2026-05-16 04:00 sampai 2026-05-17 03:59:59

SELECT 
  COUNT(*) as total_sales,
  DATE(created_at) as calendar_date,
  MIN(created_at) as earliest_time,
  MAX(created_at) as latest_time
FROM sales
WHERE created_at >= '2026-05-16 04:00:00'::timestamp
  AND created_at < '2026-05-17 04:00:00'::timestamp
GROUP BY DATE(created_at);

-- Detail sales untuk business day 16
SELECT 
  s.id,
  s.created_at,
  s.barista_id,
  s.outlet_id,
  s.total_amount,
  s.bonus_amount
FROM sales s
WHERE s.created_at >= '2026-05-16 04:00:00'::timestamp
  AND s.created_at < '2026-05-17 04:00:00'::timestamp
ORDER BY s.created_at DESC
LIMIT 20;
