-- Query to calculate the total calories burned per user
SELECT user_id, SUM(calories_burned) AS total_calories
FROM Workouts
GROUP BY user_id;

-- Query to get the most common exercise for each user
SELECT u.user_id, e.name AS most_common_exercise, COUNT(we.exercise_id) AS times_performed
FROM Users u
JOIN Workouts w ON u.user_id = w.user_id
JOIN Workout_Exercises we ON w.workout_id = we.workout_id
JOIN Exercises e ON we.exercise_id = e.exercise_id
GROUP BY u.user_id, e.name
ORDER BY u.user_id, times_performed DESC;

-- Query to calculate average reps and sets for each exercise type
SELECT e.category, AVG(we.sets) AS avg_sets, AVG(we.reps) AS avg_reps
FROM Workout_Exercises we
JOIN Exercises e ON we.exercise_id = e.exercise_id
GROUP BY e.category;
