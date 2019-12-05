-- Referenced from "50 SQL Query Questions and Answers for Practice"
--@ https://www.techbeamers.com/sql-query-questions-answers-for-practice/ 

--A query that joins first name and last name into a single column called Complete name
SELECT CONCAT(FirstName, ' ',LastName) AS CompleteName
--Selects columns FirstName and LastName and puts a space in between them while renaming the column as CompleteName
FROM ContactUpdates
--table used

--Sample Result

/*
CompleteName
Michelle Davison
Kendall Mayteh
Bruce Onandonga
Anthony Antavius
Danny Bradlee
Reynaldo Suscipe
Geraldine O'Sullivan
Charles Bucket
*/