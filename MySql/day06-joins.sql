-- 📘 Day 6 - JOINS & SUBQUERIES

/*
	This issue has two big pillars:
		JOINS → combining tables
        SUBQUERIES → query inside a query
	Both are mandatory for real projects + interviews.
*/

-- ==========================================================================
/*
	PART A: JOINS
		Why JOINS exist
        Data is normalized in real databases.
        So instead of one huge table, we split data into related tables.
*/

/* 
	1. INNER JOIN - Returns only matching records from both tables.
    SYNTAX:
		SELECT columns 
        FROM table1
        INNER JOIN table2
        ON condition;
*/
SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;
-- If `dept_id` doesn’t match → record is ignored

-- 2. LEFT JOIN - Returns all rows from left table, even if no match in right table.
SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- 3. RIGHT JOIN - Returns all rows from right table, matched or not.
SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- 4. FULL JOIN - Returns all records from both tables.
SELECT *
FROM employees
FULL JOIN departments
ON employees.dept_id = departments.dept_id;
-- MySQL doesn’t support FULL JOIN directly (use UNION workaround later).

-- 5. SELF JOIN - A table joined with itself.
-- Example: employees with managers
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.emp_id;
-- Important for org hierarchy questions.

-- 6. CROSS JOIN - Cartesian product (every row with every row).
SELECT *
FROM employees
CROSS JOIN departments;

/*
	JOIN Rules (INTERVIEW GOLD)
		- ON → join condition
        - WHERE → filter rows
        - Table aliases (e, d) = mandatory habit
        - JOIN happens before WHERE
*/

-- ==========================================================================
-- PART B: SUBQUERIES
-- What is a Subquery? - A query inside another query.
SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- 1. Single-row Subquery - Returns one value.
SELECT name
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);
-- Operators used: =, <, >

-- 2. Multi-row Subquery - Returns multiple values.
-- Using IN
SELECT name
FROM employees
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'IT'
);

-- Other operators: IN, ANY, ALL

-- 3. Subquery with EXISTS - Checks whether result exists.
SELECT *
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.dept_id = e.dept_id
);

-- 4. Correlated Subquery - Subquery depends on outer query.
SELECT name, salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE dept_id = e.dept_id
);

-- 5. Subquery in SELECT
SELECT name,
       (SELECT dept_name
        FROM departments d
        WHERE d.dept_id = e.dept_id) AS department
FROM employees e;

-- 6. Subquery in FROM
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept_id
) t
WHERE avg_salary > 50000;

-- ==========================================================================
/*
	JOIN vs SUBQUERY
    | JOIN                   | SUBQUERY             |
	| ---------------------- | -------------------- |
	| Faster                 | Sometimes slower     |
	| More readable          | Good for logic       |
	| Preferred in real apps | Common in interviews |
*/
