import psycopg2

def analyze_data():
    # Connect to the PostgreSQL database
    conn = psycopg2.connect(
        dbname="your_database",
        user="your_username",
        password="your_password",
        host="your_host",
        port="your_port"
    )
    cur = conn.cursor()

    # Execute the query to get total electricity usage per month
    cur.execute("""
        SELECT
            DATE_TRUNC('month', date) AS month,
            SUM(usage_kwh) AS total_usage
        FROM
            electricity_usage
        GROUP BY
            month
        ORDER BY
            month;
    """)
    rows = cur.fetchall()
    
    # Print the results of the query
    for row in rows:
        print(f"Month: {row[0]}, Total Usage: {row[1]} kWh")

    # Close the cursor and connection
    cur.close()
    conn.close()

if __name__ == "__main__":
    analyze_data()
