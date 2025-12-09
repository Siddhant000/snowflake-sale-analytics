CREATE OR REPLACE TABLE monthly_sales_summary AS
SELECT
    d.year,
    d.month,
    d.month_name,
    SUM(f.net_amount) AS total_revenue,
    SUM(f.quantity) AS total_units_sold
FROM fact_sales_enriched f
JOIN SALES_DB.transformed.dim_date d
    ON f.date_id = d.date_id
GROUP BY d.year, d.month, d.month_name
ORDER BY year, month;
