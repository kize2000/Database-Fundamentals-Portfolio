-- Same query as before just simplified
SELECT Vendors.VendorID, VendorName, VendorState -- columns used
FROM Vendors join Invoices -- table used 
	ON Vendors.VendorID != Invoices.VendorID; -- condition statement as seen in previous query except with does not equal sign (!=)