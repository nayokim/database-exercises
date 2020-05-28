

select distinct title from titles;

select last_name
from employees
where last_name like 'E%'
   and last_name like '%e'
group by last_name;


select first_name, last_name
from employees
where last_name like 'E%'
and last_name like '%e'
group by first_name, last_name;

select distinct last_name
from employees
where last_name like '%q%'
  and last_name not like ('%qu%');

select count(*), last_name
from employees
where last_name like '%q%'
  and last_name not like ('%qu%')
group by last_name
order by count(*) desc;

select count(*), gender
from employees
where first_name='Irena' or first_name = 'Vidya' or first_name = 'Maya'
group by gender