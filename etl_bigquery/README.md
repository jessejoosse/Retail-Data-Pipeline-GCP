# Retail-Data-Pipeline-GCP
# ETL_BigQuery

🚀 ETL in BigQuery (Retail Data Pipeline)

📌 Overview

This project is part of the Retail Data Pipeline (GCP) and focuses on extracting, transforming, and loading (ETL) retail sales data into Google BigQuery for structured analysis.

The goal is to:
✅ Ingest raw CSV sales data from Google Cloud Storage (GCS)
✅ Load the data into BigQuery tables
✅ Apply SQL transformations to clean and model the data for analytics

🔧 Technologies Used

Google Cloud Storage (GCS) – Raw data storage

Google BigQuery – Cloud Data Warehouse

SQL – Data transformation and aggregation

Python (Optional for automation)

📂 Project Structure
```
etl_bigquery/
│── sql_scripts/       # SQL queries for data transformation
│── extraction_scripts/  # Python scripts for extracting AdventureWorks data from MS SQL
│── raw_data/          # AdventureWorks CSV files (uploaded to GCS)
│── README.md          # Documentation for ETL process
```
🛠 Steps to Recreate

📌 Optional Step: Extract Data from MS SQL AdventureWorks
Prerequisite:  Access to an instance of the AdventureWorks2019 database must be available and accessible.

If you prefer to extract the data yourself instead of using the provided CSVs, use the Python scripts in extraction_scripts/ to pull data directly from an MS SQL AdventureWorks2019 database.

Steps to Run the Extraction Scripts:

1. Navigate to extraction_scripts/.

2. Install required Python dependencies:
```
pip install pandas pyodbc
```
3. Modify the database connection string in the scripts to match your environment.

4. Run the scripts to extract data into CSV format:
```
python get_customer_data.py
python get_person_data.py
python get_product_data.py
python get_sales_order_detail_data.py
python get_sales_order_header_data.py
python get_store_data.py
```
5. Upload the extracted CSVs to Google Cloud Storage (GCS) before proceeding to Step 1 below.

1️⃣ Upload Data to Google Cloud Storage (GCS)

Create a GCS Bucket: adventureworks-data.

Upload CSV files (sales_order_header.csv, sales_order_detail.csv, production_products.csv, person_person.csv, sales_customer, sales_stores.csv)

2️⃣ Load Raw Data into BigQuery

Create a BigQuery Dataset: adventureworks_sales.

Create tables for each CSV file:

1. Open BigQuery Console → Click Create Table.

2. Select Google Cloud Storage as the source.

3. Choose the CSV file from your Cloud Storage bucket (e.g., sales_order_header.csv).

4. File Format: Select CSV.

5. Table Name: Set the destination table name (e.g., sales_order_header).

6. Schema: Click Auto-detect.

7. Click Create Table.

Repeat for sales_order_detail, product, person, customer, and store.

3️⃣ Transform & Clean Data

Convert date fields to proper format:
```
ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN OrderDate TO TempOrderDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN OrderDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET OrderDate = DATE(TempOrderDate);

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempOrderDate;

ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN DueDate TO TempDueDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN DueDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET DueDate = DATE(TempDueDate);

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempDueDate;

ALTER TABLE adventureworks_sales.sales_order_header
RENAME COLUMN ShipDate TO TempShipDate;

ALTER TABLE adventureworks_sales.sales_order_header
ADD COLUMN ShipDate DATE;

UPDATE adventureworks_sales.sales_order_header
SET ShipDate = DATE(TempShipDate);

ALTER TABLE adventureworks_sales.sales_order_header
DROP COLUMN TempShipDate;
```

Remove NULL values from sales data:
```
DELETE FROM adventureworks_sales.sales_order_detail
WHERE UnitPrice IS NULL;
```
Aggregate total sales by store:
```
CREATE OR REPLACE TABLE adventureworks_sales.store_sales_summary AS
SELECT StoreID, SUM(LineTotal) AS TotalSales
FROM adventureworks_sales.sales_order_detail
GROUP BY StoreID;
```
4️⃣ Validate the Data

Check for duplicates:
```
SELECT OrderID, COUNT(*)
FROM adventureworks_sales.sales_order_header
GROUP BY OrderID
HAVING COUNT(*) > 1;
```
Verify store-wise sales trends:
```
SELECT StoreID, AVG(TotalSales) AS AvgSales
FROM adventureworks_sales.store_sales_summary
GROUP BY StoreID
ORDER BY AvgSales DESC;
```
✅ Now the data is structured and ready for analysis!

📊 Key Insights

Identified top-performing stores based on revenue

Cleaned & structured sales data for use in BI dashboards

Optimized SQL transformations for efficient queries

🔜 Next Steps & Improvements

Integrate incremental data loading for real-time updates

Optimize queries for faster execution

Automate ETL using Apache Airflow (See Project 3)

🔗 Links & Resources

📂 GitHub Repo: Retail Data Pipeline GCP

🏗 Tableau Public Dashboard: View Interactive Dashboard

📌 How to Use:

Clone this repo: git clone https://github.com/jessejoosse/Retail-Data-Pipeline-GCP.git

Follow these steps to set up BigQuery ETL

🚀 Built for scalable, cloud-based data analytics!