-- Barista-raised allocation requests, approved by a manager/admin.
--
-- Why: allocation only exists on the manager side today, so stock a barista physically
-- received is invisible to the system until a manager types it in. This staging table lets
-- baristas scan product QR codes one by one and submit a request. Nothing becomes sellable
-- stock until approval: approving copies the items into showcase_allocations, the table every
-- stock/sales query already reads (remaining = allocated - sold), so no other query changes.
--
-- Status flow: pending -> approved | rejected ; pending -> cancelled (barista withdraws).

create table if not exists public.showcase_allocation_requests (
  id uuid primary key default gen_random_uuid(),
  outlet_id uuid not null references public.outlets (id) on delete cascade,
  requested_by text,
  requested_by_name text,
  status text not null default 'pending'
    check (status in ('pending', 'approved', 'rejected', 'cancelled')),
  note text,
  created_at timestamptz not null default now(),
  reviewed_at timestamptz,
  reviewed_by text
);

create index if not exists showcase_allocation_requests_outlet_status_idx
  on public.showcase_allocation_requests (outlet_id, status, created_at desc);

create table if not exists public.showcase_allocation_request_items (
  id uuid primary key default gen_random_uuid(),
  request_id uuid not null
    references public.showcase_allocation_requests (id) on delete cascade,
  showcase_product_id uuid not null
    references public.showcase_products (id) on delete restrict,
  product_name text,
  quantity integer not null check (quantity > 0),
  unique (request_id, showcase_product_id)
);

create index if not exists showcase_allocation_request_items_request_idx
  on public.showcase_allocation_request_items (request_id);

-- Approval copies the request into showcase_allocations and rebuilds the cached
-- showcase_products.allocated_quantity from the true dispatched total. Performed in one
-- function so a failed item can never leave half a request in stock.
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
  v_dispatched bigint;
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

  for v_item in
    select i.showcase_product_id,
           i.quantity,
           coalesce(sp.product_name, i.product_name) as product_name,
           coalesce(sp.total_quantity, 0) as total_quantity
    from public.showcase_allocation_request_items i
    join public.showcase_products sp on sp.id = i.showcase_product_id
    where i.request_id = p_request_id
  loop
    select coalesce(sum(quantity), 0) into v_dispatched
    from public.showcase_allocations
    where showcase_product_id = v_item.showcase_product_id;

    v_available := v_item.total_quantity - v_dispatched;
    if v_item.quantity > v_available then
      raise exception
        'Stok % tidak cukup: batch masuk %, sudah disalurkan %, sisa %',
        v_item.product_name, v_item.total_quantity, v_dispatched, v_available;
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

  update public.showcase_products sp
  set allocated_quantity = sub.total
  from (
    select showcase_product_id, sum(quantity) as total
    from public.showcase_allocations
    where showcase_product_id = any (v_product_ids)
    group by showcase_product_id
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

create or replace function public.reject_showcase_allocation_request(
  p_request_id uuid,
  p_reviewer text default null,
  p_reason text default null
)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  v_status text;
begin
  select status into v_status
  from public.showcase_allocation_requests
  where id = p_request_id
  for update;

  if not found then
    raise exception 'Permintaan alokasi tidak ditemukan';
  end if;

  if v_status <> 'pending' then
    raise exception 'Permintaan sudah diproses (status %)', v_status;
  end if;

  update public.showcase_allocation_requests
  set status = 'rejected',
      reviewed_at = now(),
      reviewed_by = p_reviewer,
      note = coalesce(nullif(p_reason, ''), note)
  where id = p_request_id;

  return jsonb_build_object('success', true);
end;
$$;

grant select, insert, update, delete
  on public.showcase_allocation_requests to anon, authenticated, service_role;
grant select, insert, update, delete
  on public.showcase_allocation_request_items to anon, authenticated, service_role;
grant execute on function public.approve_showcase_allocation_request(uuid, text)
  to anon, authenticated, service_role;
grant execute on function public.reject_showcase_allocation_request(uuid, text, text)
  to anon, authenticated, service_role;

-- Rollback:
--   drop function if exists public.approve_showcase_allocation_request(uuid, text);
--   drop function if exists public.reject_showcase_allocation_request(uuid, text, text);
--   drop table if exists public.showcase_allocation_request_items;
--   drop table if exists public.showcase_allocation_requests;
