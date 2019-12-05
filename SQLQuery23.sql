--From Murach's SQL Server 2016 for Developers
--Page 89

-- A SELECT statement that retrieves all invoices between given dates 
SELECT InvoiceNumber, InvoiceDate, InvoiceTotal
--columns used
FROM Invoices
--table used
WHERE InvoiceDate BETWEEN '2016-01-01' AND '2016-05-31'
--condition statement specifying a range in which to search
ORDER BY InvoiceDate;

--Sample Result

/*
InvoiceNumber	InvoiceDate	InvoiceTotal
39104	2016-03-10 00:00:00	85.31
963253264	2016-03-18 00:00:00	52.25
263253268	2016-03-21 00:00:00	59.97
31361833	2016-03-21 00:00:00	579.42
263253273	2016-03-22 00:00:00	30.75
263253270	2016-03-22 00:00:00	67.92
P-0608	2016-03-23 00:00:00	20551.18
9982771	2016-03-24 00:00:00	503.20
134116	2016-03-28 00:00:00	90.36
0-2436	2016-03-31 00:00:00	10976.06
547480102	2016-04-01 00:00:00	224.00
3289175	2016-04-18 00:00:00	165.00
*/