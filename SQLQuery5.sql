-- A query that returns vendors without invoices:
   SELECT VendorID, VendorName, VendorState -- Columns used
   FROM Vendors -- table used
   WHERE NOT EXISTS -- condition statement
         (SELECT *  -- condition used which is all invoices where values from VendorID in Invoices is == VendorID in Vendors
         FROM Invoices
         WHERE Invoices.VendorID = Vendors.VendorID);
