--From Murach's SQL Server 2016 for Developers
--Page 189

-- A query that returns vendors without invoices:
   SELECT VendorID, VendorName, VendorState 
   -- Columns used
   FROM Vendors 
   -- table used
   WHERE NOT EXISTS 
   -- condition statement
         (SELECT *  
		 -- condition used which is all invoices where values from VendorID in Invoices is == VendorID in Vendors
         FROM Invoices
         WHERE Invoices.VendorID = Vendors.VendorID);

--Sample Output
/*
1	US Postal Service	WI
2	National Information Data Ctr	DC
3	Register of Copyrights	DC
4	Jobtrak	CA
5	Newbrige Book Clubs	NJ
6	California Chamber Of Commerce	CA
7	Towne Advertiser's Mailing Svcs	CA
8	BFI Industries	CA
9	Pacific Gas & Electric	CA
10	Robbins Mobile Lock And Key	CA
11	Bill Marvin Electric Inc	CA
13	Golden Eagle Insurance Co	CA
14	Expedata Inc	CA
15	ASC Signs	CA
16	Internal Revenue Service	CA
17	Blanchard & Johnson Associates	CA
18	Fresno Photoengraving Company	CA
19	Crown Printing	CA
20	Diversified Printing & Pub	CA
21	The Library Ltd	MO
22	Micro Center	OH
23	Yale Industrial Trucks-Fresno	CA
24	Zee Medical Service Co	IA
25	California Data Marketing	CA
26	Small Press	MI
27	Rich Advertising	NJ
29	Vision Envelope & Printing	CA
30	Costco	CA
31	Enterprise Communications Inc	VA
32	RR Bowker	NJ
33	Nielson	OH
35	Cal State Termite	CA
36	Graylift	CA
38	Venture Communications Int'l	NY
39	Custom Printing Company	MO
40	Nat Assoc of College Stores	OH
41	Shields Design	CA
42	Opamp Technical Books	CA
43	Capital Resource Credit	MN
44	Courier Companies, Inc	MA
45	Naylor Publications Inc	FL
46	Open Horizons Publishing	IA
47	Baker & Taylor Books	NC
49	Mcgraw Hill Companies	IL
50	Publishers Weekly	OH
51	Blue Shield of California	CA
52	Aztek Label	CA
53	Gary McKeighan Insurance	CA
54	Ph Photographic Services	CA
55	Quality Education Data	IL
56	Springhouse Corp	PA
57	The Windows Deck	CA
58	Fresno Rack & Shelving Inc	CA
59	Publishers Marketing Assoc	CA
60	The Mailers Guide Co	NY
61	American Booksellers Assoc	NY
62	Cmg Information Services	MA
63	Lou Gentile's Flower Basket	CA
64	Texaco	CA
65	The Drawing Board	IL
66	Ascom Hasler Mailing Systems	CT
67	Bill Jones	CA
68	Computer Library	AZ
69	Frank E Wilber Co	CA
70	Fresno Credit Bureau	CA
71	The Fresno Bee	CA
73	Executive Office Products	CA
74	Leslie Company	KS
75	Retirement Plan Consultants	CA
76	Simon Direct Inc	NJ
77	State Board Of Equalization	CA
78	The Presort Center	CA
79	Valprint	CA
84	Boucher Communications Inc	PA
85	Champion Printing Company	OH
87	DMV Renewal	CA
91	McKesson Water Products	CA
92	Zip Print & Copy Center	CA
93	AT&T	AZ
98	American Express	CA
101	California Business Machines	CA
109	Kent H Landsberg Co	CA
111	Net Asset, Llc	CA
112	Office Depot	CA
116	State of California	CA
118	Unocal	CA
120	Dataforms/West	CA
*/
