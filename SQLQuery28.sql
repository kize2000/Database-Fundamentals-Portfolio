--From Murach's SQL Server 2016 for Developers
--Page 147

--A SELECT statement that combines an outer and an inner join
SELECT DeptName, LastName, ProjectNo
--columns used
FROM Departments
--table used
	JOIN Employees
		ON Departments.DeptNo = Employees.DeptNo
		--outer join where Departments and Employees DeptNo values are combined
	LEFT JOIN Projects
		ON Employees.EmployeeID = Projects.EmployeeID
		--inner join where Employees and Projects EmployeeID values are combined
ORDER BY DeptName;
--ordered by DeptName

--Sample Result

/*
DeptName	LastName	ProjectNo
Accounting	Hernandez	P1011
Maintenance	Hardy	NULL
Payroll	Smith	P1012
Payroll	Simonian	P1012
Payroll	Aaronsen	P1012
Personnel	Jones	NULL
Personnel	O'Leary	P1011
*/