# SQL_Challenge
Challenge 9
# UNC_Demo_SQL_Employee_DB
Demo postgreSQL to create an employee database using pgAdmin

Deliverables:
1. Entity Relationship Diagram of employee database (six connected tables)
2. Working postgreSQL employee database using pgAdmin (sql schema file)
3. SQL Queries created to answer customer requests for information (sql queries file)


## Process: Data Modeling, Data Engineering, Data Analysis
#### Data Modeling (Deliverable 1)
* Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. 

#### Data Engineering 
* Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

* Remember to specify the data types, primary keys, foreign keys, and other constraints.

* For the primary keys, verify that the column is unique. Otherwise, create a composite keyLinks to an external site., which takes two primary keys to uniquely identify a row.

* Be sure to create the tables in the correct order to handle the foreign keys.

* Import each CSV file into its corresponding SQL table.


#### Data Analysis
* List the employee number, last name, first name, sex, and salary of each employee.

* List the first name, last name, and hire date for the employees who were hired in 1986.

* List the manager of each department along with their department number, department name, employee number, last name, and first name.

* List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

* List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

* List each employee in the Sales department, including their employee number, last name, and first name.

* List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

* List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

#### Resources
* six csv files saved in the Resources folder of the respository (one for each database table)
* [postgreSQL documentation](https://www.postgresql.org/docs/)
* [pgAdmin documentation](https://www.pgadmin.org/docs/)
* [postgresql tutorial](https://www.postgresqltutorial.com/)
