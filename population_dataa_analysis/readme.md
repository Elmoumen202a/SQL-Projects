# Population Data Analysis

This project is designed to provide an easy way to work with population data for Morocco using SQL.

## Overview

This project uses SQL to create a database for storing population data of cities in different regions of Morocco. It allows users to perform queries to calculate the total population of the country, regional populations, and city-specific statistics.

## Project Structure

- `population_data.sql`: Contains all the SQL code for creating tables, inserting data, and performing queries on the population data.
  
## Setup Instructions

1. **Install SQL Software:**
   Make sure you have MySQL or any compatible SQL software installed on your machine.

2. **Create the Database:**
   - Run the `population_data.sql` script in your SQL environment.
   - This script will create a new database called `morocco_population` and populate it with data for regions and cities in Morocco.

3. **Run Queries:**
   - After setting up the database, you can execute the queries provided in the script to retrieve various statistics like total population, regional populations, and average population per city.

## SQL Table Structure

1. **regions:**
   - `region_id`: Primary key (Auto-incremented).
   - `region_name`: Name of the region (e.g., 'Casablanca-Settat').

2. **cities:**
   - `city_id`: Primary key (Auto-incremented).
   - `city_name`: Name of the city (e.g., 'Casablanca').
   - `region_id`: Foreign key referring to the `regions` table.
   - `population`: Population of the city.

### Explanation of the Project

- **Database Creation**: We start by creating a new database (`morocco_population`) where the tables will be stored.
- **Tables**: Two tables are created: `regions` for storing regions and `cities` for storing city names and their populations. The `cities` table includes a foreign key (`region_id`) that links to the `regions` table.
- **Data Insertion**: The `INSERT` statements populate the tables with sample data (regions and cities in Morocco).
- **Queries**: Example queries are provided to calculate total population, population per region, and other useful statistics.


