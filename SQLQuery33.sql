--From Murach's SQL Server 2016 for Developers
--Page 163

--A summary query that uses teh MIN and MAX functions
SELECT 'After 9/1/2015' AS SelectionDate, COUNT(*) AS NumberOfInvoices,
--takes all values after 9/1/2015 and returns as SelectionDate as well as counts them and and returns that value as NumberOfInvoices
	MAX(InvoiceTotal) AS HighestInvoiceTotal,
--Max value in invoice total returned as HighestInvoiceTotal
	MIN(InvoiceTotal) AS LowestInvoiceTotal
--Min value in invoice total returned as HighestInvoiceTotal
FROM Invoices
--table used
WHERE InvoiceDate > '2015-09-01'
--larger than '2015-09-01'

--Sample Result

/*
SelectionDate	NumberOfInvoices	HighestInvoiceTotal	LowestInvoiceTotal
After 9/1/2015	12	20551.18	30.75
*/