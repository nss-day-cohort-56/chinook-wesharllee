SELECT COUNT(*)
FROM InvoiceLine il
JOIN Invoice i
    on il.invoiceid = i.InvoiceId
WHERE i.invoiceid = 37;


