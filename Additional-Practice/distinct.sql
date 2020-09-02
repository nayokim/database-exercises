USE `classicmodels`;

#to remove duplicate rows from a query, use distinct
# SELECT DISTINCT
#     select_list
# FROM
#     table_name;

select distinct
    lastName
from
    employees
order by
    lastName;


Select distinct
    state, city
from
     customers
where
      state is not null
order by
    state, city

# distinct vs group by
#If you use the GROUP BY clause in the SELECT statement without using aggregate functions, the GROUP BY clause behaves like the DISTINCT clause.
#The following statement uses the GROUP BY clause to select the unique states of customers from the customers table.

Select
    state
from
     customers
where state is not null
group by
    state;

#The difference between DISTINCT clause and GROUP BY clause is that the GROUP BY clause sorts the result set whereas the DISTINCT clause does not.

SELECT DISTINCT
    state
from customers;

select distinct
    state
from customers
order by state;

