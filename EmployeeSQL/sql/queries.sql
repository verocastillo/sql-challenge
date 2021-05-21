-- SQL Challenge: Data Analysis
-- Part 2: Creating Queries.
--
-- This takes the tables created in part 1, with the CSV files already imported. 
-- With this database ready, several queries were ran to obtain employee information.
--
-- 0. Verify tables are working as intended.
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dpt_employees;
SELECT * FROM dpt_managers;
SELECT * FROM salaries;
SELECT * FROM titles;

-- 1. List employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with department number, name, the 
--    manager's employee number, last name, first name.
SELECT dpt_managers.dept_no, departments.dept_name, dpt_managers.emp_no, employees.last_name, employees.first_name
FROM dpt_managers
INNER JOIN departments ON departments.dept_no = dpt_managers.dept_no
INNER JOIN employees ON employees.emp_no = dpt_managers.emp_no;

-- 4. List the department of each employee with employee number, last name, 
--    first name, and department name.

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" 
--    and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last 
--    name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their 
--    employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names.
