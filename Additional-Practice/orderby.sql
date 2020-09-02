USE `classicmodels`;

# When you use the SELECT statement to query data from a table, the result set is not sorted. It means that the rows in the result set can be in any order.

# To sort the result set, you add the ORDER BY clause to the SELECT statement.

SELECT
    contactFirstName,
    contactLastName
FROM
    customers
ORDER BY
    contactLastName;

# if you want to sort customers by the last name in the descending order, you use the DESC after the contactLastname column in the ORDER BY clause as shown in the following query:

SELECT
    contactLastName,
    contactFirstName
FROM
     customers
ORDER BY
    contactLastName DESC;

#sort by last name desc and then first name in asc:
# in this example, the names are first sorted by lastname in desc then within each lastname, the first name in asc
SELECT
       contactLastName,
       contactFirstName
FROM
        customers
ORDER BY
        contactLastName DESC,
        contactFirstName ASC;

#Using MySQL ORDER BY to sort a result set by an expression example
SELECT
    orderNumber,
    orderLineNumber,
    quantityOrdered,
    priceEach,
    quantityOrdered * priceEach
FROM
    orderdetails
ORDER BY
    quantityOrdered * priceEach DESC;

#using the field() function to map order status

SELECT
    orderNumber,
       status
FROM
    orders
ORDER BY
    FIELD(status,
        'In Process',
        'On Hold',
        'Cancelled',
        'Resolved',
        'Disputed',
        'Shipped'
        );
