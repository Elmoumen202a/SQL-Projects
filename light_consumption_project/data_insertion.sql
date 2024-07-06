-- Switch to the light_consumption database
USE light_consumption;

-- Insert sample data into the Users table
INSERT INTO Users (username, email, created_at) VALUES 
('alice', 'alice@example.com', '2023-01-01 10:00:00'),  -- User Alice
('bob', 'bob@example.com', '2023-02-01 11:00:00');      -- User Bob

-- Insert sample data into the Consumption table
INSERT INTO Consumption (user_id, date, consumption_type, amount) VALUES 
(1, '2023-06-01', 'Electricity', 100.50),  -- Alice's electricity consumption on 2023-06-01
(1, '2023-06-02', 'Water', 30.75),         -- Alice's water consumption on 2023-06-02
(2, '2023-06-01', 'Electricity', 120.00),  -- Bob's electricity consumption on 2023-06-01
(2, '2023-06-03', 'Gas', 50.00);           -- Bob's gas consumption on 2023-06-03
