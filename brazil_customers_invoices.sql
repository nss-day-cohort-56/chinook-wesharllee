SELECT 
    c.firstname,
    c.lastname,
    i.invoiceid,
    i.invoicedate,
    i.billingcountry
FROM Customer C
JOIN Invoice i 
    ON c.CustomerId = i.CustomerId
WHERE c.country = 'Brazil';