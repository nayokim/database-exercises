# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows

use employees;
select *
from employees
where hire_date = (
    select hire_date from employees
    where emp_no = 101010
          );

select* from titles;
# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
select *
from titles
where emp_no in(
    select emp_no from employees
    where first_name = 'Aamod'
    );

# Find all the current department managers that are female.
select concat(first_name, ' ', last_name) as 'fullname', gender
from employees
where emp_no in (select emp_no from dept_manager where to_date >= curdate()) and Gender = 'F';