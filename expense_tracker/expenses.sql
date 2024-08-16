-- Create a table named 'expenses' to store expense records
CREATE TABLE expenses (
    -- Unique identifier for each expense
    id INT PRIMARY KEY,  
    -- Date when the expense was made          
    date DATE,  
    -- Category of the expense (e.g., Groceries, Utilities)                  
    category VARCHAR(50),  
    -- Amount spent, with two decimal places for cents        
    amount DECIMAL(10, 2), 
          
);

-- Insert sample data into the 'expenses' table
-- Each row represents a different expense with the corresponding details
INSERT INTO expenses (id, date, category, amount, description)
VALUES
(1, '2024-08-01', 'Groceries', 150.00, 'Weekly grocery shopping'),
(2, '2024-08-02', 'Utilities', 75.50, 'Electricity bill'),
(3, '2024-08-03', 'Transport', 20.00, 'Bus fare'),
(4, '2024-08-04', 'Dining', 45.00, 'Dinner at a restaurant'),
(5, '2024-08-05', 'Entertainment', 60.00, 'Movie tickets');

-- Query to view all expenses in the table
-- Retrieves all rows and columns from the 'expenses' table
SELECT * FROM expenses;

-- Query to calculate the total amount spent on all expenses
-- Sums the 'amount' column to get the total expenditure
SELECT SUM(amount) AS total_spent FROM expenses;

-- Query to group expenses by category and calculate the total spent per category
-- Groups rows by 'category' and sums the 'amount' for each group
SELECT category, SUM(amount) AS amount_spent FROM expenses GROUP BY category;
