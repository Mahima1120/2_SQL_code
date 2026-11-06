create database college;
use college;

create table department(
dept_id int primary key,
dept_name varchar(50) not null
);

create table student1(
student_id int primary key,
student_name varchar(50),
age int,
dept_id int,
foreign key (dept_id) references department(dept_id)
);

insert into department values
(101,"Python"),
(102,"Java"),
(103,"SQL");

insert into student1 values
(1,"Kavya",22,101),
(2,"Ravi",21,102),
(3,"Priya",24,103);

insert into student1 values
(4,"Arun",20,102);

select * from department;

select * from student1;




