-- Step 1: Create the Customers table
-- This table stores information about the store's customers.
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,          -- Unique ID for each customer.
    first_name VARCHAR(50),               -- Customer's first name.
    last_name VARCHAR(50),                -- Customer's last name.
    email VARCHAR(100),                   -- Customer's email address.
    phone VARCHAR(20),                    -- Customer's phone number.
    country VARCHAR(50),                  -- Country where the customer resides.
    postal_code VARCHAR(20),              -- Postal code for the customer's address.
    city VARCHAR(50)                      -- City where the customer lives.
);

-- Step 2: Create the Invoices table
-- This table contains details about purchases made by customers.
CREATE TABLE Invoices (
    invoice_id INT PRIMARY KEY,           -- Unique ID for each invoice.
    customer_id INT,                      -- ID of the customer who made the purchase.
    invoice_date DATE,                    -- Date of the invoice.
    total DECIMAL(10, 2),                 -- Total amount of the invoice.
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)  -- Links each invoice to a customer.
);

-- Step 3: Create the Tracks table
-- This table contains information about the tracks available in the store.
CREATE TABLE Tracks (
    track_id INT PRIMARY KEY,             -- Unique ID for each track.
    name VARCHAR(100),                    -- Name of the track.
    album_id INT,                         -- ID of the album this track belongs to.
    media_type_id INT,                    -- ID of the media type for the track (e.g., MP3, WAV).
    genre_id INT,                         -- ID of the genre of the track.
    composer VARCHAR(100),                -- Composer of the track.
    milliseconds INT,                     -- Length of the track in milliseconds.
    bytes INT,                            -- Size of the track file in bytes.
    unit_price DECIMAL(10, 2)             -- Price per track.
);

-- Step 4: Create the Albums table
-- This table stores information about albums, which contain tracks.
CREATE TABLE Albums (
    album_id INT PRIMARY KEY,             -- Unique ID for each album.
    title VARCHAR(100),                   -- Title of the album.
    artist_id INT                         -- ID of the artist who created the album.
);

-- Step 5: Create the Artists table
-- This table stores information about the artists who create the albums.
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,            -- Unique ID for each artist.
    name VARCHAR(100)                     -- Name of the artist.
);

-- Step 6: Create the Invoice_Items table
-- This table contains individual items within each invoice (i.e., tracks purchased).
CREATE TABLE Invoice_Items (
    invoice_item_id INT PRIMARY KEY,      -- Unique ID for each invoice item.
    invoice_id INT,                       -- ID of the invoice to which this item belongs.
    track_id INT,                         -- ID of the track purchased.
    unit_price DECIMAL(10, 2),            -- Unit price of the track.
    quantity INT,                         -- Quantity of the track purchased.
    FOREIGN KEY (invoice_id) REFERENCES Invoices(invoice_id),   -- Links to the corresponding invoice.
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)          -- Links to the purchased track.
);

-- Step 7: Add foreign key to link Tracks to Albums
-- This links each track to an album.
ALTER TABLE Tracks
ADD FOREIGN KEY (album_id) REFERENCES Albums(album_id);

-- Step 8: Add foreign key to link Albums to Artists
-- This links each album to the artist who created it.
ALTER TABLE Albums
ADD FOREIGN KEY (artist_id) REFERENCES Artists(artist_id);
