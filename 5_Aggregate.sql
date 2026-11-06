use student_2;

create table students(id int,name varchar(10),age int,marks int,course varchar(10));
insert into students values
(1,"Arun",21,85,"Python"),
(2,"Priya",22,90,"Java"),
(3,"Kumar",20,65,"SQL"),
(4,"Divya",23,95,"Python"),
(5,"Ravi",21,70,"Java");

select * from students;

SELECT COUNT(*) AS total_students
FROM students;

SELECT SUM(marks) AS total_marks
FROM students;

SELECT AVG(marks) AS average_marks
FROM students;

SELECT MIN(marks) AS lowest_marks
FROM students;

SELECT MAX(marks) AS highest_marks
FROM students;

SELECT AVG(marks) AS python_average
FROM students
WHERE course = 'Python';

SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course;

SELECT course, AVG(marks) AS average_marks
FROM students
GROUP BY course
HAVING AVG(marks) >= 80;