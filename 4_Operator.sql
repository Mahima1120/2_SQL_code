create database student_2;
use student_2;
create table student(id int,name varchar(10),age int,marks int,course varchar(10));
insert into student values
(1,"Arun",21,85,"Python"),
(2,"Priya",22,90,"Java"),
(3,"Kumar",20,65,"SQL"),
(4,"Divya",23,95,"Python"),
(5,"Ravi",21,70,"Java");
select * from student;

select name,marks,marks + 5 as updated_marks
from student;

select * from student where marks>=80;

select * from student where course="Python" and marks>90;

SELECT *
FROM student
WHERE course = 'Python' OR course = 'Java';

SELECT *
FROM student
WHERE NOT course = 'Python';      

SELECT * FROM student WHERE marks BETWEEN 70 AND 90;

SELECT * FROM student WHERE course IN ('Python', 'Java');
                            
SELECT * FROM student WHERE name LIKE 'A%';                            

SELECT * FROM student WHERE marks IS NULL;

