SELECT 
dm.dept_no as Departmt_No,
d.dept_name as Dept_Name,
dm.emp_no as Employee_ID,
e.last_name as LastName,
e.first_name as FirstName


FROM employees as e
--dept_manager as dm
--department as d
INNER JOIN dept_manager  as dm
	on dm.emp_no=e.emp_no
INNER JOIN departments as d
	on d.dept_no=dm.dept_no
;
