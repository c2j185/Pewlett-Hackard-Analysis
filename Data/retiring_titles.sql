SELECT
	COUNT (ut.emp_no) as _count,
	ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY _count DESC;

select * from retiring_titles
