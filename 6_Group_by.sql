create database emp_2;

use emp_2;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

INSERT INTO employees (employee_id, name, department, salary)
VALUES
(1, 'Arun', 'IT', 50000),
(2, 'Bala', 'HR', 40000),
(3, 'Charu', 'IT', 60000),
(4, 'Divya', 'HR', 45000),
(5, 'Ezhil', 'Sales', 35000);

select * from employees;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE salary >= 40000
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;



