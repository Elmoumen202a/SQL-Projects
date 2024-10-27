# 🏋️ Workout Routine Tracker Database

This project sets up a SQL-based workout routine tracker that allows users to:
- Log personal information (age, height, weight).
- Track workouts by logging exercises, duration, and calories burned.
- Analyze workout data to view progress and insights.

## 🗂️ Project Structure
- **workout_routine.sql**: SQL script to set up the database schema.
- **analysis.sql**: Analysis queries to gather insights on workouts.
- **tests.sql**: Sample data to test and verify the schema.
- **README.md**: Project documentation and instructions.

## 📊 Features
1. **User Data**: Store basic information like age, height, and weight.
2. **Workout Logs**: Record workouts with calories burned and exercises performed.
3. **Analysis**: Calculate total calories burned, common exercises, and average sets/reps for exercise types.

## 📋 Example Usage
1. **Add New User**:
    ```sql
    INSERT INTO Users (user_id, username, age, height, weight) VALUES (2, 'jane_doe', 30, 160, 55);
    ```
2. **Log a Workout**:
    ```sql
    INSERT INTO Workouts (workout_id, user_id, date, duration_minutes, calories_burned) VALUES (2, 2, '2024-10-27', 45, 400);
    ```

## 📈 Analysis
To analyze workout progress, use queries in `analysis.sql`:
- Total calories burned per user
- Most common exercise per user
- Average sets and reps per exercise category

---

This workout database provides a structured way to log, track, and analyze workout routines to help users stay on top of their fitness goals. 🏆
