CREATE DATABASE IF NOT EXISTS recommendation_db;
USE recommendation_db;

-- Tạo bảng Staging chứa toàn bộ dữ liệu từ file CSV tổng
CREATE TABLE IF NOT EXISTS stg_recommendations (
    clicks_on_similar_products INT,
    similar_products_purchased INT,
    avg_rating_given_to_similar_products DECIMAL(4,2),
    gender VARCHAR(20),
    median_purchasing_price DECIMAL(15,2),
    rating_of_product DECIMAL(4,2),
    brand_of_product VARCHAR(100),
    sentiment_score DECIMAL(4,2),
    price_of_product DECIMAL(15,2),
    holiday VARCHAR(10),
    season VARCHAR(20),
    geographical_locations VARCHAR(100),
    recommendation_probability DECIMAL(5,4)
);

SELECT * FROM stg_recommendations;
-- tách bảng  
-- 1. TÁCH BẢNG DIM_PRODUCT (873 dòng)
CREATE TABLE dim_product AS
SELECT 
    DENSE_RANK() OVER (
        ORDER BY brand_of_product, price_of_product, rating_of_product, sentiment_score
    ) AS product_id,
    brand_of_product AS brand,
    price_of_product AS price,
    rating_of_product AS rating,
    sentiment_score AS review_sentiment_score
FROM stg_recommendations
GROUP BY brand_of_product, price_of_product, rating_of_product, sentiment_score;

ALTER TABLE dim_product ADD PRIMARY KEY (product_id);


-- 2. TÁCH BẢNG DIM_CUSTOMER_PROFILE (105 dòng)
CREATE TABLE dim_customer_profile AS
SELECT 
    DENSE_RANK() OVER (
        ORDER BY gender, median_purchasing_price
    ) AS customer_profile_id,
    gender,
    median_purchasing_price
FROM stg_recommendations
GROUP BY gender, median_purchasing_price;

ALTER TABLE dim_customer_profile ADD PRIMARY KEY (customer_profile_id);


-- 3. TÁCH BẢNG DIM_CONTEXT (24 dòng)
CREATE TABLE dim_context AS
SELECT 
    DENSE_RANK() OVER (
        ORDER BY geographical_locations, season, holiday
    ) AS context_id,
    geographical_locations AS geographical_location,
    season,
    holiday AS is_holiday
FROM stg_recommendations
GROUP BY geographical_locations, season, holiday;

ALTER TABLE dim_context ADD PRIMARY KEY (context_id);


-- 4. TÁCH BẢNG FACT_RECOMMENDATIONS (1,474 dòng)
CREATE TABLE fact_recommendations AS
SELECT 
    ROW_NUMBER() OVER () AS recommendation_id,
    dp.product_id,
    dc.customer_profile_id,
    dx.context_id,
    r.clicks_on_similar_products,
    r.similar_products_purchased,
    r.avg_rating_given_to_similar_products,
    r.recommendation_probability
FROM stg_recommendations r
JOIN dim_product dp 
    ON r.brand_of_product = dp.brand 
   AND r.price_of_product = dp.price 
   AND r.rating_of_product = dp.rating 
   AND r.sentiment_score = dp.review_sentiment_score
JOIN dim_customer_profile dc 
    ON r.gender = dc.gender 
   AND r.median_purchasing_price = dc.median_purchasing_price
JOIN dim_context dx 
    ON r.geographical_locations = dx.geographical_location 
   AND r.season = dx.season 
   AND r.holiday = dx.is_holiday;

-- Thêm Primary Key & Foreign Keys cho bảng Fact
ALTER TABLE fact_recommendations ADD PRIMARY KEY (recommendation_id);

ALTER TABLE fact_recommendations 
    ADD CONSTRAINT fk_fact_product FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    ADD CONSTRAINT fk_fact_customer FOREIGN KEY (customer_profile_id) REFERENCES dim_customer_profile(customer_profile_id),
    ADD CONSTRAINT fk_fact_context FOREIGN KEY (context_id) REFERENCES dim_context(context_id);
    
-- check 
SELECT  * from fact_recommendations
    
    
