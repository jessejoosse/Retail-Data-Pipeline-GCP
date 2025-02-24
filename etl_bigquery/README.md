# Retail-Data-Pipeline-GCP
# ETL_BigQuery

## 🚀 ETL in BigQuery (Retail Data Pipeline)

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
│── raw_data/          # AdventureWorks CSV files (uploaded to GCS)
│── README.md          # Documentation for ETL process
```
🛠 Steps to Recreate

1️⃣ Upload Data to Google Cloud Storage (GCS)

Create a GCS Bucket: adventureworks-data.

Upload CSV files (sales_order_header.csv, sales_order_detail.csv, etc.)

2️⃣ Load Raw Data into BigQuery

Create a BigQuery Dataset: retail_data_pipeline.

Create tables for each CSV file:

CREATE OR REPLACE TABLE retail_data_pipeline.sales_order_header AS
SELECT * FROM `adventureworks-data.sales_order_header.csv`;

Repeat for sales_order_detail, products, customers, and stores.

3️⃣ Transform & Clean Data

Convert date fields to proper format:

ALTER TABLE retail_data_pipeline.sales_order_header
ALTER COLUMN OrderDate SET DATA TYPE DATE;

Remove NULL values from sales data:

DELETE FROM retail_data_pipeline.sales_order_detail
WHERE UnitPrice IS NULL;

Aggregate total sales by store:

CREATE OR REPLACE TABLE retail_data_pipeline.store_sales_summary AS
SELECT StoreID, SUM(LineTotal) AS TotalSales
FROM retail_data_pipeline.sales_order_detail
GROUP BY StoreID;

4️⃣ Validate the Data

Check for duplicates:

SELECT OrderID, COUNT(*)
FROM retail_data_pipeline.sales_order_header
GROUP BY OrderID
HAVING COUNT(*) > 1;

Verify store-wise sales trends:

SELECT StoreID, AVG(TotalSales) AS AvgSales
FROM retail_data_pipeline.store_sales_summary
GROUP BY StoreID
ORDER BY AvgSales DESC;

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
