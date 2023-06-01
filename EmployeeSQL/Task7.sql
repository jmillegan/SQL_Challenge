SELECT 
e.emp_no as employee_id,
e.first_name as firstName,
e.last_name as lastName,
d.dept_name as departmt_name



FROM employees as e
INNER JOIN dept_emp  as de
	on de.emp_no=e.emp_no
INNER JOIN departments as d
	on d.dept_no=de.dept_no
	
WHERE d.dept_name in('Sales','Development')
;
