-- Barista-submitted product returns now require manager/admin approval.
--
-- Why: product_returns rows immediately reduce sellable stock (sisa = qty - sold -
-- returned - dikirim + diterima), so a barista could take stock out of the count with a
-- single tap. Pending requests live in their own tables so nothing changes for stock
-- maths or reports until a manager approves. Approval expands each item into one
-- product_returns row per unit, exactly the rows the barista flow used to insert.
--
-- Status flow: pending -> approved | rejected.

create table if not exists public.product_return_requests (
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

create index if not exists product_return_requests_outlet_status_idx
  on public.product_return_requests (outlet_id, status, created_at desc);

create table if not exists public.product_return_request_items (
  id uuid primary key default gen_random_uuid(),
  request_id uuid not null
    references public.product_return_requests (id) on delete cascade,
  product_id uuid not null
    references public.products (id) on delete restrict,
  product_name text,
  quantity integer not null check (quantity > 0),
  return_reason text,
  condition_notes text,
  unique (request_id, product_id)
);

create index if not exists product_return_request_items_request_idx
  on public.product_return_request_items (request_id);

create or replace function public.approve_product_return_request(
  p_request_id uuid,
  p_reviewer text default null
)
returns jsonb
language plpgsql
security definer
set search_path = public
as $$
declare
  v_request public.product_return_requests%rowtype;
  v_item record;
begin
  select * into v_request
  from public.product_return_requests
  where id = p_request_id
  for update;

  if not found then
    raise exception 'Permintaan pengembalian tidak ditemukan';
  end if;

  if v_request.status <> 'pending' then
    raise exception 'Permintaan sudah diproses (status %)', v_request.status;
  end if;

  -- One row per unit keeps every existing stock/report query working unchanged.
  for v_item in
    select product_id, quantity, return_reason, condition_notes
    from public.product_return_request_items
    where request_id = p_request_id
  loop
    insert into public.product_returns (
      product_id, outlet_id, return_reason, condition_status, condition_notes, return_date
    )
    select v_item.product_id,
           v_request.outlet_id,
           coalesce(nullif(v_item.return_reason, ''), 'Lainnya'),
           'damaged',
           v_item.condition_notes,
           now()
    from generate_series(1, v_item.quantity);
  end loop;

  update public.product_return_requests
  set status = 'approved',
      reviewed_at = now(),
      reviewed_by = p_reviewer
  where id = p_request_id;

  return jsonb_build_object('success', true);
end;
$$;

create or replace function public.reject_product_return_request(
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
  from public.product_return_requests
  where id = p_request_id
  for update;

  if not found then
    raise exception 'Permintaan pengembalian tidak ditemukan';
  end if;

  if v_status <> 'pending' then
    raise exception 'Permintaan sudah diproses (status %)', v_status;
  end if;

  update public.product_return_requests
  set status = 'rejected',
      reviewed_at = now(),
      reviewed_by = p_reviewer,
      note = coalesce(nullif(p_reason, ''), note)
  where id = p_request_id;

  return jsonb_build_object('success', true);
end;
$$;

grant select, insert, update, delete
  on public.product_return_requests to anon, authenticated, service_role;
grant select, insert, update, delete
  on public.product_return_request_items to anon, authenticated, service_role;
grant execute on function public.approve_product_return_request(uuid, text)
  to anon, authenticated, service_role;
grant execute on function public.reject_product_return_request(uuid, text, text)
  to anon, authenticated, service_role;

-- Rollback:
--   drop function if exists public.reject_product_return_request(uuid, text, text);
--   drop function if exists public.approve_product_return_request(uuid, text);
--   drop table if exists public.product_return_request_items;
--   drop table if exists public.product_return_requests;
