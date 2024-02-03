/* Customers dataset */

CREATE TABLE customers(
    customer_id VARCHAR(50) NOT NULL PRIMARY KEY,
    customer_unique_id VARCHAR(50),
    customer_zip_code_prefix INT,
    customer_city VARCHAR(50),
    customer_state CHAR(5)
);

COPY customers
FROM 'C:\...\Brazillian eCommerce\Datasets\customers.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM customers;


/* Orders dataset */

CREATE TABLE orders(
    order_id VARCHAR(50) NOT NULL PRIMARY KEY,
    customer_id VARCHAR(50) REFERENCES customers(customer_id),
    order_status VARCHAR(25),
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);

COPY orders
FROM 'C:\...\Brazillian eCommerce\Datasets\orders.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM orders;


/* Products dataset */

CREATE TABLE products(
    product_id VARCHAR(50) NOT NULL PRIMARY KEY,
    product_category_name VARCHAR(50),
    product_name_lenght DOUBLE PRECISION,
    product_description_lenght DOUBLE PRECISION,
    product_photos_qty DOUBLE PRECISION,
    product_weight_g DOUBLE PRECISION,
    product_length_cm DOUBLE PRECISION,
    product_height_cm DOUBLE PRECISION,
    product_width_cm DOUBLE PRECISION,
    product_category_name_english VARCHAR(50)
);

COPY products
FROM 'C:\...\Brazillian eCommerce\Datasets\products.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM products;


/* Sellers dataset */

CREATE TABLE sellers(
    seller_id VARCHAR (50) NOT NULL PRIMARY KEY,
    seller_zip_code_prefix INT,
    seller_city CHAR(50),
    seller_state CHAR (5)
);

COPY sellers
FROM 'C:\...\Brazillian eCommerce\Datasets\sellers.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM sellers;


/* Geolocation dataset */

CREATE TABLE geolocation(
    geolocation_zip_code_prefix INT,
    geolocation_lat DOUBLE PRECISION,
    geolocation_lng DOUBLE PRECISION,
    geolocation_city VARCHAR(50),
    geolocation_state CHAR(5)
);

COPY geolocation
FROM 'C:\...\Brazillian eCommerce\Datasets\geolocation.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM geolocation;


/*Ordered Items dataset*/

CREATE TABLE orderitems(
    order_id VARCHAR(50) REFERENCES orders(order_id),
    order_item_id SMALLINT,
    product_id VARCHAR(50) REFERENCES products(product_id),
    seller_id VARCHAR(50) REFERENCES sellers(seller_id),
    shipping_limit_date TIMESTAMP,
    price REAL,
    freight_value REAL,
    total_order_item_value REAL,
    total_freight_value REAL,
    total_order_value REAL
);

COPY orderitems
FROM 'C:\...\Brazillian eCommerce\Datasets\orderitems.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM orderitems;


/* Order Payments dataset */

CREATE TABLE orderpay(
    order_id VARCHAR(50) REFERENCES orders(order_id),
    payment_sequential SMALLINT,
    payment_type VARCHAR(25),
    payment_installments SMALLINT,
    payment_value DOUBLE PRECISION
);

COPY orderpay
FROM 'C:\...\Brazillian eCommerce\Datasets\orderpay.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM orderpay;


/*Order Reviews dataset*/

CREATE TABLE orderreview(
    review_id VARCHAR(50),
    order_id VARCHAR (50) REFERENCES orders(order_id),
    review_score SMALLINT,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date TIMESTAMP,
    review_answer_timestamp TIMESTAMP
);

COPY orderreview
FROM 'C:\...\Brazillian eCommerce\Datasets\orderreview.csv'
DELIMITER ',' CSV HEADER;

SELECT * FROM orderreview;
