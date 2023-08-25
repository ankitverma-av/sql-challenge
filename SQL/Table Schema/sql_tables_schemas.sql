--To delete the tables incase already exists
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

-- Table creation of the csv files 

-- Departments Table
create table departments(
	dept_no varchar(8) PRIMARY key NOT NULL,
	dept_name varchar(40) NOT NULL
	);
	
-- Employees Table
create table employees(
	emp_no INT PRIMARY key NOT NULL, 
	emp_title varchar(40) NOT NULL, 
	birth_date varchar(20) NOT NULL, 
	first_name varchar(40) NOT NULL, 
	last_name varchar(40) NOT NULL, 
	sex varchar(1) NOT NULL, 
	hire_date varchar(20) NOT NULL 
);
	
-- Dept_emp Table 
create table dept_emp( 
	emp_no INT NOT NULL, 
	dept_no varchar(8) NOT NULL, 
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees (emp_no)
); 

-- Dept_Manager Table 
create table dept_manager(
	dept_no varchar(8) NOT NULL, 
	emp_no INT NOT NULL, 
	foreign key (dept_no) references departments (dept_no), 
	foreign key (emp_no) references employees (emp_no)
); 

-- Salaries Table
create table salaries (
	emp_no int NOT NULL, 
	salary int NOT NULL, 
	foreign key (emp_no) references employees (emp_no)
);

--Titles table
create table titles(
	title_id varchar(5) PRIMARY key NOT NULL,
	title varchar(40) NOT NULL
);

--Checking to see the values and columns of the tables 
SELECT * FROM departments;
select * from dept_emp; 
select * from dept_manager; 
select * from titles; 
select * from salaries; 
select * from employees; 
