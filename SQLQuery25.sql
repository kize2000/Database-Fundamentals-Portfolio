--From Murach's SQL Server 2016 for Developers
--Page 97

--A SELECT statement that calculates the balance due 
SELECT InvoiceTotal, PaymentTotal, CreditTotal,
--columns used
InvoiceTotal - PaymentTotal - CreditTotal AS BalanceDue
--subtraction of all values and redefinition of result as BalanceDue
FROM Invoices;
--table used

--Sample Result

/*
InvoiceTotal	PaymentTotal	CreditTotal	BalanceDue
85.31	0.00	0.00	85.31
52.25	0.00	0.00	52.25
579.42	0.00	0.00	579.42
59.97	0.00	0.00	59.97
67.92	0.00	0.00	67.92
30.75	0.00	0.00	30.75
20551.18	0.00	1200.00	19351.18
503.20	0.00	0.00	503.20
90.36	0.00	0.00	90.36
10976.06	0.00	0.00	10976.06
224.00	0.00	0.00	224.00
165.00	0.00	0.00	165.00
*/