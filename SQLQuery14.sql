--From Murach's SQL Server 2016 for Developers
--Page 27

--this is a simple select statement that orders the result by InvoiceDate
SELECT InvoiceNumber, InvoiceDate, InvoiceTotal, PaymentTotal, CreditTotal, 
-- columns used
	InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue 
	-- redefines the specified columns as BalanceDue 
FROM Invoices
--table used
WHERE InvoiceTotal - PaymentTotal - CreditTotal > 0
--condition where every result that is greater than 0 is returned
ORDER BY InvoiceDate
--ordered by Invoice Date

--Sample Output
/*
InvoiceNumber	InvoiceDate			InvoiceTotal	PaymentTotal	CreditTotal		BalanceDue
39104			2016-03-10 00:00:00		85.31			0.00			0.00		85.31
963253264		2016-03-18 00:00:00		52.25			0.00			0.00		52.25
31361833		2016-03-21 00:00:00		579.42			0.00			0.00		579.42
263253268		2016-03-21 00:00:00		59.97			0.00			0.00		59.97
263253270		2016-03-22 00:00:00		67.92			0.00			0.00		67.92
263253273		2016-03-22 00:00:00		30.75			0.00			0.00		30.75
P-0608			2016-03-23 00:00:00		20551.18		0.00			1200.00		19351.18
9982771			2016-03-24 00:00:00		503.20			0.00			0.00		503.20
134116			2016-03-28 00:00:00		90.36			0.00			0.00		90.36
0-2436			2016-03-31 00:00:00		10976.06		0.00			0.00		10976.06
547480102		2016-04-01 00:00:00		224.00			0.00			0.00		224.00
3289175			2016-04-18 00:00:00		165.00			0.00			0.00		165.00
*/