-- Create Users table to store user credentials
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each user
    username VARCHAR(50) UNIQUE NOT NULL,    -- Username must be unique
    email VARCHAR(100) UNIQUE NOT NULL,      -- Email must be unique
    password VARCHAR(100) NOT NULL           -- Password for authentication
);

-- Create Quizzes table to store quiz information
CREATE TABLE Quizzes (
    quiz_id INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each quiz
    quiz_title VARCHAR(100) NOT NULL,        -- Title of the quiz
    description TEXT,                        -- Optional description of the quiz
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp when the quiz is created
);

-- Create Questions table to store questions for each quiz
CREATE TABLE Questions (
    question_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each question
    quiz_id INT,                                -- Foreign key linking the question to a quiz
    question_text TEXT NOT NULL,                -- The text of the question
    correct_answer VARCHAR(255),                -- The correct answer to the question
    FOREIGN KEY (quiz_id) REFERENCES Quizzes(quiz_id) -- Links to the Quizzes table
);

-- Create Answers table to store users' answers
CREATE TABLE Answers (
    answer_id INT PRIMARY KEY AUTO_INCREMENT,   -- Unique ID for each answer
    question_id INT,                            -- Foreign key linking the answer to a question
    user_id INT,                                -- Foreign key linking the answer to a user
    answer_text VARCHAR(255),                   -- The text of the user's answer
    FOREIGN KEY (question_id) REFERENCES Questions(question_id), -- Links to the Questions table
    FOREIGN KEY (user_id) REFERENCES Users(user_id)  -- Links to the Users table
);
