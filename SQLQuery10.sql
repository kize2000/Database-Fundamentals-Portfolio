--The same query restated with a subquery:
   SELECT invoiceNumber, InvoiceDate, InvoiceTotal -- columns used
   FROM Invoices -- table used
   WHERE VendorID IN
       (SELECT VendorID -- subquery that selects all values from vendors that have VendorState = 'CA'
        FROM Vendors
        WHERE VendorState = 'CA')
   ORDER BY InvoiceDate; -- order results by InvoiceDate by increasing