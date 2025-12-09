CREATE OR REPLACE TABLE customer_ltv AS
SELECT
    c.customer_id,
    c.customer_name,
    SUM(f.net_amount) AS lifetime_value,
    COUNT(DISTINCT f.order_id) AS total_orders,
    MIN(f.date_id) AS first_purchase_date,
    MAX(f.date_id) AS last_purchase_date
FROM fact_sales_enriched f
LEFT JOIN SALES_DB.transformed.dim_customers c
    ON f.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name;
