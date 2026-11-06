use emp_2;

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

SELECT name
FROM employees
WHERE department = (
    SELECT department
    FROM employees
    WHERE name = 'Arun'
);

SELECT name
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    WHERE salary >= 45000
);

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > (
    SELECT AVG(salary)
    FROM employees
);