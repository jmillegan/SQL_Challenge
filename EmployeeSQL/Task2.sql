SELECT 
e.first_name as FirstName,
e.last_name as LastName,
e.hire_date as Hired

FROM employees as e

WHERE e.hire_date between '1986_01_01' and '1986_12_31'
;