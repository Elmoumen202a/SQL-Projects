-- Create the electricity_usage table
CREATE TABLE electricity_usage (
    id SERIAL PRIMARY KEY,
    household_id INT,
    date DATE,
    usage_kwh FLOAT,
    cost FLOAT
);

-- Create the households table
CREATE TABLE households (
    id SERIAL PRIMARY KEY,
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code VARCHAR(10)
);