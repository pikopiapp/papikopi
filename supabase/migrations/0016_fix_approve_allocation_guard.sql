-- Fix the approval stock guard so it matches what the manager app shows.
--
-- Why: 0015 compared each item against the cumulative dispatched total for every
-- outlet. Batch intake is under-recorded (Gula Aren (M): 2,585 in vs 17,211
-- dispatched), so available always came out negative and approving any request
-- raised 'Stok ... tidak cukup' with a huge negative sisa. The manager app's
-- direct-allocation path checks the requesting outlet's allocations within the
-- current business day against the intake batch (reverted in papikopi-mobile
-- 6d0bd45); this makes the RPC run the exact same check so approval cannot
-- disagree with the numbers on screen.
--
-- The post-approval cache update also switches to the same figure the mobile
-- _syncShowcaseProductAllocatedQuantity writes for direct allocations.

create or replace function public.approve_showcase_allocation_request(
  p_request_id uuid,
  p_reviewer text default null
)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  v_request public.showcase_allocation_requests%rowtype;
  v_item record;
  v_start_hour integer;
  v_now_local timestamp;
  v_day timestamp;
  v_window_start timestamptz;
  v_window_end timestamptz;
  v_allocated_today bigint;
  v_available bigint;
  v_product_ids uuid[];
begin
  select * into v_request
  from public.showcase_allocation_requests
  where id = p_request_id
  for update;

  if not found then
    raise exception 'Permintaan alokasi tidak ditemukan';
  end if;

  if v_request.status <> 'pending' then
    raise exception 'Permintaan sudah diproses (status %)', v_request.status;
  end if;

  -- Business-day window containing now(), in UTC, matching the mobile
  -- buildBusinessDayRange: start at start-hour on the WIB date (previous date
  -- when local hour is before start-hour), end one day later minus 1 ms.
  select coalesce(max(o.business_day_start_hour), 4) into v_start_hour
  from public.outlets o
  where o.id = v_request.outlet_id;

  v_now_local := now() at time zone 'Asia/Jakarta';
  if extract(hour from v_now_local) >= v_start_hour then
    v_day := date_trunc('day', v_now_local);
  else
    v_day := date_trunc('day', v_now_local) - interval '1 day';
  end if;
  v_window_start := (v_day + make_interval(hours => v_start_hour)) at time zone 'UTC';
  v_window_end := v_window_start + interval '1 day' - interval '1 millisecond';

  for v_item in
    select i.showcase_product_id,
           i.quantity,
           coalesce(sp.product_name, i.product_name) as product_name,
           coalesce(sp.total_quantity, 0) as total_quantity
    from public.showcase_allocation_request_items i
    join public.showcase_products sp on sp.id = i.showcase_product_id
    where i.request_id = p_request_id
  loop
    select coalesce(sum(quantity), 0) into v_allocated_today
    from public.showcase_allocations
    where showcase_product_id = v_item.showcase_product_id
      and outlet_id = v_request.outlet_id
      and created_at >= v_window_start
      and created_at <= v_window_end;

    v_available := v_item.total_quantity - v_allocated_today;
    if v_item.quantity > v_available then
      raise exception
        'Stok % tidak cukup: batch masuk %, outlet ini sudah menerima % hari ini, sisa %',
        v_item.product_name, v_item.total_quantity, v_allocated_today, v_available;
    end if;
  end loop;

  insert into public.showcase_allocations (
    showcase_product_id, outlet_id, quantity, created_at
  )
  select i.showcase_product_id, v_request.outlet_id, i.quantity,
         (now() at time zone 'UTC')
  from public.showcase_allocation_request_items i
  where i.request_id = p_request_id;

  select array_agg(showcase_product_id) into v_product_ids
  from public.showcase_allocation_request_items
  where request_id = p_request_id;

  -- Keep the cache column on the same figure the mobile direct-allocation
  -- sync writes: this outlet's allocations inside the current business day.
  update public.showcase_products sp
  set allocated_quantity = sub.total
  from (
    select a.showcase_product_id, coalesce(sum(a.quantity), 0) as total
    from public.showcase_allocations a
    where a.showcase_product_id = any (v_product_ids)
      and a.outlet_id = v_request.outlet_id
      and a.created_at >= v_window_start
      and a.created_at <= v_window_end
    group by a.showcase_product_id
  ) sub
  where sp.id = sub.showcase_product_id;

  update public.showcase_allocation_requests
  set status = 'approved',
      reviewed_at = now(),
      reviewed_by = p_reviewer
  where id = p_request_id;

  return jsonb_build_object('success', true);
end;
$$;
