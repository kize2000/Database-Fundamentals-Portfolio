--A query that returns Invoices with a balance due less than the average:
   SELECT invoiceNumber, InvoiceDate, InvoiceTotal, -- columns used 
       InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue -- renames InvoiceTotal, PaymentTotal, and CreditTotal as BalanceDue for the rest of the query
   FROM Invoices -- table used 
   WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0 -- where the value of listed "Totals" is greater than 0
       AND InvoiceTotal - PaymentTotal - CreditTotal < -- select the average of each of the "Totals" from the table Invoices
        (SELECT AVG(InvoiceTotal - PaymentTotal - CreditTotal) -- this portion compares the values pulled to the average 
        FROM Invoices
        WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0) -- and if it is less than the average it will be in the result
   ORDER BY InvoiceTotal DESC; -- Order by descending values