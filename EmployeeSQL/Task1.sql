SELECT 
e.last_name as LastName,
e.first_name as FirstName,
e.sex as Gender,
s.salary as Salary

FROM employees as e
INNER JOIN salaries as s
	on s.emp_no=e.emp_no;