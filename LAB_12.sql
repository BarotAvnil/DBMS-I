----------------Part – A:-----------------
----1. Find all persons with their department name & code.
SELECT PERSON.PersonName,DEPT.DepartmentID,DEPT.DepartmentCode FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID

----2. Find the person's name whose department is in C-Block.
SELECT P.PersonName FROM PERSON P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE D.Location = 'C-Block'

----3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PersonName, P.Salary, D.DepartmentName FROM PERSON p
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE CITY = 'Jamnagar'

----4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PersonName, P.Salary, D.DepartmentName FROM PERSON p
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE CITY != 'Rajkot'
----5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PersonName, D.DepartmentName, P.JoiningDate FROM PERSON P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Civil' AND JoiningDate > '2001-08-01'

----6. Find details of all persons who belong to the computer department.
SELECT * FROM PERSON P
JOIN DEPT D
ON P.DepartmentID = D.DepartmentID
WHERE DepartmentName = 'Computer'

----7. Display all the person's name with the department whose joining date difference with the current date 
----is more than 365 days.
SELECT PERSON.PersonName, DEPT.DepartmentName FROM PERSON
JOIN DEPT 
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE JoiningDate < (GETDATE() - 365)

----8. Find department wise person counts.
SELECT DEPT.DepartmentName, COUNT(PERSON.PersonName) AS COUNT_PERSON FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName
----9. Give department wise maximum & minimum salary with department name.
SELECT MAX(PERSON.Salary) AS MAX_SALARY, MIN(PERSON.Salary) AS MIN_SALARY, DEPT.DepartmentName FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY DEPT.DepartmentName

----10. Find city wise total, average, maximum and minimum salary.
SELECT MAX(PERSON.Salary) AS MAX_SALARY, MIN(PERSON.Salary) AS MIN_SALARY, AVG(PERSON.Salary) AS AVG_SALARY, PERSON.City FROM PERSON
GROUP BY City

----11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(Salary) FROM PERSON
WHERE City = 'Ahmedabad'
----12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In 
----single column)SELECT PERSON.PersonName + ' lives in ' + PERSON.City + ' and works in ' + DEPT.DepartmentName + ' Department 'from PERSONjoin DEPTON PERSON.DepartmentID = DEPT.DepartmentID------------Part – B:-------------
----1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In 
----single column)
SELECT PERSON.PersonName + ' earns ' + CAST(PERSON.Salary AS varchar) + ' from ' + DEPT.DepartmentName + ' department monthly ' from PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
----2. Find city & department wise total, average & maximum salaries.
SELECT MAX(PERSON.Salary) AS MAX_SAALRY, AVG(PERSON.Salary) AS AVG_SALARY, PERSON.City, DEPT.DepartmentName from PERSON
join DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
GROUP BY CITY,DepartmentName
----3. Find all persons who do not belong to any department.
SELECT PERSON.PersonName FROM PERSON
JOIN DEPT
ON PERSON.DepartmentID = DEPT.DepartmentID
WHERE DEPT.DepartmentID IS NULL
----4. Find all departments whose total salary is exceeding 100000.SELECT SUM(PERSON.Salary), DEPT.DepartmentName FROM PERSONJOIN DEPTON PERSON.DepartmentID = DEPT.DepartmentIDGROUP BY DEPT.DepartmentNameHAVING SUM(PERSON.Salary)>100000-------------Part - C:---------------------1. List all departments who have no person.
select departmentname from person p full outer join dept d on d.departmentid = p.departmentid where p.departmentid is null

----2. List out department names in which more than two persons are working.
select departmentname, count(personname) from dept d join person p group by departmentname having count(personname) > 2

----3. Give a 10% increment in the computer department employee’s salary. (Use Update)
update person set salary = salary*1.1 from person join dept on dept.departmentid = person.departmentid  where departmentname = 'computer'

