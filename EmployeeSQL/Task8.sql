SELECT e.last_name,
COUNT(*) AS total

FROM employees as e
GROUP BY last_name
ORDER BY total desc
	
;
