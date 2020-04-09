--CSV file loading for employee salaries

SELECT employees.employee_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
 FROM employees
 INNER JOIN salaries ON
 employees.employee_no=salaries.employee_no;

 --2. SELECT *
 FROM employees
 WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

 --3. 
 SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, employees.first_name, employees.last_name 
 FROM departments
 JOIN dept_manager ON dept_manager.dept_no=departments.dept_no
 JOIN employees ON employees.emp_no=dept_manager.emp_no;

 --4. 
 SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
 FROM employees
 JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
 JOIN departments ON dept_emp.dept_no=departments.dept_no;

 --5
 SELECT *
 FROM employees
 WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

 --6
 SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
 FROM departments
 JOIN dept_emp ON dept_emp.dept_no=departments.dept_no
 JOIN employees ON employees.emp_no=dept_emp.emp_no
 WHERE departments.dept_name = 'Sales';

 --7
 SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
 FROM departments
 JOIN dept_emp ON dept_emp.dept_no=departments.dept_no
 JOIN employees ON employees.emp_no=dept_emp.emp_no
 WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

 --8
 SELECT last_name, COUNT(last_name) AS "last name count"
 FROM employees
 GROUP BY last_name
 ORDER BY "last name count" DESC;