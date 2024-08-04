-- SQL script to perform various queries on the data

-- Total electricity usage per month
SELECT
    DATE_TRUNC('month', date) AS month,
    SUM(usage_kwh) AS total_usage
FROM
    electricity_usage
GROUP BY
    month
ORDER BY
    month;

-- Average cost per kWh
SELECT
    AVG(cost / usage_kwh) AS avg_cost_per_kwh
FROM
    electricity_usage;

-- Usage comparison between different cities
SELECT
    h.city,
    SUM(e.usage_kwh) AS total_usage
FROM
    electricity_usage e
JOIN
    households h ON e.household_id = h.id
GROUP BY
    h.city
ORDER BY
    total_usage DESC;
