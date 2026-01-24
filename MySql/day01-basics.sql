-- 📘 Day 1 – MySQL Basics (SQL Notes)

/* 
	1️. What is SQL?
		- SQL (Structured Query Language) is a language used to:
			- Create databases
			- Store data
			- Retrieve data
			- Update and delete data
		- SQL works with relational databases like:
			- MySQL
			- PostgreSQL
			- Oracle
			- SQL Server

	2. What is MySQL?
		- MySQL is an RDBMS (Relational Database Management System)
		- It stores data in tables
		- Tables consist of rows and columns
		- Uses SQL to interact with data
        
	3. DBMS vs RDBMS
		| DBMS                 | RDBMS                  |
		| -------------------- | ---------------------- |
		| Stores data as files | Stores data in tables  |
		| No relationships     | Supports relationships |
		| No primary key       | Uses primary key       |
		| Less secure          | More secure            |

	4. Database & Table Concepts
		- Database → Collection of tables
		- Table → Collection of related data
		- Row (Record) → Single entry
		- Column (Field) → Attribute of data
			EXAMPLE :
				students table
					--------------------------------
					id | name     | age
					--------------------------------
					1  | Sandeep  | 22

	5. SQL Syntax Rules
		- SQL keywords are NOT case-sensitive
		- Each statement ends with ;

*/

-- Comments: 	-- single line comment 
				/* multi line comment */

-- ==========================================================================
-- 6. Creating a Database
CREATE DATABASE MySQL_Learnings;

-- Create database safely
CREATE DATABASE IF NOT EXISTS MySQL_Learnings;

-- View all databases
SHOW DATABASES;

-- Use a database
USE MySQL_Learnings;

-- Delete a database
DROP DATABASE MySQL_Learnings;

-- Drop database safely
DROP DATABASE IF EXISTS MySQL_Learnings;

-- ==========================================================================
-- 7. Creating a Table
CREATE TABLE students (
	id INT,
    name VARCHAR(50),
    age INT
);

-- View tables
SHOW TABLES;

SHOW CREATE TABLE students;
/*
	Shows:
		- Exact table definition
		- Constraints
		- AUTO_INCREMENT value
*/

-- View table structure
DESCRIBE TABLE students;
DESC students;

-- Delete table
DROP TABLE students;

-- Drop table safely
DROP TABLE IF EXISTS students;

-- ==========================================================================
-- 8. Primary Key
/*
	- Primary Key uniquely identifies each row
	- Cannot be NULL
	- Cannot have duplicate values
*/
CREATE TABLE students (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- ==========================================================================
-- 9. AUTO_INCREMENT
/*
	- Automatically increases value for each new row
	- Mostly used with primary key
*/
CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);

-- Create table safely
CREATE TABLE IF NOT EXISTS students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);

-- ==========================================================================
-- 10. Inserting Data (Basic)
INSERT INTO students (name, age) VALUES ("Sandeepkumar S", 23);

-- Insert multiple rows
INSERT INTO students (name, age)
VALUES
("Raju S R", 23),
("Kishore D", 23);

-- ==========================================================================
-- 11. Viewing Data
SELECT * FROM students;


/* 
	🔑 Key Takeaways
		- SQL is a language, MySQL is a database 
        - Database → Tables → Rows & Columns 
        - Primary Key is mandatory for real projects 
        - AUTO_INCREMENT avoids manual id handling 
        - Always USE database before creating tables
*/



