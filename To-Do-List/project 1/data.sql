-- Select the ToDoListDB database
USE ToDoListDB;

-- Insert sample user data into the Users table
INSERT INTO Users (username, password, email) VALUES
('x_y', 'password123', 'x_y@example.com'),  -- User 1
('a_b', 'securepassword', 'a_b@example.com');  -- User 2

-- Insert sample task data into the Tasks table
INSERT INTO Tasks (user_id, title, description, due_date, status) VALUES
(1, 'Finish SQL project', 'Complete the SQL project for the to-do list web application', '2024-07-10', 'in progress'),  -- Task 1 for User 1
(1, 'Write blog post', 'Write a new post about web development', '2024-07-05', 'pending'),  -- Task 2 for User 1
(2, 'Read a book', 'Read the new novel by my favorite author', '2024-07-15', 'pending'),  -- Task 1 for User 2
(2, 'Exercise', 'Go for a run in the park', '2024-07-02', 'completed');  -- Task 2 for User 2
