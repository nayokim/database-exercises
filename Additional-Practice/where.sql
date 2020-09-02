USE classicmodels;

#The WHERE clause allows you to specify a search condition for the rows returned by a query.

# SELECT
#     select_list
# FROM
#     table_name
# WHERE
#     search_condition;

#The search_condition is a combination of one or more predicates using the logical operator AND, OR and NOT.
# FROM -> WHERE -> SELECT -> ORDER By

# Using MySQL WHERE clause with equal operator example
#The following query uses the WHERE clause to find all employees whose job titles are Sales Rep:

SELECT
    lastName,
    firstName,
    jobTitle
FROM
    employees
WHERE
    jobtitle = 'Sales Rep';

#Using MySQL WHERE clause with AND operator
# The following example uses the WHERE clause to find employees whose job titles are Sales Rep and office codes are 1:

SELECT
    lastName,
    firstName,
    jobTitle,
    officeCode
FROM
    employees
WHERE
    jobtitle = 'Sales Rep' AND
    officeCode = 1;


