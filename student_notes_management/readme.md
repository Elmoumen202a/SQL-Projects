# Student Notes Management

## Overview

This project is a simple SQL-based application for managing student notes. It includes scripts for creating the necessary database tables, inserting data, and performing basic CRUD operations.

## Database Schema

### Students Table

- `student_id`: INT, Primary Key, Auto Increment
- `first_name`: VARCHAR(50)
- `last_name`: VARCHAR(50)
- `email`: VARCHAR(100)

### Notes Table

- `note_id`: INT, Primary Key, Auto Increment
- `student_id`: INT, Foreign Key referencing `Students.student_id`
- `note`: TEXT
- `created_at`: TIMESTAMP, Default to current timestamp

## SQL files

- `tables.sql `: to create the tables.
- `insert_data.sql `:  to insert sample data into the tables.
- `select_data.sql` : to select and join data from both tables.
- `update_data.sql` : to update an existing note .
- `delete_data.sql` :  to delete a note.

## License
This project is licensed under the MIT License.



