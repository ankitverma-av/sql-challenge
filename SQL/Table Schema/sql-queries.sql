--1. List the employee number, last name, first name, sex, and salary of each employee

select e.emp_no,e.last_name, e.first_name, e.sex,s.salary from employees as e 
inner join salaries as s
ON e.emp_no = s.emp_no
Order by e.emp_no; --(optional)

--2. List the first name, last name, and hire date for the employees who were hired in 1986.

select first_name, last_name, hire_date
from employees
where hire_date like '%1986';
 
 

--3. List the manager of each department along with their department number,
--department name, employee number, last name, and first name.
select d.dept_name, e.emp_no,e.first_name,e.last_name,dm.dept_no
from employees as e 
inner join dept_manager as dm
ON e.emp_no = dm.emp_no
join departments as d
ON d.dept_no = dm.dept_no
order by d.dept_name;

--4. List the department number for each employee 
 --along with that employee’s employee number, last name, first name, and department name.
select distinct e.emp_no, e.first_name,e.last_name, dept.dept_no ,d.dept_name
from employees as e
left join dept_emp as dept
on e.emp_no = dept.emp_no
join departments as d
ON dept.dept_no = d.dept_no;

--5. List first name, last name, and sex of each employee whose 
--first name is Hercules and whose last name begins with the letter B.
select first_name , last_name ,sex
from employees as e
where first_name = 'Hercules' and last_name like'B%';


--6. List each employee in the Sales department, including their 
--employee number, last name, and first name.

select dm.dept_name ,e.emp_no,e.last_name , e.first_name
from employees as e 
LEFT JOIN 
dept_emp as d ON e.emp_no = d.emp_no
JOIN departments as dm ON d.dept_no=dm.dept_no
where dm.dept_name = 'Sales';

--7. List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

select e.emp_no ,e.last_name , e.first_name, dm.dept_name
from employees as e 
LEFT JOIN 
dept_emp as d ON e.emp_no = d.emp_no
JOIN departments as dm ON d.dept_no=dm.dept_no
where dm.dept_name IN ('Sales' , 'Development')
order by e.emp_no;


--8. List the frequency count of employee last names (i.e., how many employees 
--share each last name) in descending order.

select last_name,count(last_name) as frequency_count
from employees 
group by last_name
order by frequency_count ;