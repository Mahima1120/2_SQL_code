create database emp_4;
use emp_4;

CREATE TABLE employees (
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employees VALUES
('Arun', 'IT', 60000),
('Charu', 'IT', 50000),
('Bala', 'HR', 45000),
('Divya', 'HR', 40000),
('Ezhil', 'Sales', 35000);

SELECT * FROM employees;

SELECT name, department, salary,
       RANK() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS dept_rank
FROM employees;

SELECT name, department, salary,
       ROW_NUMBER() OVER (
           PARTITION BY department
           ORDER BY salary DESC
       ) AS row_num
FROM employees;

SELECT name, department, salary,
       AVG(salary) OVER (PARTITION BY department) AS dept_avg_salary
FROM employees;

SELECT name, salary,
       SUM(salary) OVER (
           ORDER BY salary
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS running_total
FROM employees;