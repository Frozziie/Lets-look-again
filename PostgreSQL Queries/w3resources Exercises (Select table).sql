/*
1. Write a query to display the names (first_name, last_name) using an alias name “First Name", "Last Name".
*/

SELECT first_name AS "First Name", last_name AS "Last Name"
FROM employees;

/*
2. Write a query to get a unique department ID from employee table.
*/

SELECT DISTINCT department_id
FROM employees;

/*
3. Write a query to get the details of all employees from the employee table in descending order by their first name.
*/

SELECT *
FROM employees
ORDER BY first_name DESC;

/*
4. Write a query to get the names (first_name, last_name), salary and 15% of salary as PF for all the employees.
*/

SELECT first_name, last_name, salary, salary*.15 AS pf
FROM employees;

/*
5. Write a query to get the employee ID, names (first_name, last_name) and salary in ascending order according to their salary.
*/

SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary;

/*
6. Write a query to get the total salaries payable to employees.
*/

SELECT SUM(salary) AS total_salaries
FROM employees;

/*
7. Write a query to get the maximum and minimum salary paid to the employees.
*/

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees;

/*
8. Write a query to get the average salary and number of employees are working.
*/

SELECT COUNT(employee_id) AS employees_amount, AVG(salary) AS avg_salary
FROM employees;

/*
9. Write a query to get the number of employees working with the company.
*/

SELECT COUNT(employee_id) AS employees_amount
FROM employees;

/*
10. Write a query to get the unique number of designations available in the employees table.
*/

SELECT COUNT(DISTINCT job_id) AS distinct_designations
FROM employees;

/*
11. Write a query to get all the first name from the employees table in upper case.
*/

SELECT UPPER(first_name) AS upper_first_name
FROM employees;

/*
12. Write a query to get the first three characters of the first name for all the employees in the employees table.
*/

SELECT SUBSTRING(first_name,1,3) AS three_characters
FROM employees;

/*
13. Write a query to calculate the expression 171*214+625.
*/

SELECT (171*214+625) result;

/*
14. Write a query to get the name, including first name and last name of all the employees from employees table.
*/

SELECT (first_name ||' '|| last_name) AS full_name
FROM employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;

/*
15. Write a query to get the first names after removing all the leading and trailing blanks of all the employees from employees table.
*/

SELECT TRIM(first_name) AS new_first_name
FROM employees;

/*
16. Write a query to get the first name, last name and the length of the name, including first_name and last_name of all the employees from employees table.
*/

SELECT first_name, last_name, LENGTH(first_name)+LENGTH(last_name) AS full_name_length
FROM employees;

/*
17. Write a query to check whether the first_name column of the employees table containing any number.
*/

SELECT *
FROM employees
WHERE first_name SIMILAR TO '%0|1|2|3|4|5|6|7|8|9%';

/*
18. Write a query to select first ten records from a table.
*/

SELECT *
FROM employees
ORDER BY employee_id
LIMIT 10;

/*
19. Write a query to get a monthly salary (rounded up to 2 decimal places) of each employee.
Note : Assume the salary field provides the 'annual salary' information.
*/

SELECT 	employee_id, 
		CONCAT(first_name ,' ', last_name) AS full_name, 
		salary AS anual_salary,
		ROUND(salary::decimal/12,2) AS monthly_salary
FROM employees;