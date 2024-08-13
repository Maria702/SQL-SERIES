-- ==============================================================================  CONSTRAINT
-- used to specific rules for data in table

-- syntax
CREATE TABLE table_name(
   column1 datatype constraint,
   column2 datatype constraint,
   column3 datatype constraint,
   ...........;
)


-- The following constraints are commonly used in SQL:
-- NOT NULL               - Ensures that a column cannot have a NULL value
-- UNIQUE                 - Ensures that all values in a column are different
-- PRIMARY KEY            - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
-- FOREIGN KEY            - Prevents actions that would destroy links between tables
-- CHECK                  - Ensures that the values in a column satisfies a specific condition
-- DEFAULT                - Sets a default value for a column if no value is specified
-- CREATE INDEX           - Used to create and retrieve data from the database very quickly


-- EXAMPLE OF PRIMARY KEY 
CREATE TABLE store_data(
     "id" INT UNIQUE
    "Product_name" VARCHAR(20) NOT NULL
    "Quantlty" INT NOT NULL
    "Shipping address" VARCHAR (100) DEFAULT 'PAKISTAN'
    "Phone" INT NOT NULL UNIQUE;
    PRIMARY KEY (id);
);

-- Or you can write
CREATE TABLE store_data(
    "id" INT NOT NULl UNIQUE PRIMARY KEY
    "Product_name" VARCHAR (20) NOT NULL
    "Quantity" INT NOT NULL
    "Shipping address" VARCHAR(100) DEFAULT 'PAKISTAN'
    "Phone" INT UNIQUE NOT NULL;
);


-- Want to Add primary key in more than one column then we write
CREATE TABLE store_data(
    "id" INT NOT NULL UNIQUE
    "Product_name" VARCHAR (20) NOT NULL
    "Quantity" INT NOT NULL
    "Shipping address" VARCHAR(100) DEFAULT 'PAKISTAN'
    "Phone" INT UNIQUE NOT NULL
    CONSTRAINT items PRIMARY KEY (id, Phone)
);
-- there is only ONE PRIMARY KEY (items). However, the VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).




-- When the table is already created, and we want to create primary key constraint on the "ID" column 
ALTER TABLE store_data
ADD PRIMARY KEY (id);
-- or
ALTER TABLE store_data
ADD CONSTRAINT items PRIMARY KEY (id, phone);


-- Example
CREATE TABLE store_info(
    "id" INT UNIQUE
    "Product_name" VARCHAR(20) NOT NULL
    "Quantlty" INT NOT NULL
    "Shipping address" VARCHAR (100) DEFAULT 'PAKISTAN'
    "Phone" INT NOT NULL UNIQUE;
);



-- ==================================================================== SELECT Statement 
-- The SELECT statement is used to select data from a database.

-- Select data in Specific column 
SELECT column1, column2, ......
FROM table_name;

-- Select ALL columns
SELECT * FROM table_name;


-- Change heading of any COLUMN
SELECT column_name AS change_column_name , ..........
-- Example
SELECT id AS student, phone AS cellphone;


-- Write more than one word 
SELECT id AS "student_id", phone AS cellphone;

  


-- =================================================================================== WHERE Clause
-- The WHERE clause is used to filter records.
-- It is used to extract only those records that fulfill a specified condition.

-- SYNTAX
SELECT col1, col2, col3,......
FROM table_name
WHERE condition;


-- Example
SELECT quantity
FROM store_data
WHERE quantity = 1000

-- or
SELECT * store_data
WHERE id = '2';


--=======================================================================MySQL AND, OR, NOT Operators 
-- SYNTAX
SELECT column1, column2, column3,......
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...... ;
-- or
 SELECT * FROM table_name
WHERE condition1 AND condition2 AND condition3 ...... ;



--================================================================================= AND OPERATOR
SELECT * FROM `collage_data`
WHERE average_salary >= 5000 AND average_salary <=40000;


