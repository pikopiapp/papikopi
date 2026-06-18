-- Create function reports_sales_agg(start_ts timestamptz, end_ts timestamptz, grp text)
-- Aggregates sales table by Asia/Jakarta day or by month.

create or replace function public.reports_sales_agg(p_start timestamptz, p_end timestamptz, p_grp text, p_outlet uuid default null)
returns table(period text, sales bigint, profit bigint, orders int, hpp bigint, bonus bigint, meal bigint)
language plpgsql
as $$
begin
  if lower(coalesce(p_grp, 'month')) = 'day' then
    return query
        select to_char((s.created_at at time zone 'UTC') at time zone 'Asia/Jakarta', 'YYYY-MM-DD') as period,
          coalesce(sum(s.total_amount)::bigint,0) as sales,
          coalesce(sum(s.profit)::bigint,0) as profit,
          coalesce(count(*)::int,0) as orders,
          coalesce(sum(s.hpp_total)::bigint,0) as hpp,
          coalesce(sum(s.bonus_amount)::bigint,0) as bonus,
          coalesce(sum(s.meal_amount)::bigint,0) as meal
        from public.sales s
        where s.created_at >= p_start and s.created_at <= p_end
          and (p_outlet is null or s.outlet_id = p_outlet)
    group by 1
    order by 1;
  else
    return query
        select to_char((s.created_at at time zone 'UTC') at time zone 'Asia/Jakarta', 'YYYY-MM') as period,
          coalesce(sum(s.total_amount)::bigint,0) as sales,
          coalesce(sum(s.profit)::bigint,0) as profit,
          coalesce(count(*)::int,0) as orders,
          coalesce(sum(s.hpp_total)::bigint,0) as hpp,
          coalesce(sum(s.bonus_amount)::bigint,0) as bonus,
          coalesce(sum(s.meal_amount)::bigint,0) as meal
        from public.sales s
        where s.created_at >= p_start and s.created_at <= p_end
          and (p_outlet is null or s.outlet_id = p_outlet)
    group by 1
    order by 1;
  end if;
end;
$$;

-- Grant execute to anon and service_role if needed
-- grant execute on function public.reports_sales_agg(timestamptz, timestamptz, text) to postgres;
