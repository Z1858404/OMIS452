/* Query- by Stephen C and Jacob H - Aggregate Function */

SELECT EmployeeNumber, HoursWorked
FROM assignment AS a
WHERE HoursWorked >
  (SELECT AVG(HoursWorked)
   FROM assignment
   WHERE EmployeeNumber=a.EmployeeNumber)
GROUP BY EmployeeNumber;
