-- migration: create RPC function to aggregate daily sales in Asia/Jakarta timezone
-- Run this on your Supabase/Postgres instance (psql or Supabase SQL editor)

CREATE OR REPLACE FUNCTION public.daily_summary(
  p_start timestamptz,
  p_end timestamptz,
  p_outlet uuid DEFAULT NULL
)
RETURNS TABLE(
  date text,
  revenue bigint,
  profit bigint,
  orders bigint,
  hpp bigint,
  bonus bigint,
  meal bigint
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    to_char((created_at AT TIME ZONE 'Asia/Jakarta')::date, 'YYYY-MM-DD') as date,
    COALESCE(SUM(total_amount),0)::bigint as revenue,
    COALESCE(SUM(profit),0)::bigint as profit,
    COUNT(*)::bigint as orders,
    COALESCE(SUM(hpp_total),0)::bigint as hpp,
    COALESCE(SUM(bonus_amount),0)::bigint as bonus,
    COALESCE(SUM(meal_amount),0)::bigint as meal
  FROM public.sales
  WHERE created_at >= p_start
    AND created_at <= p_end
    AND (p_outlet IS NULL OR outlet_id = p_outlet)
  GROUP BY date
  ORDER BY date ASC;
END;
$$ LANGUAGE plpgsql STABLE;
