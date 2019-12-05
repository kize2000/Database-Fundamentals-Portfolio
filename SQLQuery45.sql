-- Referenced from "50 SQL Query Questions and Answers for Practice"
--@ https://www.techbeamers.com/sql-query-questions-answers-for-practice/ 

--A query that selects the values from VendorName, redefines them as Screaming_Vendors and makes them uppercase in result table
SELECT UPPER(VendorName) AS Screaming_Vendors from Vendors;
--the UPPER function takes all lowercase and makes it uppercase