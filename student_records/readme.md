# Student Records Management Project

## Project Overview

This project is a simple database system for managing student records, course information, and enrollments. The project uses SQL to create and manage three core tables: `students`, `courses`, and `enrollments`. It includes schema design, sample data, and basic queries to interact with the data.

## Database Structure

1. **Students Table**:
   - `student_id`: A unique identifier for each student (auto-incremented).
   - `first_name`: First name of the student.
   - `last_name`: Last name of the student.
   - `date_of_birth`: The student’s birth date.
   - `gender`: The student’s gender (Male 'M' or Female 'F').
   - `enrollment_date`: Date the student enrolled.

2. **Courses Table**:
   - `course_id`: A unique identifier for each course (auto-incremented).
   - `course_name`: Name of the course.
   - `credits`: Number of credits for the course.

3. **Enrollments Table**:
   - `enrollment_id`: A unique identifier for each enrollment (auto-incremented).
   - `student_id`: A reference to the student in the `students` table.
   - `course_id`: A reference to the course in the `courses` table.
   - `enrollment_date`: Date the student enrolled in the course.

## Installation and Setup

1. Download or clone the project.
2. Run the SQL queries from `student_records.sql` in your MySQL or any other SQL database management tool.
3. Sample data has been added to demonstrate the system. You can modify or add your own data as needed.

# License

This project is open-source and available under the MIT License.