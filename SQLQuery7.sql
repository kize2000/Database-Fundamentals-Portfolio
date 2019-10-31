--A query that returns vendors without Invoices:
   SELECT VendorID, VendorName, Vendorstate -- columns from AP database
   FROM Vendors -- the table that is selected 
   WHERE VendorID NOT IN
          (SELECT DISTINCT VendorID -- subquery determining duplicates in VendorID and removing them
          FROM Invoices);
