-- 1. Creating the `products` table to store details of each product.
CREATE TABLE products (
    product_id INT PRIMARY KEY,            -- Unique identifier for each product
    product_name VARCHAR(100),             -- Name of the product
    category VARCHAR(50),                  -- Category of the product (e.g., Electronics, Apparel)
    price DECIMAL(10, 2),                  -- Price per unit of the product
    stock INT                              -- Stock quantity available
);

-- 2. Creating the `customers` table to store customer information.
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,           -- Unique identifier for each customer
    customer_name VARCHAR(100),            -- Customer's name
    email VARCHAR(100),                    -- Customer's email
    phone VARCHAR(20),                     -- Customer's phone number
    join_date DATE                         -- Date the customer joined
);

-- 3. Creating the `orders` table to record each customer order.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,              -- Unique identifier for each order
    customer_id INT,                       -- References the customer who placed the order
    order_date DATE,                       -- Date the order was placed
    total_amount DECIMAL(10, 2),           -- Total amount for the order
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) -- Ensures customer exists in customers table
);

-- 4. Creating the `order_items` table to store details of each product within an order.
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,         -- Unique identifier for each item in an order
    order_id INT,                          -- References the order containing this item
    product_id INT,                        -- References the product being ordered
    quantity INT,                          -- Quantity of this product in the order
    price DECIMAL(10, 2),                  -- Price of the product at the time of purchase
    FOREIGN KEY (order_id) REFERENCES orders(order_id),     -- Ensures order exists in orders table
    FOREIGN KEY (product_id) REFERENCES products(product_id) -- Ensures product exists in products table
);

-- Sample Queries for Analysis
-- 1. Calculate the total sales for each product by multiplying quantity by price.
SELECT p.product_name, SUM(oi.quantity * oi.price) AS total_sales
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- 2. Identify top customers based on total spending.
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
