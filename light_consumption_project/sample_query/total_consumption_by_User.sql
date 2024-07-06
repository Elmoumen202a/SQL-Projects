SELECT 
    u.username, 
    SUM(c.amount) as total_consumption
FROM 
    Users u
JOIN 
    Consumption c ON u.user_id = c.user_id
GROUP BY 
    u.username;
