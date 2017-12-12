use employees;

SELECT  DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT *
FROM employees
WHERE hire_date like '%199%' and birth_date LIKE '%12-25'
ORDER BY birth_date ASC , hire_date DESC
LIMIT 5 OFFSET 45;

