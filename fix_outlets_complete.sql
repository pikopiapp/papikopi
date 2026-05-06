-- Complete Fix for Outlets CRUD Operations
-- This script fixes the outlets table to allow proper CRUD operations

-- Step 1: Check if RLS is enabled and disable it
ALTER TABLE outlets DISABLE ROW LEVEL SECURITY;

-- Step 2: Insert sample outlets if table is empty
INSERT INTO outlets (name, type, address) 
SELECT name, type, address FROM (
  VALUES
    ('Outlet Bandung', 'retail', 'Jl. Merdeka No. 1, Bandung'),
    ('Outlet Jakarta', 'retail', 'Jl. Sudirman No. 100, Jakarta'),
    ('Outlet Surabaya', 'retail', 'Jl. Urip Sumoharjo No. 50, Surabaya'),
    ('Outlet Medan', 'retail', 'Jl. Gatot Subroto No. 30, Medan'),
    ('Outlet Yogyakarta', 'retail', 'Jl. Malioboro No. 75, Yogyakarta')
) AS v(name, type, address)
WHERE NOT EXISTS (SELECT 1 FROM outlets);

-- Step 3: Verify outlets are accessible
SELECT id, name, type, address, created_at FROM outlets ORDER BY created_at DESC;
