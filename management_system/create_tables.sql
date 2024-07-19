-- Create Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each customer
    first_name VARCHAR(50),                      -- Customer's first name
    last_name VARCHAR(50),                       -- Customer's last name
    email VARCHAR(100),                          -- Customer's email address
    phone_number VARCHAR(15)                     -- Customer's phone number
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each employee
    first_name VARCHAR(50),                      -- Employee's first name
    last_name VARCHAR(50),                       -- Employee's last name
    position VARCHAR(50),                        -- Employee's position (e.g., Manager, Chef)
    salary DECIMAL(10, 2),                       -- Employee's salary
    hire_date DATE                               -- Date when the employee was hired
);

-- Create MenuItems Table
CREATE TABLE MenuItems (
    item_id INT PRIMARY KEY AUTO_INCREMENT,      -- Unique identifier for each menu item
    name VARCHAR(100),                           -- Name of the menu item
    description TEXT,                            -- Description of the menu item
    price DECIMAL(10, 2),                        -- Price of the menu item
    category VARCHAR(50)                         -- Category of the menu item (e.g., Main Course, Appetizer)
);

-- Create Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,     -- Unique identifier for each order
    customer_id INT,                             -- Identifier for the customer who placed the order
    order_date DATETIME,                         -- Date and time when the order was placed
    total_amount DECIMAL(10, 2),                 -- Total amount for the order
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Foreign key referencing Customers table
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique identifier for each order detail
    order_id INT,                                   -- Identifier for the order
    item_id INT,                                    -- Identifier for the menu item
    quantity INT,                                   -- Quantity of the menu item ordered
    price DECIMAL(10, 2),                           -- Price of the menu item ordered
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),   -- Foreign key referencing Orders table
    FOREIGN KEY (item_id) REFERENCES MenuItems(item_id)   -- Foreign key referencing MenuItems table
);

-- Create Inventory Table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique identifier for each inventory item
    item_name VARCHAR(100),                        -- Name of the inventory item
    quantity INT,                                  -- Quantity of the inventory item in stock
    supplier VARCHAR(100),                         -- Supplier of the inventory item
    last_order_date DATE                           -- Date when the inventory item was last ordered
);
