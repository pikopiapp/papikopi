-- SQL: reports_product_performance
-- Returns top N products by revenue in the given time window

create or replace function reports_product_performance(start_ts timestamptz, end_ts timestamptz, limit_count int default 10)
  returns table(product text, sold bigint, revenue numeric)
  language sql security definer
as $$
  select p.name as product,
         sum(si.quantity)::bigint as sold,
         sum((coalesce(si.price,0) * coalesce(si.quantity,0))) as revenue
  from sale_items si
  left join products p on p.id = si.product_id
  left join sales s on s.id = si.sale_id
  where s.created_at >= start_ts and s.created_at <= end_ts
  group by p.name
  order by revenue desc
  limit limit_count;
$$;

-- grant execute on function reports_product_performance(timestamptz,timestamptz,int) to anon;
