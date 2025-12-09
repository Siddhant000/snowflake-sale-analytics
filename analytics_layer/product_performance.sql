CREATE OR REPLACE TABLE product_performance AS
SELECT
    p.product_id,
    p.product_name,
    SUM(f.quantity) AS total_units_sold,
    SUM(f.net_amount) AS total_sales,
    SUM(f.net_amount - (f.quantity * dp.cost_price)) AS profit
FROM fact_sales_enriched f
LEFT JOIN SALES_DB.TRANSFORMED.dim_products dp
    ON f.product_id = dp.product_id
LEFT JOIN SALES_DB.TRANSFORMED.dim_products p
    ON f.product_id = p.product_id
GROUP BY p.product_id, p.product_name;
