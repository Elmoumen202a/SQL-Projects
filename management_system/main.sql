-- Create Database
CREATE DATABASE restaurant_management;

-- Use the Database
USE restaurant_management;

-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

-- Create MenuItems Table
CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATETIME,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    item_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)
);

-- Create Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,
    item_name VARCHAR(100),
    quantity INT,
    supplier VARCHAR(100),
    last_order_date DATE
);

-- Insert sample data into Customers table
INSERT INTO Customers (first_name, last_name, email, phone_number) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', '098-765-4321');

-- Insert sample data into Employees table
INSERT INTO Employees (first_name, last_name, position, salary, hire_date) VALUES
('Alice', 'Johnson', 'Manager', 60000.00, '2020-01-15'),
('Bob', 'Brown', 'Chef', 45000.00, '2019-03-22');

-- Insert sample data into MenuItems table
INSERT INTO MenuItems (name, description, price, category) VALUES
('Spaghetti Carbonara', 'Classic Italian pasta dish', 12.99, 'Main Course'),
('Caesar Salad', 'Crisp romaine lettuce with Caesar dressing', 8.99, 'Appetizer');

-- Insert sample data into Orders table
INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2024-07-15 18:30:00', 21.98),
(2, '2024-07-16 19:45:00', 8.99);

-- Insert sample data into OrderDetails table
INSERT INTO OrderDetails (order_id, item_id, quantity, price) VALUES
(1, 1, 1, 12.99),
(1, 2, 1, 8.99),
(2, 2, 1, 8.99);

-- Insert sample data into Inventory table
INSERT INTO Inventory (item_name, quantity, supplier, last_order_date) VALUES
('Tomatoes', 100, 'Fresh Farms', '2024-07-10'),
('Pasta', 50, 'Italian Goods', '2024-07-12');
