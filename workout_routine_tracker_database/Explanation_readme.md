
# Workout Routine Tracker - SQL Project

This project provides a SQL-based solution for tracking workout routines and analyzing exercise data. The database schema organizes users, exercises, and workout sessions, enabling detailed insights into workout patterns. The following documentation explains each SQL script file in detail as if it were part of a SQL course.

---
My resources [resources](./resources_readme.md) that  help me  with creating a SQL-based workout routine tracker:

- Database Design
**Database Systems: The Complete Book**by Garcia-Molina et al.
**SQL for Data Science** (Coursera)

- SQL Syntax and Functions
**PostgreSQL Documentation**
**W3Schools SQL Tutorial**

- SQL Analytics and Aggregations
**SQL Queries for Mere Mortals** by Viescas and Hernandez
**Mode SQL Tutorial**

## 1. Database Schema Explanation (`workout_routine.sql`)

This section details each table created in the schema, along with the purpose of each column and constraint.

### 1.1 Creating the `Users` Table

```sql
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    age INT,
    height FLOAT,
    weight FLOAT
);
```

- **`user_id`**: A unique identifier for each user, ensuring every user has a unique `user_id`.
- **`username`**: The user's name. The `NOT NULL` constraint ensures every user has a username.
- **`age`**, **`height`**, **`weight`**: Track the user's age, height, and weight. These fields help monitor changes over time.

---

### 1.2 Creating the `Exercises` Table

```sql
CREATE TABLE Exercises (
    exercise_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    description TEXT
);
```

- **`exercise_id`**: Unique identifier for each exercise.
- **`name`**: Name of the exercise, like "Push-up" or "Running".
- **`category`**: Category of exercise, such as "Cardio" or "Strength".
- **`description`**: Detailed instructions for the exercise.

---

### 1.3 Creating the `Workouts` Table

```sql
CREATE TABLE Workouts (
    workout_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    duration_minutes INT,
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
```

- **`workout_id`**: Unique ID for each workout.
- **`user_id`**: Foreign key linking the workout to a user.
- **`date`**: Date of the workout session.
- **`duration_minutes`**: Duration in minutes.
- **`calories_burned`**: Calories burned.

---

### 1.4 Creating the `Workout_Exercises` Table

```sql
CREATE TABLE Workout_Exercises (
    workout_exercise_id INT PRIMARY KEY,
    workout_id INT,
    exercise_id INT,
    sets INT,
    reps INT,
    weight_used FLOAT,
    FOREIGN KEY (workout_id) REFERENCES Workouts(workout_id),
    FOREIGN KEY (exercise_id) REFERENCES Exercises(exercise_id)
);
```

- **`workout_exercise_id`**: Unique identifier for each record.
- **`workout_id`** and **`exercise_id`**: Foreign keys linking the workout and exercise.
- **`sets`** and **`reps`**: Number of sets and reps.
- **`weight_used`**: Weight used for the exercise.

---

## 2. Analysis Explanation (`analysis.sql`)

### 2.1 Calculate Total Calories Burned Per User

```sql
SELECT user_id, SUM(calories_burned) AS total_calories
FROM Workouts
GROUP BY user_id;
```

Calculates the total calories burned per user:
- `SUM(calories_burned)`: Adds up calories across all workouts.
- `GROUP BY user_id`: Groups results by user.

### 2.2 Find the Most Common Exercise for Each User

```sql
SELECT u.user_id, e.name AS most_common_exercise, COUNT(we.exercise_id) AS times_performed
FROM Users u
JOIN Workouts w ON u.user_id = w.user_id
JOIN Workout_Exercises we ON w.workout_id = we.workout_id
JOIN Exercises e ON we.exercise_id = e.exercise_id
GROUP BY u.user_id, e.name
ORDER BY u.user_id, times_performed DESC;
```

Finds each user’s most frequent exercise:
- Counts exercises using `COUNT(we.exercise_id)`.
- Sorts results by most frequent exercise.

### 2.3 Calculate Average Sets and Reps per Exercise Category

```sql
SELECT e.category, AVG(we.sets) AS avg_sets, AVG(we.reps) AS avg_reps
FROM Workout_Exercises we
JOIN Exercises e ON we.exercise_id = e.exercise_id
GROUP BY e.category;
```

Calculates averages:
- `AVG(we.sets)` and `AVG(we.reps)`: Calculate average sets and reps by category.
- `GROUP BY e.category`: Groups by category.

---

## 3. Testing Explanation (`tests.sql`)

The `tests.sql` script adds sample data for testing.

```sql
-- Insert a user
INSERT INTO Users (user_id, username, age, height, weight) VALUES (1, 'john_doe', 25, 175, 70);
```

- Adds a user to test the `Users` table setup.

```sql
-- Insert a workout session
INSERT INTO Workouts (workout_id, user_id, date, duration_minutes, calories_burned) 
VALUES (1, 1, '2024-10-27', 30, 300);
```

- Adds a workout to verify the `Workouts` table and relationships with `Users`.

---

This README provides the complete setup and explanation of a structured workout routine tracker in SQL. Enjoy building and analyzing workout routines! 💪
