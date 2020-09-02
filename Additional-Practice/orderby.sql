USE `classicmodels`;


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
