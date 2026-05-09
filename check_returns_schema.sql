-- Check product_returns table schema
SELECT column_name, data_type, is_nullable
FROM information_schema.columns
WHERE table_name = 'product_returns'
ORDER BY ordinal_position;
