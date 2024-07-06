
CREATE DATABASE light_consumption;
USE light_consumption;

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL
);

CREATE TABLE Consumption (
    consumption_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    date DATE,
    consumption_type VARCHAR(50),
    amount DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