SELECT * FROM `collage_data`
WHERE average_salary >= 5000 AND collage_address = "north nazimabad";


SELECT * FROM `collage_data`
WHERE average_salary >= 5000 AND collage_address = "north nazimabad" AND monthly_income> 30000;

-- ==================================================================================OR OPERATOR
SELECT * FROM `collage_data`
WHERE average_salary >= 5000 OR collage_address = "north nazimabad";

-- AND OR combine condition/ complex data searching
SELECT * FROM `collage_data`
WHERE (average_salary >= 5000 OR collage_address = "north nazimabad") AND monthly_income < 400000;


-- ====================================================================================NOT OPERATOR
-- The NOT operator is used in combination with other operators to give the opposite result, also called the negative result.
SELECT * FROM `collage_data`
WHERE NOT average_salary > 6000;

SELECT * FROM `collage_data`
WHERE NOT (average_salary < 4000 or collage_address = "north nazimabad");

-- ===============================================================================LIKE OPERATOR
Select student_Name that start with the letter 'A':

SELECT * FROM collage_data
WHERE student_Name  LIKE 'A%';
   
Select student_Name that start with the letter 'A' and End with "M":
SELECT * FROM collage_data
WHERE student_Name  LIKE 'A%' OR LIKE '%M';

-- FOR checking case SENSITIVE
SELECT * FROM collage_data
WHERE BINARY student_Name  LIKE 'a%' OR LIKE '%m';



--PATTERN
WHERE student_Name  LIKE 'a%' -- Start with a
WHERE student_Name  LIKE '%a' -- end with a
WHERE student_Name  LIKE '%am%' -- Have AM in any position
WHERE student_Name  LIKE 'a%m' -- Start with a and end with m
WHERE student_Name  LIKE '_a%' -- a in the second POSITION
WHERE student_Name  LIKE '__%' -- a in the third POSITION
WHERE student_Name  LIKE '_oy%' -- o in the second and y in the third POSITION




-- ===============================================================================NOT LIKE OPERATOR
Select student_Name that does not start with the letter 'A':

SELECT * FROM collage_data
WHERE student_Name NOT LIKE 'A%';





-- ====================================================================================BETWEEN

Select Student_id with a ID  between 10 and 60:

SELECT * FROM collage_data
WHERE Student_id BETWEEN 10 AND 60;


SELECT * FROM collage_data
WHERE Student_name BETWEEN "A" AND "K";



-- ====================================================================================NOT BETWEEN

Select Student_id with a ID not between 10 and 60:

SELECT * FROM collage_data
WHERE Student_id NOT BETWEEN 10 AND 60;



-- ====================================================================================IN Operator
-- SYNTAX
SELECT * FROM `collage_data`
WHERE column_name IN (value1, value2 , value3 ,........);


-- ====================================================================================NOT IN Operator
WHERE column_name NOT IN(value1, value2 , value3 ,........);

Select age that are not from 10 or 30:
 WHERE age IN (10,30)




 -- ============================================================================ REGULAR EXPRESSION
-- a sequence of symbols and characters expressing a string or pattern to be searched for within a longer piece of text. 
-- SYNTAX 
-- SELECT from table_name
-- WHERE column_name REGEXP condition

SELECT FROM collage_data
WHERE collage_address REGEXP '^ra';  -- Beginning of string r and sec value is a

-- PATTERN
WHERE collage_address REGEXP 'an$'; -- End of string an
WHERE collage_address REGEXP '[rms]'; -- Any Character listed b/w the square brackets
WHERE collage_address REGEXP '^[rms]'; -- Begin with Any Character listed b/w the square brackets
WHERE collage_address REGEXP '[a-s]';  -- match with in the range
WHERE collage_address REGEXP '[a-s]a';  -- match with in the range and sec value is a
WHERE collage_address REGEXP 'r|m|a';  -- match any of the pattern r,m,a























