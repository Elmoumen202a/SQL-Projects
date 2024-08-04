-- SQL script to insert data into the tables

-- Inserting data into households table
INSERT INTO households (address, city, state, zip_code) VALUES
('123 Main St', 'Anytown', 'CA', '12345'),
('456 Elm St', 'Othertown', 'TX', '67890');

-- Inserting data into electricity_usage table
INSERT INTO electricity_usage (household_id, date, usage_kwh, cost) VALUES
(1, '2024-01-01', 30, 3.00),
(2, '2024-01-01', 25, 2.50);
