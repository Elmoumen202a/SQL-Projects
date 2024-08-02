-- View all tasks
SELECT * FROM tasks;

-- Add a new task
INSERT INTO tasks (title, description, status, due_date)
VALUES ('Read a book', 'Finish reading "1984" by George Orwell', 'Pending', '2024-08-15');

-- Update a task's status
UPDATE tasks
SET status = 'Completed'
WHERE id = 1;

-- Delete a task
DELETE FROM tasks
WHERE id = 2;
