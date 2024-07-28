-- Drop tables if they exist
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;
DROP TABLE IF EXISTS movie_actors;

-- Create movies table
CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year INT,
    genre VARCHAR(50)
);

-- Create actors table
CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_year INT
);

-- Create a join table for movies and actors
CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    FOREIGN KEY (actor_id) REFERENCES actors(id)
);

-- Insert sample data into movies
INSERT INTO movies (title, release_year, genre) VALUES
('The Shawshank Redemption', 1994, 'Drama'),
('The Godfather', 1972, 'Crime'),
('The Dark Knight', 2008, 'Action');

-- Insert sample data into actors
INSERT INTO actors (name, birth_year) VALUES
('Tim Robbins', 1958),
('Morgan Freeman', 1937),
('Marlon Brando', 1924),
('Christian Bale', 1974),
('Heath Ledger', 1979);

-- Insert sample data into movie_actors
INSERT INTO movie_actors (movie_id, actor_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5);

-- Query to fetch movies and their actors
SELECT 
    m.title AS movie_title,
    a.name AS actor_name
FROM 
    movies m
JOIN 
    movie_actors ma ON m.id = ma.movie_id
JOIN 
    actors a ON ma.actor_id = a.id;
