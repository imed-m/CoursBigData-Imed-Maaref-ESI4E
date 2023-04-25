
WITH src_reviews AS (
SELECT * FROM AIRBNB.RAW.src_reviews
)
SELECT * FROM src_reviews
WHERE review_text is not null

AND review_date > (select max(review_date) from AIRBNB.RAW.fct_reviews)
