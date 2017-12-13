USE employees;

SELECT concat(e.emp_no,'-',e.last_name,',',e.first_name)
full_name, e.birth_date DOB
FROM employees e 
LIMIT 10;