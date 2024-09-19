# Quiz Website SQL Project

## Overview
This project implements the database structure for a Quiz Website. It includes the tables needed to manage users, quizzes, questions, and the answers submitted by users.

## Features
- **User Management**: Store user details, including username and email.
- **Quiz Creation**: Store quiz titles and their respective questions.
- **Question Management**: Store quiz questions and their correct answers.
- **Answer Tracking**: Record the answers users provide during the quiz.

## Database Structure
The database consists of the following tables:
1. **Users**: Stores user credentials.
2. **Quizzes**: Contains quiz information.
3. **Questions**: Stores questions for each quiz.
4. **Answers**: Stores user-submitted answers.

### Example SQL Schema
The SQL schema can be found in the `schema.sql` file. Below is a quick overview of the main tables:
- **Users**: `user_id`, `username`, `email`, `password`
- **Quizzes**: `quiz_id`, `quiz_title`, `description`, `created_at`
- **Questions**: `question_id`, `quiz_id`, `question_text`, `correct_answer`
- **Answers**: `answer_id`, `question_id`, `user_id`, `answer_text`

## Running the Project
1. Create a new database in your SQL environment.
2. Run the `schema.sql` file to set up the tables.
3. You can now start adding users, quizzes, and questions.

