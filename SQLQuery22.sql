--From Murach's SQL Server 2016 for Developers
--Page 89

-- A SELECT statement that retrieves two columns and a calculated value for specific invoice 
SELECT InvoiceID, InvoiceTotal, CreditTotal + PaymentTotal AS TotalCredits
-- columns used and CreditTotal and PaymentTotal are added in which the result is labeled as TotalCredits
FROM Invoices
-- table used
WHERE InvoiceID = 89;
-- condition statement 

--Sample Result
/*
InvoiceID	InvoiceTotal	TotalCredits
89	85.31	0.00
*/