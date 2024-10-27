-- Insert a user
INSERT INTO Users (user_id, username, age, height, weight) VALUES (1, 'john_doe', 25, 175, 70);

-- Insert exercises
INSERT INTO Exercises (exercise_id, name, category, description)
VALUES 
    (1, 'Push-up', 'Strength', 'Upper body strength exercise.'),
    (2, 'Running', 'Cardio', 'Cardiovascular exercise.');

-- Insert a workout session
INSERT INTO Workouts (workout_id, user_id, date, duration_minutes, calories_burned) 
VALUES (1, 1, '2024-10-27', 30, 300);

-- Link exercises to the workout session
INSERT INTO Workout_Exercises (workout_exercise_id, workout_id, exercise_id, sets, reps, weight_used)
VALUES 
    (1, 1, 1, 3, 15, 0), 
    (2, 1, 2, NULL, NULL, NULL);  -- For running, sets and reps aren't applicable
