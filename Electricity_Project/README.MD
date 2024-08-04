# Electricity Project

This project is designed to manage and analyze electricity data using SQL. The project includes scripts for creating tables, inserting data, and performing queries to analyze the data.

## File Structure

- `data/`
  - `electricity_data.sql`: SQL script to load raw electricity data.
  - `create_tables.sql`: SQL script to create the necessary tables.
  - `insert_data.sql`: SQL script to insert data into the tables.
  - `queries.sql`: SQL script to perform various queries on the data.

- `scripts/`
  - `analyze_data.py`: Python script to analyze the electricity data using SQL queries.

- `requirements.txt`: Lists the Python dependencies required for the project.

## Dependencies
- PostgreSQL
- Python 3.12.4
- psycopg2 (Python package)

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/Elmoumen202a/SQL-Projects.git
   cd Electricity_Project 
   
2. Set up the Python environment:
    ```bash
    pip install -r requirements.txt

3. Load the raw data:
    ```bash
    psql -U <username> -d <database> -f data/electricity_data.sql

4. Create the necessary tables:
    ```bash
    psql -U <username> -d <database> -f data/create_tables.sql

5. Insert data into the tables:
    ```bash
    psql -U <username> -d <database> -f data/insert_data.sql

6. Run the queries:
    ```bash
    psql -U <username> -d <database> -f data/queries.sql

7. Analyze the data using the Python script:
    ```bash
    python scripts/analyze_data.py

# License

This project is licensed under the MIT License.


