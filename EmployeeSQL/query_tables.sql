--Task 1-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no

--Task 2-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT hire_date,first_name,last_name
FROM employees 
WHERE hire_date LIKE '%1986'

--Task 3-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT employees.last_name,employees.first_name, dept_manager.dept_no,departments.dept_name,dept_manager.emp_no
FROM ((dept_manager
INNER JOIN departments ON 
departments.dept_no=dept_manager.dept_no)
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no)

--Task 4-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.last_name,employees.first_name, departments.dept_name,dept_emp.emp_no
FROM ((dept_emp
INNER JOIN departments ON 
departments.dept_no=dept_emp.dept_no)
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no)

--Task 5-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,sex 
FROM employees 
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%'

--Task 6-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
FROM ((dept_emp
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no)
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no)
WHERE departments.dept_name LIKE 'Sales'

--Task 7-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT departments.dept_name,dept_emp.emp_no,employees.last_name,employees.first_name
FROM ((dept_emp
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no)
INNER JOIN employees ON
dept_emp.emp_no=employees.emp_no)
WHERE departments.dept_name LIKE 'Sales' OR departments.dept_name LIKE 'Development'

--Task 8--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(e.last_name) AS "frequency" FROM employees e
GROUP BY e.last_name
ORDER BY "frequency" DESC
