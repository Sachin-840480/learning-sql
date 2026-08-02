-- Interval 

SELECT * FROM orders
WHERE purchaseDate <= now() - INTERVAL '30 days';
