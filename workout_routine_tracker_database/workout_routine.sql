-- Create table for users
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    age INT,
    height FLOAT,
    weight FLOAT
);

-- Create table for exercises
CREATE TABLE Exercises (
    exercise_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),  -- e.g., 'Cardio', 'Strength', 'Flexibility'
    description TEXT
);

-- Create table for workout sessions
CREATE TABLE Workouts (
    workout_id INT PRIMARY KEY,
    user_id INT,
    date DATE,
    duration_minutes INT,
    calories_burned INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create table to log exercise details within a workout
CREATE TABLE Workout_Exercises (
    workout_exercise_id INT PRIMARY KEY,
    workout_id INT,
    exercise_id INT,
    sets INT,
    reps INT,
    weight_used FLOAT,  -- for weightlifting exercises
    FOREIGN KEY (workout_id) REFERENCES Workouts(workout_id),
    FOREIGN KEY (exercise_id) REFERENCES Exercises(exercise_id)
);
