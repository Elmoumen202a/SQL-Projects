SELECT 
    consumption_type, 
    SUM(amount) as total_amount
FROM 
    Consumption
GROUP BY 
    consumption_type;
