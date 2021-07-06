# select all orders (from table orders) that is made by 'Boy George'
SELECT * FROM orders WHERE customer_id = 
    (
        SELECT id FROM customers WHERE CONCAT(first_name, ' ', last_name) = 'Boy George'
    );
    

