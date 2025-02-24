import pyodbc
import csv

# Define your connection string; update server, database, and authentication details accordingly.
conn_str = (
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=YOUR-SERVER;"
    "DATABASE=AdventureWorks2019;"
    "Trusted_Connection=yes;"
)
conn = pyodbc.connect(conn_str)
cursor = conn.cursor()

# Execute your query
query = "SELECT * FROM Person.Person"
cursor.execute(query)

# Open the CSV file for writing (make sure the directory exists)
with open("C://Exports//person_person.csv", "w", newline="") as csvfile:
    writer = csv.writer(csvfile, delimiter=',')
    
    # Write header row using cursor.description for column names
    headers = [column[0] for column in cursor.description]
    writer.writerow(headers)
    
    # Write all data rows
    for row in cursor:
        writer.writerow(row)

# Clean up
cursor.close()
conn.close()
