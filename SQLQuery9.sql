--A query that uses an inner join:
   SELECT InvoiceNumber, InvoiceDate, InvoiceTotal -- columns used
   FROM Invoices JOIN Vendors -- tables used (Vendors and Invoices)
        ON Invoices.VendorID = Vendors.VendorID --taking the value of VendorID from both tables
   WHERE VendorState = 'CA' --where values == CA
   ORDER BY InvoiceDate; -- order result by InvoiceDate