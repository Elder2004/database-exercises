USE employees;
DESCRIBE employees;


SELECT * FROM employees WHERE hire_date =(SELECT hire_date from employees WHERE emp_no = 101010);

SELECT * from titles  WHERE emp_no IN
(SELECT emp_no
from employees
where first_name = 'Aamod');

SELECT first_name, last_name from employees
WHERE emp_no in (SELECT emp_no from dept_manager WHERE to_date >= now()) and gender = 'F';
