-- 1. List the following details of each employee: 
-- 	  employee number, last name, first name, gender, and salary.
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, salaries.salary
FROM employees as emp
LEFT JOIN salaries ON emp.emp_no = salaries.emp_no;


-- 2. List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986';


-- 3. List the manager of each department with the following information: 
--    department number, department name, the manager's employee number, 
--    last name, first name, and start and end employment dates.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, 
	dm.from_date, dm.to_date
FROM dept_manager AS dm
LEFT JOIN departments AS d ON dm.dept_no = d.dept_no
LEFT JOIN employees AS e ON dm.emp_no = e.emp_no;


-- 4. List the department of each employee with the following information: 
--    employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.dept_no;


-- 5. List all employees whose first name is "Hercules" 
--    and last names begin with "B."
select *
from employees
where first_name = 'Hercules' 
and last_name like 'B%';


-- 6. List all employees in the Sales department, 
--    including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, 
--    including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de on e.emp_no = de.emp_no
left join departments as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, 
--    i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count desc;

-- BONUS: For Pandas, pulling salaries by title
select s.salary, t.title
from salaries as s
left join titles as t on s.emp_no = t.emp_no;

-- BONUS: Finding employee ID number
select *
from employees
where emp_no = '499942';
