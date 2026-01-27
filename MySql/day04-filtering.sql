-- 📘 Day 4 – WHERE, ORDER BY, LIMIT, LIKE

/*
	1. WHERE Clause
		Used to filter records.
		Common operators:
			=, !=, <, <=, >, >=
*/
SELECT * FROM students WHERE age = 22;
SELECT * FROM students WHERE age > 22;
SELECT * FROM students WHERE age != 22;


/*
	2. AND / OR with WHERE
		Used to combine multiple conditions.
			- AND → all conditions must be true
			- OR → any one condition must be true
*/
SELECT * FROM students WHERE age > 20 AND age < 25;
SELECT * FROM students WHERE age = 21 OR age = 22;

/*
	3. ORDER BY
		Used to sort results.
			- ASC → ascending (default)
            - DESC → descending
*/
SELECT * FROM students ORDER BY name;
SELECT * FROM students ORDER BY age ASC;
SELECT * FROM students ORDER BY age DESC;
SELECT * FROM students ORDER BY age DESC, name ASC;

/*
	4. LIMIT
		Restricts the number of rows returned.
        Used mainly for:
			- Pagination
            - Previewing data
*/
SELECT * FROM students LIMIT 10;
SELECT * FROM students ORDER BY age DESC LIMIT 1;

/*
	5. LIKE Operator
    Used for pattern matching in strings.
    Wildcards:
		% → zero or more characters
        _ → single character
*/
SELECT * FROM students WHERE name LIKE 'S%';
SELECT * FROM students WHERE name LIKE '%ep';
SELECT * FROM students WHERE name LIKE '%an%';
SELECT * FROM students WHERE name LIKE 'A_';

-- 6. Combining WHERE + ORDER BY + LIMIT
SELECT * FROM students WHERE age > 30 ORDER BY age DESC LIMIT 10;
