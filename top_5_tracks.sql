WITH TSum as (
    SELECT
        t.name tname,
        SUM(il.quantity) totalsales
    FROM track t
    JOIN invoiceline il 
        on il.trackid = t.trackid
    JOIN invoice i 
        on il.invoiceid = i.invoiceid
    
    GROUP BY t.TrackId
    ORDER BY totalsales DESC LIMIT 5
    )

SELECT 
    tname,
    totalsales
FROM TSum
WHERE totalsales = (
    SELECT
        MAX(totalsales)
    FROM TSum
)


