-- Seed national holidays for 2025 and 2026 into custom_holidays table
-- Insert with is_national = true; use upsert to avoid duplicates

INSERT INTO public.custom_holidays (date, description, is_national)
VALUES
  ('2025-01-01', 'Tahun Baru', true),
  ('2025-02-19', 'Isra dan Mi\'raj', true),
  ('2025-03-31', 'Hari Raya Idul Fitri', true),
  ('2025-04-01', 'Hari Raya Idul Fitri', true),
  ('2025-04-02', 'Hari Raya Idul Fitri', true),
  ('2025-04-03', 'Hari Raya Idul Fitri', true),
  ('2025-04-14', 'Hari Raya Idul Adha', true),
  ('2025-05-01', 'Hari Buruh', true),
  ('2025-05-14', 'Kenaikan Isa Almasih', true),
  ('2025-05-19', 'Hari Vesak', true),
  ('2025-06-01', 'Tahun Baru Hijriah', true),
  ('2025-06-01', 'Tahun Baru Hijriah', true),
  ('2025-08-17', 'Hari Kemerdekaan', true),
  ('2025-09-16', 'Maulid Nabi Muhammad', true),
  ('2025-12-25', 'Natal', true),
  ('2025-12-26', 'Hari Libur Bersama', true)
ON CONFLICT (date) DO UPDATE SET description = EXCLUDED.description, is_national = true;

INSERT INTO public.custom_holidays (date, description, is_national)
VALUES
  ('2026-01-01', 'Tahun Baru', true),
  ('2026-02-08', 'Isra dan Mi\'raj', true),
  ('2026-03-20', 'Hari Raya Idul Fitri', true),
  ('2026-03-21', 'Hari Raya Idul Fitri', true),
  ('2026-03-22', 'Hari Raya Idul Fitri', true),
  ('2026-03-23', 'Hari Raya Idul Fitri', true),
  ('2026-04-03', 'Hari Raya Idul Adha', true),
  ('2026-04-23', 'Tahun Baru Hijriah', true),
  ('2026-05-01', 'Hari Buruh', true),
  ('2026-05-14', 'Kenaikan Isa Almasih', true),
  ('2026-05-04', 'Hari Vesak', true),
  ('2026-06-01', 'Pancasila Day', true),
  ('2026-08-17', 'Hari Kemerdekaan', true),
  ('2026-09-05', 'Maulid Nabi Muhammad', true),
  ('2026-12-25', 'Natal', true),
  ('2026-12-26', 'Hari Libur Bersama', true)
ON CONFLICT (date) DO UPDATE SET description = EXCLUDED.description, is_national = true;
