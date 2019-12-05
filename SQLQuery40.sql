--From Murach's SQL Server 2016 for Developers
--Page 169

--A summary query with a search condition in the HAVING clause
SELECT VendorName, COUNT(*) AS InvoiceQty,
--values used and count of everything is redefined as InvoiceQty
	AVG(InvoiceTotal) AS InvoiceAvg
--Average of InvoiceTotal redefined as InvoiceAvg
FROM Vendors JOIN Invoices
--table join prompt
	ON Vendors.VendorID = Invoices.VendorID
--join values where VendorID is equal from Invoices and VendorsID
GROUP BY VendorName
HAVING AVG(InvoiceTotal) > 500
--only returns results where the average of InvoiceTotal is greater than 500
ORDER BY InvoiceQty DESC

--Sample Result
/*
VendorName	InvoiceQty	InvoiceAvg
Malloy Lithographing Inc	2	15763.62
Ford Motor Credit Company	1	503.20
Ingram	1	579.42
*/