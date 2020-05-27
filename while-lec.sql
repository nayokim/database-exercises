use employees;

select *
from employees
where hire_date = '1985-01-01';


select *
from employees
where hire_date = '2020-01-01';

select *
from employees
where first_name like 'fer%';

select *
from employees
where first_name like '%ing';

select *
from employees
where last_name like '%inski%';

select *
from employees
where emp_no between 10026 and 10082;

select *
from employees
where last_name = 'herber';

select *
from employees
where last_name in ('Herber', 'Dredge');

select emp_no, hire_date
from employees
where hire_date >= '2000-01-01';

select *
from titles
where to_date is not null;

select *
from employees
where last_name in ('herber', 'baek')
  and emp_no < 20000
  and first_name = 'dmitri';

SELECT emp_no, first_name, last_name
FROM employees
WHERE emp_no < 20000
  AND(
            last_name IN ('Herber','Baek')
        OR first_name = 'Shridhar');


