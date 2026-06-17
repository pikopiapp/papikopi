-- SQL: reports_profitloss_agg
-- Aggregates revenue, cost (hpp) and profit by day or month

create or replace function reports_profitloss_agg(start_ts timestamptz, end_ts timestamptz, grp text)
  returns table(period text, revenue bigint, cost bigint, profit bigint, count bigint)
  language plpgsql security definer
as $$
begin
  if grp = 'day' then
    return query
      select to_char(date_trunc('day', created_at), 'YYYY-MM-DD') as period,
             sum(total_amount)::bigint as revenue,
             sum(coalesce(hpp_total,0))::bigint as cost,
             sum(coalesce(profit,0))::bigint as profit,
             count(*) as count
      from sales
      where created_at >= start_ts and created_at <= end_ts
      group by 1
      order by 1;
  else
    return query
      select to_char(date_trunc('month', created_at), 'YYYY-MM') as period,
             sum(total_amount)::bigint as revenue,
             sum(coalesce(hpp_total,0))::bigint as cost,
             sum(coalesce(profit,0))::bigint as profit,
             count(*) as count
      from sales
      where created_at >= start_ts and created_at <= end_ts
      group by 1
      order by 1;
  end if;
end;
$$;

-- grant execute on function reports_profitloss_agg(timestamptz,timestamptz,text) to anon;
