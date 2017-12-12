use employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE  last_name LIKE 'E%';

SELECT *
FROM employees
WHERE hire_date >= '1990-01-01' and hire_date <= '1999-21-31';

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name ='Irena' or first_name = 'Vidya' or first_name = 'Maya';

SELECT *
FROM employees
WHERE  last_name LIKE '%E%';

SELECT *
FROM employees
WHERE  last_name LIKE 'E%' and last_name LIKE '%E';

SELECT *
FROM employees
WHERE hire_date like '%199%' and birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
