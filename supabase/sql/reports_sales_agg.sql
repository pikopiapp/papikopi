-- SQL: reports_sales_agg
-- Creates a stable RPC that aggregates sales by day or month
-- Usage: select * from reports_sales_agg('2026-01-01'::timestamptz, '2026-06-17'::timestamptz, 'month');

create or replace function reports_sales_agg(start_ts timestamptz, end_ts timestamptz, grp text)
  returns table(period text, sales bigint, profit bigint, count bigint)
  language plpgsql security definer
as $$
begin
  if grp = 'day' then
    return query
      select to_char(date_trunc('day', created_at), 'YYYY-MM-DD') as period,
             sum(total_amount)::bigint as sales,
             sum(profit)::bigint as profit,
             count(*) as count
      from sales
      where created_at >= start_ts and created_at <= end_ts
      group by 1
      order by 1;
  else
    return query
      select to_char(date_trunc('month', created_at), 'YYYY-MM') as period,
             sum(total_amount)::bigint as sales,
             sum(profit)::bigint as profit,
             count(*) as count
      from sales
      where created_at >= start_ts and created_at <= end_ts
      group by 1
      order by 1;
  end if;
end;
$$;

-- Grant execute to anon (if you want public access through PostgREST)
-- grant execute on function reports_sales_agg(timestamptz, timestamptz, text) to anon;
