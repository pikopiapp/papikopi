-- Hapus semua data tanggal 2 Juni dari tabel sale_items dan sales

BEGIN;

DELETE FROM public.sale_items
WHERE sale_id IN (
  SELECT id
  FROM public.sales
  WHERE created_at >= '2026-06-02 00:00:00+07'::timestamptz
    AND created_at < '2026-06-03 00:00:00+07'::timestamptz
);

DELETE FROM public.sales
WHERE created_at >= '2026-06-02 00:00:00+07'::timestamptz
  AND created_at < '2026-06-03 00:00:00+07'::timestamptz;

COMMIT;
