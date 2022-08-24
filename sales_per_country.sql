SELECT 
    c.country,
    SUM(i.total) totalsales
FROM customer c 
JOIN invoice i 
    on i.customerid = c.customerid
GROUP BY c.country