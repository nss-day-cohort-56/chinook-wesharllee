SELECT 
    il.InvoiceId,
    COUNT(*)
FROM InvoiceLine il
JOIN Invoice i
    on il.invoiceid = i.InvoiceId
GROUP BY i.invoiceid;