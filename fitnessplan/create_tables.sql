-- Create Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL
);

-- Create FitnessPlans Table
CREATE TABLE FitnessPlans (
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    plan_name VARCHAR(100),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Create Exercises Table
CREATE TABLE Exercises (
    exercise_id INT PRIMARY KEY AUTO_INCREMENT,
    exercise_name VARCHAR(100),
    description TEXT
);

-- Create Workouts Table
CREATE TABLE Workouts (
    workout_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_id INT,
    exercise_id INT,
    workout_date DATE,
    sets INT,
    reps INT,
    FOREIGN KEY (plan_id) REFERENCES FitnessPlans(plan_id),
    FOREIGN KEY (exercise_id) REFERENCES Exercises(exercise_id)
);
