--From Murach's SQL Server 2016 for Developers
--Page 155

--A query that excludes rows from the first query if they also occur in the second query
SELECT CustomerFirst, CustomerLast
--columns used
FROM Customers
--table used
EXCEPT
--exemption prompted
SELECT FirstName, LastName
--columns used to be exempted
FROM Employees
--table used for exemption values
ORDER BY CustomerLast;

--Sample Result

/*
CustomerFirst	CustomerLast
Maria	Anders
Christina	Berglund
Art	Braunschweiger
Donna	Chelan
Fred	Citeaux
Karl	Jablonski
Yoshi	Latimer
Laurence	Lebihan
Elizabeth	Lincoln
Hanna	Moos
Antonio	Moreno
Helvetius	Nagy
Liz	Nixon
Jose	Pavarotti
Rene	Phillips
Howard	Snyder
John	Steel
Martin	Summer
Ana	Trujillo
Fran	Wilson
Paula	Wilson
Liu	Wong
Jaime	Yorres
*/
