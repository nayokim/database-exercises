USE `classicmodels`;

#The IN  operator allows you to determine if a specified value matches any value in a set of values or returned by a subquery.

# SELECT
#     column1,column2,...
#     FROM
#     table_name
# WHERE
#     (expr|column_1) IN ('value1','value2',...);

SELECT
    officeCode,
    city,
    phone,
    country
FROM
    offices
WHERE
        country IN ('USA' , 'France');

#You can achieve the same result with the OR operator as the following query:

SELECT
    officeCode,
    city,
    phone
FROM
    offices
WHERE
        country = 'USA' OR country = 'France';

SELECT
    officeCode,
    city,
    phone
FROM
    offices
WHERE
        country NOT IN ('USA' , 'France');

SELECT
    orderNumber,
    customerNumber,
    status,
    shippedDate
FROM
    orders
WHERE orderNumber IN
      (
          SELECT
              orderNumber
          FROM
              orderDetails
          GROUP BY
              orderNumber
          HAVING SUM(quantityOrdered * priceEach) > 60000
      );


SELECT
    orderNumber
FROM
    orderDetails
GROUP BY
    orderNumber
HAVING
        SUM(quantityOrdered * priceEach) > 60000;

SELECT
    orderNumber,
    customerNumber,
    status,
    shippedDate
FROM
    orders
WHERE
        orderNumber IN (10165,10287,10310);
