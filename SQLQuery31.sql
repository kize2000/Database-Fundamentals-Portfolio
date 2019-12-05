--From Murach's SQL Server 2016 for Developers
--Page 161

--A summary query that counts unpaid invoices and calculates the total due
SELECT COUNT(*) AS NumberOfInvoices,
	SUM(InvoiceTotal - PaymentTotal - CreditTotal) AS TotalDue
-- COUNT function counts how many Invoices have not been paid and returns them as NumberOfInvoices
-- The sum of all values in InvoiceTotal, PaymentTotal, and CreditTotal is returned as TotalDue
FROM Invoices
--table used
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0;
-- only applys to the values where it is greater than 0

--Sample Result

/*
NumberOfInvoices	TotalDue
12	32185.42
*/