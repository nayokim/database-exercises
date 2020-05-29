use employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
         JOIN dept_emp as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

show tables;
select * from dept_manager;
select* from departments;

#write a query that shows each department along with the name of the current manager for that department.

select d.dept_name as 'Department name', concat (e.first_name, ' ', e.last_name) as 'fullname'
from employees as e
    join dept_manager as dm
        on dm.emp_no = e.emp_no
    join departments as d
        on d.dept_no = dm.dept_no
where dm.to_date >= curdate()
order by d.dept_name;

#Find the name of all departments currently managed by women.

select d.dept_name, concat(e.first_name,' ', e.last_name ) as 'fullname', gender
from employees as e
    join dept_manager as dm
    on dm.emp_no = e.emp_no
    join departments as d
    on d.dept_no = dm.dept_no
where gender = 'F' and dm.to_date >=curdate()
order by d.dept_name;

#Find the current titles of employees currently working in the Customer Service department.

select * from departments;
select * from titles;

use employees;
select t.title, count(e.emp_no)
from titles t
         join employees e
             on e.emp_no = t.emp_no
         join dept_emp de
             ON  de.emp_no = e.emp_no
         join departments d
             on d.dept_no = de.dept_no
WHERE  t.to_date >= curdate() AND d.dept_name = 'Customer Service' AND de.to_date >= curdate()
GROUP BY t.title;

describe salaries;
select * from salaries;

select dept_name, concat(e.first_name, ' ', e.last_name) as 'fullname', salary
from employees as e
    join dept_manager as dm
        on dm.emp_no = e.emp_no
    join salaries as s
        on s.emp_no = e.emp_no
    join departments as d
        on d.dept_no = dm.dept_no
where dm.to_date >= curdate() and s.to_date >=curdate()
order by d.dept_name;

