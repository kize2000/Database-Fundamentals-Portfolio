--From Murach's SQL Server 2016 for Developers
--Page 155

--A query that only includes rows that occur in both queries
SELECT CustomerFirst, CustomerLast
--columns used
FROM Customers
--table used 
INTERSECT
--intersection prompted
SELECT FirstName, LastName 
--columns used to intersect
FROM Employees;
--value location

--Sample Result

/*
CustomerFirst	CustomerLast
Thomas	Hardy
*/