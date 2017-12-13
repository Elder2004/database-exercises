USE employees;

SELECT DISTINCT title from titles
GROUP BY title;



SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'e%'
GROUP BY last_name;



SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name, first_name;


SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
      AND last_name NOT LIKE '%qu%'
GROUP BY  last_name;

SELECT  last_name, count(last_name)
FROM employees
WHERE  last_name NOT LIKE  '%z%'
Group by last_name;

