-- Backup data June 2026 for sales and sale_items
-- Run this in Supabase SQL editor or psql with service role privileges.

begin;

-- Backup sales rows for June 2026
drop table if exists public.sales_backup_june_2026;
create table public.sales_backup_june_2026 (like public.sales including all);

insert into public.sales_backup_june_2026
select *
from public.sales
where created_at >= '2026-06-01T00:00:00+07:00'::timestamptz
  and created_at < '2026-07-01T00:00:00+07:00'::timestamptz;

-- Backup related sale_items rows for June 2026
-- Use sale_ids from the June sales backup

drop table if exists public.sale_items_backup_june_2026;
create table public.sale_items_backup_june_2026 (like public.sale_items including all);

insert into public.sale_items_backup_june_2026
select si.*
from public.sale_items si
join public.sales_backup_june_2026 s on s.id = si.sale_id;

commit;
