--From Murach's SQL Server 2016 for Developers
--Page 145

--A SELECT statement that joins the three tables using full outer joins
SELECT DeptName, LastName, ProjectNo
--columns used
FROM Departments
--table used
	FULL JOIN Employees
		ON Departments.DeptNo = Employees.DeptNo
		--joins all of Departments and Employees values that are in the DeptNo. column
	FULL JOIN Projects
		ON Employees.EmployeeID = Projects.EmployeeID
		--joins all of Projects and Employees values that are in the EmployeeID column
ORDER BY DeptName, LastName, ProjectNo;

--Sample Result

/*
DeptName	LastName	ProjectNo
NULL	NULL	P1014
NULL	Locario	P1013
NULL	Watson	P1013
Accounting	Hernandez	P1011
Maintenance	Hardy	NULL
Operations	NULL	NULL
Payroll	Aaronsen	P1012
Payroll	Simonian	P1012
Payroll	Smith	P1012
Personnel	Jones	NULL
Personnel	O'Leary	P1011
*/