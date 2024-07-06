SELECT 
    date, 
    SUM(amount) as daily_total
FROM 
    Consumption
GROUP BY 
    date;
