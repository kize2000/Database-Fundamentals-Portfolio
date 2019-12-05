--From Murach's SQL Server 2016 for Developers
--Page 163

--A summary query that uses DISTINCT keyword
SELECT COUNT(DISTINCT VendorID) AS NumberOfVendors,
--selects distinct values from VendorID and redefined as NumberOfVendors
	COUNT(VendorID) AS NumberOfInvoices,
--counts number of vendors and redefines it as NumberOfInvoices
	AVG(InvoiceTotal) AS AverageInvoiceAmount,
--takes average of InvoiceTotal and redefines it as AverageInvoiceAmount
	SUM(InvoiceTotal) AS TotalInvoiceAmount
--takes sum of InvoiceTotal and redefines it as TotalInvoiceAmount
FROM Invoices
--table used
WHERE InvoiceDate > '2015-09-01';

--Sample Result

/*
NumberOfVendors	NumberOfInvoices	AverageInvoiceAmount	TotalInvoiceAmount
8	12	2782.1183	33385.42
*/