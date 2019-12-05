--From Murach's SQL Server 2016 for Developers
--Page 163

--A summary query that works on non-numeric columns
SELECT MIN(VendorName) AS FirstVendor,
--takes first value and redefines it as FirstVendor in result set
	MAX(VendorName) AS LastVendor,
--takes last value and redefines it as LastVendor in result set
	COUNT(VendorName) AS NumberOfVendors
--takes the count of all values and redefines it as NumberOfVendors in result set
FROM Vendors;
--table used

--Sample Result

/*
FirstVendor	LastVendor	NumberOfVendors
Abbey Office Furnishings	Zylka Design	122
*/