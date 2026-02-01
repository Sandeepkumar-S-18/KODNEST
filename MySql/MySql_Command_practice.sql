-- ======================================================================================================================
-- CREATE THE DATABASE
CREATE DATABASE mysql_learnings;

-- DELETE THE DATABASE
DROP DATABASE mysql_learnings;

-- OPEN THE DATABASE FO USE
USE mysql_learnings;

-- CREATE A TABLE
CREATE TABLE student (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT NOT NULL
);

-- ADD DATA INSIDE TABLE STUDENT
INSERT INTO student VALUES(1, "SANDEEPKUMAR S", 23);
INSERT INTO student VALUES(2, "GIRISH P", 23);
INSERT INTO student VALUES(3, "RAKSHITH T V", 22), (4, "KISHORE", 23);

-- READ THE DATA FROM TABLE STUDENT
SELECT * FROM student;
-- ======================================================================================================================

-- **********************************************************************************************************************
-- DATA TYPES
	-- CHAR		- String(0-255) Fixed length											- CHAR(50)
    -- VARCHAR 	- String(0-255) can store upto given length								- VARCHAR(50)
    -- BLOB		- String(0-65535) can store binary large object							- BLOB(1000)
    -- INT		- integer(-2,147,483,648 to 2,147,483,647)								- INT
    -- TINYINT	- integer(-128 to 127)													- TINYINT
    -- BIGINT	- integer(-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)		- BIGINT
    -- BIT		- (0 and 1) upto range 1 to 64											- BIT(2)
    -- FLOAT	- decimal number (precision to 23 digits)								- FLOAT
    -- DOUBLE	- decimal number (precision to 24-53 digits)							- DOUBLE
    -- BOOLEAN	- 0 or 1																- BOOLEAN
    -- DATE		- YYYY-MM-DD															- DATE
    -- YEAR		- YYYY																	- YEAR
    
    -- TINYINT UNSIGNED	(0-255) 
    -- TINYINT			(-128-127) 

-- **********************************************************************************************************************
-- TYPES OF SQL COMMANDS
	-- DDL (Data Definition Language)		: create, alter, rename, truncate & drop
    -- DQL (Data Query Language)			: select
    -- DML (Data Manipulation Language)		: insert, update & delete
    -- DCL (Data Control Language)			: grant & revoke permission to users
    -- TCL (Transaction Control Language)	: start transaction, commit, rollback

-- **********************************************************************************************************************

-- ======================================================================================================================
-- DATABASE RELATED QUERIES
-- CREATE THE DATABASE
CREATE DATABASE db_name;
CREATE DATABASE IF NOT EXISTS db_name;

-- DELETE THE DATABASE
DROP DATABASE db_name;
DROP DATABASE IF EXISTS db_name;

-- SHOW ALL DATABASES
SHOW DATABASES;

-- SHOW ALL TABLES
SHOW TABLES;

-- ======================================================================================================================
-- TABLE RELATED QUERIES
-- CREATE TABLE
/*
	CREATE TABLE table_name (
		column_name1 datatype constraint,
		column_name2 datatype constraint,
	);
*/
CREATE TABLE student (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT NOT NULL
);

-- DELETE TABLE FROM DATABASE
DROP TABLE table_name;

-- READ THE DATA FROM TABLE
SELECT * FROM table_name;

-- ADD DATA INSIDE TABLE
/*
	INSERT INTO table_name(column1, column2) VALUES
	(col1_v1, col1_v2, ....),
	(col2_v1, col2_v2, ....);
*/
INSERT INTO student(id, name, age) VALUES
(5, "RAJU S R", 23),
(6, "CHETHAN S", 26);

-- ======================================================================================================================
-- KEYS
	-- Primary Key
	-- Unique Key
	-- Foreign Key

-- CONSTRAINTS
	-- NOT NULL
	-- UNIQUE
		-- CREATE TABLE table_name (id INT UNIQUE);
    -- PRIMARY KEY
		/*
			CREATE TABLE table_name (
				id INT,
				name VARCHAR(50),
				PRIMARY KEY(id)
			);
		*/
	-- FOREIGN KEY
		/*
			CREATE TABLE table_name (
				cust_id INT,
				FOREIGN KEY (cust_id) REFERENCES another_table(id)
			);
		*/
	-- DEFAULT
		-- salary INT DEFAULT 25000
	-- CHECK 
		/*
			CREATE TABLE city (
				id INT PRIMARY KEY,
                city VARCHAR(50),
                age INT,
                CONSTRAINT age_check CHECK (age >= 18 AND city = "Karnataka")
            );
            CREATE TABLE newTab (
				age INT CHECK (age >= 18)
            );
        */

-- ======================================================================================================================
CREATE TABLE student (
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
(rollno, name, marks, grade, city)
VALUES
(101, "Anil", 78, "C", "Pune"),
(102, "Santosh", 95, "A", "Karnataka"),
(103, "Alva", 90, "A", "AP");

-- READ ONLY NAME AND MARKS FROM TABLE
SELECT name, marks FROM student;

-- READ ALL DATA FROM TABLE
SELECT * FROM student;

-- READ ONLY CITY FROM TABLE
SELECT city FROM student;

-- READ THE DATA WITHOUT REPETATION FROM TABLE
SELECT DISTINCT city FROM student;

-- ======================================================================================================================
/*
	WHERE Clause
		- Arithmetic Operators		: +, -, *, /, %
        - Comparison Operators		: =, !=, >, >=, <, <=
        - Logical Operators			: AND, OR, NOT, IN, BETWEEN, ALL, LIKE, ANY
        - Bitwise Operators			: &, |
*/
SELECT * FROM student WHERE marks > 90;
SELECT * FROM student WHERE city != "Karnataka";
SELECT * FROM student WHERE marks > 90 AND city = "AP";
SELECT * FROM student WHERE marks > 90 OR city = "AP";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Karnataka", "AP");
SELECT * FROM student WHERE city NOT IN ("Karnataka");
SELECT * FROM student WHERE marks+10 > 100;
SELECT * FROM student WHERE marks = 90;
SELECT * FROM student WHERE marks != 90;

-- LIMIT Clause - Set an upper limit on number of rows to be returned.
SELECT * FROM student LIMIT 2;
SELECT * FROM student WHERE marks > 85 LIMIT 1;

-- ORDER BY Clause - To sort in ascending or descending order.
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC;
SELECT * FROM student ORDER BY marks DESC LIMIT 1;

/*
	GROUP BY Clause  
		- Groups rows that have the same values into summary rows.
        - It collects data from multiple records and groups the result by one or more column.
        - *Generally we use group by with some aggregate functions.
*/
SELECT city, COUNT(name) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY city;
SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks);
-- ======================================================================================================================
-- FUNCTIONS
/*
	Aggregate functions
		- Aggregate functions perform a calculation on a set of values, and return a single value.
        * COUNT()
        * MAX()
        * MIN()
        * SUM()
        * AVG()
*/
SELECT MAX(marks) FROM student;
SELECT AVG(marks) FROM student;
SELECT MIN(marks) FROM student;
SELECT COUNT(name) FROM student;

-- ======================================================================================================================






