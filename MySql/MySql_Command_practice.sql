-- ======================================================================================================================
-- CREATE THE DATABASE
CREATE DATABASE kodnest_practice;

-- DELETE THE DATABASE
DROP DATABASE kodnest_practice;

-- OPEN THE DATABASE FO USE
USE kodnest_practice;

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
