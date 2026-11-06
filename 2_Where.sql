CREATE DATABASE student_reg;

USE student_reg;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50)
);

INSERT INTO students (student_id, name, age, course)
VALUES
(1, 'Arun', 21, 'Python'),
(2, 'Priya', 22, 'Java'),
(3, 'Kumar', 20, 'SQL'),
(4, 'Divya', 23, 'Python');

select * from students;

SELECT name
FROM students;

SELECT name, age
FROM students;

SELECT *
FROM students;

SELECT *
FROM students
WHERE course = 'Python';

SELECT name, age
FROM students
ORDER BY age ASC;

SELECT DISTINCT course
FROM students;

SELECT *
FROM students
LIMIT 2;