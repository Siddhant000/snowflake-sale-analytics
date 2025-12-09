CREATE OR REPLACE MATERIALIZED VIEW mv_daily_sales AS
SELECT
    date_id,
    SUM(gross_amount) AS total_revenue,
    SUM(discount_amount) AS total_discount,
    SUM(net_amount) AS net_revenue,
    SUM(quantity) AS total_quantity
FROM fact_sales_enriched
GROUP BY date_id;
