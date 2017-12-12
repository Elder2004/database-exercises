use employees;

SELECT  last_name
FROM employees
WHERE last_name LIKE 'z%'
LIMIT 10;

SELECT *
FROM employees
WHERE hire_date like '%199%' and birth_date LIKE '%12-25'
LIMIT 5 OFFSET 50;