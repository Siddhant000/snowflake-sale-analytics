# snowflake-sale-analytics

# Snowflake Sales Analytics Project

## Day 1 Progress
- Created project structure
- Created GitHub repository
- Added raw dataset (sales, customers, products)
- Created Snowflake database, schema, and stage

## Day 2 — Creating Dimensions & Fact Table Design
Tasks Completed

Designed the star schema for the sales analytics project.

Created dimension tables:
- dim_customers
- dim_products
- Cleaned & transformed raw data before loading into dimensions.
- Designed and finalized the fact table structure containing:
  - Foreign keys → customer_id, product_id, order_id, order_date
  - Measures → quantity, unit_price, total_price

Key Concept: Why Fact Table Avoids Descriptive Columns
Fact tables store only numeric measures and foreign keys to ensure:
- High performance for aggregations
- Better compression
- Separation of business logic
- Flexibility to join with dimensions
- Customer/product names stay in dimension tables, not in the fact table.

## Day 3 — Building the Fact Table & Validations
Tasks Completed

Loaded cleaned data into fact_sales.

Fact table structure created with:
- customer_id
- product_id
- order_id
- order_date
- quantity
- unit_price
- total_price
Executed quality checks:
- Verified row counts between RAW → DIM → FACT
- Confirmed foreign key relationships match
- Validated revenue calculations (quantity * unit_price)

## Day 4 — Date Dimension + Enhanced Fact Table
Tasks Completed

- Created dim_date covering all dates for analysis
- Added date_id foreign key to fact_sales
- Enhanced fact table by preparing to add new measures (discount, profit, gross amount, net amount)
- Validated joins between fact table and date dimension
- Ensured all fact records map to valid dates

Date Dimension Includes
- year, quarter, month, month_name
- week_of_year
- day, day_name
- weekend flag

Purpose of Date Dimension

- Simplifies time-series analysis
- Helps create dashboards based on daily/weekly/monthly metrics
- Avoids repeated date calculations in queries
- Standardizes time-based reporting


Your star schema now has:

- dim_customers
- dim_products
- dim_date
- fact_sales

Ready for deeper analytics & BI dashboards.

## Day 5 — Transform Layer + Analytical Views
Tasks Completed

- Added cost_price to product dimension
- Rebuilt fact table with enhanced metric
- Added new KPIs:
- gross amount
- discount amount
- net amount
- margin per unit
- total profit
- Created REPORTS schema
- Added analytical BI views:
- Monthly Revenue
- Profit by Product
- Daily Sales Trend

Outcome

The project now supports:
- End-to-end analytics
- Profitability insights
- Discount logic
- Ready-to-use BI dashboards

The data warehouse now contains:
- RAW → staging
- TRANSFORMED → dimensions + facts
- REPORTS → business dashboards

## Day 6 — Automated ETL Pipeline (Streams + Tasks)
Tasks Completed

- Created Snowflake Stream on the raw table to track new data
- Built an automated ETL ingestion using Stored Procedure
- Scheduled a Task to refresh fact table automatically
- Successfully tested automatic loading

Pipeline Flow

- New data lands in RAW.sales_raw
- Stream captures changes
- Stored procedure transforms & loads only new rows into fact_sales_enriched
- Task runs every 5 minutes and keeps warehouse fresh

Result

- Project is now a fully automated incremental ETL pipeline, similar to real industry systems.

## Day 7 - Analytics Layer + BI Dashboard Plan
