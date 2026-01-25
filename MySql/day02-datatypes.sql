-- 📘 Day 2 – Data Types & Constraints

/*
	1. What are Data Types?
		Data Types define what kind of data a column can store.
		
        Why important?
			- Saves memory
            - Prevents wrong data
            - Improves performance
*/

/*
	2. Numeric Data Types
		Common Numeric Types
			| Type   | Use                  |
			| ------ | -------------------- |
			| INT    | Whole numbers        |
			| BIGINT | Large numbers        |
			| FLOAT  | Decimal (approx)     |
			| DOUBLE | More precise decimal |
*/
CREATE TABLE numbers_example (
	id INT,
    salary FLOAT
);

/*
	3. String Data Types
		| Type       | Use                  |
		| ---------- | -------------------- |
		| CHAR(n)    | Fixed-length text    |
		| VARCHAR(n) | Variable-length text |
		| TEXT       | Long text            |
*/
CREATE TABLE users (
	username VARCHAR(50),
    bio TEXT
);

/*
	4. Date & Time Data Types
		| Type      | Example             |
		| --------- | ------------------- |
		| DATE      | 2026-01-24          |
		| TIME      | 14:30:00            |
		| DATETIME  | 2026-01-24 14:30:00 |
		| TIMESTAMP | Auto time tracking  |
*/
CREATE TABLE orders (
	order_date DATE,
    created_at TIMESTAMP
);

/*
	5. What are Constraints?
		Constraints enforce rules on data.
		
        Why needed?
			- Data integrity
            - Avoid duplicates
            - Avoid NULL values
*/

/*
	6. PRIMARY KEY
		- Uniquely identifies each row
        - Cannot be NULL
        - Cannot repeat
*/
CREATE TABLE students (
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

/*
	7. AUTO_INCREMENT
		- Automatically generates IDs
		- Used with PRIMARY KEY
*/
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

-- 8. NOT NULL - Column must have a value
CREATE TABLE students (
	name VARCHAR(50) NOT NULL,
    age INT
);

-- 9. UNIQUE - Prevents duplicate values
CREATE TABLE students (
	email VARCHAR(100) UNIQUE
);

-- 10. DEFAULT - Sets default value if none is provided
CREATE TABLE students (
	country VARCHAR(30) DEFAULT "India"
);

-- 11. CHECK - Enforces condition
-- Some MySQL versions ignore CHECK, but learn the concept.
CREATE TABLE students (
	age INT CHECK (age >= 18)
);


-- EXAMPLE
CREATE TABLE emplopees (
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DOUBLE CHECK(salary > 0),
    country VARCHAR(30) DEFAULT "India"
);

INSERT INTO emplopees (name, email, salary) VALUES ("Sandeep", "sandeep@gmail.com", 50000);

SELECT * FROM emplopees;


-- 12. View Table Structure
DESC emplopees;
