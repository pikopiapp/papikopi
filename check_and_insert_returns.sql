-- Check if there are any returns
SELECT COUNT(*) as total_returns FROM product_returns;

-- Check product_units with products
SELECT pu.id, p.name, pu.quantity 
FROM product_units pu
JOIN products p ON pu.product_id = p.id
LIMIT 5;

-- Check outlets
SELECT id, name FROM outlets LIMIT 3;
