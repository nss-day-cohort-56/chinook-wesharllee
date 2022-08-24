

SELECT
    e.firstname || " " || e.lastname as fullname,
    COUNT(c.customerid)
FROM employee e
JOIN customer c
    ON c.supportrepid = e.employeeid
GROUP BY e.EmployeeId