#  Management System

## For example : Restaurant
This project is a SQL-based system designed to manage various aspects of a restaurant. It includes functionalities for managing customers, employees, menu items, orders, and inventory. The aim is to provide a comprehensive solution for restaurant operations.

## Table of Contents
1. [Introduction](#introduction)
2. [Database Schema](#database-schema)
3. [Setup Instructions](#setup-instructions)
4. [SQL Scripts](#sql-scripts)
5. [Usage](#usage)
6. [Contributing](#contributing)
7. [License](#license)

## Introduction

The Restaurant Management System is designed to streamline the management of a restaurant by providing a centralized database. This system will help restaurant owners and staff manage customer orders, employee information, menu items, and inventory efficiently.

## Database Schema

The database schema consists of the following tables:

1. **Customers**
   - `customer_id` (Primary Key)
   - `first_name`
   - `last_name`
   - `email`
   - `phone_number`

2. **Employees**
   - `employee_id` (Primary Key)
   - `first_name`
   - `last_name`
   - `position`
   - `salary`
   - `hire_date`

3. **MenuItems**
   - `item_id` (Primary Key)
   - `name`
   - `description`
   - `price`
   - `category`

4. **Orders**
   - `order_id` (Primary Key)
   - `customer_id` (Foreign Key)
   - `order_date`
   - `total_amount`

5. **OrderDetails**
   - `order_detail_id` (Primary Key)
   - `order_id` (Foreign Key)
   - `item_id` (Foreign Key)
   - `quantity`
   - `price`

6. **Inventory**
   - `inventory_id` (Primary Key)
   - `item_name`
   - `quantity`
   - `supplier`
   - `last_order_date`

## Setup Instructions

1. **Install SQL Server:**
   - Ensure you have a SQL server installed on your machine. You can use MySQL, PostgreSQL, SQL Server, or any other SQL database system.

2. **Create Database:**
   ```sql
   CREATE DATABASE restaurant_management;

3. **Use the Database:**
    ```sql
    USE restaurant_management;

##  SQL Scripts :

- `create_tables.sql` - Script to create all tables.
- `insert_sample_data.sql` - Script to insert sample data into the tables.
- `main.sql` - Script to all scripts and more

# Usage

- Retrieve all menu items :
 ```sql
 SELECT * FROM MenuItems;
 ```
- Retrieve all orders for a specific customer:
 ```sql
 SELECT * FROM Orders WHERE customer_id = 1;
```

# Contributing

Contributions are welcome! If you have any suggestions or improvements, please create a pull request or open an issue.

# License
This project is licensed under the MIT License. See the LICENSE file for details.
