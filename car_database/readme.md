# 🚗 Car Database  🚗

## Project Overview
This SQL project is designed to collect, manage, and analyze car data. The project includes tables for `CarModel`, `Owner`, and `ServiceHistory` to keep track of car details, ownership, and service history.

## Files

- **car_data.sql**: 🚗 Collect and Manage Car Data.This file sets up tables to store car model information, owner details, and service history.
- **tests.sql**: Provides sample ✅ Test Queries for Car Database 
- **README.md**: This file, which includes  detailed explanations for each field in the tables, helping to understand the purpose and structure of the project .

## Table Structure and Field Explanations 📋

### 1. CarModel 🚙
Stores general information about each car.
- **CarID** (INT, Primary Key)  
  Unique identifier for each car in the database.
- **Make** (VARCHAR(50), NOT NULL)  
  Manufacturer of the car (e.g., Toyota, Ford).
- **Model** (VARCHAR(50), NOT NULL)  
  Model name of the car (e.g., Camry, Civic).
- **Year** (INT, NOT NULL)  
  Year the car was manufactured.
- **Color** (VARCHAR(20))  
  Color of the car.

### 2. Owner 👤
Stores information about the car's owner.
- **OwnerID** (INT, Primary Key)  
  Unique identifier for each owner in the database.
- **Name** (VARCHAR(100), NOT NULL)  
  Full name of the car owner.
- **Address** (VARCHAR(255))  
  Physical address of the owner.
- **PhoneNumber** (VARCHAR(15))  
  Contact phone number of the owner.

### 3. ServiceHistory 🛠️
Keeps records of maintenance and service history for each car.
- **ServiceID** (INT, Primary Key)  
  Unique identifier for each service record.
- **CarID** (INT, Foreign Key)  
  Links the service record to a specific car from the `CarModel` table.
- **ServiceDate** (DATE)  
  Date on which the service was performed.
- **Description** (TEXT)  
  Brief description of the service (e.g., oil change, tire rotation).
- **Cost** (DECIMAL(10, 2))  
  Total cost of the service performed.

## Sample Data 📊
The database includes sample data to test and demonstrate the functionality of the project, featuring three cars with various models, years, and service records.

## Test Queries ✅
Run the `tests.sql` file to ensure the database performs as expected. Sample queries include:
- Listing cars manufactured after a specific year
- Viewing all services for a specific car
- Joining car models with their respective owners
- Calculating total service costs per car

## Usage 🛠️
To set up and use this project:
1. Execute `car_data.sql` to create and populate the database.
2. Run `tests.sql` to verify the database structure and functionality.

Happy querying! 🧑‍💻
