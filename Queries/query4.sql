select * from retirement_info
drop table emp_dept_name

-- Joining departments and dept_employee tables
SELECT departments.dept_name,
     dept_employee.emp_no
into emp_dept_name
FROM departments
INNER JOIN dept_employee
ON departments.dept_no = dept_employee.dept_no;

select * from emp_dept_name

SELECT ri.emp_no,
	ri.first_name,
	ri.last_name,
	edn.dept_name
INTO sales_list
FROM retirement_info as ri

INNER JOIN emp_dept_name as edn
ON (ri.emp_no = edn.emp_no);

select * from sales_list

select *
from sales_list
where dept_name IN ('Sales', 'Development');

