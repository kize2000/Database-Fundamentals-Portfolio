-- Referenced from "50 SQL Query Questions and Answers for Practice"
--@ https://www.techbeamers.com/sql-query-questions-answers-for-practice/ 

--A query that pulls all Invoices that have TermsID == 3
SELECT * FROM Invoices
--Selects everything from Invoices table
WHERE TermsID = 3
--Specifies that any TermsID that is equal to 3 is to be put in the result set

--Sample Result

/*
InvoiceID	VendorID	InvoiceNumber	InvoiceDate	InvoiceTotal	PaymentTotal	CreditTotal	TermsID	InvoiceDueDate	PaymentDate	BalanceDue
89	72	39104	2016-03-10 00:00:00	85.31	0.00	0.00	3	2016-04-09 00:00:00	NULL	0.00
94	123	963253264	2016-03-18 00:00:00	52.25	0.00	0.00	3	2016-04-17 00:00:00	NULL	0.00
99	123	263253268	2016-03-21 00:00:00	59.97	0.00	0.00	3	2016-04-20 00:00:00	NULL	0.00
100	123	263253270	2016-03-22 00:00:00	67.92	0.00	0.00	3	2016-04-21 00:00:00	NULL	0.00
101	123	263253273	2016-03-22 00:00:00	30.75	0.00	0.00	3	2016-04-21 00:00:00	NULL	0.00
102	110	P-0608	2016-03-23 00:00:00	20551.18	0.00	1200.00	3	2016-04-22 00:00:00	NULL	0.00
105	106	9982771	2016-03-24 00:00:00	503.20	0.00	0.00	3	2016-04-23 00:00:00	NULL	0.00
112	110	0-2436	2016-03-31 00:00:00	10976.06	0.00	0.00	3	2016-04-30 00:00:00	NULL	0.00
113	37	547480102	2016-04-01 00:00:00	224.00	0.00	0.00	3	2016-04-30 00:00:00	NULL	0.00
115	12	3289175	2016-04-18 00:00:00	165.00	0.00	0.00	3	2016-05-18 00:00:00	NULL	0.00
*/