use employees;
# select concat('fer',' ', 'Mendoza') as 'fullname';

select birth_date, concat(first_name, ' ', last_name,' ', emp_no) as 'fullname', gender, hire_date
from employees
limit 10;

select birth_date, concat_ws(' ',first_name, last_name, emp_no) as 'fullname', gender, hire_date
from employees
limit 10;

select first_name
from employees
where first_name LIKE '%a%'
limit 10;

select distinct first_name
from employees
where first_name NOT LIKE '%a%'
order by first_name;

select now() as 'today';
select curdate() as 'today';
select curtime();

SELECT CONCAT(
               'Teaching people to code for ',
               ((((UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'))/60)/60)/24)/365,
               ' years'
           );

select gender, count(gender) as 'results'
from employees
group by gender limit 10;

#when you dont care about other parameters
select distinct gender from employees;

select first_name, count(first_name) as repeats
from employees
group by first_name
order by repeats




