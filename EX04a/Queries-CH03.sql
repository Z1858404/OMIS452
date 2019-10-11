/* Query-CH03-01 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectID, ProjectName, Department,MaxHours, StartDate, EndDate
FROM Project;

/* Query-CH03-02 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Project;

/* Query-CH03-03 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectName, Department, MaxHours
FROM Project;

/* Query-CH03-04 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectName, Department, MaxHours
FROM Project;

/* Query-CH03-05 by Stephen Chartrand & Jacob Hamilton */
SELECT Department
FROM Project;

/* Query-CH03-06 by Stephen Chartrand & Jacob Hamilton */
SELECT DISTINCT Department
FROM Project;

/* Query-CH03-07 by Stephen Chartrand & Jacob Hamilton */
SELECT(*) 
FROM Project
WHERE Department = 'Finance';

/* Query-CH03-08 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Project
WHERE StartDate = '2019/05/10';

/* Query-CH03-09 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Project
WHERE MaxHours > 135;

/* Query-CH03-10 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting';

/* Query-CH03-11 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName,Department, OfficePhone
FROM Employee
ORDER BY Department;

/* Query-CH03-12 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
ORDER BY Department DESC;

/* Query-CH03-13 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
ORDER BY Department DESC. LastName ASC;

/* Query-CH03-14 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8410';
	
/* Query-CH03-15 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8410';
	
/* Query-CH03-16 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department = 'Accounting'
	OR OfficePhone = '360-285-8430';
	
/* Query-CH03-17 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department IN ('Administration', 'Finance', 'Accounting');

/* Query-CH03-18 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');

/* Query-CH03-19 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE EmployeeNumber >= 2
	AND EmployeeNumber <= 5;

/* Query-CH03-20 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE EmployeeNumber BETWEEN 2 AND 5;

/* Query-CH03-21 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Project
WHERE ProjectName LIKE '2019 Q_ Portfolio Analysis';

/* Query-CH03-22 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Employee
WHERE OfficePhone LIKE '360-285-88__';

/* Query-CH03-23 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Employee
WHERE OfficePhone LIKE '360-285-88%'

/* Query-CH03-24 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Employee
WHERE Department LIKE '%ing';

/* Query-CH03-25 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Employee
WHERE Department NOT LIKE '%ing';

/* Query-CH03-26 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE OfficePhone IS NULL;

/* Query-CH03-27 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, Department, OfficePhone
FROM Employee
WHERE OfficePhone IS NOT NULL;

/* Query-CH03-28 by Stephen Chartrand & Jacob Hamilton */
SELECT COUNT(*)
FROM Project;

/* Query-CH03-29 by Stephen Chartrand & Jacob Hamilton */
SELECT COUNT(*) AS NumberOfProjects
FROM Project;

/* Query-CH03-30 by Stephen Chartrand & Jacob Hamilton */
SELECT COUNT(Department) AS NumberOfDepartments
FROM Project;

/* Query-CH03-31 by Stephen Chartrand & Jacob Hamilton */
SELECT COUNT(DISTINCT Department) AS NumberOfDepartment
FROM Project; 

/* Query-CH03-32 by Stephen Chartrand & Jacob Hamilton */
SELECT SUM(MaxHours) AS TotalMaxHours, AVG(MaxHours) AS AverageMaxHours, MIN(MaxHours) AS MinimumMaxHours, MAX(MaxHours) AS MaximumMaxHours
FROM Project
WHERE ProjectID <= 1200;

/* Query-CH03-33 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectName, COUNT(*)
FROM Project;

/* Query-CH03-34 by Stephen Chartrand & Jacob Hamilton */
SELECT(*)
FROM Project
HAVING MaxHours > AVG(MaxHours);

/* Query-CH03-35 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectID, ProjectName, MaxHours, (24.50 * MaxHours) AS MaxProjectCost
FROM Project;

/* Query-CH03-36 by Stephen Chartrand & Jacob Hamilton */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Department;

/* Query-CH03-37 by Stephen Chartrand & Jacob Hamilton */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 1;

/* Query-CH03-38 by Stephen Chartrand & Jacob Hamilton */
SELECT Department, COUNT(*) AS NumberOfEmployees
FROM Employee
WHERE EmployeeNumber <= 10
GROUP BY Department
HAVING COUNT(*) > 1;

/* Query-CH03-39 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName
FROM Employee
WHERE EmployeeNumber IN (6, 10, 11, 16, 17);

/* Query-CH03-40 by Stephen Chartrand & Jacob Hamilton */
SELECT DISTINCT EmployeeNumber
FROM Assignment
WHERE HoursWorked > 50;

/* Query-CH03-41 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName
FROM Employee
WHERE EmployeeNumber IN
	(SELECT DISTINCT EmployeeNumber
	FROM Assignment
	WHERE HoursWorked > 50);
	
/* Query-CH03-42 by Stephen Chartrand & Jacob Hamilton */
SELECT DISTINCT ProjectID
FROM Project
WHERE Department = 'Accounting';

/* Query-CH03-43 by Stephen Chartrand & Jacob Hamilton */
SELECT DISTINCT EmployeeNumber
FROM Assignment
WHERE HoursWorked > 40
	AND ProjectID IN
	(SELECT ProjectID
	FROM Project
	WHERE Department = 'Accounting');
	
/* Query-CH03-44 by Stephen Chartrand & Jacob Hamilton */
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

/* Query-CH03-45 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment;

/* Query-CH03-46 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment
WHERE Employee.EmployeeNumber = Assignment.EmployeeNumber;

/* Query-CH03-47 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee, Assignment
WHERE Employee.EmployeeNumber = 
		Assignment.EmployeeNumber
ORDER BY Employee.EmployeeNumber, ProjectID;

/* Query-CH03-48 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee JOIN Assignment
	ON Employee.EmployeeNumber = 
		Assignment.EmployeeNumber
ORDER BY Employee.EmployeeNumber, ProjectID;

/* Query-CH03-49 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, SUM(HoursWorked) AS TotalHoursWorked
FROM Employee AS E JOIN Assignment AS AND
	ON E.EmployeeNumber = A.EmployeeNumber
GROUP BY LastName, FirstName
ORDER BY LastName, FirstName;

/* Query-CH03-50 by Stephen Chartrand & Jacob Hamilton */
SELECT FirstName, LastName, ProjectID, HoursWorked
FROM Employee AS E JOIN Assignment AS A
	ON E.EmployeeNumber = A.EmployeeNumber
WHERE HoursWorked > 50
ORDER BY LastName, FirstName, ProjectID;

/* Query-CH03-51 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM Employee AS E JOIN Assignment AS A 
	ON E.EmployeeNumber = A.EmployeeNumber
		JOIN PROJECT AS P 
			ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;

/* Query-CH03-52 by Stephen Chartrand & Jacob Hamilton */
SELECT(*) FROM Project;

/* Query-CH03-53 by Stephen Chartrand & Jacob Hamilton */
SELECT ProjectName, FirstName, LastName, HoursWorked
FROM Employee AS E JOIN Assignment AS A
	ON E.EmployeeNumber = A.EmployeeNumber
		JOIN Project AS P 
			ON A.ProjectID = P.ProjectID
ORDER BY P.ProjectID, A.EmployeeNumber;
