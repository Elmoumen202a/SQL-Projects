# Digital Music Store Analysis

## Project Overview
This project is designed to analyze the sales and customer data from a digital music store. The database consists of multiple tables that represent customers, artists, albums, tracks, invoices, and more. The goal is to gather insights into customer behavior, track sales, and explore music preferences using SQL queries.

## Database Structure
The database contains the following key tables:

- **Customers**: Information about the store’s customers.
- **Invoices**: Details of purchases made by customers.
- **Tracks**: Information about the tracks available in the store.
- **Albums**: Albums that contain tracks.
- **Artists**: Artists who have produced the albums.
- **Invoice_Items**: Details of individual items within each invoice.

### Tables and Field Names:

1. **Customers**  
   - `customer_id` (INT): Unique ID for each customer.  
   - `first_name` (VARCHAR): Customer's first name.  
   - `last_name` (VARCHAR): Customer's last name.  
   - `email` (VARCHAR): Customer's email address.  
   - `phone` (VARCHAR): Customer's phone number.  
   - `country` (VARCHAR): Customer's country of residence.  
   - `postal_code` (VARCHAR): Postal code for customer's address.  
   - `city` (VARCHAR): City where the customer lives.

2. **Invoices**  
   - `invoice_id` (INT): Unique ID for each invoice.  
   - `customer_id` (INT): ID of the customer who made the purchase.  
   - `invoice_date` (DATE): Date of the invoice.  
   - `total` (DECIMAL): Total amount of the invoice.

3. **Tracks**  
   - `track_id` (INT): Unique ID for each track.  
   - `name` (VARCHAR): Name of the track.  
   - `album_id` (INT): ID of the album to which the track belongs.  
   - `media_type_id` (INT): ID of the track's media type.  
   - `genre_id` (INT): ID of the track's genre.  
   - `composer` (VARCHAR): Composer of the track.  
   - `milliseconds` (INT): Length of the track in milliseconds.  
   - `bytes` (INT): Size of the track in bytes.  
   - `unit_price` (DECIMAL): Price per track.

4. **Albums**  
   - `album_id` (INT): Unique ID for each album.  
   - `title` (VARCHAR): Title of the album.  
   - `artist_id` (INT): ID of the artist who created the album.

5. **Artists**  
   - `artist_id` (INT): Unique ID for each artist.  
   - `name` (VARCHAR): Name of the artist.

6. **Invoice_Items**  
   - `invoice_item_id` (INT): Unique ID for each invoice item.  
   - `invoice_id` (INT): ID of the invoice.  
   - `track_id` (INT): ID of the track sold.  
   - `unit_price` (DECIMAL): Unit price of the track.  
   - `quantity` (INT): Quantity of tracks purchased.

# Extra Explanation:

- Customers Table: Stores customer details such as name, email, and country.
- Invoices Table: Contains the details of purchases, linking to the Customers table.
- Tracks Table: Holds information about each track (e.g., name, composer, price).
- Albums Table: Albums that contain multiple tracks, linked to Artists.
- Artists Table: Information about artists, linked to albums.
- Invoice_Items Table: Holds details about individual items (tracks) within each invoice.
- Foreign Keys: Ensure relational links between tables, connecting tracks to albums, albums to artists, and invoice items to invoices and tracks.

## Queries
The following are example queries to gather insights from the database:
- List the top 10 selling tracks.
- Find the total sales per customer.
- Analyze the sales by genre.

## How to Use
1. Import the SQL schema to set up the database.
2. Run the example queries to analyze the data.
3. Modify or create new queries to explore different aspects of the digital music store.
