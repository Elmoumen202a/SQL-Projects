# 🛍️ Shop Product Analysis 

Welcome to the **Shop Product Analysis** project! This project is designed to analyze shop products and customer purchase trends using SQL. With data on products, orders, and customer details, we can dive deep into insights about sales performance and customer behavior.

## 🗂️ Project Structure

Here's a breakdown of the project files:

- **`shop_database.sql`**: 📜This file sets up the database schema for the shop product analysis. Creates and sets up the database schema, defining tables for products, customers, orders, and order items.
- **`tests.sql`**: ✅ This file contains test queries to verify the database schema and data accuracy.In another hand contains test cases to ensure data integrity and verify correct query outputs.
- **`README.md`**: 📘 This documentation file, providing an overview of the project, tables, and example usage.

## 📊 Database Overview

The database schema consists of four key tables, each with specific relationships to capture detailed information about shop activities:

1. **Products** 🛒: Stores product information like product name, category, price, and stock quantity.
2. **Customers** 👥: Holds customer details such as name, email, phone number, and join date.
3. **Orders** 🧾: Records each order made by customers, with order dates and total amounts.
4. **Order_Items** 📦: Contains information about individual items in each order, connecting `products` and `orders` tables.

## 🔍 Analysis Examples

Here are some sample queries to uncover insights:

- **Total Sales Per Product** 💵:
  Calculate the total sales for each product by multiplying the quantity sold by the unit price.
  ```sql
  SELECT p.product_name, SUM(oi.quantity * oi.price) AS total_sales
  FROM products p
  JOIN order_items oi ON p.product_id = oi.product_id
  GROUP BY p.product_name;

- **Top Customers by Spending** 🏆: 
Identify top customers based on their total spending
```sql
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
```
## 🧪 Testing

Run tests.sql to verify the integrity of the database schema. Key tests include:
- Foreign key constraints to ensure data consistency across tables.
- Validation queries to confirm total sales calculations and identify top customers.

## 🚀 Getting Started

1. Run shop_database.sql to set up the database tables.
2. Populate the tables with sample data as needed for testing and analysis.
3. Use tests.sql to validate the schema and verify query results.
4. Run sample analysis queries to gain insights into shop performance and customer behavior.

#
Happy analyzing!
