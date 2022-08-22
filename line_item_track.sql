SELECT
    t.name,
    i.invoicelineid,
    i.trackid,
    i.unitprice,
    i.quantity
FROM invoiceline i
JOIN track t
    on i.trackId = t.trackid;