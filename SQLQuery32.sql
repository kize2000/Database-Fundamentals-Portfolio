--From Murach's SQL Server 2016 for Developers
--Page 163

--A summary query that uses the COUNT(*), AVG and SUM functions 
SELECT 'After 9/1/2015' AS SelectionDate, COUNT(*) AS NumberOfInvoices,
--takes all values after 9/1/2015 and returns as SelectionDate as well as counts them and and returns that value as NumberOfInvoices
	AVG(InvoiceTotal) AS AverageInvoiceAmount,
--takes the average of all the values defined as InvoiceTotal and returns them as AverageInvoiceAmount
	SUM(InvoiceTotal) AS TotalInvoiceAmount
--takes the sum of all the values defined as InvoiceTotal and returns them as TotalInvoiceAmount
FROM Invoices
--table used
WHERE InvoiceDate > '2015-09-01';
--applies to any value greater than '2015-09-01'

--Sample Results

/*
SelectionDate	NumberOfInvoices	AverageInvoiceAmount	TotalInvoiceAmount
After 9/1/2015	12	2782.1183	33385.42
*/
