--From Murach's SQL Server 2016 for Developers
--Page 191

--A query that returns Invoices with a balance due less than the average:
   SELECT invoiceNumber, InvoiceDate, InvoiceTotal, 
   -- columns used 
       InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue 
	   -- renames InvoiceTotal, PaymentTotal, and CreditTotal as BalanceDue for the rest of the query
   FROM Invoices 
   -- table used 
   WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0 
   -- where the value of listed "Totals" is greater than 0
       AND InvoiceTotal - PaymentTotal - CreditTotal < 
	   -- select the average of each of the "Totals" from the table Invoices
        (SELECT AVG(InvoiceTotal - PaymentTotal - CreditTotal) 
		-- this portion compares the values pulled to the average 
        FROM Invoices
        WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0) 
		-- and if it is less than the average it will be in the result
   ORDER BY InvoiceTotal DESC; 
   -- Order by descending values

--Sample Output
/*
31361833	2016-03-21 00:00:00	579.42	579.42
9982771	2016-03-24 00:00:00	503.20	503.20
547480102	2016-04-01 00:00:00	224.00	224.00
3289175	2016-04-18 00:00:00	165.00	165.00
134116	2016-03-28 00:00:00	90.36	90.36
39104	2016-03-10 00:00:00	85.31	85.31
263253270	2016-03-22 00:00:00	67.92	67.92
263253268	2016-03-21 00:00:00	59.97	59.97
963253264	2016-03-18 00:00:00	52.25	52.25
263253273	2016-03-22 00:00:00	30.75	30.75
*/