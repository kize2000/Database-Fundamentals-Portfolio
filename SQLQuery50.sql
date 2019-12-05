-- Referenced from "50 SQL Query Questions and Answers for Practice"
--@ https://www.techbeamers.com/sql-query-questions-answers-for-practice/ 

--A query that selects all customers from the state of Ohio
SELECT * FROM Customers
--selects everything from Customers table
WHERE CustState = 'OH'
--only returns values of customers who live in Ohio

--Sample Result

/*
CustID	CustFirstName	CustLastName	CustAddress	CustCity	CustState	CustZip	CustPhone	CustFax
1	Korah	Blanca	1555 W Lane Ave	Columbus	OH	43221	6145554435	6145553928
5	Kendall	Mayte	4775 E Miami River Rd	Cleves	OH	45002	5135553043	NULL
6	Kaitlin	Hostlery	3250 Spring Grove Ave	Cincinnati	OH	45225	8005551957	8005552826
21	Marvin	Quintin	2677 Industrial Circle Dr	Columbus	OH	43260	6145558600	6145557580
*/