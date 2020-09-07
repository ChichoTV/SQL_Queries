
CREATE TABLE departments(
dept_no VARCHAR(255) PRIMARY KEY,
dept_name VARCHAR(255)
);

CREATE TABLE dept_emp(
emp_no INT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR(255),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager(
dept_no VARCHAR(255),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
emp_no INT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR(255),
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id),
birth_date VARCHAR(255),
first_name VARCHAR(255),
last_name VARCHAR(255),
sex VARCHAR(1),
hire_date VARCHAR(255)
);

CREATE TABLE salaries(
emp_no INT,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
salary INT 
);

CREATE TABLE titles(
title_id VARCHAR(255) PRIMARY KEY,
title VARCHAR(255)
);
SELECT * from dept_emp