# Airplane Flight Management System

## Project Overview

This project is designed to create and manage a database for an airplane flight management system. The database will store information about flights, airplanes, passengers, and bookings. This system can be used by airlines to track flights, manage reservations, and ensure smooth operations.

## Features

- **Flight Management**: Track flight details such as flight number, departure and arrival times, and status.
- **Airplane Management**: Store information about airplanes, including type, capacity, and maintenance schedules.
- **Passenger Management**: Keep a record of passenger details, including personal information and travel history.
- **Booking Management**: Handle bookings and reservations, ensuring that seats are allocated correctly and efficiently.

## Database Schema

The database consists of the following tables:

1. **Flights**
    - `flight_id` (Primary Key)
    - `flight_number`
    - `departure_time`
    - `arrival_time`
    - `origin`
    - `destination`
    - `status`

2. **Airplanes**
    - `airplane_id` (Primary Key)
    - `model`
    - `capacity`
    - `maintenance_date`

3. **Passengers**
    - `passenger_id` (Primary Key)
    - `first_name`
    - `last_name`
    - `dob` (Date of Birth)
    - `passport_number`
    - `nationality`

4. **Bookings**
    - `booking_id` (Primary Key)
    - `passenger_id` (Foreign Key)
    - `flight_id` (Foreign Key)
    - `seat_number`
    - `booking_date`

## Create and populate the database using the data.sql script :

```bash
-- Connect to your SQL Database Management System
-- For example, in MySQL:
mysql -u your-username -p

-- Create the database
CREATE DATABASE flight_management;

-- Use the database
USE flight_management;

-- Run the script
SOURCE path/to/data.sql;


