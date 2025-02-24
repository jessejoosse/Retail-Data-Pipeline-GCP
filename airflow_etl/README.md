# Retail-Data-Pipeline-GCP
# Airflow_ETL

🚀 ETL Automation with Apache Airflow

📌 Overview

This project is part of the Retail Data Pipeline (GCP) and focuses on automating ETL workflows using Apache Airflow to schedule and manage data ingestion, transformation, and storage in Google BigQuery.

The goal is to:
✅ Schedule and automate ETL jobs for retail sales data
✅ Integrate Google Cloud Storage (GCS) → BigQuery
✅ Monitor & manage workflows using Apache Airflow DAGs

🔧 Technologies Used

Apache Airflow – Workflow orchestration & automation

Google Cloud Storage (GCS) – Raw data staging

Google BigQuery – Data warehousing

Python – Scripting Airflow DAGs

📂 Project Structure
```
airflow_etl/
│── dags/              # Airflow DAGs for automating ETL
│── scripts/           # Python scripts for automation
│── README.md          # Documentation for ETL automation
```
🛠 Steps to Recreate

1️⃣ Set Up Apache Airflow

📌 Local Installation (For Testing)

pip install apache-airflow
airflow db init
airflow webserver --port 8080
airflow scheduler

📌 Google Cloud Composer (For Production)

Go to Google Cloud Console → Cloud Composer

Set up a managed Apache Airflow environment

2️⃣ Develop an ETL DAG in Airflow

Create a new DAG file: dags/retail_etl_dag.py

from airflow import DAG
from airflow.providers.google.cloud.transfers.gcs_to_bigquery import GCSToBigQueryOperator
from airflow.providers.google.cloud.operators.bigquery import BigQueryExecuteQueryOperator
from airflow.utils.dates import days_ago

default_args = {
    "owner": "airflow",
    "start_date": days_ago(1),
    "depends_on_past": False,
}

dag = DAG(
    "retail_sales_etl",
    default_args=default_args,
    schedule_interval="@daily",
)

load_to_bq = GCSToBigQueryOperator(
    task_id="load_data",
    bucket="adventureworks-data",
    source_objects=["sales_order_header.csv"],
    destination_project_dataset_table="retail_data_pipeline.sales_order_header",
    autodetect=True,
    write_disposition="WRITE_TRUNCATE",
    dag=dag,
)

load_to_bq

3️⃣ Deploy & Run Airflow DAG

Upload retail_etl_dag.py to dags/ folder in Airflow

Restart Airflow:

airflow scheduler
airflow webserver

Go to Airflow UI (http://localhost:8080), enable and trigger the DAG

✅ Now the ETL workflow runs automatically!

📊 Monitoring & Performance Optimization

Airflow UI DAG Runs → Check for task failures

Enable email alerts for failures:

default_args = {
    "owner": "airflow",
    "start_date": days_ago(1),
    "email_on_failure": True,
    "email": ["your-email@example.com"]
}

Optimize BigQuery queries for performance tuning

🔜 Next Steps & Improvements

Implement incremental data updates instead of full loads

Integrate data validation checks before processing

Migrate DAGs to Google Cloud Composer for scalability

🔗 Links & Resources

📂 GitHub Repo: Retail Data Pipeline GCP

📄 Google Cloud Composer Docs: Read Here

📌 How to Use:

Clone this repo: git clone https://github.com/jessejoosse/Retail-Data-Pipeline-GCP.git

Follow these steps to set up ETL automation with Airflow

🚀 Built for scalable, automated cloud data pipelines!

