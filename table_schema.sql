-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--For creating schemas/tables 

CREATE TABLE IF NOT EXISTS departments
 (
     dept_no VARCHAR(20) NOT NULL UNIQUE,
     dept_name VARCHAR(30) NOT NULL,
     PRIMARY KEY(dept_no)
 );

 CREATE TABLE IF NOT EXISTS dept_emp
 (
     emp_dept_no VARCHAR(30) NOT NULL,
     emp_no INTEGER NOT NULL,
     dept_no VARCHAR(20) NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     PRIMARY KEY(emp_dept_no)
 );

 CREATE TABLE IF NOT EXISTS dept_manager
 (
     emp_dept_no VARCHAR(30) NOT NULL,
     emp_no INTEGER NOT NULL,
     dept_no VARCHAR(20) NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     PRIMARY KEY(emp_dept_no)
 );

 CREATE TABLE IF NOT EXISTS employees
 (
     emp_no INTEGER NOT NULL UNIQUE,
     birth_date DATE NOT NULL,
     first_name VARCHAR(30) NOT NULL,
     last_name VARCHAR(30) NOT NULL,
     gender VARCHAR(2) NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY(emp_no)
 );

 CREATE TABLE IF NOT EXISTS salaries
 (
     salary_emp_no INTEGER NOT NULL,
     salary INTEGER NOT NULL,
     emp_no INTEGER NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     PRIMARY KEY(salary_emp_no)
 );

 CREATE TABLE IF NOT EXISTS titles
 (
     title_emp_no INTEGER NOT NULL,
     title_no INTEGER NOT NULL,
     title VARCHAR(50) NOT NULL,
     emp_no INTEGER NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     PRIMARY KEY(title_emp_no)
 );

