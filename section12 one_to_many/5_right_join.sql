# EXPLICIT INNER JOIN
SELECT * FROM customers 
    INNER JOIN orders 
        ON customers.id = orders.customer_id;

# RIGHT JOIN (compare to LEFT JOIN)
SELECT * FROM customers 
    RIGHT JOIN orders 
        ON customers.id = orders.customer_id;

# A MORE COMPLEX RIGHT JOIN
SELECT 
    IFNULL(first_name,'MISSING') AS first, 
    IFNULL(last_name,'USER') as last, 
    order_date, 
    amount, 
    SUM(amount)
FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first_name, last_name;


