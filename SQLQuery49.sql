-- Referenced from "50 SQL Query Questions and Answers for Practice"
--@ https://www.techbeamers.com/sql-query-questions-answers-for-practice/ 

--A query that returns information for Customers that have the letter A in their first name
SELECT * FROM Customers
--selects everything from customers
WHERE CustFirstName LIKE '%a%'
--gives the condition that the returned values must have the letter a in CusFirstName 

--Sample Result

/*
CustID	CustFirstName	CustLastName	CustAddress	CustCity	CustState	CustZip	CustPhone	CustFax
1	Korah	Blanca	1555 W Lane Ave	Columbus	OH	43221	6145554435	6145553928
2	Yash	Randall	11 E Rancho Madera Rd	Madison	WI	53707	2095551205	2095552262
3	Johnathon	Millerton	60 Madison Ave	New York	NY	10010	2125554800	NULL
4	Mikayla	Damion	2021 K Street Nw	Washington	DC	20006	2025555561	NULL
5	Kendall	Mayte	4775 E Miami River Rd	Cleves	OH	45002	5135553043	NULL
6	Kaitlin	Hostlery	3250 Spring Grove Ave	Cincinnati	OH	45225	8005551957	8005552826
8	Deborah	Damien	415 E Olive Ave	Fresno	CA	93728	5595558060	NULL
9	Karina	Lacy	882 W Easton Wy	Los Angeles	CA	90084	8005557000	NULL
12	Anders	Rohansen	12345 E 67th Ave NW	Takoma Park	MD	24512	3385556772	NULL
13	Thalia	Neftaly	2508 W Shaw Ave	Fresno	CA	93711	5595556245	NULL
14	Gonzalo	Keeton	12 Daniel Road	Fairfield	NJ	07004	2015559742	NULL
15	Ania	Irvin	1099 N Farcourt St	Orange	CA	92807	7145559000	NULL
16	Dakota	Baylee	1033 N Sycamore Ave.	Los Angeles	CA	90038	2135554322	NULL
17	Samuel	Jacobsen	3433 E Widget Ave	Palo Alto	CA	92711	4155553434	NULL
21	Marvin	Quintin	2677 Industrial Circle Dr	Columbus	OH	43260	6145558600	6145557580
22	Rashad	Holbrooke	3467 W Shaw Ave #103	Fresno	CA	93711	5595558625	5595558495
23	Trisha	Anum	627 Aviation Way	Manhatttan Beach	CA	90266	3105552732	NULL
24	Julian	Carson	372 San Quentin	San Francisco	CA	94161	6175550700	NULL
*/