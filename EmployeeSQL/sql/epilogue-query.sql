-- SQL Challenge: Data Analysis
-- Part 4: Bonus Query.
--
-- My employee number is 499942, according to the epilogue. I
-- want to see what's up with that.
SELECT employees.emp_no, employees.first_name, employees.last_name, 
	   departments.dept_name, salaries.salary
FROM employees
INNER JOIN dpt_employees ON dpt_employees.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = dpt_employees.dept_no
LEFT JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE employees.emp_no = 499942;