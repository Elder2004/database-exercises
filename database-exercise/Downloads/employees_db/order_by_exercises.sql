use employees;

SELECT
  first_name,
  last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;



SELECT
  first_name,
  last_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY first_name, last_name;


SELECT last_name, first_name
FROM employees
WHERE  first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya'
ORDER BY last_name DESC , first_name DESC ;



SELECT *
FROM employees
WHERE  last_name LIKE 'E%'
ORDER BY  emp_no DESC ;


SELECT *
FROM employees
WHERE hire_date like '199%' and birth_date LIKE '%12-25'
ORDER BY birth_date ASC ,hire_date DESC ;



