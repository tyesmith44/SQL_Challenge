DROP TABLE IF EXISTS titles;
CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    emp_no VARCHAR NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date VARCHAR,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date VARCHAR,
Primary Key (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
DROP TABLE IF EXISTS salary;
CREATE TABLE salary (
    emp_no VARCHAR NOT NULL PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
    "dept_no" VARCHAR PRIMARY KEY,
    "dept_name" VARCHAR
);
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp (
    emp_no VARCHAR NOT NULL,
    dept_no VARCHAR,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager (
    dept_no VARCHAR,
    emp_no VARCHAR NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);