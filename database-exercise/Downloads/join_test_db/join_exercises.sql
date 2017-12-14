USE join_test_db;

SELECT u.name, u.email, r.name
FROM users AS u
  JOIN roles AS r ON u.role_id = r.id;

# Left joins

# Request: Give me all the users available.

SELECT u.name, u.email, IF(r.name is null, 'unassigned', r.name)
FROM users AS u
  LEFT JOIN roles AS r ON u.role_id = r.id;


# Right joins

# Request: Give me all the roles available.

SELECT u.name, u.email, r.name
FROM users AS u
  RIGHT JOIN roles AS r ON u.role_id = r.id;

-- 2. shows each department along with the name of the current manager for that department.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) as 'Department Manager'
from employees e
  join dept_manager de ON  de.emp_no = e.emp_no
  join departments d ON  d.dept_no = de.dept_no
WHERE de.to_date >= curdate()
ORDER BY d.dept_name;

-- 3.  Name of all departments currently managed by women.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) as 'Department Manager'
from employees e
  join dept_manager dm on dm.emp_no = e.emp_no
  join departments d on d.dept_no = dm.dept_no
where e.gender = 'F' and  dm.to_date >= curdate()
ORDER BY d.dept_name;

-- 4. Current titles of employees currently working in the Customer Service department.

select t.title, count(e.emp_no)
from titles t
  join employees e on e.emp_no = t.emp_no
  join dept_emp de ON  de.emp_no = e.emp_no
  join departments d on d.dept_no = de.dept_no
WHERE  t.to_date >= curdate() AND d.dept_name = 'Customer Service' AND de.to_date >= curdate()
GROUP BY t.title;

-- 5. Find the current salary of all current managers.

select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name
) AS 'Department Manager', s.salary
from employees e
  join dept_manager dm on dm.emp_no = e.emp_no
  join salaries s on s.emp_no = e.emp_no
  join departments d on d.dept_no = dm.dept_no
where dm.to_date >= curdate() and s.to_date >= curdate()
ORDER BY d.dept_name;


# For the subqueries lecture, this will bring the first 10 managers of the employees table using a sub query

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
)
LIMIT 10;
