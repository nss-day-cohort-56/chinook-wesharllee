WITH CSum as (

SELECT 
    c.country country,
    SUM(i.total) totalsales
FROM customer c 
JOIN invoice i 
    on i.customerid = c.customerid
GROUP BY c.country
)

SELECT
    country,
    totalsales
FROM CSum 
WHERE totalsales = (
    SELECT
        MAX(totalsales)
    FROM CSum 
)

