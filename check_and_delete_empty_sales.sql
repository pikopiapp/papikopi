-- ============================================================================
-- CHECK AND DELETE SALES WITH NO ITEMS
-- ============================================================================

-- STEP 1: Check sales that have no items
SELECT 
  s.id,
  s.outlet_id,
  o.name as outlet_name,
  s.created_at,
  COUNT(si.id) as item_count
FROM public.sales s
LEFT JOIN public.sale_items si ON s.id = si.sale_id
LEFT JOIN public.outlets o ON s.outlet_id = o.id
GROUP BY s.id, s.outlet_id, o.name, s.created_at
HAVING COUNT(si.id) = 0
ORDER BY s.created_at;

-- STEP 2: Delete sales with no items (uncomment to execute)
/*
DELETE FROM public.sales 
WHERE id IN (
  SELECT s.id
  FROM public.sales s
  LEFT JOIN public.sale_items si ON s.id = si.sale_id
  GROUP BY s.id
  HAVING COUNT(si.id) = 0
);
*/

-- STEP 3: Verify remaining sales
SELECT 
  COUNT(*) as total_sales,
  COUNT(DISTINCT outlet_id) as outlets,
  SUM(total_amount) as total_omset
FROM public.sales
WHERE created_at::date = '2026-05-09'::date;
