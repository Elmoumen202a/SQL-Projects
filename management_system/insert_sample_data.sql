-- Insert sample data into Customers table
INSERT INTO Customers (first_name, last_name, email, phone_number) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890'),  -- Sample customer 1
('Jane', 'Smith', 'jane.smith@example.com', '098-765-4321');  -- Sample customer 2

-- Insert sample data into Employees table
INSERT INTO Employees (first_name, last_name, position, salary, hire_date) VALUES
('Alice', 'Johnson', 'Manager', 60000.00, '2020-01-15'),  -- Sample employee 1
('Bob', 'Brown', 'Chef', 45000.00, '2019-03-22');         -- Sample employee 2

-- Insert sample data into MenuItems table
INSERT INTO MenuItems (name, description, price, category) VALUES
('Spaghetti Carbonara', 'Classic Italian pasta dish', 12.99, 'Main Course'),  -- Sample menu item 1
('Caesar Salad', 'Crisp romaine lettuce with Caesar dressing', 8.99, 'Appetizer');  -- Sample menu item 2

-- Insert sample data into Orders table
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2023-07-15 18:30:00', 21.98),  -- Sample order 1
(2, '2023-07-16 19:45:00', 8.99);   -- Sample order 2

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (order_id, item_id, quantity, price) VALUES
(1, 1, 1, 12.99),  -- Order detail for order 1, item 1
(1, 2, 1, 8.99),   -- Order detail for order 1, item 2
(2, 2, 1, 8.99);   -- Order detail for order 2, item 2

-- Insert sample data into Inventory table
INSERT INTO Inventory (item_name, quantity, supplier, last_order_date) VALUES
('Tomatoes', 100, 'Fresh Farms', '2024-07-10'),  -- Sample inventory item 1
('Pasta', 50, 'Italian Goods', '2024-07-12');    -- Sample inventory item 2
