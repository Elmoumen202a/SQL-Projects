# IMDb Data Retrieval Project

## Overview

This project sets up a simple IMDb-like database using SQL. It includes tables for movies, actors, and their relationships. Sample data is provided for demonstration purposes.

## Requirements

- PostgreSQL or any SQL-compatible database
- SQL client (e.g., pgAdmin, DBeaver)

## Setup

1. Ensure you have PostgreSQL installed on your machine.
2. Create a new database:
    ```sh
    createdb imdb

    ```
3. Connect to the database and run the `main.sql` script:
    ```sh
    psql -d imdb -f main.sql

    ```
## main.sql Explanation

The `main.sql` script performs the following tasks:

1. Drops existing tables (`movies`, `actors`, `movie_actors`) if they exist to ensure a clean setup.
2. Creates a `movies` table with columns for movie ID, title, release year, and genre.
3. Creates an `actors` table with columns for actor ID, name, and birth year.
4. Creates a `movie_actors` join table to establish a many-to-many relationship between movies and actors.
5. Inserts sample data into the `movies` and `actors` tables.
6. Populates the `movie_actors` table with relationships between movies and actors.
7. Runs a query to fetch a list of movies along with their corresponding actors.

## Usage

The script will create the following tables:
- `movies`
- `actors`
- `movie_actors`

It will also insert sample data and run a query to fetch movies along with their actors.

## Query Example

To fetch movies and their actors, you can use the following query:

```sql
SELECT 
    m.title AS movie_title,
    a.name AS actor_name
FROM 
    movies m
JOIN 
    movie_actors ma ON m.id = ma.movie_id
JOIN 
    actors a ON ma.actor_id = a.id;

```
## Testing

To test this setup:
1. Follow the setup instructions in the `README.md` file.
2. Verify the tables are created correctly.
3. Ensure that the sample data is inserted correctly.
4. Run the query provided in the `README.md` to check if it returns the correct results.


