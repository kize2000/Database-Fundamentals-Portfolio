--From Murach's SQL Server 2016 for Developers
--Page 189

--A SELECT statement that uses a subquery in the WHERE clause
   SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
   -- columns used 
   FROM Invoices 
   -- table used 
   WHERE InvoiceTotal > 
   -- all values that are greter than the average InvoiceTotal
       (SELECT AVG(InvoiceTotal) 
	   -- take the Average of InvoiceTotal from the table invoices
        FROM Invoices)
   ORDER BY InvoiceTotal; 
   -- order than by Invoice total increasing

--Sample Output
/*
989319-487	2016-02-20 00:00:00	1927.54
97/522	2016-02-28 00:00:00	1962.13
989319-417	2016-03-23 00:00:00	2051.59
989319-427	2016-02-16 00:00:00	2115.81
989319-477	2016-02-08 00:00:00	2184.11
587056	2016-02-28 00:00:00	2184.50
989319-497	2016-02-12 00:00:00	2312.20
989319-467	2016-03-01 00:00:00	2318.03
367447	2016-02-11 00:00:00	2433.00
989319-437	2016-02-01 00:00:00	2765.36
989319-447	2016-03-24 00:00:00	3689.99
989319-457	2015-12-08 00:00:00	3813.33
10843	2016-01-11 00:00:00	4901.26
509786	2016-02-18 00:00:00	6940.25
P02-3772	2016-01-21 00:00:00	7125.34
0-2436	2016-03-31 00:00:00	10976.06
P-0608	2016-03-23 00:00:00	20551.18
40318	2016-02-01 00:00:00	21842.00
0-2060	2016-03-24 00:00:00	23517.58
P-0259	2016-03-19 00:00:00	26881.40
0-2058	2016-01-28 00:00:00	37966.19
*/