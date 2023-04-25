
  create or replace   view AIRBNB.RAW.dim_listings
  
   as (
    WITH src_listings AS (
    SELECT
    *
    FROM AIRBNB.RAW.src_listings
)
SELECT
    listing_id,
    listing_url,
    room_type,
    CASE
    WHEN minimum_nights = 0 THEN 1
    ELSE minimum_nights
    END AS minimum_nights,
    host_id,
    REPLACE(price_str,'$')::NUMBER(10,2) AS price,
    created_at,
    updated_at
FROM
    src_listings
  );

