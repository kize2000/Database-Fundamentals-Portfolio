--From Murach's SQL Server 2016 for Developers
--Page 173

--A summary query that includes a final summary row
SELECT VendorID, COUNT(*) AS InvoiceCount,
--column used is VendorID and the COUNT of everything is redefined as InvoiceCount
	SUM(InvoiceTotal) AS InvoiceTotal
--the SUM of InvoiceTotal is redefined as InvoiceTotal
FROM Invoices
--table used
GROUP BY VendorID WITH ROLLUP;
--grouped by VendorID with rollup allows SQL to make subtotals in the result table

--Sample Result

/*
VendorID	InvoiceCount	InvoiceTotal
12	1	165.00
37	1	224.00
72	1	85.31
80	1	90.36
83	1	579.42
106	1	503.20
110	2	31527.24
123	4	210.89
NULL	12	33385.42
*/