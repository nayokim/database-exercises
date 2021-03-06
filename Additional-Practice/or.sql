USE `classicmodels`;

#The MySQL OR operator combines two Boolean expressions and returns true when either condition is true.

#boolean_expression_1 OR boolean_expression_2

#       TRUE	FALSE	NULL
# TRUE	TRUE	TRUE	TRUE
# FALSE	TRUE	FALSE	NULL
# NULL	TRUE	NULL	NULL


#MySQL always evaluates the OR operators after the AND operators.

#SELECT true OR false AND false; // evaluates to 1
#evaluates the AND operator then the OR operator

#SELECT (true OR false) AND false; // evaluates 0
# eval. parenthesis first  then AND

#below statement is evaluating the OR statement in parenthesis then the AND

SELECT
    customerName,
    country,
    creditLimit
FROM
    customers
where (country = 'USA' OR
      country ='France')
    and creditlimit > 100000;


#below statement is evaluating the and statement then the OR
SELECT
    customername,
    country,
    creditLimit
FROM
    customers
WHERE country = 'USA'
   OR country = 'France'
    AND creditlimit > 100000;
