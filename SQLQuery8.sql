--A SELECT statement that uses a subquery in the WHERE clause
   SELECT InvoiceNumber, InvoiceDate, InvoiceTotal -- columns used 
   FROM Invoices -- table used 
   WHERE InvoiceTotal > -- all values that are greter than the average InvoiceTotal
       (SELECT AVG(InvoiceTotal) -- take the Average of InvoiceTotal from the table invoices
        FROM Invoices)
   ORDER BY InvoiceTotal; -- order than by Invoice total increasing