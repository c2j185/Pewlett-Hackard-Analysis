SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	tt.title
INTO mentorship_elegibilitya
FROM employees as e

INNER JOIN dept_employee as de
ON (e.emp_no = de.emp_no)

LEFT JOIN titles as tt
ON (e.emp_no = tt.emp_no);

select * from mentorship_elegibilitya

select DISTINCT ON (me.emp_no) * 
INTO mentorship_elegibility
from mentorship_elegibilitya as me
WHERE (me.to_date = '9999-01-01')
AND (me.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY me.emp_no, me.to_date DESC;

select * from mentorship_elegibility
