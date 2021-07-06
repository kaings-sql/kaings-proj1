# IMPLICIT INNER JOIN
SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;

# EXPLICIT INNER JOIN
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT * FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
    
# EXPLICIT INNER JOIN (same as above script)
SELECT * FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
INNER JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT * FROM orders
INNER JOIN customers
    ON customers.id = orders.customer_id;
    

