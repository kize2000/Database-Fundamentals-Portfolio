--From Murach's SQL Server 2016 for Developers
--Page 165

--A query that calculates the average invoice amount by vendor
SELECT VendorID, AVG(InvoiceTotal) AS AverageInvoiceAmount
--selects VendorID values as well as the Average which is redefined as AverageInvoiceAmount
FROM Invoices
--table used
GROUP BY VendorID
HAVING AVG(InvoiceTotal) > 2000
--grouped by the average of InvoiceTotal that is greater than 2000
ORDER BY AverageInvoiceAmount DESC;
--ordered in descending order

--Sample Result

/*
VendorID	AverageInvoiceAmount
110	15763.62
*/
