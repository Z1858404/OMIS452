/* Query - by Stephen C and Jacob H - Double Not Exists */

SELECT DISTINCT e.EmployeeNumber
FROM employee AS e
WHERE NOT EXISTS(
  SELECT *
  FROM project as p
  WHERE NOT EXISTS(
    SELECT *
    FROM assignment AS a
    WHERE (a.EmployeeNumber=e.EmployeeNumber) AND (a.ProjectID=p.ProjectID)
  )
)
GROUP BY EmployeeNumber
;
