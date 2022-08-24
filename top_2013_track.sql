WITH TSum as (
    SELECT
        t.name tname,
        i.InvoiceDate idate,
        SUM(il.quantity) totalsales
    FROM track t
    JOIN invoiceline il 
        on il.trackid = t.trackid
    JOIN invoice i 
        on il.invoiceid = i.invoiceid
    WHERE strftime("%Y", i.invoicedate) = "2013"
    
    GROUP BY t.TrackId
    )

SELECT 
    tname,
    idate,
    totalsales
FROM TSum
WHERE totalsales = (
    SELECT
        MAX(totalsales)
    FROM TSum
)


