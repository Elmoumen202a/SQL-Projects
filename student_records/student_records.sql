-- Create a database named 'student_management'
CREATE DATABASE student_management;

-- Switch to the 'student_management' database
USE student_management;

-- Create a table for storing student information
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each student, auto-incremented
    first_name VARCHAR(50), -- Student's first name
    last_name VARCHAR(50), -- Student's last name
    date_of_birth DATE, -- Student's date of birth
    gender ENUM('M', 'F'), -- Gender, restricted to 'M' (Male) or 'F' (Female)
    enrollment_date DATE -- The date the student was enrolled
);

-- Create a table for storing course information
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each course, auto-incremented
    course_name VARCHAR(100), -- Name of the course
    credits INT -- Number of credits for the course
);

-- Create a table for storing enrollment information (relationship between students and courses)
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each enrollment, auto-incremented
    student_id INT, -- ID of the student, references the 'students' table
    course_id INT, -- ID of the course, references the 'courses' table
    enrollment_date DATE, -- Date the student enrolled in the course
    FOREIGN KEY (student_id) REFERENCES students(student_id), -- Link 'student_id' to 'students' table
    FOREIGN KEY (course_id) REFERENCES courses(course_id) -- Link 'course_id' to 'courses' table
);

-- Insert sample student data into the 'students' table
INSERT INTO students (first_name, last_name, date_of_birth, gender, enrollment_date)
VALUES ('John', 'Doe', '2024-05-22', 'M', '2023-09-01'), -- Sample student 1
       ('Jane', 'Smith', '2022-07-15', 'F', '2021-01-15'); -- Sample student 2

-- Insert sample course data into the 'courses' table
INSERT INTO courses (course_name, credits)
VALUES ('Mathematics', 3), -- Sample course 1
       ('English Literature', 4); -- Sample course 2

-- Insert sample enrollment data into the 'enrollments' table
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES (1, 1, '2023-09-01'), -- Student 1 enrolled in Course 1
       (2, 2, '2021-02-01'); -- Student 2 enrolled in Course 2

-- Retrieve all records from the 'students' table
SELECT * FROM students;

-- Retrieve all enrollments, including student names and course names, by joining the 'enrollments', 'students', and 'courses' tables
SELECT e.enrollment_id, s.first_name, s.last_name, c.course_name, e.enrollment_date
FROM enrollments e
JOIN students s ON e.student_id = s.student_id -- Link enrollments to students
JOIN courses c ON e.course_id = c.course_id; -- Link enrollments to courses
