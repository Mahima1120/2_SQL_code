CREATE DATABASE college_db;
USE college_db;

CREATE TABLE students (student_id INT PRIMARY KEY, name VARCHAR(50),age INT,course VARCHAR(50));

INSERT INTO students (student_id, name, age, course)
VALUES
(1, 'Arun', 21, 'Python'),
(2, 'Priya', 22, 'Java'),
(3, 'Kumar', 20, 'SQL');

SELECT * FROM students;

SELECT name, course
FROM students
WHERE age >= 21;

UPDATE students
SET age = 22
WHERE student_id = 1;

SELECT * FROM students;

DELETE FROM students
WHERE student_id = 3;

SELECT * FROM students;