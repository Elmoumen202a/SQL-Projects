-- Creating the CarModel table to store general car information
CREATE TABLE CarModel (
    CarID INT PRIMARY KEY,            -- Unique ID for each car
    Make VARCHAR(50) NOT NULL,         -- Manufacturer (e.g., Toyota, Ford)
    Model VARCHAR(50) NOT NULL,        -- Model name (e.g., Camry, Focus)
    Year INT NOT NULL,                 -- Year of manufacturing
    Color VARCHAR(20)                  -- Car color
);

-- Creating the Owner table to store owner details
CREATE TABLE Owner (
    OwnerID INT PRIMARY KEY,           -- Unique ID for each owner
    Name VARCHAR(100) NOT NULL,        -- Owner's full name
    Address VARCHAR(255),              -- Owner's address
    PhoneNumber VARCHAR(15)            -- Owner's phone number
);

-- Creating the ServiceHistory table to store maintenance and service records
CREATE TABLE ServiceHistory (
    ServiceID INT PRIMARY KEY,         -- Unique ID for each service record
    CarID INT REFERENCES CarModel(CarID),  -- The car being serviced
    ServiceDate DATE,                  -- Date of the service
    Description TEXT,                  -- Service description
    Cost DECIMAL(10, 2)                -- Cost of the service
);

-- Sample data insertion
INSERT INTO CarModel (CarID, Make, Model, Year, Color) VALUES
(1, 'Toyota', 'Camry', 2015, 'Red'),
(2, 'Ford', 'Focus', 2018, 'Blue'),
(3, 'Honda', 'Civic', 2016, 'Black');

INSERT INTO Owner (OwnerID, Name, Address, PhoneNumber) VALUES
(1, 'Alice Smith', '123 Main St', '555-1234'),
(2, 'Bob Jones', '456 Elm St', '555-5678'),
(3, 'Carol White', '789 Oak St', '555-9012');

INSERT INTO ServiceHistory (ServiceID, CarID, ServiceDate, Description, Cost) VALUES
(1, 1, '2024-01-15', 'Oil change and tire rotation', 150.00),
(2, 2, '2024-02-20', 'Brake replacement', 300.00),
(3, 3, '2024-03-10', 'Battery replacement', 120.00);
