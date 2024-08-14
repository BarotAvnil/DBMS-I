CREATE TABLE STU_INFO(
		RNO INT,
		NAME VARCHAR(50),
		BRANCH VARCHAR(20)
	);

CREATE TABLE RESULT(
		RNO INT,
		SPI DECIMAL(8,2)
	);

CREATE TABLE EMPLOYEE_MASTER(
		EMPLOYEENO VARCHAR(20),
		NAME VARCHAR(50),
		MANAGERNO VARCHAR(20)
	);

INSERT INTO STU_INFO VALUES 
							(101,'RAJU','CE'),
							(102,'AMIT','CE'),
							(103,'SANJAY','ME'),
							(104,'NEHA','EC'),
							(105,'MEERA','EE'),
							(106,'MAHESH','ME')

INSERT INTO RESULT VALUES
							(101,8.8),
							(102,9.2),
							(103,7.6),
							(104,8.2),
							(105,7.0),
							(107,8.9)

INSERT INTO EMPLOYEE_MASTER VALUES
									('E01','TARUN',NULL),
									('E02','ROHAN','E02'),
									('E03','PRIYA','E01'),
									('E04','MILAN','E03'),
									('E05','JAY','E01'),
									('E06','ANJANA','E04')

---------PART - A:-----------
----1. Combine information from student and result table using cross join or Cartesian product.
SELECT * FROM STU_INFO, RESULT 
SELECT * FROM STU_INFO CROSS JOIN RESULT

----2. Perform inner join on Student and Result tables.
SELECT * FROM STU_INFO AS S INNER JOIN RESULT AS R
ON S.RNO = R.RNO

----3. Perform the left outer join on Student and Result tables.
SELECT * FROM STU_INFO S LEFT OUTER JOIN RESULT R
ON S.RNO = R.RNO

----4. Perform the right outer join on Student and Result tables.
SELECT * FROM STU_INFO S RIGHT OUTER JOIN RESULT R
ON S.RNO = R.RNO

----5. Perform the full outer join on Student and Result tables.
SELECT * FROM STU_INFO S FULL OUTER JOIN RESULT R 
ON S.RNO = R.RNO

----6. Display Rno, Name, Branch and SPI of all students.
SELECT S.RNO, S.NAME, S.BRANCH, R.SPI
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO

----7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT S.RNO, S.NAME, S.BRANCH, R.SPI
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
WHERE BRANCH = 'CE'

----8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT S.RNO, S.NAME, S.BRANCH, R.SPI
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
WHERE BRANCH != 'EC'

----9. Display average result of each branch.
SELECT AVG(R.SPI), BRANCH
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY BRANCH

----10. Display average result of CE and ME branch
SELECT AVG(R.SPI), BRANCH
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
WHERE BRANCH = 'CE' OR BRANCH = 'ME'
GROUP BY BRANCH

---------PART - B:-----------

----1. Display average result of each branch and sort them in ascending order by SPI.
SELECT AVG(SPI), BRANCH
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY S.BRANCH
ORDER BY AVG(R.SPI) 

----2. Display highest SPI from each branch and sort them in descending order.
SELECT MAX(R.SPI), BRANCH
FROM STU_INFO S JOIN RESULT R
ON S.RNO = R.RNO
GROUP BY BRANCH
ORDER BY MAX(R.SPI) DESC

---------PART - C:-----------

----1. Retrieve the names of employee along with their manager’s name from the Employee table.
 SELECT E.NAME, E.MANAGERNO, E.EMPLOYEENO, M.NAME
 FROM EMPLOYEE_MASTER E 
LEFT OUTER JOIN EMPLOYEE_MASTER M  ON E.MANAGERNO = M.EMPLOYEENO









