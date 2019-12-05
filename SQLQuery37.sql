--From Murach's SQL Server 2016 for Developers
--Page 167

--A query that counts the number of invoices by vendor
SELECT VendorID, COUNT(*) AS InvoiceQty
--values used are VendorID and the count of everything is redefined as InvoiceQty
FROM Invoices
--table used
GROUP BY VendorID;

--Sample Result
/*
VendorID	InvoiceQty
12	1
37	1
72	1
80	1
83	1
106	1
110	2
123	4
*/