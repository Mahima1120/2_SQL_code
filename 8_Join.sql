use emp_2;

CREATE TABLE employees_1 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT
);

INSERT INTO employees_1 (emp_id, name, dept_id)
VALUES
(1, 'Arun', 10),
(2, 'Bala', 20),
(3, 'Charu', 10),
(4, 'Divya', 30);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    department VARCHAR(50)
);

INSERT INTO departments (dept_id, department)
VALUES
(10, 'IT'),
(20, 'HR'),
(40, 'Sales');

SELECT e.name, d.department
FROM employees_1 AS e
INNER JOIN departments AS d
ON e.dept_id = d.dept_id;

SELECT e.name, d.department
FROM employees_1 AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;

SELECT e.name, d.department
FROM employees_1 AS e
RIGHT JOIN departments AS d
ON e.dept_id = d.dept_id;

SELECT e.name, d.department
FROM employees_1 AS e
LEFT JOIN departments AS d ON e.dept_id = d.dept_id
UNION
SELECT e.name, d.department
FROM employees_1 AS e
RIGHT JOIN departments AS d ON e.dept_id = d.dept_id;

SELECT e.name, d.department
FROM employees_1 AS e
CROSS JOIN departments AS d;
