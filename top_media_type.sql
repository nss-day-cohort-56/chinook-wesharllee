WITH MSum as (

SELECT 
    m.name mname,
    SUM(i.total) totalsales
FROM mediatype m 
JOIN track t
    on m.mediatypeid = t.mediatypeid
JOIN invoiceline il
    on t.trackid = il.trackid
JOIN invoice i 
    on i.InvoiceId = il.invoiceid
GROUP BY m.name
)

SELECT
    mname,
    totalsales
FROM MSum 
WHERE totalsales = (
    SELECT
        MAX(totalsales)
    FROM MSum 
)

