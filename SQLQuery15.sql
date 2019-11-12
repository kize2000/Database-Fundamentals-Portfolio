--a select statement that joins data from the Vendors and Invoices tables
SELECT VendorName, InvoiceNumber, InvoiceDate, InvoiceTotal --columns selected 
FROM Vendors INNER JOIN Invoices -- joining of 2 tables of inner join where inner join returns rows from both tables only if their related columns match
	ON Vendors.VendorID = Invoices.VendorID -- columns that match are VendorID
WHERE InvoiceTotal >= 500 -- select all values that are greater than or equal to
ORDER BY VendorName, InvoiceTotal DESC; --ordered by descending values alphabetically first and then decreaseing number 