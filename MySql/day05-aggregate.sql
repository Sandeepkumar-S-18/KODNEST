-- 📘 Day 5 - Aggregate Functions & GROUP BY

/*
	1. What are Aggregate Functions?
		Aggregate functions perform calculations on multiple rows and return a single value.

		Used for:
		- Reports
		- Analytics
		- Dashboards
		- Backend stats
*/

/*
	2. COUNT()
		Counts number of rows.
        - COUNT(*) → counts all rows
        - COUNT(column) → ignores NULL values
*/
SELECT COUNT(*) FROM students;
SELECT COUNT(age) FROM students;
SELECT COUNT(*) FROM students WHERE age > 20;

-- 3. SUM() - Adds numeric values.
SELECT SUM(age) FROM students;

-- 4. AVG() - Returns average of numeric column.
SELECT AVG(age) FROM students;

/*
	5. MIN() and MAX()
		- MIN() → smallest value
        - MAX() → largest value
*/
SELECT MIN(age) FROM students;
SELECT MAX(age) FROM students;

-- 6. GROUP BY - GROUP BY groups rows with the same values and applies aggregate functions per group.
SELECT name, COUNT(*) FROM students GROUP BY name;
-- Counts students in each city.

-- 7. GROUP BY with Multiple Columns
SELECT name, age, COUNT(*) FROM students GROUP BY name, age;
-- Groups by name + age combination.

-- 8. Aggregate + WHERE - WHERE filters rows before grouping
SELECT name, COUNT(*) FROM students WHERE age > 20 GROUP BY name;

/*
	9. HAVING
		- HAVING filters groups
		- Used after GROUP BY
		- Aggregate conditions go in HAVING
*/
SELECT name, COUNT(*) FROM students GROUP BY name HAVING COUNT(*) > 2;
-- Shows only names with more than 2 students.

/*
	10. WHERE vs HAVING
    | WHERE                 | HAVING          |
	| --------------------- | --------------- |
	| Filters rows          | Filters groups  |
	| Before GROUP BY       | After GROUP BY  |
	| Cannot use aggregates | Uses aggregates |
*/

-- 11. GROUP BY + ORDER BY
SELECT name, COUNT(*) AS total_students 
FROM students 
GROUP BY name 
ORDER BY total_students DESC;

-- 12. GROUP BY + LIMIT
SELECT name, COUNT(*) AS total_students
FROM students
GROUP BY name 
ORDER BY total_students DESC
LIMIT 1;



-- 13. Real-World Style Queries
-- Total students per city
SELECT city, COUNT(*) FROM students GROUP BY city;

-- Average salary per department
SELECT deparment, AVG(salary) FROM employees GROUP BY deparment;

-- Departments with avg salary > 50k
SELECT deparment, AVG(salary) 
FROM employees 
GROUP BY deparment 
HAVING AVG(salary) > 50000;
