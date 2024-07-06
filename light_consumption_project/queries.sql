-- Switch to the light_consumption database
USE light_consumption;

-- Total Consumption by User
SELECT 
    u.username, 
    SUM(c.amount) as total_consumption
FROM 
    Users u
JOIN 
    Consumption c ON u.user_id = c.user_id
GROUP BY 
    u.username;

-- This query joins the Users and Consumption tables, groups by username, and calculates the total consumption amount for each user.

-- Daily Consumption
SELECT 
    date, 
    SUM(amount) as daily_total
FROM 
    Consumption
GROUP BY 
    date;

-- This query groups the consumption data by date and calculates the total amount consumed each day.

-- Consumption by Type
SELECT 
    consumption_type, 
    SUM(amount) as total_amount
FROM 
    Consumption
GROUP BY 
    consumption_type;

-- This query groups the consumption data by type of consumption (e.g., Electricity, Water) and calculates the total amount for each type.
