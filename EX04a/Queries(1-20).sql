--1
SELECT ProjectID, ProjectName, Department,MaxHours, StartDate, EndDate
FROM Project;

--2
SELECT(*)
FROM Project;

--3
SELECT ProjectName, Department, MaxHours
FROM Project;

--4
SELECT ProjectName, Department, MaxHours
FROM Project;

--5
SELECT Department
FROM Project;

--6
SELECT DISTINCT Department
FROM Project;

--7
SELECT(*) 
FROM Project
WHERE Department = 'Finance';

--8
SELECT(*)
FROM Project
WHERE StartDate = '2019/05/10';

--9
SELECT(*)
FROM Project
WHERE MaxHours > 135;

--10
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting';

--11
SELECT FirstName, LastName,Department, OfficePhone
FROM Employee
ORDER BY Department;

--12
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
ORDER BY Department DESC;

--13
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
ORDER BY Department DESC. LastName ASC;

--14
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8410';
	
--15
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8410';
	
--16
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8430';
	
--17
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department IN ('Administration', 'Finance', 'Accounting');

--18
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');

--19
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE EmployeeNumber >= 2
	AND EmployeeNumber <= 5;

--20
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE EmployeeNumber BETWEEN 2 AND 5;
