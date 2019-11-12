--Murach's SQL Server 2016 for Developers
--Page 31

--A statement that deletes a selected invoice form the Invoices table 
DELETE FROM Invoices
WHERE InvoiceNumber = '4-3423-8069';
-- did not actually want to delete anything so used example

--A statement that deletes all paid invoices from the Invoices table
DELETE FROM Invoices
WHERE InvoiceTotal - PaymentTotal - CreditTotal = 0;

--Sample Result
--(103 rows affected)
