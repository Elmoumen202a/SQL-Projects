-- Get all users
SELECT * FROM Users;

-- Get all fitness plans for a specific user
SELECT * FROM FitnessPlans WHERE user_id = 1;

-- Get all exercises
SELECT * FROM Exercises;

-- Get all workouts for a specific fitness plan
SELECT * FROM Workouts WHERE plan_id = 1;
