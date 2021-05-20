-- SQL Challenge: Data Engineering
-- Part 1: Creating the Database.
--
-- This code creates tables from the CSV files provided. It includes
-- the variables from each file, as well as the data types, primary keys, 
-- foreign keys, and other constraints.
--

-- 1. Drop tables if they already exist
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dpt_employees;
DROP TABLE IF EXISTS dpt_managers;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

-- 2. Tables are created from SQL file from ERD site
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(10)  NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(50)   NOT NULL,
    "last_name" VARCHAR(50)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dpt_employees" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_dpt_employees" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dpt_managers" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" INT   NOT NULL,
    CONSTRAINT "pk_dpt_managers" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no","salary"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10)  NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

-- 3. Verify tables were created with no errors
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dpt_employees;
SELECT * FROM dpt_managers;
SELECT * FROM salaries;
SELECT * FROM titles;
