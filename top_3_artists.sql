SELECT
    a.name aname,
    SUM(il.quantity) totalsales
FROM artist a
JOIN album al 
    on al.artistid = a.artistid
JOIN track t 
    on t.albumid = al.albumid
JOIN invoiceline il 
    on il.trackid = t.trackid
JOIN invoice i 
    on il.invoiceid = i.invoiceid

GROUP BY a.name
ORDER BY totalsales DESC LIMIT 3
