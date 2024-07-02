-- Create Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_number VARCHAR(10) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    origin VARCHAR(50) NOT NULL,
    destination VARCHAR(50) NOT NULL,
    status VARCHAR(20) NOT NULL
);

-- Create Airplanes Table
CREATE TABLE Airplanes (
    airplane_id INT PRIMARY KEY AUTO_INCREMENT,
    model VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    maintenance_date DATE
);

-- Create Passengers Table
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    passport_number VARCHAR(20) NOT NULL,
    nationality VARCHAR(50) NOT NULL
);

-- Create Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_id INT,
    flight_id INT,
    seat_number VARCHAR(5),
    booking_date DATETIME NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Insert sample data into Flights Table
INSERT INTO Flights (flight_number, departure_time, arrival_time, origin, destination, status)
VALUES 
('AB123', '2024-07-05 08:00:00', '2024-07-05 12:00:00', 'New York', 'Los Angeles', 'Scheduled'),
('CD456', '2024-07-06 14:00:00', '2024-07-06 18:00:00', 'Chicago', 'Miami', 'Scheduled'),
('EF789', '2024-07-07 20:00:00', '2024-07-08 00:00:00', 'San Francisco', 'Seattle', 'Scheduled');

-- Insert sample data into Airplanes Table
INSERT INTO Airplanes (model, capacity, maintenance_date)
VALUES 
('Boeing 737', 180, '2024-06-30'),
('Airbus A320', 150, '2024-07-01'),
('Boeing 777', 300, '2024-06-29');

-- Insert sample data into Passengers Table
INSERT INTO Passengers (first_name, last_name, dob, passport_number, nationality)
VALUES 
('John', 'Doe', '1985-03-15', 'A1234567', 'USA'),
('Jane', 'Smith', '1990-06-20', 'B2345678', 'Canada'),
('Alice', 'Johnson', '1975-09-30', 'C3456789', 'UK');

-- Insert sample data into Bookings Table
INSERT INTO Bookings (passenger_id, flight_id, seat_number, booking_date)
VALUES 
(1, 1, '12A', NOW()),
(2, 2, '14B', NOW()),
(3, 3, '16C', NOW());
