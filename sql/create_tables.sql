CREATE OR REPLACE TABLE sales_raw (
    order_id NUMBER,
    order_date DATE,
    customer_id NUMBER,
    product_id NUMBER,
    quantity NUMBER,
    unit_price NUMBER
);


CREATE OR REPLACE TABLE customers_raw (
    customer_id NUMBER,
    customer_name STRING,
    city STRING,
    state STRING,
    country STRING
);


CREATE OR REPLACE TABLE products_raw (
    product_id NUMBER,
    product_name STRING,
    category STRING
);
