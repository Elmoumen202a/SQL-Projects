# Contacts Database Project

This project demonstrates how to set up a simple SQL database to store contact information, including names, addresses, and telephone numbers.

## Getting Started

To get started with this project, you'll need to have SQLite installed. Follow the instructions below to set up and run the project.

### Prerequisites

- SQLite

### Setting Up the Database

1. Open your terminal.
2. Navigate to the directory containing the `database.sql` file.
3. Run the following command to create the database and the `contacts` table:

    ```sh
    sqlite3 contacts.db < database.sql
    ```

### Running SQL Scripts

To run the SQL scripts, use the following commands:

- **Select all contacts:**

    ```sh
    sqlite3 contacts.db < select_all_contacts.sql
    ```

- **Insert a new contact:**

    ```sh
    sqlite3 contacts.db < insert_contact.sql
    ```

- **Update a contact:**

    ```sh
    sqlite3 contacts.db < update_contact.sql
    ```

- **Delete a contact:**

    ```sh
    sqlite3 contacts.db < delete_contact.sql
    ```

### Project Structure

- database.sql
- select_all_contacts.sql
- insert_contact.sql
- update_contact.sql
- delete_contact.sql
- readme.md

### License

This project is licensed under the MIT License.
