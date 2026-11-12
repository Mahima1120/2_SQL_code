create database emp_3;
use emp_3;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Bala', 'HR', 40000),
(3, 'Charu', 'IT', 60000),
(4, 'Divya', 'HR', 45000);

SELECT * FROM employees;

CREATE VIEW it_employees AS
SELECT emp_id, name, salary
FROM employees
WHERE department = 'IT';

SELECT *
FROM it_employees;

CREATE VIEW employee_names AS
SELECT emp_id, name
FROM employees;

SELECT *
FROM employee_names;

CREATE OR REPLACE VIEW it_employees AS
SELECT emp_id, name, salary
FROM employees
WHERE department = 'IT';

DROP VIEW it_employees;





