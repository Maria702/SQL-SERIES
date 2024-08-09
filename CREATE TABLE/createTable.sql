-- ==================================== SQL CREATE TABLE Statement
The CREATE TABLE statement is used to create a new table in a database.
-- SYNTAX
CREATE TABLE table_name(
     col1 datatye,
     col2 datatype,
     col2 datatype,
     .......
);


-- TYPES OF CATEGORIES IN DAATA TYPES
  -- (1) STRING   (2) NUMBER    (3)DATE AND TIME

-- (1) STRING : a sequence of characters stored as a single unit in a database, used for textual data representation.
CHAR (Return the character for each integer passed) size (0 - 255)
VARCHAR              size (0 to 65535)
BINARY               size (0 1)
VARBINARY 
TINYTEXT            (255 characters)
TEXT                size (65535 BYTES)
MEDIUMTEXT          16777215 characters
LONGTEXT            4294967295 characters
TINYBLOB            255 bytes
BLOB                65535 bytes
MEDIUMBLOB          16777215 bytes
LONGBLOB            4294967295 bytes
ENUM                (val1, val2, val3.......) listupto 65535 values
SET                 (val1, val2, val3.......) listupto  64 values



-- (2) NUMBERIC :
BIT size            (1 to 64)
TINYINT size        (-128 to 127)
INT size            (-2147483648 to 2147483648)
INTEGER 
SMALLINT size       (-32768 to 32768)
MEDIUMINT size      (-8388608 to 8388609)
BIGINT              (-92222................. to 922222................)
BOOL
BOOLEAN              0/1 
FLOAT 
DOUBLE              (size, d) 255.566 
DECIMAL             (size, d) 255.566 
DEC                 (size, d) 255.566 



-- (3)  DATE AND TIME
DATE  1000-01-01 to 9999-12-31
DATETIME yyyy-mm-dd  hh:mm:ss 
TIMESTAMP
TIME hh:mm:ss 
YEAR four digit format 1990,


-- Example
CREATE TABLE student_data(
 "id" INT,
 "name" VARCHAR (16),
    "Phone No" INT,
    "Gender" VARCHAR(1),
    "Class Name" INT

);


-- ==================================== INSERT TABLE
-- It is used to insert new records in a table.

--  METHOD 1 -> Insert data in specific column
-- SYNTAX
INSERT INTO table_name (column1 , column2,  column3 , ......)
VALUES (value1, value2, value3,.......);

-- EXAMPLE
INSERT INTO student_data(id , name,  Class Name)
VALUES('1', 'Maria', '10'),


--  METHOD 2
--If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query.
--  However, make sure the order of the values is in the same order as the columns in the table.

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

EXAMPLE 
INSERT INTO student_data
VALUES('1', 'Maria', '03449746', 'F', '10'),



--  ==================================== INSERT MULTIPLE ROWs

INSERT INTO table_name (col1, col2, col3,.....)
VALUES
(value1, value2, .........),
(value1, value2, .........),
(value1, value2, .........),
(value1, value2, .........);

-- EXAMple
INSERT INTO student_data(id, name, Phone No, Gender, Class Name)
VALUES
('1', 'Maria', '9808474394', 'f', '10'),
('2', 'Ria', '9808474350', 'f', '4'),
('3', 'Hadia', '9807574309', 'f', '2'),
('4', 'Waqar', '9804327312', 'f', '8'),
('5', 'Rimsha', '9808448350', 'f', '6'),
('6', 'Waseem', '9808474309', 'f', '1');







