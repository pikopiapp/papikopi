-- SQL: reports_outlet_comparison
-- Aggregates per-outlet metrics and returns basic stats

create or replace function reports_outlet_comparison(start_ts timestamptz, end_ts timestamptz)
  returns table(outlet text, sales bigint, transactions bigint, avg_transaction_value numeric)
  language sql security definer
as $$
  with s as (
    select coalesce(o.name, s.outlet_id::text) as outlet_name, s.total_amount
    from sales s
    left join outlets o on o.id = s.outlet_id
    where s.created_at >= start_ts and s.created_at <= end_ts
  )
  select outlet_name as outlet,
         sum(coalesce(total_amount,0))::bigint as sales,
         count(*)::bigint as transactions,
         case when count(*)>0 then sum(coalesce(total_amount,0))/count(*) else 0 end as avg_transaction_value
  from s
  group by outlet_name
  order by sales desc;
$$;

-- grant execute on function reports_outlet_comparison(timestamptz,timestamptz) to anon;
