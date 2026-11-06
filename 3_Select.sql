CREATE DATABASE student_1;

use student_1;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO students (student_id, name, age, course, city)
VALUES
(1, 'Arun', 21, 'Python', 'Chennai'),
(2, 'Priya', 22, 'Java', 'Madurai'),
(3, 'Kumar', 20, 'SQL', 'Chennai'),
(4, 'Divya', 23, 'Python', 'Coimbatore'),
(5, 'Ravi', 21, 'Java', 'Chennai');

SELECT * FROM students;

SELECT *
FROM students
WHERE city = 'Chennai';

SELECT *
FROM students
WHERE age > 21;

SELECT *
FROM students
WHERE age < 22;

SELECT *
FROM students
WHERE course != 'Python';

SELECT *
FROM students
WHERE city = 'Chennai' AND age > 20;

SELECT *
FROM students
WHERE city = 'Chennai' OR city = 'Madurai';

SELECT *
FROM students
WHERE age BETWEEN 20 AND 22;

SELECT *
FROM students
WHERE course IN ('Python', 'Java');

SELECT *
FROM students
WHERE name LIKE 'A%';

INSERT INTO students (student_id, name, age, course)
VALUES
(6, 'Arjun', 25, 'Python');

select * from students;

SELECT *
FROM students
WHERE city IS NULL;

UPDATE students
SET city = 'mumbai'
WHERE student_id = 6;

select * from students;


