USE `classicmodels`;
# The AND operator is a logical operator that combines two or more Boolean expressions and returns true only if both expressions evaluate to true. The AND operator returns false if one of the two expressions evaluate to false.

#boolean_expression_1 AND boolean_expression_2

#       TRUE	FALSE	NULL
# TRUE	TRUE	FALSE	NULL
# FALSE	FALSE	FALSE	FALSE
# NULL	NULL	FALSE	NULL
select * from customers;


select
    customerName,
       country,
       state
from
    customers
where
    country = 'USA' and state = 'CA';



select
    customerName,
       contactFirstName,
       contactLastName
from
    customers
where
    country = 'USA'
    AND state = 'CA'
    AND creditLimit > 100000;


