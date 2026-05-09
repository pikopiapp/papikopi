# Database Migration: product_unit_id → product_id (UUID)

## Overview
Replace the `product_unit_id` column in `product_returns` table with `product_id` as UUID foreign key to products table.

## Steps to Execute

### Step 1: Backup existing data (Optional but recommended)
```sql
-- Create a backup table
CREATE TABLE product_returns_backup AS 
SELECT * FROM product_returns;
```

### Step 2: Delete existing test data (if any)
```sql
-- Clear old test data if present
DELETE FROM product_returns 
WHERE resolution_status = 'pending';
```

### Step 3: Drop old column and add new one
```sql
-- Drop the old product_unit_id column and any related constraints
ALTER TABLE product_returns
DROP COLUMN IF EXISTS product_unit_id CASCADE;

-- Add product_id column as UUID with foreign key to products table
ALTER TABLE product_returns
ADD COLUMN product_id UUID NOT NULL,
ADD CONSTRAINT fk_product_returns_product_id 
  FOREIGN KEY (product_id) 
  REFERENCES products(id) 
  ON DELETE RESTRICT;
```

### Step 4: Verify the schema
```sql
-- Check columns
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;

-- Check constraints
SELECT constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_name = 'product_returns';
```

## New Schema
```sql
product_returns table columns:
- id: BIGSERIAL (PRIMARY KEY)
- product_id: UUID (FOREIGN KEY → products.id)
- outlet_id: UUID (FOREIGN KEY → outlets.id)
- return_reason: VARCHAR
- condition_status: VARCHAR
- resolution_status: VARCHAR
- return_date: DATE
- created_at: TIMESTAMP
- updated_at: TIMESTAMP
```

## API Changes
- Endpoint `/api/showcase/returns/pending` now returns `product_id` instead of `product_unit_id`
- Product data is fetched directly from products table
- Seed endpoint now creates returns with `product_id` from products table

## Frontend Changes
- Component updated to use `ret.products` instead of `ret.product_units.products`
- All product name references use `products.name`
- Table displays updated product information correctly

## Testing
After migration, the app will auto-seed test data using available products from the database on first load.
