use employees;

select * from employees ORDER BY last_name;

select * from employees ORDER BY last_name desc;

select * from employees order by hire_date desc;

select * from employees order by last_name desc, first_name asc;

select * from salaries order by salary asc;

select* from employees where emp_no = 43624;
