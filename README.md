## Bright Coffee Shop Analysis

## Overview

This project explores transactional sales data from a coffee shop environment with the aim of uncovering insights that support better business decisions and improved performance.

The analysis follows a complete data pipeline approach, from raw data ingestion and transformation to visualisation and insight generation, ultimately translating data into actionable strategies for growth.

## Objectives

The primary goals of this analysis were to:
Evaluate sales performance across products and time intervals
Identify high-performing and underperforming items
Understand customer purchasing behaviour
Provide data-driven recommendations to increase revenue

## Data Architecture and Approach

The project was structured around a simplified end-to-end data pipeline:

## Data Source
Raw transactional dataset (Excel format), including:
Transaction date and time
Product details
Unit price and quantity

## Data Processing (ETL)
Data cleaning and transformation performed using Databricks
Converted Excel data into CSV format
Standardised data types and formats for consistency

## Data Storage
Processed datasets stored within the Databricks environment for querying and analysis

## Data Analysis and Visualisation
Data exported to Microsoft Excel
Supplemented with optional dashboards in Power BI
Pivot tables and charts used to explore trends and patterns

## Key Calculations and Transformations

The analysis included several core calculations and derived features:

Total Revenue

total_amount = unit_price * transaction_qty

Time-Based Grouping
Transactions grouped into 30-minute (or 3-hour) intervals
Enabled identification of peak and off-peak periods

Aggregations
Revenue by product category
Units sold by product type
Sales trends across time intervals

## Data Processing (Databricks)

Key steps performed during processing:
1. Converted raw Excel data to CSV
2. Loaded dataset into Databricks
3. Performed transformations:
Created transaction_time_bucket for time-based analysis
Cleaned and standardised unit_price values
Computed total revenue per transaction
4. Applied SQL queries to:
Aggregate sales by product and category
Analyse performance across time intervals

## Key Insights and Findings

## Revenue Performance
Coffee and Tea categories contribute the majority of total revenue
Products such as Barista Espresso and Brewed Chai Tea are top performers
Low-performing items contribute less than 5 percent of overall revenue

## Product Insights
High-volume products drive consistent daily sales
Certain categories show low demand, indicating potential overstock or weak positioning

## Time-Based Trends
Peak sales occur during mid-morning, particularly on weekdays
Afternoons and weekends show reduced activity
Clear opportunity exists to improve off-peak performance

## Customer Behaviour
Revenue is largely driven by frequent, low-spending customers
Premium purchasing is limited, presenting an opportunity for upselling strategies

## Data Visualisation

Dashboards and visual outputs were developed to communicate insights effectively:
Revenue by product category
Sales trends across time intervals
Peak versus off-peak performance
Quantity sold by category and product

Tools used:
Pivot Tables
Charts and graphs
Dashboard layouts in Excel and Power BI

## Recommendations

## Marketing
Introduce targeted afternoon promotions (2 PM to 5 PM)
Develop bundled offers to increase off-peak traffic

## Inventory Management
Prioritise stock for high-demand items such as espresso-based drinks and teas
Bundle or promote slow-moving products to improve turnover

## Sales Strategy
Implement upselling techniques to increase average transaction value
Use promotions to improve visibility of underperforming products

## Next Steps

## Automate daily sales reporting processes
Expand analysis across multiple store locations
Implement customer loyalty programmes based on time-based behaviour
Integrate real-time dashboards for continuous performance tracking

## Project Deliverables
Data architecture and planning diagram (Miro or Canva)
Processed dataset with pivot tables and charts
SQL scripts for transformations and aggregations
Final presentation (Canva or PowerPoint)

## Tools and Technologies
Databricks
Microsoft Excel
Power BI
SQL

Author
Sibulelo Mafrika

## Summary
This project demonstrates how structured data analysis can transform raw transactional data into meaningful business insights. By combining data processing, SQL analysis, and visualisation techniques, the project provides a strong foundation for data-driven decision-making in a retail environment.

## Summary

