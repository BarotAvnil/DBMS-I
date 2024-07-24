---------------LAB 6------------------
----Display the result of 5 multiply by 30.SELECT 5 * 30

----Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

----Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2), CEILING(25.7), CEILING(-25.7)

----Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2), FLOOR(25.7), FLOOR(-25.7)

----Find out remainder of 5 divided 2 and 5 divided by 3.SELECT 5%2 , 5%3

----Find out value of 3 raised to 2nd power and 4 raised 3rd power.SELECT POWER(3,2),POWER(4,3)

----Find out the square root of 25, 30 and 50
SELECT SQRT(25), SQRT(30), SQRT(50)

----Find out the square of 5, 15, and 25.
SELECT SQUARE(5), SQUARE(15), SQUARE(25)

----Find out the value of PI.
SELECT PI()

----Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2), ROUND(157.732,0), ROUND(157.732,-2)

----Find out exponential value of 2 and 3.
SELECT EXP(2), EXP(3)

----Find out logarithm having base e of 10 and 2.
SELECT LOG(10), LOG(2)

----Find out logarithm having base b having value 10 of 5 and 100.SELECT LOG10(5), LOG10(100)----Find sine, cosine and tangent of 3.1415.SELECT SIN(3.1415), COS(3.1415), TAN(3.1415)----Find sign of -25, 0 and 25.SELECT SIGN(-25), SIGN(0), SIGN(25)----Generate random number using function.SELECT RAND()----------PART B---------CREATE TABLE EMP_MASTER(	EMPNO INT,	EMPNAME VARCHAR(50),	JOININGDATE DATETIME,	SALARY DEC(8,2),	COMMISSION INT,	CITY VARCHAR(50),	DEPTCODE VARCHAR(20));INSERT INTO EMP_MASTER VALUES(101,'KEYUR','2002-01-5',12000,4500,'RAJKOT','3@g')INSERT INTO EMP_MASTER VALUES(102,'HARDIK','2004-02-15',14000,2500,'AHMEDABAD','3@')INSERT INTO EMP_MASTER VALUES(103,'KAJAL','2006-03-14',15000,3000,'BARODA','3-GD')INSERT INTO EMP_MASTER VALUES(104,'BHOOMI','2005-06-23',12500,1000,'AHMEDABAD','1A3D')INSERT INTO EMP_MASTER VALUES(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A')----Display the result of Salary plus Commission.SELECT *, SALARY + COMMISSION AS TOTAL_SALARY FROM EMP_MASTER----Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.SELECT CEILING(55.2), CEILING(35.7), CEILING(-55.2)----Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.SELECT FLOOR(55.2), FLOOR(35.7), FLOOR(-55.2)----Find out remainder of 55 divided 2 and 55 divided by 3.SELECT 55%2 , 55%3----Find out value of 23 raised to 2nd power and 14 raised 3rd power.SELECT POWER(23,2), POWER(14,3)---------PART C--------------Find out the square root of 36, 49 and 81.SELECT SQRT(36), SQRT(49), SQRT(81)----Find out the square of 3, 9, and 12.SELECT SQUARE(3), SQUARE(9), SQUARE(12)----Find out round value of 280.8952 for 2, 0 and -2 decimal points.SELECT ROUND(280.8952,2), ROUND(280.8952,0), ROUND(280.8952,-2)----Find sine, cosine and tangent of 4.2014.SELECT SIN(4.2014), COS(4.2014), TAN(4.2014)----. Find sign of -55, 0 and 95.SELECT SIGN(-55), SIGN(0), SIGN(95)--------------STRING FUNCTION----------------