-- Create a database for Morocco's population data
-- This line creates a database called 'morocco_population' to store all the data related to regions and cities in Morocco.
CREATE DATABASE morocco_population;

-- Use the database
-- After creating the database, I select it to be the active database where I will create tables and insert data.
USE morocco_population;

-- Create a table for the regions in Morocco
-- This table stores region data with two columns: 'region_id' as the primary key and 'region_name' for the name of the region.
CREATE TABLE regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region_name VARCHAR(100) NOT NULL
);

-- Create a table for the cities and their population data
-- This table stores city data. 'city_id' is the primary key, 'city_name' holds the city name, 'region_id' links to the regions table, and 'population' holds the population value.
CREATE TABLE cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    city_name VARCHAR(100) NOT NULL,
    region_id INT,
    population INT,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- Insert data into the regions table
-- Here I insert names of several regions in Morocco into the 'regions' table.
INSERT INTO regions (region_name) VALUES
('Casablanca-Settat'),
('Rabat-Salé-Kénitra'),
('Fès-Meknès'),
('Marrakech-Safi'),
('Tanger-Tétouan-Al Hoceïma');

-- Insert data into the cities table
-- This section inserts several cities in Morocco along with their respective region and population into the 'cities' table.
INSERT INTO cities (city_name, region_id, population) VALUES
('Casablanca', 1, 3500000),
('Rabat', 2, 580000),
('Fès', 3, 1200000),
('Marrakech', 4, 930000),
('Tanger', 5, 950000);

-- Query: Calculate the total population of Morocco
-- This query calculates the total population of all cities in Morocco by summing up the population values from the 'cities' table.
SELECT SUM(population) AS total_population FROM cities;

-- Query: Get the population of each region
-- This query groups the cities by region and calculates the total population for each region.
SELECT r.region_name, SUM(c.population) AS region_population
FROM regions r
JOIN cities c ON r.region_id = c.region_id
GROUP BY r.region_name;

-- Query: Calculate the average population per city
-- This query calculates the average population by taking the mean of the population column in the 'cities' table.
SELECT AVG(population) AS average_city_population FROM cities;

-- Query: Get the population of a specific city (e.g., Casablanca)
-- This query retrieves the population of Casablanca by filtering the 'cities' table for the specific city.
SELECT city_name, population FROM cities WHERE city_name = 'Casablanca';
