-- 1. Test foreign key constraint on `order_items.product_id`
-- This query checks that every product referenced in order_items exists in the products table.
SELECT * FROM order_items WHERE product_id NOT IN (SELECT product_id FROM products);
-- Expected Result: No rows should be returned if the foreign key constraint is working correctly.

-- 2. Test foreign key constraint on `order_items.order_id`
-- This query checks that every order referenced in order_items exists in the orders table.
SELECT * FROM order_items WHERE order_id NOT IN (SELECT order_id FROM orders);
-- Expected Result: No rows should be returned if the foreign key constraint is working correctly.

-- 3. Test foreign key constraint on `orders.customer_id`
-- This query checks that every customer referenced in orders exists in the customers table.
SELECT * FROM orders WHERE customer_id NOT IN (SELECT customer_id FROM customers);
-- Expected Result: No rows should be returned if the foreign key constraint is working correctly.

-- 4. Verify total sales calculation for a specific product.
-- This query checks that the calculated total sales match expected values for a given product (e.g., "Laptop").
SELECT p.product_name, SUM(oi.quantity * oi.price) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
WHERE p.product_name = 'Laptop'
GROUP BY p.product_name;
-- Expected Result: Verify the output matches expected total sales for "Laptop".

-- 5. Verify top customers based on spending.
-- This query checks if the top customers are identified correctly by their total spending.
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 5;
