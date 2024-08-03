-- Insert Users
INSERT INTO Users (username, email, password) VALUES
('john_doe', 'john@example.com', 'password123'),
('jane_smith', 'jane@example.com', 'password456');

-- Insert Fitness Plans
INSERT INTO FitnessPlans (user_id, plan_name, start_date, end_date) VALUES
(1, 'Weight Loss Plan', '2024-08-01', '2024-10-01'),
(2, 'Strength Training Plan', '2024-08-01', '2024-11-01');

-- Insert Exercises
INSERT INTO Exercises (exercise_name, description) VALUES
('Push-up', 'An exercise for upper body strength.'),
('Squat', 'An exercise for lower body strength.');

-- Insert Workouts
INSERT INTO Workouts (plan_id, exercise_id, workout_date, sets, reps) VALUES
(1, 1, '2024-08-02', 3, 15),
(1, 2, '2024-08-02', 3, 20),
(2, 1, '2024-08-03', 4, 10),
(2, 2, '2024-08-03', 4, 12);
