# Expense Tracker SQL Project

This project is designed to track and analyze personal expenses using SQL. The project includes scripts to create an `expenses` table, insert data, and run queries to analyze the data.

## Files

- **expenses.sql**: Contains the SQL commands for creating the table, inserting data, and querying expenses.
- **expenses_data.csv**: Provides sample data for the expenses in CSV format.
- **README.md**: This file, which includes setup instructions and examples of how to query the data.

## Setup

1. Load the `expenses.sql` script into your SQL database.
2. If needed, load data from `expenses_data.csv` into the `expenses` table.

## Usage

Run the following queries to interact with your data:

- **View all expenses:**
  ```sql
  SELECT * FROM expenses;

- **Calculate the total amount spent:**
  ```sql
    SELECT SUM(amount) AS total_spent FROM expenses;


- **View expenses by category**
  ```sql
    SELECT category, SUM(amount) AS amount_spent FROM expenses GROUP BY category;

