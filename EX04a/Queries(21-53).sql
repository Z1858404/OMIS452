--21
SELECT(*)
FROM Project
WHERE ProjectName LIKE '2019 Q_ Portfolio Analysis';

--22
SELECT(*)
FROM Employee
WHERE OfficePhone LIKE '360-285-88__';

--23
SELECT(*)
FROM Employee
WHERE OfficePhone LIKE '360-285-88%'

--24
SELECT(*)
FROM Employee
WHERE Department LIKE '%ing';

--25
SELECT(*)
FROM Employee
WHERE Department NOT LIKE '%ing';

--26
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE OfficePhone IS NULL;

--27
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE OfficePhone IS NOT NULL;

--28
SELECT COUNT(*)
FROM Project;

--29
SELECT COUNT(*) AS NumberOfProjects
FROM Project;

--30
SELECT COUNT(Department) AS NumberOfDepartments
FROM Project;

--31
SELECT COUNT(DISTINCT Department) AS NumberOfDepartment
FROM Project; 

--32
SELECT SUM(MaxHours) AS TotalMaxHours, AVG(MaxHours) AS AverageMaxHours, MIN(MaxHours) AS MinimumMaxHours, MAX(MaxHours) AS MaximumMaxHours
FROM Project
WHERE ProjectID <= 1200;

--33
SELECT ProjectName, COUNT(*)
FROM Project;

--34
SELECT(*)
FROM Project
WHERE MaxHours > AVG(MaxHours);

--35
SELECT ProjectID, ProjectName, MaxHours, (24.50 * MaxHours) AS MaxProjectCost
FROM Project;

--36
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Department;

--37
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 1;

--38
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
WHERE EmployeeNumber <= 10
GROUP BY Department
HAVING COUNT(*) > 1;

--39
SELECT FirstName, LastName
FROM Employee
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

--40
SELECT DISTINCT EmployeeNumber
FROM Assignment
WHERE HoursWorked > 50;

--41
SELECT FirstName, LastName
FROM Employee
WHERE EmployeeNumber IN
	(SELECT DISTINCT EmployeeNumber
	FROM Assignment
	WHERE HoursWorked > 50);
	
--42
SELECT DISTINCT ProjectID
FROM Project
WHERE Department = 'Accounting';

--43
SELECT DISTINCT EmployeeNumber
FROM Assignment
WHERE HoursWorked > 40
	AND ProjectID IN
	(SELECT ProjectID
	FROM Project
	WHERE Department = 'Accounting');
	
--44
SELECT FirstName, LastName
FROM Employee
WHERE EmployeeNumber IN 
	(SELECT DISTINCT EmployeeNumber
	FROM Assignment
	WHERE HoursWorked > 40
		AND ProjectID IN
		(SELECT ProjectID
		FROM Project
		WHERE Department = 'Accounting'));

--45
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment;

--46
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment
WHERE Employee.EmployeeNumber = Assignment.EmployeeNumber;

--47
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment
WHERE Employee.EmployeeNumber = 
		Assignment.EmployeeNumber
ORDER BY Employee.EmployeeNumber, ProjectID;

--48
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee JOIN Assignment
	ON Employee.EmployeeNumber = 
		Assignment.EmployeeNumber
ORDER BY Employee.EmployeeNumber, ProjectID;

--49
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked
FROM Employee AS E JOIN Assignment AS AND
	ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

--50
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee AS E JOIN Assignment AS A
	ON E.EmployeeNumber = A.EmployeeNumber
WHERE HoursWorked > 50
ORDER BY LastName, FirstName, ProjectID;

--51
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM Employee AS E JOIN Assignment AS A 
	ON E.EmployeeNumber = A.EmployeeNumber
		JOIN Project AS P 
			ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;

--52
SELECT(*) FROM Project;

--53
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM Employee AS E JOIN Assignment AS A
	ON E.EmployeeNumber = A.EmployeeNumber
		JOIN Project AS P 
			ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;
