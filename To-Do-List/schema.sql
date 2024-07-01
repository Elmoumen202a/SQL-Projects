-- Create a new database for the to-do list application
CREATE DATABASE ToDoListDB;

-- Select the newly created database
USE ToDoListDB;

-- Create a table to store user information
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key for the Users table, auto-incremented
    username VARCHAR(50) NOT NULL,           -- Username of the user, cannot be NULL
    password VARCHAR(50) NOT NULL,           -- Password of the user, cannot be NULL
    email VARCHAR(100) NOT NULL              -- Email of the user, cannot be NULL
);

-- Create a table to store task information
CREATE TABLE Tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,  -- Primary key for the Tasks table, auto-incremented
    user_id INT,                             -- Foreign key linking to the Users table
    title VARCHAR(100) NOT NULL,             -- Title of the task, cannot be NULL
    description TEXT,                        -- Description of the task, optional
    due_date DATE,                           -- Due date for the task
    status ENUM('pending', 'in progress', 'completed') DEFAULT 'pending',  -- Status of the task with a default value
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- Timestamp of task creation
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  -- Timestamp of last update
    FOREIGN KEY (user_id) REFERENCES Users(user_id)  -- Foreign key constraint
);
