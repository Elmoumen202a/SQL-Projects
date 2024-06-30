-- Create the 'contacts' table
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    telephone TEXT NOT NULL
);

-- Insert some sample data into the 'contacts' table
INSERT INTO contacts (name, address, telephone) VALUES
('John Doe', '123 Main St, Anytown, USA', '555-1234'),
('Jane Smith', '456 Oak Ave, Othercity, USA', '555-5678'),
('Emily Johnson', '789 Pine Rd, Elsewhere, USA', '555-9101');
