-- Insert sample outlets for testing
INSERT INTO outlets (name, type, address) VALUES
  ('Outlet Bandung', 'retail', 'Jl. Merdeka No. 1, Bandung'),
  ('Outlet Jakarta', 'retail', 'Jl. Sudirman No. 100, Jakarta'),
  ('Outlet Surabaya', 'retail', 'Jl. Urip Sumoharjo No. 50, Surabaya'),
  ('Outlet Medan', 'retail', 'Jl. Gatot Subroto No. 30, Medan'),
  ('Outlet Yogyakarta', 'retail', 'Jl. Malioboro No. 75, Yogyakarta')
ON CONFLICT (name) DO NOTHING;

SELECT * FROM outlets ORDER BY created_at DESC LIMIT 5;
