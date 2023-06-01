SELECT 
de.dept_no as Departmt_No,
de.emp_no as Employee_ID,
e.last_name as LastName,
e.first_name as FirstName,
d.dept_name as Dept_Name


FROM employees as e
INNER JOIN dept_emp  as de
	on de.emp_no=e.emp_no
INNER JOIN departments as d
	on d.dept_no=de.dept_no
;
