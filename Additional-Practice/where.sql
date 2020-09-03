USE classicmodels;

#The WHERE clause allows you to specify a search condition for the rows returned by a query.

# SELECT
#     select_list
# FROM
#     table_name
# WHERE
#     search_condition;

#The search_condition is a combination of one or more predicates using the logical operator AND, OR.sql and NOT.
# FROM -> WHERE -> SELECT -> ORDER By

# Using MySQL WHERE clause with equal operator example
#The following query uses the WHERE clause to find all employees whose job titles are Sales Rep:

SELECT lastName,
       firstName,
       jobTitle
FROM employees
WHERE jobtitle = 'Sales Rep';

#Using MySQL WHERE clause with AND operator
# The following example uses the WHERE clause to find employees whose job titles are Sales Rep and office codes are 1:

SELECT lastName,
       firstName,
       jobTitle,
       officeCode
FROM employees
WHERE jobtitle = 'Sales Rep'
  AND officeCode = 1;


#Using MySQL WHERE clause with OR.sql operator
#This query finds employees whose job title is Sales Rep or employees who locate the office with office code 1:

select lastName,
       firstName,
       jobTitle,
       officeCode
from employees
where jobtitle = 'Sales Rep'
   OR officeCode = 1
order by officeCode,
         jobTitle;

#Using MySQL WHERE with BETWEEN operator example
#The BETWEEN operator returns TRUE if a value is in a range of values:

select firstName,
       lastName,
       officeCode
from employees
where officecode between 1 and 3
order by officeCode;

#Using MySQL WHERE with the LIKE operator example
# The LIKE operator evaluates to TRUE if a value matches a specified pattern. To form a pattern, you use % and _ wildcards. The % wildcard matches any string of zero or more characters while the _ wildcard matches any single character.
#
#     This query finds employees whose last names end with the string 'son':

SELECT firstName,
       lastName
from employees
where lastname like '%son'
order by firstName;


#The IN operator returns TRUE if a value matches any value in a list.

SELECT
    firstName,
    lastName,
    officeCode
FROM
    employees
WHERE
        officeCode IN (1 , 2, 3)
ORDER BY
    officeCode;
