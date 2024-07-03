CREATE TABLE STUDENT(
	StuId INT,
	FirstName VARCHAR(25),
	LastName VARCHAR(25),
	Website VARCHAR(50),
	City VARCHAR(25),
	Address VARCHAR(100)
);

SELECT * FROM STUDENT

INSERT INTO STUDENT VALUES (1011,'Keyur','Patel','technothenet.com','Rajkot','A-303 ''Vasant Kunj'' Rajkot'),
(1022,'Hardik','Shah','digminecraft.com','Ahmedabad','"Ram Krupa",Raiya Road'),
(1033,'Kajal','Trivedi','bigactivities.com','Baroda','Raj bhavan plot,near garden'),
(1044,'Bhoomi','Gajera','checkyourmath.com','Ahmedabad','"Jig''s Home",Narol'),
(1055,'Harmit','Mitel','@me.darshan.com','Rajkot','B-55,Raj Residency'),
(1066,'Ashok','Jani',NULL,'Baroda','A502, Club House Building')

SELECT FirstName FROM STUDENT
WHERE FirstName LIKE 'K%'

SELECT FirstName FROM STUDENT
WHERE FirstName LIKE '_____' 

SELECT FirstName,LastName FROM STUDENT
WHERE City LIKE '_____A'

SELECT FirstName FROM STUDENT
WHERE LastName LIKE '%TEL'

SELECT FirstName FROM STUDENT
WHERE FirstName LIKE 'HA%T'

SELECT FirstName FROM STUDENT
WHERE FirstName LIKE 'K_Y%'

SELECT FirstName FROM STUDENT
WHERE Website IS NULL AND FirstName LIKE '_____'

SELECT FirstName, LastName FROM STUDENT
WHERE LastName LIKE '%JER%'

SELECT * FROM STUDENT
WHERE City LIKE '[R,B]%'

SELECT * FROM STUDENT
WHERE Website IS NOT NULL

SELECT * FROM STUDENT
WHERE FirstName LIKE '[A-H]%'

SELECT * FROM STUDENT
WHERE FirstName LIKE '_[A,E,I,O,U]%'

SELECT FirstName FROM STUDENT 
WHERE Website IS NULL AND FirstName LIKE '_____'

SELECT * FROM STUDENT
WHERE LastName LIKE 'PAT%'

SELECT * FROM STUDENT 
WHERE City NOT LIKE 'B%'
