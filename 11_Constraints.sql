use emp_2;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age >= 16),
    city VARCHAR(50) DEFAULT 'Chennai'
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee_1 (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE exam_results (
    result_id INT PRIMARY KEY,
    marks INT CHECK (marks BETWEEN 0 AND 100)
);

CREATE TABLE students_default (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50) DEFAULT 'Chennai'
);

INSERT INTO students_default (student_id, name)
VALUES (1, 'Arun');

select * from students_default;

ALTER TABLE students
ADD CONSTRAINT uq_students_email UNIQUE (email);

select * from students;

CREATE TABLE stu (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    age INT CHECK (age >= 16),
    city VARCHAR(50) DEFAULT 'Chennai'
);

ALTER TABLE stu
ADD CONSTRAINT uq_students_email UNIQUE (email);

ALTER TABLE stu
ADD CONSTRAINT uq_students UNIQUE (student_id);

select * from stu;