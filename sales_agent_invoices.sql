SELECT
    e.firstname,
    e.lastname,
    i.invoiceid
FROM employee e
JOIN customer c
    on c.supportrepid = e.employeeid
JOIN invoice i 
    on i.customerid = c.customerid;
