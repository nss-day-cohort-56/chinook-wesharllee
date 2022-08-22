SELECT 
    i.total,
    c.firstname,
    c.lastname,
    c.country,
    e.firstname,
    e.lastname
FROM invoice i 
JOIN customer c
    on i.customerid = c.customerid
JOIN employee e
    on e.employeeid = c.supportrepid