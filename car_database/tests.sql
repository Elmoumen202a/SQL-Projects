-- Test 1: Retrieve all cars manufactured after 2016
SELECT * FROM CarModel WHERE Year > 2016;

-- Test 2: Get all services for a specific car (e.g., Toyota Camry)
SELECT * FROM ServiceHistory WHERE CarID = 1;

-- Test 3: Display car models with their owner names
SELECT CarModel.Make, CarModel.Model, Owner.Name
FROM CarModel
JOIN Owner ON CarModel.CarID = Owner.OwnerID;

-- Test 4: Calculate total service costs for each car
SELECT CarID, SUM(Cost) AS TotalServiceCost
FROM ServiceHistory
GROUP BY CarID;
