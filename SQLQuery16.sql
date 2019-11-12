--From Murach's SQL Server 2016 for Developers
--Page 31

-- a statement that adds a row to the Invoices table
INSERT INTO Invoices (VendorID, InvoiceNumber, InvoiceDate, InvoiceTotal, TermsID, InvoiceDueDate) -- columns values thtat values will be inserted to corresponding to the order
VALUES (12, '3289175', '4/18/2016', 165, 3, '5/18/2016'); -- values that will be inserted
SELECT * FROM Invoices