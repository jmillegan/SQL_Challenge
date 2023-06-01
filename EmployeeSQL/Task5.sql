SELECT 
e.first_name as FirstName,
e.last_name as LastName,
e.sex as gender

FROM employees as e

WHERE e.first_name = 'Hercules'
and e.last_name like 'B%'
;
