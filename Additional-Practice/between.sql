USE `classicmodels`;

#specify a range - used in the where cause

select *
from products;

select productCode,
       productName,
       buyPrice
from
     products
where
      buyPrice between 90 and 100;

#using <= and => have the same results
SELECT
    productCode,
    productName,
    buyPrice
FROM
    products
WHERE
        buyPrice >= 90 AND buyPrice <= 100;

#using NOT:

SELECT
    productCode,
    productName,
    buyPrice
FROM
    products
WHERE
    buyPrice NOT BETWEEN 20 AND 100;

#rewrite the query using < and >
SELECT
    productCode,
    productName,
    buyPrice
FROM
    products
WHERE
        buyPrice < 20 OR buyPrice > 100;

#Casting as dates
SELECT
    orderNumber,
    requiredDate,
    status
FROM
    orders
WHERE
    requireddate BETWEEN
        CAST('2003-01-01' AS DATE) AND
        CAST('2003-01-31' AS DATE);
