-- ================================================
-- Practical: SQL Queries on TEACHERS table
-- Database: DB_EXAM
-- Name: Suraj Tiwari
-- Roll No: 00250809000808
-- ================================================

-- 1. Create the database
CREATE DATABASE DB_EXAM;

-- 2. Use the database
USE DB_EXAM;

-- 3. Create the TEACHERS table
CREATE TABLE TEACHERS (
    Teacher_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Subject VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- ================================================
-- i. Insert the following records into the TEACHERS table
-- ================================================
INSERT INTO TEACHERS (Teacher_ID, Name, Subject, Salary) VALUES
(1, 'Anil Kumar', 'Mathematics', 35000),
(2, 'Beena Thomas', 'English', 30000),
(3, 'Rajesh Nair', 'Science', 40000),
(4, 'Meera Nair', 'Social Science', 32000),
(5, 'Arun Das', 'Computer', 45000);

-- ================================================
-- ii. Display all teacher details
-- ================================================
SELECT * FROM TEACHERS;

-- ================================================
-- iii. Display only Name and Subject
-- ================================================
SELECT Name, Subject FROM TEACHERS;

-- ================================================
-- iv. Display teachers with Salary greater than 35000
-- ================================================
SELECT * FROM TEACHERS
WHERE Salary > 35000;

-- ================================================
-- v. Display teachers whose Salary is greater than the average salary
-- ================================================
SELECT * FROM TEACHERS
WHERE Salary > (SELECT AVG(Salary) FROM TEACHERS);

-- ================================================
-- vi. Display teachers where Subject is 'Science'
-- ================================================
SELECT * FROM TEACHERS
WHERE Subject = 'Science';

-- ================================================
-- vii. Display teachers whose Name starts with 'A'
-- ================================================
SELECT * FROM TEACHERS
WHERE Name LIKE 'A%';

-- ================================================
-- viii. Display teachers sorted by Salary in ascending order
-- ================================================
SELECT * FROM TEACHERS
ORDER BY Salary ASC;

-- ================================================
-- ix. Update the Salary by increasing it by 10% for all teachers
-- ================================================
UPDATE TEACHERS
SET Salary = Salary + (Salary * 0.10);

-- ================================================
-- x. Delete the details of a teacher using a Teacher_ID
-- ================================================
DELETE FROM TEACHERS
WHERE Teacher_ID = 2;
