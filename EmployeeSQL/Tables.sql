DROP TABLE titles;

CREATE TABLE titles(
    title_id VARCHAR(20)  NOT NULL,
    title VARCHAR(20)  NOT NULL,
    PRIMARY KEY (title_id)
 );
 
DROP TABLE departments;

CREATE TABLE departments(
    dept_no VARCHAR(20)  NOT NULL,
    dept_name VARCHAR(20)  NOT NULL,
    PRIMARY KEY (dept_no)
 );
 
DROP TABLE employees;

CREATE TABLE employees(
    emp_no INT NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id), 
	PRIMARY KEY (emp_no)
 );
 
DROP TABLE salaries;

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE dept_emp;

CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
 );
 
DROP TABLE dept_manager;

CREATE TABLE dept_manager(
    dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
 );
 
--See the tables
SELECT * FROM titles
SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM salaries
SELECT * FROM dept_manager
 