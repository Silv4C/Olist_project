CREATE TABLE geolocation (
	id_geolocation INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	geolocation_zip_code_prefix INT,
	geolocation_lat NUMERIC,
	geolocation_lng NUMERIC,
	geolocation_city TEXT,
	geolocation_state TEXT
);

CREATE TABLE order_items (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	id_order TEXT,
	id_order_item INT,
	product_id TEXT,
	seller_id TEXT,
	shipping_limit_date TIMESTAMP,
	price NUMERIC,
	freight_value NUMERIC
);
CREATE TABLE order_payments (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	id_order_payments TEXT,
	payment_sequential INT,
	payment_type TEXT,
	payment_installments INT,
	payment_value NUMERIC
);
CREATE TABLE order_reviews (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	id_review TEXT,
	id_order TEXT,
	review_score TEXT,
	review_comment_title TEXT,
	review_comment_message TEXT,
	review_creation_date TIMESTAMP,
	review_answers_timestamp TIMESTAMP
);
CREATE TABLE products (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	product_id TEXT,
	product_category_name TEXT,
	product_name_lenght INT,
	product_description_lenght INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT,
	product_width_cm INT
);
CREATE TABLE sellers (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	seller_id TEXT,
	seller_zip INT,
	seller_city TEXT,
	seller_state TEXT
);
CREATE TABLE product_category_name_translation (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	product_category_name TEXT,
	product_category_name_english TEXT
);
CREATE TABLE customers (
	id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	customer_id TEXT,
	customer_unique_id TEXT,
	customer_zip_code_prefix INT,
	customer_city TEXT,
	customer_state TEXT
);
CREATE TABLE orders (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	order_id TEXT,
    customer_id TEXT,
    order_status TEXT,
    order_purchase_timestamp TIMESTAMP,
    order_approved_at TIMESTAMP,
    order_delivered_carrier_date TIMESTAMP,
    order_delivered_customer_date TIMESTAMP,
    order_estimated_delivery_date TIMESTAMP
);