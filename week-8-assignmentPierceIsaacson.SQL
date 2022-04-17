select count(employees.emp_no) as 'employees born before 1965', titles.title
from employees
inner join titles
on titles.emp_no = employees.emp_no
where employees.birth_date > '1965-01-01'
group by titles.title;

select titles.title as 'Title', avg(salaries.salary) as 'Average Salary'
from titles
inner join salaries
on salaries.emp_no = titles.emp_no
group by titles.title;

select d.dept_name as 'Department'
, sum(s.salary) as 'Total Salary'
from departments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no
where s.from_date > '1989-12-31'
and s.to_date < '1993-01-01'
and d.dept_no = 'd001';