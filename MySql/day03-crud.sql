-- 📘 Day 3 – CRUD Operations

/*
	1. What is CRUD?
		CRUD represents the four basic operations performed on database data.
        
        | Operation | SQL Command |
		| --------- | ----------- |
		| Create    | INSERT      |
		| Read      | SELECT      |
		| Update    | UPDATE      |
		| Delete    | DELETE      |
        
        Every backend app uses CRUD.
*/

CREATE TABLE students (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT
) AUTO_INCREMENT = 1001;

-- 2. CREATE — INSERT
	-- Insert single row
    INSERT INTO students (name, age) VALUES ("Sandeep", 23);
    
    -- Insert multiple rows
    INSERT INTO students (name, age)
    VALUES
    ("Kishore", 23),
    ("Raju", 23);

-- 3. READ — SELECT
	-- Read all data
    SELECT * FROM students;
    
    -- Read specific columns
    SELECT name, age FROM students;
    
    -- Using WHERE (basic)
    SELECT * FROM students WHERE age = 23;

/*
	4. WHERE Clause
		Used to filter records.
		Common operators:
			=, !=, <, <=, >, >=
*/

-- 5. UPDATE
-- Used to modify existing data.
	-- Update specific record
    UPDATE students SET age = 24 WHERE id = 1001;
    UPDATE students SET name = "Sandeepkumar S" WHERE id = 1001;
    
-- 6. UPDATE multiple columns
UPDATE students SET name = "Sandeep", age = 23 WHERE id = 1001;

-- 7. DELETE
-- Used to remove records.
-- Delete specific row
DELETE FROM students WHERE id = 1002;
-- DELETE without WHERE deletes all rows.

/*
	8. DELETE vs TRUNCATE
		| DELETE               | TRUNCATE              |
		| -------------------- | --------------------- |
		| Row by row           | Whole table           |
		| WHERE allowed        | WHERE not allowed     |
		| Auto-increment stays | Auto-increment resets |
*/

-- 9. Safe SELECT Practices
SELECT * FROM students LIMIT 5;
