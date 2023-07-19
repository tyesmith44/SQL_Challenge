/*Data Analysis
Query_1:List the employee number, last name, first name, sex, and salary of each employee.

Query_2:List the first name, last name, and hire date for the employees who were hired in 1986.

Query_3:List the manager of each department along with their department number, department name, employee number, last name, and first name.

Query_4:List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

Query_5:List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

Query_6:List each employee in the Sales department, including their employee number, last name, and first name.

Query_7:List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

Query_8:List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).*/

-- Query_1: List the employee number, last name, first name, sex, and salary of each employee.
-- from employees table and salaries table
-- using JOIN Day 1 activity 9 Ins_JOIN
-- save as VIEW
-- reference day 2 activity 8
CREATE VIEW Query_1 AS
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM employees AS e
	INNER JOIN salaries AS s
		ON (e.emp_no = s.emp_no)
ORDER BY s.salary DESC;

-- Query_2: List the first name, last name, and hire date for the employees who were hired in 1986.
-- use WHERE and AND to get those hired in 1986
-- reference day 1 activity 7
-- from employees table
CREATE VIEW Query_2 AS
SELECT first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date > '1986-01-01'
	AND hire_date < '1986-12-31'
ORDER BY hire_date;

-- Query_3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
--from dept_manager, departments, employees
-- join 3 tables
-- reference day 1 activity 10
CREATE VIEW Query_3 AS
SELECT d.dept_name,
	dm.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d
		ON (dm.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (dm.emp_no = e.emp_no)
ORDER BY d.dept_name, e.last_name;

-- Query_4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- from dept_emp, employees table, departments tables
CREATE VIEW Query_4 AS
SELECT dept_name,
	d_emp.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_emp AS d_emp
	INNER JOIN departments AS d
		ON (d_emp.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (d_emp.emp_no = e.emp_no)
ORDER BY d.dept_name, e.last_name;

--Query_5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- from employees table
-- use the WHERE and AND
-- use LIKE and wildcard "%", reference day 2 activity 7
CREATE VIEW Query_5 AS
SELECT first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
ORDER BY last_name;

--Query_6: List each employee in the Sales department, including their employee number, last name, and first name.
-- from departments table, employees table, dept_emp
CREATE VIEW Query_6 AS
SELECT d.dept_name,
	de.emp_no,
	last_name,
	first_name
FROM dept_emp AS de
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (de.emp_no = e.emp_no)
WHERE d.dept_name = 'Sales'
ORDER BY dept_name, e.last_name;

-- Query_7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- departments, employees table, dept_emp
CREATE VIEW Query_7 AS
SELECT d.dept_name,
	de.emp_no,
	last_name,
	first_name
FROM dept_emp AS de
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (de.emp_no = e.emp_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY dept_name, e.last_name;

-- Query_8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- SEE day 2 activity 2
CREATE VIEW Query_8 AS
SELECT last_name,
	COUNT(last_name) AS Count_Last_Names
FROM employees
GROUP BY last_name
ORDER BY Count_Last_Names DESC;