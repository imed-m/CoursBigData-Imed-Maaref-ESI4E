
  create or replace   view AIRBNB.RAW.dim_hosts
  
   as (
    WITH src_hosts AS (
    SELECT
    *
    FROM AIRBNB.RAW.src_hosts
)
SELECT
    host_id,
    NVL (host_name,'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts
  );

