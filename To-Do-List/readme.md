# To-Do List SQL Project

This project demonstrates a simple SQL database for managing a to-do list application. It includes the database schema and some sample data for users and tasks.

## Project Structure

- `schema.sql`: Contains the SQL commands to create the database schema.
- `data.sql`: Contains the SQL commands to insert sample data into the database.

## Database Schema

The database consists of two tables:

1. **Users**: Stores user information.
    - `user_id`: Primary key, auto-incremented.
    - `username`: The username of the user.
    - `password`: The password of the user.
    - `email`: The email of the user.

2. **Tasks**: Stores task information.
    - `task_id`: Primary key, auto-incremented.
    - `user_id`: Foreign key referencing `Users(user_id)`.
    - `title`: The title of the task.
    - `description`: A detailed description of the task.
    - `due_date`: The due date for the task.
    - `status`: The status of the task, which can be 'pending', 'in progress', or 'completed'.
    - `created_at`: Timestamp of when the task was created.
    - `updated_at`: Timestamp of when the task was last updated.

## Sample Data

The sample data includes two users and four tasks:

- Users:
    - John Doe (username: `x_y`, email: `x_y@example.com`)
    - Jane Doe (username: `a_b`, email: `a_b@example.com`)

- Tasks:
    - Finish SQL project (assigned to John Doe, due date: 2024-07-10, status: in progress)
    - Write blog post (assigned to John Doe, due date: 2024-07-05, status: pending)
    - Read a book (assigned to Jane Doe, due date: 2024-07-15, status: pending)
    - Exercise (assigned to Jane Doe, due date: 2024-07-02, status: completed)

## How to Use

1. Run `schema.sql` to create the database and tables.
2. Run `data.sql` to insert the sample data.
3. Use a SQL client to interact with the `ToDoListDB` database.

## License

This project is licensed under the MIT License.
