USE `classicmodels`;

#The percentage ( % ) wildcard matches any string of zero or more characters.
#The underscore ( _ ) wildcard matches any single character.
#For example, s% matches any string starts with the character s such as sun and six. The se_ matches any string starts with  se and is followed by any character such as see and sea.

SELECT
    employeeNumber,
    lastName,
    firstName
FROM
    employees
WHERE
        firstName LIKE 'a%';

SELECT
    employeeNumber,
    lastName,
    firstName
FROM
    employees
WHERE
        lastName LIKE '%on';

SELECT
    employeeNumber,
    lastName,
    firstName
FROM
    employees
WHERE
        lastname LIKE '%on%';

SELECT
    employeeNumber,
    lastName,
    firstName
FROM
    employees
WHERE
        lastName NOT LIKE 'B%';

#escape clause  -  you can use the ESCAPE clause to specify the escape character so that MySQL will interpret the wildcard character as a literal character.

#For example, if you want to find products whose product codes contain the string _20 , you can use the pattern %\_20% as shown in the following query:

SELECT
    productCode,
    productName
FROM
    products
WHERE
        productCode LIKE '%\_20%';

SELECT
    productCode,
    productName
FROM
    products
WHERE
        productCode LIKE '%$_20%' ESCAPE '$';
