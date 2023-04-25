
  create or replace   view AIRBNB.RAW.src_listings
  
   as (
    WITH raw_listings
AS (

SELECT *

FROM AIRBNB.RAW.RAW_LISTINGS

-- I source('airbnb', 'listings')}}

)
SELECT id AS listing_id,
name AS listing_url, 
room_type, 
minimum_nights,
host_id, 
price AS price_str,
created_at, 
updated_at

FROM raw_listings
  );

