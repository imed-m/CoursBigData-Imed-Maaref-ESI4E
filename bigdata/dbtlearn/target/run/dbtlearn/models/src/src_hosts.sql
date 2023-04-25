
  create or replace   view AIRBNB.RAW.src_hosts
  
   as (
    WITH raw_hosts AS (
    SELECT
    *
    FROM
    AIRBNB.RAW.RAW_HOSTS

    -- (I source('airbnb', "Hosts )))
)
SELECT 
    id AS host_id,
    name AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts
  );

