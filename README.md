# Retail-Data-Pipeline-GCP
# Master readme file for project trio
## For sub-project specific readme files, navigate to each folder (etl_bigquery, airflow_etl, and bi_dashboard)

🚀 Retail Data Pipeline (GCP)

📌 Overview

This project is a comprehensive retail data pipeline built on Google Cloud Platform (GCP). It consists of three subprojects:

ETL in BigQuery – Extract, transform, and load retail sales data from raw CSV files into a structured BigQuery dataset.

BI Dashboard (Power BI & Tableau) – Visualize key sales insights using Power BI and Tableau.

ETL Automation with Apache Airflow – Automate data ingestion and transformation using Apache Airflow.

The goal of this project is to showcase skills in data engineering, cloud-based ETL, analytics, and automation, which align with real-world retail analytics needs.

🔧 Technologies Used

Google BigQuery – Cloud Data Warehouse for structured analytics

Google Cloud Storage (GCS) – Staging area for raw CSV data

SQL – Data transformation and modeling

Power BI & Tableau – Business Intelligence (BI) dashboarding

Apache Airflow – Workflow orchestration for automated ETL

Python (for Airflow DAGs & data processing)

📂 Project Structure

Retail-Data-Pipeline-GCP/
│── etl_bigquery/          # Project 1: Data Pipeline (ETL in BigQuery)
│   ├── sql_scripts/       # SQL queries for data transformation
│   ├── raw_data/          # AdventureWorks CSV files
│   ├── README.md          # Project 1 documentation
│
│── bi_dashboard/          # Project 2: Power BI & Tableau Visualization
│   ├── powerbi/           # Power BI .pbix file
│   ├── tableau/           # Tableau .twbx file (Public Version)
│   ├── README.md          # Project 2 documentation
│
│── airflow_etl/           # Project 3: Apache Airflow Automation
│   ├── dags/              # Airflow DAGs for automating ETL
│   ├── scripts/           # Python scripts for automation
│   ├── README.md          # Project 3 documentation
│
│── README.md              # Main Project Overview (All 3 Projects)

📊 Subprojects Breakdown

1️⃣ ETL in BigQuery

Objective: Load and transform raw CSV data into structured datasets in BigQuery.

Key Steps:

Upload raw AdventureWorks retail sales data to Google Cloud Storage.

Create BigQuery tables to store structured sales data.

Write SQL transformation scripts to clean and aggregate data.

Output: A structured BigQuery dataset ready for analysis.

🔗 Detailed Project Guide

2️⃣ BI Dashboard (Power BI & Tableau)

Objective: Create interactive dashboards for sales analytics.

Key Steps:

Connect Power BI & Tableau to BigQuery.

Design visualizations for store performance, product trends, and KPIs.

Add filters and drilldowns for interactivity.

Output: A retail sales dashboard showcasing key business insights.

🔗 Detailed Project Guide

3️⃣ ETL Automation with Apache Airflow

Objective: Automate the ETL pipeline for daily data updates.

Key Steps:

Set up Apache Airflow (locally or in Google Cloud Composer).

Develop Airflow DAGs to schedule data extraction, transformation, and loading.

Implement error handling & monitoring.

Output: A fully automated ETL pipeline that updates data in BigQuery daily.

🔗 Detailed Project Guide

🚀 Key Learnings

Cloud-Based Data Warehousing – Hands-on experience with Google BigQuery & Cloud Storage.

ETL & Data Transformation – SQL-driven data modeling & cleaning.

Business Intelligence (BI) Dashboards – Created interactive dashboards using Power BI & Tableau.

Data Pipeline Automation – Implemented workflow orchestration with Apache Airflow.

🔜 Next Steps & Improvements

Expand BI dashboards with forecasting & predictive analytics.

Implement machine learning models for deeper sales insights.

Optimize ETL jobs for better performance.

🔗 Links & Resources

📂 GitHub Repo: Retail Data Pipeline GCP

🏗 Tableau Public Dashboard: View Interactive Dashboard

📄 Project Blog Post: LinkedIn Write-Up

📌 How to Use:

Clone this repo: git clone https://github.com/yourusername/Retail-Data-Pipeline-GCP.git

Follow individual subproject README files for detailed execution.

🚀 Built to showcase advanced data engineering & analytics skills!


