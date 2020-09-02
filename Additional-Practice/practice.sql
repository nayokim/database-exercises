show tables;


# SELECT instructs MySQL to retrieve data.
select * from customers;

select customerName
from customers;

select lastName
from employees;


# Using the MySQL SELECT statement to query data from multiple columns
SELECT
    lastName,
    firstName,
    jobTitle
FROM
     employees;


# notes regarding * notations
#The SELECT * returns data from the columns that you may not use. It produces unnecessary I/O disk and network traffic between the MySQL database server and application.
select * from employees;




