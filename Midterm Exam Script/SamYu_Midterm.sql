#Question 1
SELECT customerName,city FROM customers
WHERE city = "Madrid";

#Question 2
SELECT customerName AS "Ltd_Names" FROM customers
WHERE customerName LIKE "%Ltd";

#Question 3
(SELECT amount AS "Largest" FROM payments
GROUP BY amount DESC
LIMIT 1)
UNION
(SELECT amount AS "Smallest" FROM payments
GROUP BY amount ASC
LIMIT 1);




#Question 4
SELECT a_employees.lastName,a_employees.firstName,a_offices.city FROM employees a_employees
JOIN offices a_offices ON a_employees.officeCode = a_offices.officeCode
GROUP BY city;

#Question 5
SELECT a_customer.customerName,SUM(a_payments.amount) AS "TOTALPAYMENTS"  FROM payments a_payments
JOIN customers a_customer ON a_customer.customerNumber = a_payments.customerNumber
GROUP BY a_payments.customerNumber;

#Question 6
SELECT a_orders.orderDate, a_products.productName FROM orders a_orders
JOIN orderdetails a_orderdetails ON a_orders.orderNumber = a_orderdetails.orderNumber
JOIN products a_products ON a_products.productCode = a_orderdetails.productCode
WHERE YEAR(a_orders.orderDate) ="2004";
