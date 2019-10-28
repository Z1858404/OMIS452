/* Query - by Stephen C and Jacob H - Double Not Exists */

SELECT DISTINCT EmployeeNumber
FROM employee
WHERE NOT EXISTS(
    SELECT *
    FROM project
    WHERE NOT EXISTS(
        SELECT *
        FROM assignment
        WHERE assignment.EmployeeNumber=employee.EmployeeNumber
    )
);
