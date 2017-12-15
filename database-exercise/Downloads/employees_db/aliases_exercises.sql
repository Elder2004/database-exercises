USE employees;

SELECT concat(e.emp_no,'__',e.last_name,',',e.first_name)
full_name, e.birth_date DOB, e.gender, e.hire_date
FROM employees e 
LIMIT 10;

DESCRIBE employees;

