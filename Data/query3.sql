--join the current_emp and dept_employee tables

-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
into emp_count_by_dept
FROM current_emp as ce
LEFT JOIN dept_employee as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
order BY de.dept_no;

select * from emp_count_by_dept

