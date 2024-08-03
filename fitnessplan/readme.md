# Fitness Plan Project

This project is a simple fitness plan database implemented in SQL. It includes tables for users, fitness plans, exercises, and workouts. The project includes scripts to create tables, insert sample data, and run example queries.

## Project Structure

- `create_tables.sql`: Script to create the necessary tables.
- `insert_data.sql`: Script to insert sample data into the tables.
- `queries.sql`: Script containing example queries to retrieve data.
- `README.md`: Documentation of the project.

## Tables and Fields

### Users

Stores user information.

- `user_id`: Unique identifier for each user (Primary Key).
- `username`: The username chosen by the user.
- `email`: The email address of the user.
- `password`: The password for the user's account (should be hashed in a real-world application).

### FitnessPlans

Stores information about fitness plans created by users.

- `plan_id`: Unique identifier for each fitness plan (Primary Key).
- `user_id`: Foreign key linking to the `Users` table, indicating the owner of the fitness plan.
- `plan_name`: The name given to the fitness plan.
- `start_date`: The start date of the fitness plan.
- `end_date`: The end date of the fitness plan.

### Exercises

Stores information about different exercises that can be part of a fitness plan.

- `exercise_id`: Unique identifier for each exercise (Primary Key).
- `exercise_name`: The name of the exercise.
- `description`: A brief description of the exercise.

### Workouts

Stores records of individual workouts performed as part of a fitness plan.

- `workout_id`: Unique identifier for each workout log (Primary Key).
- `plan_id`: Foreign key linking to the `FitnessPlans` table, indicating which fitness plan the workout belongs to.
- `exercise_id`: Foreign key linking to the `Exercises` table, indicating which exercise was performed.
- `workout_date`: The date the workout was performed.
- `sets`: The number of sets performed for the exercise.
- `reps`: The number of repetitions performed in each set.

## Setup

- Create the database and run `create_tables.sql` to create the tables.
   ```sql
   SOURCE create_tables.sql;

# License

This project is licensed under the MIT License.