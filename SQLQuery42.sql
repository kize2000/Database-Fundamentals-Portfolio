--From Murach's SQL Server 2016 for Developers
--Page 173

--A summary query that includes a summary row for each grouping level
SELECT VendorState, VendorCity, COUNT(*) AS QtyVendors
--Columns used in query as well as COUNT of everything redefined as QtyVendors
FROM Vendors
--table used
WHERE VendorState IN ('IA', 'NJ')
--condition used in which any value that is equal to string IA and NJ is used
GROUP BY VendorState, VendorCity WITH ROLLUP
--groups VendorState and VendorCity but also allows subtotals of each VendorState and VendorCity
ORDER BY VendorState DESC, VendorCity DESC;
--each column in descending order

--Sample Result

/*
VendorState	VendorCity	QtyVendors
NJ	Washington	1
NJ	Fairfield	1
NJ	East Brunswick	2
NJ	NULL	4
IA	Washington	1
IA	Fairfield	1
IA	NULL	2
NULL	NULL	6
*/