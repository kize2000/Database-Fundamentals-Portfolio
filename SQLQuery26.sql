--From Murach's SQL Server 2016 for Developers
--Page 145

SELECT DeptName, LastName, ProjectNo
--columns used
FROM Departments
--table used
	LEFT JOIN Employees
		ON Departments.DeptNo = Employees.DeptNo
		--takes values from Employees and joins them with Departments where DeptNo is equal
	LEFT JOIN Projects
		ON Employees.EmployeeID = Projects.EmployeeID
		--takes values from Projects and joins the with Employees where EmployeeID is equal
ORDER BY DeptName, LastName, ProjectNo;

--Sample Result

/*
DeptName	LastName	ProjectNo
Accounting	Hernandez	P1011
Maintenance	Hardy	NULL
Operations	NULL	NULL
Payroll	Aaronsen	P1012
Payroll	Simonian	P1012
Payroll	Smith	P1012
Personnel	Jones	NULL
Personnel	O'Leary	P1011
*/