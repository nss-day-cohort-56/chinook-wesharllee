SELECT
    t.name,
    i.invoicelineid,
    i.trackid,
    i.unitprice,
    i.quantity,
    a.name
FROM invoiceline i
JOIN track t
    on i.trackId = t.trackid
JOIN album al
    on t.albumid = al.albumid
JOIN artist a
    on al.artistid = a.artistid;