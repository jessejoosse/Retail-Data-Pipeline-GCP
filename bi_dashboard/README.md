# Retail-Data-Pipeline-GCP
# BI_Dashboard

🚀 BI Dashboard (Power BI & Tableau)

📌 Overview

This project is part of the Retail Data Pipeline (GCP) and focuses on building interactive BI dashboards using Power BI and Tableau to visualize sales trends and store performance.

The goal is to: ✅ Connect Power BI & Tableau to Google BigQuery for real-time insights ✅ Design sales performance dashboards for retail analytics ✅ Implement filters, drilldowns, and forecasting for better data exploration

🔧 Technologies Used

Google BigQuery – Cloud Data Warehouse

Power BI – Business Intelligence & Data Visualization

Tableau – Data Storytelling & Dashboarding

📂 Project Structure

bi_dashboard/
│── powerbi/           # Power BI .pbix file
│── tableau/           # Tableau .twbx file (Public Version)
│── README.md          # Documentation for BI dashboard

🛠 Steps to Recreate

1️⃣ Connect BigQuery to Power BI

Open Power BI Desktop → Click Get Data

Select Google BigQuery → Sign in with your GCP account

Choose the dataset: retail_data_pipeline

Load the sales_order_header, sales_order_detail, stores, products tables

2️⃣ Build Key Visualizations in Power BI

Total Sales Trends 📈 → Line chart (OrderDate vs Total Sales)

Store Performance Rankings 🏪 → Bar chart (StoreID vs Total Sales)

Product Sales Breakdown 📊 → Pie chart (ProductName vs Revenue)

Impact of Economic Factors 📉 → Scatter plot (Fuel Price vs Total Sales)

Filters & Drilldowns 🎛 → Store, Date Range, Product Category

3️⃣ Connect BigQuery to Tableau

Open Tableau Public/Desktop → Connect to Data

Select Google BigQuery and sign in

Choose the dataset: retail_data_pipeline

Load the sales_order_header, sales_order_detail, stores, products tables

4️⃣ Design Dashboards in Tableau

Sales Performance Dashboard → Interactive KPIs and trends

Geographic Sales Analysis → Map visualizing store revenue

Customer Segmentation Insights → Heatmaps & drilldowns

5️⃣ Publish & Share

Power BI: Save .pbix file and share internally

Tableau: Publish to Tableau Public (link in resources below)

✅ Now the dashboard is fully interactive and ready for analysis!

📊 Key Insights

Identified highest revenue-generating stores & products

Analyzed sales trends impacted by economic conditions

Enabled interactive, drill-down analysis for business users

🔜 Next Steps & Improvements

Enhance dashboards with AI-driven forecasting

Integrate real-time streaming data for instant updates

Implement dynamic KPI alerts for performance monitoring

🔗 Links & Resources

📂 GitHub Repo: Retail Data Pipeline GCP

🏗 Tableau Public Dashboard: View Interactive Dashboard

📌 How to Use:

Clone this repo: git clone https://github.com/jessejoosse/Retail-Data-Pipeline-GCP.git

Follow these steps to set up Power BI & Tableau dashboards

🚀 Built for scalable, cloud-based business intelligence!