--From Murach's SQL Server 2016 for Developers
--Page 167

--A summary query that limits the groups to those with two or more invoices
SELECT VendorState, VendorCity, COUNT(*) AS InvoiceQty,
--values used and Count of everything used redefined as InvoiceQty
	AVG(InvoiceTotal) AS InvoiceAvg
--AVerage of InvoiceTotal redefined as InvoiceAVG
FROM Invoices JOIN Vendors
--table join prompt
	ON Invoices.VendorID = Vendors.VendorID
--join values where VendorID is equal from Invoices and VendorsID
GROUP BY VendorState, VendorCity
HAVING COUNT(*) >= 2
--restricts results to having 2 or more Invoices
ORDER BY VendorState, VendorCity;

--Sample Result
/*
VendorState	VendorCity	InvoiceQty	InvoiceAvg
MI	Ann Arbor	2	15763.62
TN	Memphis	4	52.7225
*/
