/* Query- by Stephen C and Jacob H - Aggregate Function */

SELECT e.EmployeeNumber, e.FirstName, e.LastName, a.HoursWorked
FROM assignment AS a, employee AS e
WHERE HoursWorked >
  (SELECT AVG(HoursWorked)
   FROM assignment
   WHERE e.EmployeeNumber=a.EmployeeNumber)
ORDER BY e.EmployeeNumber;
