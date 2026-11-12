create database emp_5;
use emp_5;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    joining_date DATE
);

INSERT INTO employees VALUES
(1, 'Arun', '2024-07-18'),
(2, 'Priya', '2023-12-05'),
(3, 'Kumar', '2025-01-22');

SELECT * FROM employees;

SELECT MONTH('2024-07-18') AS month_number;

SELECT employee_name, joining_date, MONTH(joining_date) AS joining_month
FROM employees;

SELECT YEAR('2024-07-18') AS joining_year;

SELECT employee_name, joining_date, YEAR(joining_date) AS joining_year
FROM employees;

SELECT CURRENT_DATE() AS today;

SELECT employee_name,
       joining_date,
       MONTH(joining_date) AS joining_month,
       YEAR(joining_date) AS joining_year
FROM employees;

SELECT *
FROM employees
WHERE MONTH(joining_date) = 7;

SELECT *
FROM employees
WHERE YEAR(joining_date) = 2024;