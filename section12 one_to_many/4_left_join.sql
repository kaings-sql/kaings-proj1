# EXPLICIT LEFT JOIN
SELECT * FROM customers 
    LEFT JOIN orders 
        ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount 
    FROM customers 
    LEFT JOIN orders 
        ON customers.id = orders.customer_id;





# practice LEFT JOIN
SELECT 
    first_name, 
    last_name, 
    order_date, 
    CASE 
        WHEN SUM(amount) IS NULL THEN 0
        ELSE SUM(amount)
    END AS 'Total'
FROM customers 
LEFT JOIN orders 
    ON customers.id = orders.customer_id
GROUP BY customers.id;


SELECT 
    first_name, 
    last_name, 
    order_date, 
    IFNULL(SUM(amount), 0) AS 'Total'
FROM customers 
LEFT JOIN orders 
    ON customers.id = orders.customer_id
GROUP BY customers.id;


SELECT 
    first_name, 
    last_name, 
    IFNULL(SUM(orders.amount),0) AS total_spending 
FROM customers 
LEFT JOIN orders 
    ON customers.id = orders.customer_id
GROUP BY customers.first_name, customers.last_name;