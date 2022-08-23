WITH Esum as (

    SELECT 
        e.firstname || " " || e.lastname as fullname,
        SUM(i.total) totalsales
    FROM employee e 
    JOIN customer c 
        on e.employeeid = c.supportrepid
    JOIN invoice i 
        on i.customerid = c.customerid

    GROUP BY e.EmployeeId
)

SELECT 
    fullname,
    totalsales
FROM Esum
WHERE totalsales = (
    SELECT
        MAX(totalsales)
    FROM Esum
)