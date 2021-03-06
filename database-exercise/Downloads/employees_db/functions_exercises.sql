USE employees;


SELECT concat( first_name,',' ,last_name)
FROM employees
WHERE  last_name LIKE '%E%'
ORDER BY  emp_no desc;


SELECT
datediff(now(), hire_date),
hire_date,
first_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;





