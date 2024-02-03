# Brazilian E-Commerce Public Dataset by Olist

### Introduction

This documentation outlines the end-to-end data analysis and visualization project conducted on the Brazilian eCommerce Public Dataset provided by Olist. The project involves processing data spread across 9 CSVs, conducting exploratory data analysis (EDA), merging datasets, performing additional EDA and RFM (Recency, Frequency, Monetary) analysis. The modified datasets were saved and uploaded as tables into a PostgreSQL database. The final step involved connecting the PostgreSQL database to Power BI for creating insightful visualizations.

### Dataset Overview

The dataset comprises 9 CSV files, each with specific keys, detailing various aspects of Brazilian eCommerce operations. The datasets include information on customers, orders, products, sellers, ordered items, order payments and order reviews.

### Project Workflow

1. **Data Import and Initial EDA:**
   - Imported each CSV into Python as Pandas DataFrames.
   - Conducted initial exploratory data analysis (EDA) to understand the structure and characteristics of each dataset.
   - Saved each of the 9 modified CSV files after initial EDA.

2. **Data Merging:**
   - Merged relevant DataFrames based on keys to create consolidated datasets.
   - Continued EDA on the merged datasets to extract meaningful insights.

3. **RFM Analysis:**
   - Applied RFM analysis to segment customers based on Recency, Frequency, and Monetary values.
   - Derived actionable insights for marketing and sales strategies.

4. **PostgreSQL Database Setup:**
   - Utilized PostgreSQL to create tables for each dataset using appropriate data types.

5. **Database Population:**
   - Executed SQL queries to populate PostgreSQL tables with CSV data.

6. **Connection to Power BI:**
   - Established a connection between the PostgreSQL database and Power BI.
   - Imported data from the PostgreSQL tables into Power BI for visualization.

7. **Power BI Visualization:**
   - Designed and created visualizations in Power BI to convey key findings and trends.
   - Utilized Power BI functionalities to enhance interactivity and user engagement.

### Conclusion

This project successfully navigated the entire data analysis and visualization pipeline for the Brazilian eCommerce Public Dataset by Olist. The process involved cleaning, merging, and analyzing data, followed by storing it in a PostgreSQL database. The connection to Power BI facilitated the creation of compelling visualizations, providing valuable insights into the eCommerce operations.

This documentation serves as a comprehensive overview of the project, offering a structured account of the methodology and outcomes.

#### Data source: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

#### Data Schema:

![Schema](https://github.com/SourajitD/BrazilianECommerce/assets/110446951/d33b0160-d5c2-43c4-83b0-78d65f123f01)

### Dashboard Objective

1. **Total Revenue and Sales Overview:**
   - What is the total revenue in R$?
   - How many items have been sold in total?
   - What is the total number of orders?
   - How many orders have been successfully delivered?

2. **Payment Method Insights:**
   - What are the distribution percentages of payment methods?
   - How do the payment methods compare in sequential order?

3. **Top 5 States Analysis:**
   - What are the top 5 states by the number of items ordered and their corresponding revenues?
   - Are there any correlations between the states with the highest items ordered and the highest revenue?

4. **Monthly and Yearly Performance:**
   - What is the trend in the number of items ordered and revenue over different months and years?
   - Are there any patterns or seasonality in the sales data?

5. **Treemap Analysis:**
   - Which product categories contribute the most to revenue?
   - Can we identify the highest-selling product categories based on revenue in a visual format?


#### Power BI Dashboard

![Dashboard](https://github.com/SourajitD/BrazilianECommerce/assets/110446951/c79033f3-63fc-4775-af16-f33f0851e5f5)
