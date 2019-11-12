--Referenced from Murach's SQL Server 2016 for Developers

select * from PaidInvoices
/*this function returns the values that are different from  each other intstead of listing the entire table. 
For example, in VendorID there are multiple numbers that are the same.*/

--Sample Output
/*
InvoiceID	VendorID	InvoiceNumber	InvoiceDate		  InvoiceTotal	 PaymentTotal	CreditTotal	TermsID		InvoiceDueDate		PaymentDate
	1		122			989319-457	2015-12-08 00:00:00		3813.33			3813.33			0.00	   3	2016-01-08 00:00:00	 2016-01-07 00:00:00
	2		123			263253241	2015-12-10 00:00:00		40.20			40.20			0.00	   3	2016-01-10 00:00:00	 2016-01-14 00:00:00
	3		123			963253234	2015-12-13 00:00:00		138.75			138.75			0.00	   3	2016-01-13 00:00:00	 2016-01-09 00:00:00
	4		123			2-000-2993	2015-12-16 00:00:00		144.70			144.70			0.00	   3	2016-01-16 00:00:00	 2016-01-12 00:00:00
	5		123			963253251	2015-12-16 00:00:00		15.50			15.50			0.00	   3	2016-01-16 00:00:00	 2016-01-11 00:00:00
	6		123			963253261	2015-12-16 00:00:00		42.75			42.75			0.00	   3	2016-01-16 00:00:00	 2016-01-21 00:00:00
	7		123			963253237	2015-12-21 00:00:00		172.50			172.50			0.00	   3	2016-01-21 00:00:00	 2016-01-22 00:00:00
	8		89			125520-1	2015-12-24 00:00:00		95.00			95.00			0.00	   1	2016-01-04 00:00:00	 2016-01-01 00:00:00
	9		121			97/488		2015-12-24 00:00:00		601.95			601.95			0.00	   3	2016-01-24 00:00:00	 2016-01-21 00:00:00
...
*/
select distinct VendorID from PaidInvoices
/*the distinct function removed all duplicates in the VendorID in the result table making it easier to see which companies have payed an invoice*/

--Sample Output
/*
VendorID
   34
   37
   48
   72
   80
   81
   82
   83
...
*/