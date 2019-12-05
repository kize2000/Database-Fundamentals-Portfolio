--From Murach's SQL Server 2016 for Developers
--Page 167

--A summary query that calculates teh number of invoices and the average invoice amount for the vendors each state and city
SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
--values used and Count of everything used redefined as InvoiceQty
	AVG(InvoiceTotal) AS InvoiceAvg
--Average of InvoiceTotal is redefined as InvoiceAvg
FROM Invoices JOIN Vendors
--table used
	ON Invoices.VendorID = Vendors.VendorID
--join values where VendorID is equal from Invoices and VendorsID
GROUP BY VendorState, VendorCity
ORDER BY VendorState, VendorCity;

--Sample Result
/*
VendorState	VendorCity	InvoiceQty	InvoiceAvg
CA	Fresno	1	165.00
CA	Los Angeles	1	503.20
CA	Oxnard	1	224.00
MI	Ann Arbor	2	15763.62
MI	Auburn Hills	1	85.31
PA	Philadelphia	1	90.36
TN	Memphis	4	52.7225
TX	Dallas	1	579.42
*/