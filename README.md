# snowflake-sale-analytics

# Snowflake Sales Analytics Project

## Day 1 Progress
- Created project structure
- Created GitHub repository
- Added raw dataset (sales, customers, products)
- Created Snowflake database, schema, and stage

## Day 2 — Creating Dimensions & Fact Table Design
✔️ Tasks Completed

Designed the star schema for the sales analytics project.

Created dimension tables:
dim_customers
dim_products
Cleaned & transformed raw data before loading into dimensions.
Designed and finalized the fact table structure containing:
Foreign keys → customer_id, product_id, order_id, order_date
Measures → quantity, unit_price, total_price

🧠 Key Concept: Why Fact Table Avoids Descriptive Columns
Fact tables store only numeric measures and foreign keys to ensure:
High performance for aggregations
Better compression
Separation of business logic
Flexibility to join with dimensions
Customer/product names stay in dimension tables, not in the fact table.

## Day 3 — Building the Fact Table & Validations
✔️ Tasks Completed

Loaded cleaned data into fact_sales.
Fact table structure created with:
customer_id
product_id
order_id
order_date
quantity
unit_price
total_price
Executed quality checks:
Verified row counts between RAW → DIM → FACT
Confirmed foreign key relationships match
Validated revenue calculations (quantity * unit_price)
