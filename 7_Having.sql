use emp_2;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 80000;

SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;

SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE salary >= 40000
GROUP BY department
HAVING COUNT(*) > 1;