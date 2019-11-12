--From Murach's SQL Server 2016 for Developers
--Page 187

--A query that uses an inner join:
   SELECT InvoiceNumber, InvoiceDate, InvoiceTotal 
   -- columns used
   FROM Invoices JOIN Vendors 
   -- tables used (Vendors and Invoices)
        ON Invoices.VendorID = Vendors.VendorID 
		--taking the value of VendorID from both tables
   WHERE VendorState = 'CA' 
   --where values == CA
   ORDER BY InvoiceDate; 
   -- order result by InvoiceDate

--Sample Output
/*
125520-1	2015-12-24 00:00:00	95.00
97/488	2015-12-24 00:00:00	601.95
111-92R-10096	2015-12-30 00:00:00	16.33
25022117	2016-01-01 00:00:00	6.00
P02-88D77S7	2016-01-03 00:00:00	856.92
QP58872	2016-01-07 00:00:00	116.54
24863706	2016-01-10 00:00:00	6.00
10843	2016-01-11 00:00:00	4901.26
77290	2016-01-13 00:00:00	1750.00
121897	2016-01-19 00:00:00	450.00
P02-3772	2016-01-21 00:00:00	7125.34
97/486	2016-01-21 00:00:00	953.10
94007005	2016-01-23 00:00:00	220.00
RTR-72-3662-X	2016-01-25 00:00:00	1600.00
97/465	2016-01-25 00:00:00	565.15
97/503	2016-01-30 00:00:00	639.77
111-92R-10094	2016-02-01 00:00:00	19.67
547481328	2016-02-03 00:00:00	224.00
111-92R-10097	2016-02-04 00:00:00	16.33
547479217	2016-02-07 00:00:00	116.00
Q545443	2016-02-09 00:00:00	1083.58
111-92R-10092	2016-02-09 00:00:00	46.21
97/553B	2016-02-10 00:00:00	313.55
367447	2016-02-11 00:00:00	2433.00
24946731	2016-02-15 00:00:00	25.67
509786	2016-02-18 00:00:00	6940.25
MABO1489	2016-02-21 00:00:00	936.93
24780512	2016-02-22 00:00:00	6.00
CBM9920-M-T77109	2016-02-23 00:00:00	290.00
109596	2016-02-24 00:00:00	41.80
97/553	2016-02-25 00:00:00	904.14
97/522	2016-02-28 00:00:00	1962.13
203339-13	2016-03-05 00:00:00	17.50
111-92R-10093	2016-03-06 00:00:00	39.77
111-92R-10095	2016-03-15 00:00:00	32.70
111897	2016-03-15 00:00:00	16.62
97-1024A	2016-03-20 00:00:00	356.48
9982771	2016-03-24 00:00:00	503.20
97/222	2016-03-25 00:00:00	1000.46
547480102	2016-04-01 00:00:00	224.00
3289175	2016-04-18 00:00:00	165.00
*/