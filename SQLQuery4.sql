--Original source code from Murach's SQL Server 2016 for Developers
--Page 189

-- Same query as Query5 before just simplified
SELECT Vendors.VendorID, VendorName, VendorState 
-- columns used
FROM Vendors join Invoices 
-- table used 
	ON Vendors.VendorID != Invoices.VendorID; 
	-- condition statement as seen in previous query except with does not equal sign (!=)

--Sample Output
/*
AZ	Wells Fargo Bank	662.00
CA	Digital Dreamworks	7125.34
DC	Reiter's Scientific & Pro Books	600.00
MA	Dean Witter Reynolds	1367.50
MI	Malloy Lithographing Inc	119892.41
NV	United Parcel Service	23177.96
OH	Edward Data Services	207.78
PA	Cardinal Business Media, Inc.	265.36
TN	Federal Express Corporation	4378.02
TX	Ingram	2154.42
*/